"""Dump room records from ESPEN.ADV. Layout (partially decoded, see FORMAT.md):
   78 slots x 454 bytes starting at 0xe8. Slot is unused when name length is 0."""
import sys, json
R = 454; BASE = 0xe8; N = 78
def pstr(b, maxlen):
    L = b[0]
    return b[1:1+min(L, maxlen)].decode('cp865', errors='replace') if L <= maxlen else ''
def lines(b):  # three string[40]
    return [pstr(b[i*41:i*41+41], 40).rstrip() for i in range(3)]
def parse(d):
    rooms = []
    for i in range(N):
        b = d[BASE+i*R:BASE+(i+1)*R]
        if b[0] == 0 or b[0] > 13: continue
        name = pstr(b, 13)
        r = {'slot': i, 'name': name, 'w1': int.from_bytes(b[0x19:0x1b], 'little'),
             'desc': lines(b[0x1b:]),
             'alt': [lines(b[0xa8:]), lines(b[0x135:])]}
        rooms.append(r)
    return rooms
if __name__ == '__main__':
    d = open(sys.argv[1], 'rb').read()
    rooms = parse(d)
    if len(sys.argv) > 2 and sys.argv[2] == '--json':
        print(json.dumps(rooms, ensure_ascii=False, indent=1)); sys.exit()
    for r in rooms:
        print(f"[{r['slot']:2d}] {r['name']}  (w1={r['w1']})")
        print('   ', ' '.join(r['desc']))
        for a in r['alt']:
            t = ' '.join(a).strip()
            if t and not t.startswith(('�',)) : print('   alt:', t)
