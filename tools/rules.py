"""Decode ESPEN.ADV rules using opcode semantics from the ADVRTNOR.EXE interpreter
(segment 0x20a: condition evaluator at 0x57a, action executor at 0x227)."""
import json, sys

VERBS = {0: 'go', 1: 'take', 2: 'drop', 3: 'use', 4: 'give', 5: 'look', 6: 'talk'}
DIRS = {1: 'n', 2: 's', 3: 'e', 4: 'w', 5: 'out', 6: 'in', 7: 'up', 8: 'down'}

COND = {
    0: ('room_is', 'a'),          # current room == a
    1: ('room_not', 'a'),
    2: ('carried', 'a'),          # object a in inventory
    3: ('not_carried', 'a'),
    4: ('room_state', 'a', 'b'),  # room a state == b
    5: ('chance', 'a'),           # a percent
    6: ('person_here', 'a'),
    7: ('person_state', 'a', 'b'),  # person a present and state == b
    8: ('person_absent', 'a'),
    9: ('object_here', 'a'),      # in room or carried
    10: ('object_state', 'a', 'b'),  # object a in play and state == b
    11: ('object_gone', 'a'),     # location 0 (not in play)
    12: ('var_eq', 'a', 'b'),
    13: ('var_gt', 'a', 'b'),
    14: ('var_lt', 'a', 'b'),
    15: ('else',),                # true only in the post-default pass
}
ACT = {
    0: ('popup', 'a'),           # message shown in a modal box
    1: ('remove_object', 'a'),    # location := 0
    2: ('place_object', 'a'),     # into current room if not in play
    3: ('remove_person', 'a'),
    4: ('summon_person', 'a'),    # to its home room
    5: ('goto_room', 'a'),
    6: ('message', 'a'),
    7: ('set_room_state', 'a', 'b'),
    8: ('set_object_state', 'a', 'b'),
    9: ('set_person_state', 'a', 'b'),
    10: ('end_game',),
    11: ('add_score', 'a'),
    12: ('var_set', 'a', 'b'),
    13: ('var_add', 'a', 'b'),
    14: ('var_sub', 'a', 'b'),
    15: ('handled',),             # suppress default verb handling
}

def dec(table, op, a, b):
    spec = table[op]
    out = {'op': spec[0]}
    for name, val in zip(spec[1:], (a, b)):
        out[name] = val
    return out

def decode(rules_raw):
    rules = []
    for r in rules_raw:
        verb = r['b0']; k1, k2 = r['key']
        rule = {'verb': VERBS.get(verb, verb), 'k1': k1, 'k2': k2,
                'cond': dec(COND, *r['cond']), 'act': dec(ACT, *r['act'])}
        if verb == 0:
            rule['dir'] = DIRS.get(k2, k2)
        if verb == 6:
            rule['question'] = k2
        rules.append(rule)
    return rules

def fold(rules):
    """Fold the editor's compiled form back into IF conds THEN actions.
    Pattern: [var-2==0 -> var0=0] (cond -> var0+=1)* [var0==N -> var-1=-1]
             (var-1==-1 -> action)* [var-1<0 -> var-1=0]. Groups without the
             counter prelude are single-condition: [cond -> var-1=-1] ..."""
    out = []; i = 0; V = 65535; V2 = 65534
    def is_(x, op, a=None, b=None):
        return x['op'] == op and (a is None or x.get('a') == a) and (b is None or x.get('b') == b)
    while i < len(rules):
        r = rules[i]
        conds = []; acts = []; j = i; ok = True
        if is_(r['cond'], 'var_eq', V2, 0) and is_(r['act'], 'var_set', 0, 0):
            j += 1
            while j < len(rules) and is_(rules[j]['act'], 'var_add', 0, 1):
                conds.append(rules[j]['cond']); j += 1
            if j < len(rules) and is_(rules[j]['cond'], 'var_eq', 0) and is_(rules[j]['act'], 'var_set', V, V):
                j += 1
            else: ok = False
        elif is_(r['act'], 'var_set', V, V):
            conds.append(r['cond']); j += 1
        else:
            ok = False
        if ok:
            while j < len(rules) and is_(rules[j]['cond'], 'var_eq', V, V):
                acts.append(rules[j]['act']); j += 1
            if j < len(rules) and is_(rules[j]['cond'], 'var_lt', V, 0) and is_(rules[j]['act'], 'var_set', V, 0):
                j += 1
            else: ok = False
        if ok and j > i:
            rule = {'verb': r['verb'], 'k1': r['k1'], 'k2': r['k2'], 'if': conds, 'then': acts}
            if 'dir' in r: rule['dir'] = r['dir']
            out.append(rule); i = j
        else:
            out.append({'verb': r['verb'], 'k1': r['k1'], 'k2': r['k2'], 'raw': True,
                        'if': [r['cond']], 'then': [r['act']]}); i += 1
    return out

