// Save/load: a mid-route save must resume to the same win, and a save that does not fit the
// current game data must be rejected without touching the running game.
const test = require('node:test');
const assert = require('node:assert');
const Game = require('../js/engine.js');
const data = require('../game.json');
const dialogue = require('../dialogue.json');
const route = require('./walkthrough.json');

const play = (g, steps) => steps.forEach(([verb, a, b]) => g[verb](a, b));

test('a save taken halfway resumes to the same ending', () => {
  const half = Math.floor(route.length / 2);
  const a = new Game(data, dialogue);
  play(a, route.slice(0, half));
  const b = new Game(data, dialogue);
  b.loadJSON(JSON.parse(JSON.stringify(a.toJSON())));
  play(b, route.slice(half));
  assert.strictEqual(b.currentRoom, 40);
});

test('bad saves throw and leave the game unchanged', () => {
  const g = new Game(data, dialogue);
  play(g, route.slice(0, 10));
  const before = JSON.stringify(g.toJSON());
  const good = g.toJSON();
  const bad = [
    null, {}, [],
    { ...good, currentRoom: 999 },
    { ...good, vars: undefined },
    { ...good, objectLocations: { ...good.objectLocations, 9999: 1 } },
    { ...good, personStates: {} },
  ];
  bad.forEach((s, i) => {
    assert.throws(() => g.loadJSON(JSON.parse(JSON.stringify(s))), /invalid save/, `case ${i}`);
    assert.strictEqual(JSON.stringify(g.toJSON()), before, `case ${i} mutated the game`);
  });
});
