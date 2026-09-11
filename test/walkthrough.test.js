// Replays test/walkthrough.json (found by test/solve.js) through the engine and checks
// every command is one the UI actually offers at that point, and that the game is won.
const test = require('node:test');
const assert = require('node:assert');
const Game = require('../js/engine.js');
const route = require('./walkthrough.json');

test('walkthrough reaches the ending through UI-offered commands', () => {
  const g = new Game(require('../game.json'), require('../dialogue.json'));
  route.forEach(([verb, a, b], i) => {
    const where = `step ${i + 1} (${verb} ${a}${b ? ' ' + b : ''}) in room ${g.currentRoom}`;
    if (verb === 'go') assert.ok(g.directions().includes(a), `${where}: no such exit button`);
    else if (verb === 'talk') {
      assert.strictEqual(g.personInRoom(), a, `${where}: person not here`);
      assert.ok(g.questionsFor(a).questions[b - 1], `${where}: question not shown`);
    } else if (verb === 'take') assert.ok(g.objectsInRoom().includes(a), `${where}: object not in room`);
    else if (verb === 'give' || verb === 'drop') assert.ok(g.inventory().includes(a), `${where}: not carried`);
    else assert.ok(g.objectsInRoom().includes(a) || g.inventory().includes(a), `${where}: object not visible`);
    g[verb](a, b);
    assert.ok(!g.ended, `${where}: game over`);
  });
  assert.strictEqual(g.currentRoom, 40, 'did not reach Avslutning');
});
