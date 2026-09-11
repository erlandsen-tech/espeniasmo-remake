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

  // Character home rooms: used both as each character's starting location
  // (see PRESENT_AT_START below) and as the `summon_person` action's target.
  //
  // IMPORTANT: room.person (the on-disk word FORMAT.md documents as "person
  // id word at 0x19") is NOT reliable and is NOT used here. Cross-checking
  // it against rule evidence (which room_is/go-exit conditions actually
  // co-occur with which character's person_here/person_state/person_absent
  // conditions or remove/summon/set_person_state actions) shows it flatly
  // contradicts confirmed placements in every case that could be checked:
  // e.g. room 1 "Hjemme" claims person=15 (Per), but every rule agrees Mor
  // (1) is the one at Hjemme, and no rule ever ties Per to room 1 at all;
  // room 7 "Landsby" claims person=5 (Kjerring), but Kjerring's stump/axe
  // puzzle is unambiguously in room 8 "Skog" instead. The values below are
  // instead mined from rule co-occurrence (grep rules_folded/global_rules
  // for room_is/go conditions alongside person conditions or person
  // actions for each character id) or, where that gave nothing, the
  // in-record word at character offset 824 (also stale for several ids) or
  // plain thematic/textual fit. Confidence varies per entry; see comments.
  var HOME_ROOM = {
    1: 1,    // Mor - Hjemme (strong: 3 rule hits, unambiguous)
    2: 7,    // Rotter - Landsby (rule hit)
    3: 7,    // Rotter2 - Landsby (rule hit; summoned alongside Rotter)
    4: 7,    // Rotter3 - Landsby (rule hit, ties with "Ved elva" for a later scene)
    5: 8,    // Kjerring - Skog (strong: go-exit blocking rule confirms)
    6: 9,    // Heksa - Lysning (weak: only the in-record word; thematic "clearing")
    7: 12,   // Skipet - Eika (strong: 6 rule hits; NOT "Skip" - that guess was wrong)
    8: 56,   // Kongen - Kongsgård (weak: tied 1-1-1 across 3 rooms; "his estate" thematically)
    9: 60,   // Prinsessa - Prinsesserom (weak: no rule hit, but named after her)
    10: 57,  // Harer - Haremark (rule hit, matches name)
    11: 57,  // Pål - Haremark (weak: message 114 "ved harekassen" only)
    12: 30,  // Brutroll - Brua (very strong: 6 rule hits)
    13: 16,  // Hedalstroll - Hedalskog (very strong: 8 rule hits)
    14: 31,  // Rødhette - Sørforbru (weak: in-record word only)
    15: 39,  // Per - best-effort guess, low confidence, no rule pins it
    16: 40   // Mor og sønner - Avslutning (in-record word; never referenced by any rule)
  };

  // Characters who do NOT start present anywhere - they only ever appear
  // via a `summon_person` action (confirmed: each id below is a
  // summon_person target somewhere in rules_folded/global_rules, and for
  // 3/4/7/11/15 there's also a matching "person_absent" guard elsewhere
  // that only makes sense if they start absent, e.g. the ship-less "Du kan
  // ikke gå den veien" at room 12 before Skipet is summoned). Brutroll (12)
  // and Hedalstroll (13) are ALSO summon_person targets somewhere (re-spawn/
  // retry edge cases) but start present and blocking their room from turn
  // one per the much stronger go-exit-blocking rule evidence above, so they
  // are deliberately not in this set.
  var ABSENT_AT_START = { 3: 1, 4: 1, 7: 1, 11: 1, 15: 1, 16: 1 };

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
    var keyed = data.rules_folded || [], global = data.global_rules || [];
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
    this.score = 0;
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
    Object.keys(this.characters).forEach(function (id) { self.personStates[id] = 1; });
    // Deliberately NOT using room.person here - see the HOME_ROOM comment
    // above for why that field is unreliable. Characters not in
    // ABSENT_AT_START start present at their HOME_ROOM; the rest start
    // absent (personLocations left unset) until a summon_person fires.
    Object.keys(HOME_ROOM).forEach(function (id) {
      if (!ABSENT_AT_START[id]) self.personLocations[id] = HOME_ROOM[id];
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
      case 'place_object': this.objectLocations[a.a] = this.currentRoom; break;
      case 'remove_person': this.personLocations[a.a] = null; break;
      case 'summon_person':
        this.personLocations[a.a] = HOME_ROOM[a.a] != null ? HOME_ROOM[a.a] : this.currentRoom;
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

  Game.prototype._runActions = function (actions, ctx) {
    for (var i = 0; i < actions.length; i++) this._runAction(actions[i], ctx);
  };

  // Rule lists stop only when the game ends, never on `handled`
  // (disasm/020a.asm:07D3, 0847).
  Game.prototype._passOverRules = function (rules, elsePass, ctx) {
    for (var i = 0; i < rules.length && !this.ended; i++) {
      var r = rules[i];
      if (this._evalConds(r.if, elsePass)) this._runActions(r.then, ctx);
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
    this.turns = s.turns || 0;
    this.ended = !!s.ended;
  };

  return Game;
});
