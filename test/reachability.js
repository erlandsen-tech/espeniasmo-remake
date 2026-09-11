// Static check: every keyed rule must be triggerable from a control the UI can show.
const g = require('../game.json');
const dialogue = require('../dialogue.json');
const DIR = { 1: 'n', 2: 's', 3: 'e', 4: 'w', 5: 'out', 6: 'in', 7: 'up', 8: 'down' };
const UI_VERBS = new Set(['go', 'take', 'use', 'look', 'give', 'drop', 'talk']);
const rooms = Object.fromEntries(g.rooms.map(r => [r.id, r]));
const problems = [];
const matters = r => r.then.some(a => ['add_score', 'var_add', 'var_set', 'place_object', 'goto_room',
  'set_object_state', 'set_room_state', 'set_person_state', 'summon_person', 'remove_person'].includes(a.op));

for (const r of g.rules_folded) {
  const tag = `${r.verb} k1=${r.k1} k2=${r.k2}${matters(r) ? ' [changes state]' : ''}`;
  if (!UI_VERBS.has(r.verb)) { problems.push(`verb not in UI: ${tag}`); continue; }
  if (r.verb === 'go') {
    const room = rooms[r.k1];
    if (!room) { problems.push(`go from unknown room: ${tag}`); continue; }
    // Game.directions() offers any direction with an exit or a go-rule, so go-rules are always reachable.
  }
  if (r.verb === 'talk') {
    const d = dialogue[r.k1];
    if (!d || !d.states.some(s => s.questions[r.k2 - 1])) problems.push(`talk question not shown: ${tag}`);
  }
}
const scoring = g.rules_folded.filter(r => r.then.some(a => a.op === 'add_score')).length;
console.log(`${g.rules_folded.length} keyed rules, ${scoring} award score`);
problems.forEach(p => console.log('UNREACHABLE', p));
process.exitCode = problems.length ? 1 : 0;
