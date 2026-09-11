/* Espen i Asmo - rules engine. Pure logic, no DOM access, so it can be
 * exercised from Node for testing as well as from the browser.
 *
 * Condition/action opcode semantics are exactly as documented in FORMAT.md's
 * "Rules" section. See that file before changing anything here.
 */
(function (root, factory) {
  if (typeof module !== 'undefined' && module.exports) {
    module.exports = factory();
  } else {
    root.Game = factory();
  }
})(typeof self !== 'undefined' ? self : this, function () {
  'use strict';

  // Portrait fallback for characters whose record has no assigned portrait
  // (word at record offset 288 is 0 - true for Rotter2/Rotter3, Heksa, Pål,
  // Per, "Mor og sønner"; verified by scanning the rest of their raw bytes
  // for any other plausible 1-26 value and finding none). Rotter2/Rotter3
  // are rat-swarm clones of Rotter (id 2) used only so multiple rules can
  // summon/remove them independently, so they reuse Rotter's portrait. The
  // rest have no known portrait and render without one.
  var PORTRAIT_FALLBACK = { 3: 4, 4: 4 };

  var DEFAULT_MSG = { CANT_GO: 3, CANT_CARRY_MORE: 4, CANT_CARRY: 5,
    NOTHING_SPECIAL: 6, PERSON_DOESNT_WANT: 7, NO_ONE_TO_TALK: 8,
    NO_ONE_TO_GIVE: 9, DARK: 10 };

  // Fixes for defects in the original rules. Each throws if its rule is not found, so a
  // regenerated game.json cannot silently drop one.
  var OTERSKINN = 84;
  var PATCHES = [
    {
      // "Du har reddet den ene broren" + wind to Strand fires on the island whenever var 28
      // is 11. Rescuing Pal first also makes it 11, so you are blown off the island before
      // Per can appear: unwinnable. Require the otter skin to be gone (given to Per).
      find: function (r) {
        return r.verb === -1 && r.if.some(function (c) { return c.op === 'room_is' && c.a === 36; }) &&
          r.if.some(function (c) { return c.op === 'var_eq' && c.a === 28 && c.b === 11; });
      },
      apply: function (r) { r.if = r.if.concat([{ op: 'object_gone', a: OTERSKINN }]); }
    }
  ];

  function applyPatches(globalRules) {
    PATCHES.forEach(function (p) {
      var hits = globalRules.filter(p.find);
      if (hits.length !== 1) throw new Error('rule patch matched ' + hits.length + ' rules');
      hits.forEach(p.apply);
    });
  }

  function Game(data, dialogue) {
    this.data = data;
    this.dialogue = dialogue || {};
    this.rooms = {};
    this.objects = {};
    this.characters = {};
    (data.rooms || []).forEach(function (r) { this.rooms[r.id] = r; }, this);
    (data.objects || []).forEach(function (o) { this.objects[o.id] = o; }, this);
    (data.characters || []).forEach(function (c) { this.characters[c.id] = c; }, this);
    // The original loader moves every rule containing an `else` condition
    // into a second list that only runs in pass 2 (disasm/0959.asm:0000).
    var hasElse = function (r) { return r.if.some(function (c) { return c.op === 'else'; }); };
    var keyed = data.rules_folded || [];
    var global = JSON.parse(JSON.stringify(data.global_rules || []));
    applyPatches(global);
    keyed.concat(global).forEach(function (r, i) { r.id = i; });
    this.keyedRules = [keyed.filter(function (r) { return !hasElse(r); }), keyed.filter(hasElse)];
    this.globalRules = [global.filter(function (r) { return !hasElse(r); }), global.filter(hasElse)];
    this.reset();
  }

  Game.prototype.reset = function () {
    this.currentRoom = 1;
    this.roomStates = {};
    this.objectLocations = {};
    this.objectStates = {};
    this.personLocations = {};
    this.personStates = {};
    this.vars = {};
    (this.data.vars_init || []).forEach(function (v, i) { if (v) this.vars[i + 1] = v; }, this);
    this.score = 0;
    this.scored = {};  // rule id -> true once its add_score has paid out
    this.turns = 0;
    this.ended = false;
    this.log = [];    // {kind:'text'|'popup', text}
    var self = this;
    Object.keys(this.objects).forEach(function (id) {
      var o = self.objects[id];
      self.objectLocations[id] = o.room || 0;
      self.objectStates[id] = o.state || 1;
    });
    Object.keys(this.rooms).forEach(function (id) { self.roomStates[id] = 1; });
    // Negative home = starts absent (ESPEN.ADV character word 824, disasm/0959.asm:06A0).
    Object.keys(this.characters).forEach(function (id) {
      var c = self.characters[id];
      self.personStates[id] = c.start_state || 1;
      self.personLocations[id] = c.home;
    });
  };

  // ---- state helpers -------------------------------------------------

  Game.prototype.room = function () { return this.rooms[this.currentRoom]; };

  Game.prototype.roomState = function (roomId) {
    roomId = roomId || this.currentRoom;
    var idx = (this.roomStates[roomId] || 1) - 1;
    var r = this.rooms[roomId];
    if (!r) return null;
    return r.states[idx] || r.states[0];
  };

  Game.prototype.objectState = function (objId) {
    var o = this.objects[objId];
    if (!o) return null;
    var idx = (this.objectStates[objId] || 1) - 1;
    return o.states[idx] || o.states[0];
  };

  Game.prototype.msg = function (id) {
    var m = this.data.messages;
    return (id > 0 && id <= m.length) ? m[id - 1] : '';
  };

  // Object.keys() on an object keyed by integer-like strings enumerates in
  // ascending numeric order regardless of insertion order, so a freshly
  // place_object()'d item would otherwise jump into the middle of an
  // existing grid by internal id. Sort by (Norwegian) name instead, so the
  // grid order is stable and doesn't silently reshuffle when new items
  // appear - the player has no visibility into internal ids to explain a
  // reorder by id.
  Game.prototype._sortByName = function (ids) {
    var self = this;
    return ids.sort(function (a, b) {
      return self.objects[a].name.localeCompare(self.objects[b].name, 'no');
    });
  };

  Game.prototype.inventory = function () {
    var self = this, out = [];
    Object.keys(this.objectLocations).forEach(function (id) {
      if (self.objectLocations[id] === 'inv') out.push(Number(id));
    });
    return this._sortByName(out);
  };

  Game.prototype.objectsInRoom = function (roomId) {
    roomId = roomId || this.currentRoom;
    var self = this, out = [];
    Object.keys(this.objectLocations).forEach(function (id) {
      if (self.objectLocations[id] === roomId) out.push(Number(id));
    });
    return this._sortByName(out);
  };

  Game.prototype.personInRoom = function (roomId) {
    roomId = roomId || this.currentRoom;
    var self = this, found = null;
    Object.keys(this.personLocations).forEach(function (id) {
      if (self.personLocations[id] === roomId) found = Number(id);
    });
    return found;
  };

  // Returns the ESPENP.n portrait number for a character, or 0 if none is
  // known (caller should render no portrait in that case).
  Game.prototype.portraitFor = function (personId) {
    var c = this.characters[personId];
    if (!c) return 0;
    if (c.portrait) return c.portrait;
    return PORTRAIT_FALLBACK[personId] || 0;
  };

  Game.prototype.questionsFor = function (personId) {
    var state = this.personStates[personId] || 1;
    var d = this.dialogue[personId];
    if (!d) return { questions: [], answer: '' };
    return d.states[state - 1] || d.states[0];
  };

  // ---- turn engine -----------------------------------------------------

  Game.prototype._var = function (a) { return this.vars[a] || 0; };

  Game.prototype._evalCond = function (c, elsePass) {
    switch (c.op) {
      case 'room_is': return this.currentRoom === c.a;
      case 'room_not': return this.currentRoom !== c.a;
      case 'carried': return this.objectLocations[c.a] === 'inv';
      case 'not_carried': return this.objectLocations[c.a] !== 'inv';
      case 'room_state': return (this.roomStates[c.a] || 1) === c.b;
      case 'chance': return Math.random() * 100 < c.a;
      case 'person_here': return this.personLocations[c.a] === this.currentRoom;
      case 'person_state':
        return this.personLocations[c.a] === this.currentRoom &&
          (this.personStates[c.a] || 1) === c.b;
      case 'person_absent': return this.personLocations[c.a] !== this.currentRoom;
      case 'object_here':
        return this.objectLocations[c.a] === 'inv' || this.objectLocations[c.a] === this.currentRoom;
      case 'object_state':
        return this.objectLocations[c.a] !== 0 && (this.objectStates[c.a] || 1) === c.b;
      case 'object_gone': return !this.objectLocations[c.a] || this.objectLocations[c.a] === 0;
      case 'var_eq': return this._var(c.a) === c.b;
      case 'var_gt': return this._var(c.a) > c.b;
      case 'var_lt': return this._var(c.a) < c.b;
      case 'else': return !!elsePass;
      default: return false;
    }
  };

  Game.prototype._evalConds = function (conds, elsePass) {
    for (var i = 0; i < conds.length; i++) {
      if (!this._evalCond(conds[i], elsePass)) return false;
    }
    return true;
  };

  Game.prototype._runAction = function (a, ctx) {
    switch (a.op) {
      case 'popup': this.log.push({ kind: 'popup', text: this.msg(a.a) }); break;
      case 'remove_object': this.objectLocations[a.a] = 0; break;
      // Only objects out of play (disasm/020a.asm:02F5).
      case 'place_object':
        if (!this.objectLocations[a.a]) this.objectLocations[a.a] = this.currentRoom;
        break;
      case 'remove_person': this.personLocations[a.a] = 0; break;
      // Only brings back someone not present anywhere (disasm/020a.asm:0388).
      case 'summon_person':
        var c = this.characters[a.a];
        if (c && !(this.personLocations[a.a] > 0)) this.personLocations[a.a] = Math.abs(c.home);
        break;
      case 'goto_room': this.currentRoom = a.a; break;
      case 'message': this.log.push({ kind: 'text', text: this.msg(a.a) }); break;
      case 'set_room_state': this.roomStates[a.a] = a.b; break;
      case 'set_object_state': this.objectStates[a.a] = a.b; break;
      case 'set_person_state': this.personStates[a.a] = a.b; break;
      case 'end_game': this.ended = true; break;
      case 'add_score': this.score += a.a; break;
      case 'var_set': this.vars[a.a] = a.b; break;
      case 'var_add': this.vars[a.a] = this._var(a.a) + a.b; break;
      case 'var_sub': this.vars[a.a] = this._var(a.a) - a.b; break;
      case 'handled': ctx.handled = true; break;
      default: break;
    }
  };

  // Each rule pays its score once per game. Several original rules are
  // repeatable (chop the oak, put the chip back, chop again) and farm points.
  Game.prototype._runActions = function (rule, ctx) {
    var actions = rule.then, paid = this.scored[rule.id];
    for (var i = 0; i < actions.length; i++) {
      if (actions[i].op === 'add_score') {
        if (paid) continue;
        this.scored[rule.id] = true;
      }
      this._runAction(actions[i], ctx);
    }
  };

  // Rule lists stop only when the game ends, never on `handled`
  // (disasm/020a.asm:07D3, 0847).
  Game.prototype._passOverRules = function (rules, elsePass, ctx) {
    for (var i = 0; i < rules.length && !this.ended; i++) {
      var r = rules[i];
      if (this._evalConds(r.if, elsePass)) this._runActions(r, ctx);
    }
  };

  Game.prototype._matchKey = function (rule, verb, k1, k2) {
    return rule.verb === verb && rule.k1 === k1 && (k2 == null || rule.k2 === k2);
  };

  // command: {verb, k1, k2}. Order per disasm/020a.asm:0966-0B9B: keyed and
  // global pass 1, default handling unless handled, then keyed and global
  // pass 2 (the `else` rules) regardless of handled.
  Game.prototype._runTurn = function (command, defaultFn) {
    this.log = [];
    var self = this;
    var match = function (r) { return self._matchKey(r, command.verb, command.k1, command.k2); };
    var ctx = { handled: false };
    this._passOverRules(this.keyedRules[0].filter(match), false, ctx);
    this._passOverRules(this.globalRules[0], false, ctx);
    if (!this.ended && !ctx.handled && defaultFn) defaultFn(ctx);
    this._passOverRules(this.keyedRules[1].filter(match), true, ctx);
    this._passOverRules(this.globalRules[1], true, ctx);
    this.turns++;
    return this.log;
  };

  // ---- verbs -------------------------------------------------------

  var DIR_NUM = { n: 1, s: 2, e: 3, w: 4, out: 5, in: 6, up: 7, down: 8 };

  // Directions to offer: real exits plus rule-only moves. Some rooms
  // (Strand, Galgebakke) have no exit data and move only through go-rules;
  // the original always showed all eight directions, so those worked there.
  Game.prototype.directions = function () {
    var self = this, st = this.roomState(), out = [];
    Object.keys(DIR_NUM).forEach(function (dir) {
      var ruled = self.keyedRules[0].concat(self.keyedRules[1]).some(function (r) {
        return self._matchKey(r, 'go', self.currentRoom, DIR_NUM[dir]);
      });
      if ((st && st.exits && st.exits[dir]) || ruled) out.push(dir);
    });
    return out;
  };

  Game.prototype.go = function (dir) {
    var self = this;
    return this._runTurn({ verb: 'go', k1: this.currentRoom, k2: DIR_NUM[dir] }, function () {
      var st = self.roomState();
      var target = st && st.exits && st.exits[dir];
      if (target) self.currentRoom = target;
      else self.log.push({ kind: 'text', text: self.msg(DEFAULT_MSG.CANT_GO) });
    });
  };

  Game.prototype.take = function (objId) {
    var self = this;
    return this._runTurn({ verb: 'take', k1: objId, k2: 0 }, function () {
      var os = self.objectState(objId);
      if (!os || !os.portable) {
        self.log.push({ kind: 'text', text: self.msg(DEFAULT_MSG.CANT_CARRY) });
      } else if (self.inventory().length >= 9) {
        self.log.push({ kind: 'text', text: self.msg(DEFAULT_MSG.CANT_CARRY_MORE) });
      } else {
        self.objectLocations[objId] = 'inv';
        // The original message table (3-10, the engine-default slots) has
        // no "you took it" success message at all - messages 3-10 are all
        // failure cases, and the original always had the always-on-screen
        // rucksack panel as a visible confirmation instead. We don't have
        // that constant anchor, so synthesize a short confirmation line
        // (not from the original message table, a deliberate modernization,
        // not a rules/data change).
        var name = self.objects[objId] ? self.objects[objId].name : '';
        self.log.push({ kind: 'text', text: 'Du tar ' + name + '.' });
      }
    });
  };

  Game.prototype.drop = function (objId) {
    var self = this;
    return this._runTurn({ verb: 'drop', k1: objId, k2: 0 }, function () {
      self.objectLocations[objId] = self.currentRoom;
      // Synthesized confirmation, same reasoning as take().
      self.log.push({ kind: 'text', text: 'Du legger fra deg ' + self.objects[objId].name + '.' });
    });
  };

  Game.prototype.give = function (objId) {
    var self = this;
    return this._runTurn({ verb: 'give', k1: objId, k2: 0 }, function () {
      var msg = self.personInRoom() ? DEFAULT_MSG.PERSON_DOESNT_WANT : DEFAULT_MSG.NO_ONE_TO_GIVE;
      self.log.push({ kind: 'text', text: self.msg(msg) });
    });
  };

  Game.prototype.use = function (objId) {
    return this._runTurn({ verb: 'use', k1: objId, k2: 0 }, function (ctx) {
      this.log.push({ kind: 'text', text: this.msg(DEFAULT_MSG.NOTHING_SPECIAL) });
    }.bind(this));
  };

  Game.prototype.look = function (objId) {
    return this._runTurn({ verb: 'look', k1: objId, k2: 0 }, function () {
      var os = this.objectState(objId);
      if (os) this.log.push({ kind: 'text', text: os.desc });
    }.bind(this));
  };

  Game.prototype.talk = function (personId, question) {
    var self = this;
    return this._runTurn({ verb: 'talk', k1: personId, k2: question }, function () {
      var qa = self.questionsFor(personId);
      var qtext = qa.questions[question - 1];
      if (qtext) self.log.push({ kind: 'text', text: qtext });
      if (qa.answer) self.log.push({ kind: 'text', text: qa.answer });
    });
  };

  // Feedback for "Snakk" selected with no target reachable (no person in
  // the room). Doesn't run a full turn/global-rule pass - it isn't a real
  // game command, just UI feedback for clicking around with no one to talk
  // to, so it shouldn't tick the hunger clock or other per-turn timers.
  Game.prototype.noOneToTalkTo = function () {
    return [{ kind: 'text', text: this.msg(DEFAULT_MSG.NO_ONE_TO_TALK) }];
  };

  // Runs global rules only (e.g. to let a "look around" / no-op refresh
  // still tick hunger clocks etc). Not part of the original verb table but
  // harmless and keeps per-turn variable timers consistent if the UI ever
  // wants a "wait" action.
  Game.prototype.wait = function () {
    return this._runTurn({ verb: -1, k1: -1, k2: -1 }, null);
  };

  // ---- persistence -------------------------------------------------

  Game.prototype.toJSON = function () {
    return {
      currentRoom: this.currentRoom,
      roomStates: this.roomStates,
      objectLocations: this.objectLocations,
      objectStates: this.objectStates,
      personLocations: this.personLocations,
      personStates: this.personStates,
      vars: this.vars,
      score: this.score,
      scored: this.scored,
      turns: this.turns,
      ended: this.ended
    };
  };

  Game.prototype.loadJSON = function (s) {
    this.currentRoom = s.currentRoom;
    this.roomStates = s.roomStates;
    this.objectLocations = s.objectLocations;
    this.objectStates = s.objectStates;
    this.personLocations = s.personLocations;
    this.personStates = s.personStates;
    this.vars = s.vars;
    this.score = s.score;
    this.scored = s.scored || {};
    this.turns = s.turns || 0;
    this.ended = !!s.ended;
  };

  return Game;
});
