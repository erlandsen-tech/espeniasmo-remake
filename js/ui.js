/* DOM wiring for Espen i Asmo. Depends on engine.js (Game) and data.js
 * (Assets, DIRS) being loaded first as plain <script> tags. */
(function () {
  'use strict';

  var SAVE_KEY = 'espeniasmo_save_v2';

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
    main: document.querySelector('main'),
    endOverlay: document.getElementById('end-overlay'),
    endReason: document.getElementById('end-reason'),
    endRestartBtn: document.getElementById('end-restart-btn'),
    popupOverlay: document.getElementById('popup-overlay'),
    popupText: document.getElementById('popup-text'),
    popupOk: document.getElementById('popup-ok'),
    header: document.querySelector('header'),
    footer: document.querySelector('footer'),
    helpBtn: document.getElementById('help-btn'),
    helpOverlay: document.getElementById('help-overlay'),
    helpClose: document.getElementById('help-close')
  };

  var HELP_SEEN_KEY = 'espeniasmo_help_seen';

  var game = null;
  var verb = 'look'; // look | take | use | give | drop | talk
  var gameTitle = ''; // intro text, kept so restart() can show it again
  var VERB_ORDER = ['look', 'take', 'use', 'give', 'drop', 'talk'];
  // Element that had focus before an action, so render() (which destroys and
  // recreates the exit/object/talk buttons) can restore an equivalent one
  // afterwards instead of dropping focus to <body>.
  var focusMemo = null;
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
  // Popup messages from the current turn. The original shows these in a box the player
  // has to dismiss (hunger warnings, deaths, key story beats), not in the text pane.
  var pendingPopups = [];
  // Whether the end-game box is currently the open dialog, so render() only
  // acts (and steals focus) on the transition into/out of that state.
  var endDialogOpen = false;

  function setVerb(v) {
    verb = v;
    Array.prototype.forEach.call(el.verbs.children, function (btn) {
      var active = btn.dataset.verb === v;
      btn.classList.toggle('active', active);
      btn.setAttribute('aria-pressed', active ? 'true' : 'false');
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
      if (e.kind === 'popup' && e.text) pendingPopups.push(e.text);
    });
  }

  function fillParagraphs(container, texts) {
    container.innerHTML = '';
    texts.forEach(function (t) {
      var p = document.createElement('p');
      p.textContent = t;
      container.appendChild(p);
    });
  }

  // Modal dialog helper pair (W3C ARIA APG dialog pattern): opening inerts
  // everything outside the overlay and remembers what to return focus to;
  // closing reverses both, unless the game has ended, in which case the
  // chrome stays inert behind the end box regardless of which dialog closes.
  var dialogReturnTo = null;

  function setChromeInert(state) {
    if (el.header) el.header.inert = state;
    el.main.inert = state;
    if (el.footer) el.footer.inert = state;
  }

  function openDialog(overlayEl, focusEl) {
    dialogReturnTo = document.activeElement;
    overlayEl.classList.remove('hidden');
    setChromeInert(true);
    // Focusing a button at the end of a scrolling box (the help's "Spill") would scroll the
    // box to the bottom and hide the title on small screens, so open at the top instead.
    var box = overlayEl.querySelector('.overlay-box');
    if (box) box.scrollTop = 0;
    focusEl.focus({ preventScroll: true });
  }

  function closeDialog(overlayEl) {
    if (overlayEl.classList.contains('hidden')) return;
    overlayEl.classList.add('hidden');
    if (!game.ended) setChromeInert(false);
    var target = dialogReturnTo;
    dialogReturnTo = null;
    // <body> means nothing had focus (the help box opened by itself on a first visit): use the fallback.
    if (target && target !== document.body && document.contains(target) && !target.disabled) {
      target.focus();
    } else {
      // Item-3 fallback chains all bottom out here: the first enabled exit.
      var fallback = el.exits.querySelector('button[data-dir]:not([disabled])');
      if (fallback) fallback.focus();
    }
  }

  function showPopups() {
    var texts = pendingPopups;
    pendingPopups = [];
    if (game.ended) {
      // Only the turn that ended the game carries its reason; never blank it afterwards.
      if (texts.length) fillParagraphs(el.endReason, texts);
      return;
    }
    if (!texts.length) return;
    fillParagraphs(el.popupText, texts);
    openDialog(el.popupOverlay, el.popupOk);
  }

  function closePopup() {
    closeDialog(el.popupOverlay);
  }

  function openHelp() {
    openDialog(el.helpOverlay, el.helpClose);
  }

  function closeHelp() {
    closeDialog(el.helpOverlay);
    try { localStorage.setItem(HELP_SEEN_KEY, '1'); } catch (e) { /* storage unavailable */ }
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
    showPopups();
  }

  // Keyboard shortcut label per exit direction, for aria-keyshortcuts, kept
  // in sync with the keydown handler in boot().
  var EXIT_KEYSHORTCUTS = {
    n: 'ArrowUp', s: 'ArrowDown', e: 'ArrowRight', w: 'ArrowLeft',
    up: 'PageUp', down: 'PageDown', in: 'i', out: 'u'
  };

  // What has focus right now, expressed as something render() can look up
  // again after it rebuilds the exit/object/talk buttons (WCAG 2.4.3: focus
  // must not silently fall back to <body> after every turn).
  function captureFocus() {
    var a = document.activeElement;
    if (!a || !el.main.contains(a)) return null;
    if (a.dataset && a.dataset.dir) return { type: 'exit', dir: a.dataset.dir };
    if (a.dataset && a.dataset.verb) return { type: 'verb', verb: a.dataset.verb };
    if (el.roomObjects.contains(a)) {
      return { type: 'object', grid: 'room', index: Array.prototype.indexOf.call(el.roomObjects.children, a) };
    }
    if (el.inventory.contains(a)) {
      return { type: 'object', grid: 'inventory', index: Array.prototype.indexOf.call(el.inventory.children, a) };
    }
    if (el.talkQuestions.contains(a)) {
      return { type: 'talk', index: Array.prototype.indexOf.call(el.talkQuestions.children, a) };
    }
    return { type: 'other' };
  }

  // Restores focus to the equivalent (or best-fallback) new button after
  // render() has rebuilt the exit/object/talk buttons.
  function restoreFocus(memo) {
    if (!memo) return;
    var exitBtns = Array.prototype.slice.call(el.exits.querySelectorAll('button[data-dir]'));
    var enabledExits = exitBtns.filter(function (b) { return !b.disabled; });
    if (memo.type === 'exit') {
      var same = exitBtns.filter(function (b) { return b.dataset.dir === memo.dir; })[0];
      if (same && !same.disabled) { same.focus(); return; }
      if (enabledExits[0]) { enabledExits[0].focus(); return; }
      return;
    }
    if (memo.type === 'object') {
      var grid = memo.grid === 'inventory' ? el.inventory : el.roomObjects;
      var children = grid.children;
      if (children.length) {
        var idx = Math.min(memo.index, children.length - 1);
        if (idx >= 0) { children[idx].focus(); return; }
      }
      if (enabledExits[0]) { enabledExits[0].focus(); return; }
      return;
    }
    if (memo.type === 'talk') {
      if (!el.talkMenu.classList.contains('hidden') && !el.portraitWrap.classList.contains('hidden')) {
        el.personName.focus();
        return;
      }
      if (enabledExits[0]) enabledExits[0].focus();
      return;
    }
    // verb / other: nothing render() rebuilds, so leave focus where it is.
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

    // exits: all eight always drawn so the compass keeps its shape; unavailable ones disabled
    Array.prototype.slice.call(el.exits.querySelectorAll('button')).forEach(function (b) { b.remove(); });
    var dirs = game.directions();
    DIRS.forEach(function (d) {
      var btn = document.createElement('button');
      btn.textContent = d.label;
      btn.dataset.dir = d.key;
      btn.disabled = dirs.indexOf(d.key) === -1;
      if (EXIT_KEYSHORTCUTS[d.key]) btn.setAttribute('aria-keyshortcuts', EXIT_KEYSHORTCUTS[d.key]);
      btn.addEventListener('click', function () {
        if (locked()) return;
        focusMemo = captureFocus();
        closeTalkMenu();
        pushLog(game.go(d.key));
        afterTurn();
      });
      el.exits.appendChild(btn);
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

    // Once the game is over nothing under the end box may be clicked or tabbed to.
    var justEnded = game.ended && !endDialogOpen;
    if (justEnded) {
      endDialogOpen = true;
      el.endOverlay.classList.remove('hidden');
      setChromeInert(true);
      el.endRestartBtn.focus();
    } else if (!game.ended && endDialogOpen) {
      endDialogOpen = false;
      el.endOverlay.classList.add('hidden');
      setChromeInert(false);
    }

    // The end box already claimed focus above; otherwise restore whatever
    // had focus before this render rebuilt the exit/object/talk buttons.
    if (!justEnded) restoreFocus(focusMemo);
    focusMemo = null;
  }

  // Click handlers call this first: after end_game the engine returns no text for further
  // actions, so they must not run at all.
  function locked() {
    return !game || game.ended;
  }

  function makeObjectButton(id, inInventory) {
    var os = game.objectState(id);
    var o = game.objects[id];
    var btn = document.createElement('button');
    btn.className = 'obj-btn';
    var img = document.createElement('img');
    Assets.apply(img, Assets.icon(os.icon));
    img.alt = ''; // decorative: the label span next to it already names the object
    var label = document.createElement('span');
    label.textContent = o.name;
    btn.appendChild(img);
    btn.appendChild(label);
    btn.addEventListener('click', function () {
      if (locked()) return;
      var restoreTo = captureFocus();
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
      focusMemo = restoreTo;
      afterTurn();
    });
    return btn;
  }

  // Shared by clicking a room object or the scene background while Snakk is
  // selected: talk to whoever's present, or say there's no one here.
  function talkToWhoeverIsHere() {
    if (locked()) return;
    var pid = game.personInRoom();
    if (pid) {
      openTalkMenu(pid);
    } else {
      pushLog(game.noOneToTalkTo());
      finalizeTurn();
    }
  }

  function openTalkMenu(personId) {
    if (locked()) return;
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
        if (locked()) return;
        focusMemo = captureFocus();
        pushLog(game.talk(personId, i + 1));
        closeTalkMenu();
        afterTurn();
      });
      el.talkQuestions.appendChild(btn);
    });
    if (any) {
      el.talkMenu.classList.remove('hidden');
      el.talkQuestions.querySelector('button').focus();
    }
  }

  function afterTurn() {
    save();
    render();
    finalizeTurn();
  }

  // Returns false when the browser refuses storage (private mode, quota, disabled).
  function save() {
    try {
      localStorage.setItem(SAVE_KEY, JSON.stringify(game.toJSON()));
      return true;
    } catch (e) {
      return false;
    }
  }

  // 'ok', 'none' (nothing saved) or 'bad' (unreadable, or does not fit this game.json).
  // On 'bad' the running game is left as it was.
  function load() {
    try {
      var raw = localStorage.getItem(SAVE_KEY);
      if (!raw) return 'none';
      game.loadJSON(JSON.parse(raw));
      return 'ok';
    } catch (e) {
      console.warn('save not loaded:', e);
      return 'bad';
    }
  }

  function notice(text) {
    appendEntry('log-text', text);
    finalizeTurn();
  }

  function restart() {
    game.reset();
    el.log.innerHTML = '';
    pendingLogEls = [];
    pendingPopups = [];
    el.endReason.innerHTML = '';
    closePopup();
    try { localStorage.removeItem(SAVE_KEY); } catch (e) { /* storage unavailable */ }
    lastDescKey = null; // force the (now fresh) room description to show again
    if (gameTitle) setDescription(gameTitle); // same intro text a fresh boot shows
    render();
    finalizeTurn();
    // Restarting from the end box leaves focus on its now-hidden button; start from the compass.
    if (el.endOverlay.contains(document.activeElement)) {
      var firstExit = el.exits.querySelector('button[data-dir]:not([disabled])');
      if (firstExit) firstExit.focus();
    }
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
    verbs.forEach(function (v, i) {
      var btn = document.createElement('button');
      btn.textContent = v.label;
      btn.dataset.verb = v.key;
      btn.setAttribute('aria-pressed', 'false');
      btn.setAttribute('aria-keyshortcuts', String(i + 1));
      btn.addEventListener('click', function () { setVerb(v.key); });
      el.verbs.appendChild(btn);
    });
    setVerb('look');
  }

  // Keyboard shortcuts (Game Accessibility Guidelines): one listener, mapped
  // to the same click handlers the mouse uses so logging/save/focus stay identical.
  var ARROW_TO_DIR = { ArrowUp: 'n', ArrowDown: 's', ArrowRight: 'e', ArrowLeft: 'w', PageUp: 'up', PageDown: 'down' };

  function clickExit(dir) {
    // A key for a hidden duplicate exit (↓ where only Ned is shown) uses the shown twin.
    var shown = game.offeredDirection(dir);
    if (!shown) return;
    var btn = el.exits.querySelector('button[data-dir="' + shown + '"]');
    if (btn && !btn.disabled) btn.click();
  }

  function anyDialogOpen() {
    return !el.popupOverlay.classList.contains('hidden') ||
      !el.endOverlay.classList.contains('hidden') ||
      (el.helpOverlay && !el.helpOverlay.classList.contains('hidden'));
  }

  function handleKeydown(e) {
    if (e.ctrlKey || e.altKey || e.metaKey) return;

    if (!el.popupOverlay.classList.contains('hidden')) {
      if (e.key === 'Enter' || e.key === 'Escape') { e.preventDefault(); closePopup(); }
      return;
    }
    if (el.helpOverlay && !el.helpOverlay.classList.contains('hidden')) {
      if (e.key === 'Escape') { e.preventDefault(); closeHelp(); }
      return;
    }
    if (anyDialogOpen()) return; // end box: Escape does not close it, nothing else to do here

    if (locked()) return;

    if (e.key === 'h' || e.key === 'H' || e.key === '?') {
      e.preventDefault();
      openHelp();
      return;
    }

    var verbIdx = parseInt(e.key, 10) - 1;
    if (!isNaN(verbIdx) && VERB_ORDER[verbIdx]) {
      e.preventDefault();
      setVerb(VERB_ORDER[verbIdx]);
      return;
    }

    var onLog = document.activeElement === el.log;
    var dir = ARROW_TO_DIR[e.key];
    if (dir) {
      if (onLog) return; // let the log scroll instead
      e.preventDefault();
      clickExit(dir);
      return;
    }
    if (e.key === 'i' || e.key === 'I') { e.preventDefault(); clickExit('in'); return; }
    if (e.key === 'u' || e.key === 'U') { e.preventDefault(); clickExit('out'); return; }
  }

  function boot(data, dialogue) {
    game = new Game(data, dialogue);
    gameTitle = data.title || '';
    buildVerbBar();
    // Scene background as a second talk target alongside the portrait,
    // matching the "select verb, click something in the room" pattern the
    // other verbs already use. No-op for other verbs.
    el.scene.addEventListener('click', function () {
      if (verb === 'talk') { closeTalkMenu(); talkToWhoeverIsHere(); }
    });
    el.saveBtn.addEventListener('click', function () {
      notice(save() ? 'Spillet er lagret.' : 'Kunne ikke lagre: nettleseren tillater ikke lagring.');
    });
    el.loadBtn.addEventListener('click', function () {
      var result = load();
      if (result === 'none') return notice('Ingen lagring funnet.');
      if (result === 'bad') return notice('Lagringen kunne ikke leses.');
      el.endReason.innerHTML = '';
      closePopup();
      lastDescKey = null; // force the loaded room's description to show again
      render();
      finalizeTurn();
    });
    el.restartBtn.addEventListener('click', function () {
      if (confirm('Start spillet på nytt?')) restart();
    });
    el.endRestartBtn.addEventListener('click', restart);
    el.popupOk.addEventListener('click', closePopup);
    if (el.helpBtn && el.helpClose) el.helpBtn.addEventListener('click', openHelp);
    if (el.helpClose) el.helpClose.addEventListener('click', closeHelp);
    document.addEventListener('keydown', handleKeydown);
    var loaded = load();
    if (loaded !== 'ok') {
      // fresh game: show the intro text once
      if (gameTitle) setDescription(gameTitle);
      if (loaded === 'bad') appendEntry('log-text', 'Den gamle lagringen kunne ikke leses, så spillet starter fra begynnelsen.');
    }
    render();
    finalizeTurn();
    // First-run help: only when there is nothing to resume and the player
    // hasn't dismissed it before (storage can throw - private mode etc).
    if (loaded === 'none' && el.helpOverlay && el.helpClose) {
      var helpSeen = true;
      try { helpSeen = !!localStorage.getItem(HELP_SEEN_KEY); } catch (e) { helpSeen = false; }
      if (!helpSeen) openHelp();
    }
  }

  window.addEventListener('DOMContentLoaded', function () {
    // Cache-busts the data files on every deploy without touching the (immutable,
    // generated) game.json/dialogue.json filenames themselves.
    var versionMeta = document.querySelector('meta[name="app-version"]');
    var VERSION = (versionMeta && versionMeta.content) || '';
    var qs = VERSION ? '?v=' + encodeURIComponent(VERSION) : '';
    Promise.all([
      fetch('game.json' + qs).then(function (r) {
        if (!r.ok) throw new Error('game.json: HTTP ' + r.status);
        return r.json();
      }),
      fetch('dialogue.json' + qs).then(function (r) {
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
