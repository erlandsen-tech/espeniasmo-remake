// Compiles test/route.js into concrete engine commands (test/walkthrough.json).
const fs = require('fs');
const Game = require('../js/engine.js');
const data = require('../game.json');
const g = new Game(data, require('../dialogue.json'));
const route = require('./route.js');
const HUNGRY = 35;
const roomId = name => { const r = data.rooms.find(r => r.name.trim() === name); if (!r) throw new Error('no room ' + name); return r.id; };
const visible = () => g.objectsInRoom().concat(g.inventory());
const objId = (name, pool) => { const id = pool.find(i => g.objects[i].name === name); if (id == null) throw new Error(`${name} not available in room ${g.room().name.trim()}`); return id; };
const personId = name => Number(Object.keys(g.characters).find(i => g.characters[i].name === name));
const eats = new Set(data.rules_folded.filter(r => r.verb === 'use' && r.then.some(a => a.op === 'var_set' && a.a === 5 && a.b === 1)).map(r => r.k1));
const out = [];
const exec = cmd => {
  const log = g[cmd[0]].apply(g, cmd.slice(1));
  out.push(cmd);
  if (g.ended) throw new Error(`game over after ${cmd.join(' ')}: ${log.map(e => e.text).join(' / ')}`);
  return log;
};
const snap = () => JSON.stringify(g.toJSON());
// Walking can change state without moving (e.g. the bridge troll), so dedup on state, not room.
const COUNTERS = [5, 6, 9, 14, 16, 19];
const key = () => { const s = g.toJSON(); const v = Object.assign({}, s.vars); COUNTERS.forEach(c => delete v[c]);
  return JSON.stringify([s.currentRoom, s.roomStates, s.objectLocations, s.objectStates, s.personLocations, s.personStates, v]); };
function walk(target) {
  const start = snap(), seen = new Set([key()]);
  let frontier = [{ s: start, path: [] }];
  while (frontier.length) {
    const next = [];
    for (const n of frontier) {
      g.loadJSON(JSON.parse(n.s));
      for (const d of g.directions()) {
        g.loadJSON(JSON.parse(n.s));
        g.go(d);
        if (g.ended || seen.has(key())) continue;
        seen.add(key());
        const path = n.path.concat([d]);
        if (g.currentRoom === target) { g.loadJSON(JSON.parse(start)); return path; }
        next.push({ s: snap(), path });
      }
    }
    frontier = next;
  }
  g.loadJSON(JSON.parse(start));
  throw new Error(`no safe path to room ${target} from ${g.currentRoom}`);
}
function eatIfHungry() {
  if ((g.vars[5] || 0) < HUNGRY) return;
  const food = g.inventory().find(i => eats.has(i));
  if (food == null) throw new Error(`starving (hunger ${g.vars[5]}) with no food`);
  exec(['use', food]);
}
for (const step of route) {
  const [verb, ...rest] = step.split(' ');
  const arg = rest.join(' ');
  if (verb === 'go') {
    for (const d of walk(roomId(arg))) { eatIfHungry(); exec(['go', d]); }
    continue;
  }
  eatIfHungry();
  let log;
  if (verb === 'talk') log = exec(['talk', personId(rest[0]), Number(rest[1])]);
  else if (verb === 'take') log = exec(['take', objId(arg, g.objectsInRoom())]);
  else if (verb === 'give' || verb === 'drop') log = exec([verb, objId(arg, g.inventory())]);
  else log = exec([verb, objId(arg, visible())]);
  console.log(`${step.padEnd(26)} room ${g.room().name.trim().padEnd(13)} score ${String(g.score).padStart(3)} hunger ${String(g.vars[5]).padStart(2)} inv ${g.inventory().length} | ${log.map(e => e.text).join(' / ').slice(0, 90)}`);
}
const won = g.currentRoom === 40;
console.log(won ? `WON: ${out.length} commands, score ${g.score}` : `NOT WON, ended in room ${g.currentRoom}`);
fs.writeFileSync(__dirname + '/walkthrough.json', JSON.stringify(out) + '\n');
process.exitCode = won ? 0 : 1;
