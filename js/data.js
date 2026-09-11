/* Asset path helpers and small data-shape helpers shared by ui.js. */
(function (root) {
  'use strict';

  function pad3(n) { return String(n).padStart(3, '0'); }

  var Assets = {
    scene: function (n) { return 'ESPENS_' + n + '.png'; },
    // Character portraits: takes the ESPENP.n number, NOT a character id -
    // callers must resolve it via Game.portraitFor(personId) first. The
    // room record's own "portrait" word is a dead field (always 1 for
    // every room in ESPEN.ADV); the real per-character portrait index is a
    // word at offset 288 of the 828-byte character record (previously
    // undecoded), added to game.json's characters[].portrait by
    // tools/adv_dump.py. Verified visually against 9 of 16 portrait files
    // (e.g. Skipet -> ESPENP_15.png is a Viking ship, Kongen -> ESPENP_17
    // is a crowned king). A handful of characters have no assigned
    // portrait in the original data (portrait: 0); see engine.js.
    portrait: function (portraitNum) { return 'ESPENP_' + portraitNum + '.png'; },
    icon: function (iconNum) { return 'ESPEN_OBI_' + pad3(iconNum - 1) + '.png'; },
    // Loads assets/new/<file> first, falls back to assets/orig/<file> if it
    // 404s (static page, no server logic, so this is done via onerror).
    apply: function (imgEl, filename) {
      imgEl.onerror = function () {
        imgEl.onerror = null;
        imgEl.src = 'assets/orig/' + filename;
      };
      imgEl.src = 'assets/new/' + filename;
    }
  };

  var DIRS = [
    { key: 'n', label: 'Nord' }, { key: 's', label: 'Sør' },
    { key: 'e', label: 'Øst' }, { key: 'w', label: 'Vest' },
    { key: 'out', label: 'Ut' }, { key: 'in', label: 'Inn' },
    { key: 'up', label: 'Opp' }, { key: 'down', label: 'Ned' }
  ];

  root.Assets = Assets;
  root.DIRS = DIRS;
})(typeof window !== 'undefined' ? window : this);
