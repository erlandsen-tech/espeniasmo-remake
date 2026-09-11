/* DOM wiring for Espen i Asmo. Depends on engine.js (Game) and data.js
 * (Assets, DIRS) being loaded first as plain <script> tags. */
(function () {
  'use strict';

  var SAVE_KEY = 'espeniasmo_save_v1';

  var el = {
    scene: document.getElementById('scene'),
    portraitWrap: document.getElementById('portrait-wrap'),
    portrait: document.getElementById('portrait'),
    personName: document.getElementById('person-name'),
    log: document.getElementById('log'),
    exits: document.getElementById('exits'),
    roomObjects: document.getElementById('room-objects'),
    inventory: document.getElementById('inventory'),
    verbs: document.getElementById('verbs'),
    score: document.getElementById('score'),
    turns: document.getElementById('turns'),
    roomName: document.getElementById('room-name'),
    talkMenu: document.getElementById('talk-menu'),
    talkQuestions: document.getElementById('talk-questions'),
    saveBtn: document.getElementById('save-btn'),
    loadBtn: document.getElementById('load-btn'),
    restartBtn: document.getElementById('restart-btn'),
    endOverlay: document.getElementById('end-overlay')
  };

  var game = null;
  var verb = 'look'; // look | take | use | give | drop | talk
  // Key of the last (roomId, roomState) pair whose description was shown in
  // the log, so render() (called after every click) only re-appends the
  // room description when it actually changed (entered a new room, or the
  // room's state changed e.g. the fire got lit) rather than after every
  // single action that leaves you in the same room/state.
  var lastDescKey = null;
  // Log entries appended since the last finalizeTurn() call, so we can mark
  // just this turn's new entries as "latest" (a light highlight) and clear
  // that highlight off everything older.
  var pendingLogEls = [];

  function setVerb(v) {
    verb = v;
    Array.prototype.forEach.call(el.verbs.children, function (btn) {
      btn.classList.toggle('active', btn.dataset.verb === v);
    });
    closeTalkMenu();
    refreshTalkAffordance();
  }

  // Visual cue that the portrait is clickable: only meaningful once Snakk
  // is selected and someone is actually there to talk to. Without this
  // there's no affordance suggesting the portrait/name are interactive.
  function refreshTalkAffordance() {
    if (!game) return;
    var canTalk = verb === 'talk' && !!game.personInRoom();
    el.portraitWrap.classList.toggle('talkable', canTalk);
    el.scene.classList.toggle('talkable', canTalk);
  }

  function closeTalkMenu() {
    el.talkMenu.classList.add('hidden');
  }

  function appendEntry(className, text) {
    var div = document.createElement('div');
    div.className = className;
    div.textContent = text;
    el.log.appendChild(div);
    pendingLogEls.push(div);
    el.log.scrollTop = el.log.scrollHeight;
  }

  function pushLog(entries) {
    (entries || []).forEach(function (e) {
      appendEntry(e.kind === 'popup' ? 'log-popup' : 'log-text', e.text);
    });
  }

  function setDescription(text) {
    appendEntry('log-desc', text);
  }

  // Marks every log entry appended since the previous call as "latest" and
  // clears that marker from older entries, so the newest turn's output is
  // visually distinct even in a long scrollback.
  function finalizeTurn() {
    Array.prototype.forEach.call(el.log.querySelectorAll('.log-latest'), function (n) {
      n.classList.remove('log-latest');
    });
    pendingLogEls.forEach(function (n) { n.classList.add('log-latest'); });
    pendingLogEls = [];
  }

  function render() {
    var room = game.room();
    var state = game.roomState();
    el.roomName.textContent = room.name;
    Assets.apply(el.scene, Assets.scene(state.scene));
    var descKey = game.currentRoom + ':' + (game.roomStates[game.currentRoom] || 1);
    if (descKey !== lastDescKey) {
      setDescription(state.desc);
      lastDescKey = descKey;
    }

    // exits
    el.exits.innerHTML = '';
    var dirs = game.directions();
    DIRS.forEach(function (d) {
      if (dirs.indexOf(d.key) !== -1) {
        var btn = document.createElement('button');
        btn.textContent = d.label;
        btn.addEventListener('click', function () {
          closeTalkMenu();
          pushLog(game.go(d.key));
          afterTurn();
        });
        el.exits.appendChild(btn);
      }
    });

    // person present
    var personId = game.personInRoom();
    if (personId) {
      var c = game.characters[personId];
      var portraitNum = game.portraitFor(personId);
      el.portraitWrap.classList.remove('hidden');
      if (portraitNum) {
        el.portrait.classList.remove('hidden');
        Assets.apply(el.portrait, Assets.portrait(portraitNum));
      } else {
        // No portrait known for this character (see PORTRAIT_FALLBACK
        // comment in engine.js) - show the name only, no broken image.
        el.portrait.classList.add('hidden');
      }
      el.personName.textContent = c.name;
      el.personName.onclick = function () { openTalkMenu(personId); };
      el.portrait.onclick = function () { openTalkMenu(personId); };
    } else {
      el.portraitWrap.classList.add('hidden');
      closeTalkMenu();
    }
    refreshTalkAffordance();

    // objects in room
    el.roomObjects.innerHTML = '';
    game.objectsInRoom().forEach(function (id) {
      el.roomObjects.appendChild(makeObjectButton(id, false));
    });

    // inventory
    el.inventory.innerHTML = '';
    game.inventory().forEach(function (id) {
      el.inventory.appendChild(makeObjectButton(id, true));
    });

    el.score.textContent = game.score;
    el.turns.textContent = game.turns;

    if (game.ended) {
      el.endOverlay.classList.remove('hidden');
    } else {
      el.endOverlay.classList.add('hidden');
    }
  }

  function makeObjectButton(id, inInventory) {
    var os = game.objectState(id);
    var o = game.objects[id];
    var btn = document.createElement('button');
    btn.className = 'obj-btn';
    var img = document.createElement('img');
    Assets.apply(img, Assets.icon(os.icon));
    img.alt = o.name;
    var label = document.createElement('span');
    label.textContent = o.name;
    btn.appendChild(img);
    btn.appendChild(label);
    btn.addEventListener('click', function () {
      closeTalkMenu();
      if (verb === 'take' && !inInventory) {
        pushLog(game.take(id));
      } else if (verb === 'use') {
        pushLog(game.use(id));
      } else if (verb === 'look') {
        pushLog(game.look(id));
      } else if (verb === 'give' && inInventory) {
        pushLog(game.give(id));
      } else if (verb === 'drop' && inInventory) {
        pushLog(game.drop(id));
      } else if (verb === 'talk') {
        // Objects aren't talk targets, but staying silent here is the actual
        // bug: every other verb gives feedback for "select verb, click
        // something in the room", so Snakk must too. Redirect to whoever's
        // actually in the room (same as clicking the portrait), or say so
        // if no one is.
        talkToWhoeverIsHere();
        return;
      } else {
        return;
      }
      afterTurn();
    });
    return btn;
  }

  // Shared by clicking a room object or the scene background while Snakk is
  // selected: talk to whoever's present, or say there's no one here.
  function talkToWhoeverIsHere() {
    var pid = game.personInRoom();
    if (pid) {
      openTalkMenu(pid);
    } else {
      pushLog(game.noOneToTalkTo());
      finalizeTurn();
    }
  }

  function openTalkMenu(personId) {
    setVerb('talk');
    var qa = game.questionsFor(personId);
    el.talkQuestions.innerHTML = '';
    var any = false;
    qa.questions.forEach(function (q, i) {
      if (!q) return;
      any = true;
      var btn = document.createElement('button');
      btn.textContent = q;
      btn.addEventListener('click', function () {
        pushLog(game.talk(personId, i + 1));
        closeTalkMenu();
        afterTurn();
      });
      el.talkQuestions.appendChild(btn);
    });
    if (any) el.talkMenu.classList.remove('hidden');
  }

  function afterTurn() {
    save();
    render();
    finalizeTurn();
  }

  function save() {
    try {
      localStorage.setItem(SAVE_KEY, JSON.stringify(game.toJSON()));
    } catch (e) { /* storage unavailable; ignore */ }
  }

  function load() {
    var raw = localStorage.getItem(SAVE_KEY);
    if (!raw) return false;
    try {
      game.loadJSON(JSON.parse(raw));
      return true;
    } catch (e) {
      return false;
    }
  }

  function restart() {
    game.reset();
    localStorage.removeItem(SAVE_KEY);
    lastDescKey = null; // force the (now fresh) room description to show again
    render();
    finalizeTurn();
  }

  function buildVerbBar() {
    var verbs = [
      { key: 'look', label: 'Se på' },
      { key: 'take', label: 'Ta' },
      { key: 'use', label: 'Bruk' },
      { key: 'give', label: 'Gi' },
      { key: 'drop', label: 'Legg fra deg' },
      { key: 'talk', label: 'Snakk' }
    ];
    verbs.forEach(function (v) {
      var btn = document.createElement('button');
      btn.textContent = v.label;
      btn.dataset.verb = v.key;
      btn.addEventListener('click', function () { setVerb(v.key); });
      el.verbs.appendChild(btn);
    });
    setVerb('look');
  }

  function boot(data, dialogue) {
    game = new Game(data, dialogue);
    buildVerbBar();
    // Scene background as a second talk target alongside the portrait,
    // matching the "select verb, click something in the room" pattern the
    // other verbs already use. No-op for other verbs.
    el.scene.addEventListener('click', function () {
      if (verb === 'talk') { closeTalkMenu(); talkToWhoeverIsHere(); }
    });
    el.saveBtn.addEventListener('click', save);
    el.loadBtn.addEventListener('click', function () {
      load();
      lastDescKey = null; // force the loaded room's description to show again
      render();
      finalizeTurn();
    });
    el.restartBtn.addEventListener('click', function () {
      if (confirm('Start spillet på nytt?')) restart();
    });
    document.getElementById('end-restart-btn').addEventListener('click', restart);
    if (!load()) {
      // fresh game: show the intro text once
      if (data.title) setDescription(data.title);
    }
    render();
    finalizeTurn();
  }

  window.addEventListener('DOMContentLoaded', function () {
    Promise.all([
      fetch('game.json').then(function (r) {
        if (!r.ok) throw new Error('game.json: HTTP ' + r.status);
        return r.json();
      }),
      fetch('dialogue.json').then(function (r) {
        if (!r.ok) throw new Error('dialogue.json: HTTP ' + r.status);
        return r.json();
      })
    ]).then(function (results) {
      boot(results[0], results[1]);
    }).catch(function (err) {
      document.getElementById('log').textContent = 'Kunne ikke laste spilldata: ' + err.message;
      console.error(err);
    });
  });
})();
