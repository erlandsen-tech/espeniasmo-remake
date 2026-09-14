// Game.directions() offers only one of several exits that lead to the same room. That is only
// safe while such exits behave identically, so check it against the data rather than trust it.
const test = require('node:test');
const assert = require('node:assert');
const Game = require('../js/engine.js');
const data = require('../game.json');
const dialogue = require('../dialogue.json');

const DIR_NUM = { n: 1, s: 2, e: 3, w: 4, out: 5, in: 6, up: 7, down: 8 };
const goRules = (room, dir) => data.rules_folded
  .filter(r => r.verb === 'go' && r.k1 === room && r.k2 === DIR_NUM[dir])
  .map(r => JSON.stringify({ if: r.if, then: r.then, else: r.else }))
  .sort();

const duplicateGroups = () => {
  const groups = [];
  data.rooms.forEach(room => room.states.forEach((st, i) => {
    const byTarget = {};
    Object.entries(st.exits || {}).forEach(([dir, target]) => (byTarget[target] = byTarget[target] || []).push(dir));
    Object.values(byTarget).filter(dirs => dirs.length > 1).forEach(dirs => groups.push({ room, state: i + 1, dirs }));
  }));
  return groups;
};

test('exits to the same room have identical go-rules', () => {
  const groups = duplicateGroups();
  assert.ok(groups.length > 0, 'expected duplicate exits in game.json; if none remain, drop this test');
  groups.forEach(({ room, state, dirs }) => {
    const first = JSON.stringify(goRules(room.id, dirs[0]));
    dirs.slice(1).forEach(dir => assert.strictEqual(JSON.stringify(goRules(room.id, dir)), first,
      `${room.name.trim()} state ${state}: ${dirs[0]} and ${dir} lead to the same room but have different go-rules`));
  });
});

test('a hidden duplicate exit maps to the shown one', () => {
  const g = new Game(data, dialogue); // starts in Hjemme: n/out -> Tun, s/down -> Kjeller
  assert.deepStrictEqual(g.directions().sort(), ['down', 'out']);
  assert.strictEqual(g.offeredDirection('s'), 'down');
  assert.strictEqual(g.offeredDirection('n'), 'out');
  assert.strictEqual(g.offeredDirection('down'), 'down');
  assert.strictEqual(g.offeredDirection('e'), null);
});

test('directions() never offers two exits to the same room', () => {
  const g = new Game(data, dialogue);
  duplicateGroups().forEach(({ room, state }) => {
    g.currentRoom = room.id;
    g.roomStates[room.id] = state;
    const exits = room.states[state - 1].exits;
    const targets = g.directions().filter(d => exits[d]).map(d => exits[d]);
    assert.strictEqual(new Set(targets).size, targets.length, `${room.name.trim()} state ${state}: ${g.directions()}`);
  });
});