if __name__ == '__main__':
    g = json.load(open(sys.argv[1]))
    g['rules'] = decode(g['rules_raw'])
    g['rules_folded'] = fold(g['rules'])
    # global rules: trailer = count word + count x (cond 5, act 5); run every turn, no key
    import struct
    t = bytes.fromhex(g['trailer_hex']); n = struct.unpack('<H', t[:2])[0]
    graw = [{'b0': -1, 'key': [0, 0],
             'cond': (t[2+i*10], *struct.unpack('<HH', t[3+i*10:7+i*10])),
             'act': (t[7+i*10], *struct.unpack('<HH', t[8+i*10:12+i*10]))} for i in range(n)]
    g['global_rules'] = fold(decode(graw))
    g['counts'] = dict(zip(('verb_icons', 'object_icons', 'scenes', 'portraits'), struct.unpack('<4H', t[2+n*10:10+n*10])))
    print(len(g['global_rules']), 'global rules')
    print(len(g['rules_folded']), 'folded rules,', sum(1 for r in g['rules_folded'] if r.get('raw')), 'unfolded records')
    json.dump(g, open(sys.argv[1], 'w'), ensure_ascii=False, indent=1)
    objs = {o['id']: o['name'] for o in g['objects']}
    rooms = {r['id']: r['name'] for r in g['rooms']}
    pers = {c['id']: c['name'] for c in g['characters']}
    def nm(rule):
        v = rule['verb']
        if v in ('take', 'drop', 'look'): return f"{v} {objs.get(rule['k1'], rule['k1'])}"
        if v == 'use': return f"use {objs.get(rule['k1'], rule['k1'])} on {objs.get(rule['k2'], rule['k2'])}"
        if v == 'give': return f"give {objs.get(rule['k1'], rule['k1'])} to {pers.get(rule['k2'], rule['k2'])}"
        if v == 'talk': return f"talk {pers.get(rule['k1'], rule['k1'])} q{rule['k2']}"
        if v == 'go': return f"go {DIRS.get(rule['k2'], rule['k2'])} from {rooms.get(rule['k1'], rule['k1'])}"
        return str(rule)
    def fmt(x, table):
        s = x['op']
        if 'a' in x:
            a = x['a']
            if s.startswith('room'): a = f"{a}:{rooms.get(a, '?')}"
            elif s.startswith(('object', 'carried', 'not_carried', 'remove_object', 'place_object', 'set_object')): a = f"{a}:{objs.get(a, '?')}"
            elif s.startswith(('person', 'remove_person', 'summon', 'set_person')): a = f"{a}:{pers.get(a, '?')}"
            elif s in ('message', 'popup'): a = f"{a}:{g['messages'][a-1] if 0 < a <= len(g['messages']) else '?'}"
            elif s == 'goto_room': a = f"{a}:{rooms.get(a, '?')}"
            s += f" {a}"
        if 'b' in x: s += f" {x['b']}"
        return s
    print('\n=== GLOBAL (every turn) ===')
    for r in g['global_rules']:
        print('IF', ' AND '.join(fmt(c, COND) for c in r['if']), '\n   THEN', '; '.join(fmt(a, ACT) for a in r['then']))
    print('\n=== KEYED ===')
    for r in g['rules_folded']:
        print(nm(r), '\n   IF', ' AND '.join(fmt(c, COND) for c in r['if']), '\n   THEN', '; '.join(fmt(a, ACT) for a in r['then']))
    sys.exit()
    last = None
    for r in g['rules']:
        key = nm(r)
        if key != last:
            print('\n' + key); last = key
        print(f"   if {fmt(r['cond'], COND):45s} -> {fmt(r['act'], ACT)}")
