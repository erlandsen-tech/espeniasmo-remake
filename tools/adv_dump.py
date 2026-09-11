"""Export ESPEN.ADV to game.json. Layout documented in FORMAT.md.
Everything except rule opcode semantics is decoded; rules are exported raw."""
import sys, json, struct

ENC = 'cp865'
DIRS = ['n', 's', 'e', 'w', 'out', 'in', 'up', 'down']   # 5..8 tentative

def pstr(b, maxlen):
    L = b[0]
    return b[1:1+L].decode(ENC, errors='replace') if L <= maxlen else ''

def lines(b, n, width):
    return [pstr(b[i*(width+1):(i+1)*(width+1)], width).rstrip() for i in range(n)]

def words(b, n):
    return list(struct.unpack('<%dH' % n, b[:2*n]))

def joined(ls):
    return ' '.join(l for l in ls if l).strip()

def rooms(d):
    out = []
    for i in range(78):
        b = d[0xe8 + i*454: 0xe8 + (i+1)*454]
        if b[0] == 0 or b[0] > 13:
            continue
        states = []
        for k, (text_off, meta_off) in enumerate([(0x1b, 0x96), (0xa8, 0x123), (0x135, 0x1b0)]):
            desc = joined(lines(b[text_off:], 3, 40))
            w = words(b[meta_off:], 9)
            if k > 0 and (not desc or w[0] == 0):
                continue
            states.append({'scene': w[0], 'desc': desc,
                           'exits': {DIRS[j]: w[1+j] for j in range(8) if w[1+j]}})
        out.append({'id': i+1, 'name': pstr(b, 13), 'person': words(b[0x19:], 1)[0],
                    'flags': b[0x10], 'portrait': words(b[0x1c2:], 1)[0], 'states': states})
    return out

def objects(d):
    out = []
    for i in range(92):
        b = d[0x8eca + i*270: 0x8eca + (i+1)*270]
        if b[0] == 0 or b[0] > 19:
            continue
        states = []
        for k in range(3):
            blk = b[20 + k*82: 20 + (k+1)*82]
            desc = joined(lines(blk, 3, 25))
            icon, portable = words(blk[78:], 2)
            if k > 0 and icon == 0:
                continue
            states.append({'icon': icon, 'portable': bool(portable & 1), 'flags': portable >> 8,
                           'desc': desc})
        room, state = words(b[266:], 2)
        out.append({'id': i+1, 'name': pstr(b, 19).strip(), 'room': room, 'state': state,
                    'states': states})
    return out

def characters(d):
    out = []
    for i in range(16):
        b = d[0xefd4 + i*828: 0xefd4 + (i+1)*828]
        if b[0] == 0 or b[0] > 27:
            continue
        qs = []
        for base in (28, 296):
            for q in range(5):
                blk = b[base + q*52: base + q*52 + 52]
                t = joined(lines(blk, 2, 25))
                if t:
                    qs.append(t)
        # Portrait number (ESPENP.n): word at 288, i.e. 4 bytes past the end
        # of the 5x52-byte state-1 question/answer block (28 + 5*52 = 288).
        # This slot is otherwise skipped by the question-block loop above and
        # was previously entirely undecoded. 0 = no portrait assigned (true
        # for characters that also only have a single dialogue state: the
        # rat/troll clones, and Per/Pål/Heksa/"Mor og sønner"; verified
        # against ESPENP art for 10 of 16 characters, e.g. Skipet -> 15 is a
        # Viking ship, Kongen -> 17 is a crowned king in red robes).
        portrait = words(b[288:], 1)[0]
        # Start location (signed word 824: negative = absent, summon_person moves them to
        # its absolute value) and start state (word 826), copied in on every restart.
        home, start_state = struct.unpack('<hH', b[824:828])
        out.append({'id': i+1, 'name': pstr(b, 27).strip(), 'questions': qs,
                    'portrait': portrait, 'home': home, 'start_state': start_state,
                    'raw': b[504:].hex()})
    return out


def intro_text(d):
    """The intro text (FORMAT.md's 'offset 0x1d, 1 string' claim is wrong) is
    actually a sequence of short Pascal strings running from the length byte
    at 0x1b up to the room table at 0xe8 (some empty - paragraph breaks),
    concatenated exactly like the multi-line descriptions elsewhere in this
    format. The title ("ESPEN I ASMO, 1.3.") is simply the first segment."""
    off = 0x1b
    segs = []
    while off < 0xe8:
        L = d[off]
        if off + 1 + L > 0xe8:
            break
        segs.append(d[off+1:off+1+L].decode(ENC, errors='replace'))
        off += 1 + L
    text = joined(segs)
    import re
    return re.sub(r' +', ' ', text).strip()

def messages(d, start, count):
    out = []
    for i in range(count):
        blk = d[start + i*52: start + (i+1)*52]
        out.append(joined(lines(blk, 2, 25)))
    return out

def initial_vars(d):
    # Word count then that many signed words, vars 1..n, between characters and messages.
    # The interpreter copies these into the variable block on every (re)start.
    o = 0xefd4 + 16*828
    n = struct.unpack('<H', d[o:o+2])[0]
    return list(struct.unpack('<%dh' % n, d[o+2:o+2+2*n]))

def rules(d):
    n = struct.unpack('<H', d[0x15004:0x15006])[0]
    S = 0x15006
    recs = []
    for off in range(S, S + n*15, 15):
        r = d[off:off+15]
        key = words(r[1:], 2)
        cond = (r[5], *words(r[6:], 2))
        act = (r[10], *words(r[11:], 2))
        recs.append({'b0': r[0], 'key': key, 'cond': cond, 'act': act})
    return recs

if __name__ == '__main__':
    d = open(sys.argv[1], 'rb').read()
    game = {
        'title': intro_text(d),
        'rooms': rooms(d),
        'objects': objects(d),
        'characters': characters(d),
        'vars_init': initial_vars(d),              # index 0 = var 1
        'messages': messages(d, 0x123d2, 195),   # 1-based ids; 1-10 are engine defaults
        'hints': [joined(lines(d[0x14b70 + i*78:], 3, 25)) for i in range(15)],
        'rules_raw': rules(d),
        'trailer_hex': d[0x15006 + struct.unpack('<H', d[0x15004:0x15006])[0]*15:].hex(),
    }
    json.dump(game, open(sys.argv[2], 'w'), ensure_ascii=False, indent=1)
    print(len(game['rooms']), 'rooms', len(game['objects']), 'objects',
          len(game['characters']), 'characters', len(game['messages']), 'messages',
          len(game['rules_raw']), 'rule records')
