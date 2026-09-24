"""Convert the game's IFF ILBM files (LIST/FORM containers, ByteRun1, 4 planes) to PNG."""
import struct, sys, os
from PIL import Image

def unpack_byterun1(data, n):
    out = bytearray(); i = 0
    while len(out) < n and i < len(data):
        c = data[i]; i += 1
        if c < 128:
            out += data[i:i+c+1]; i += c+1
        elif c != 128:
            out += bytes([data[i]]) * (257-c); i += 1
    return bytes(out)

def decode_form(d, off, end):
    bmhd = cmap = body = None; o = off
    while o+8 <= end:
        tid = d[o:o+4]; sz = struct.unpack('>I', d[o+4:o+8])[0]; b = d[o+8:o+8+sz]
        if tid == b'BMHD': bmhd = struct.unpack('>HHhhBBBxHBBhh', b[:20])
        elif tid == b'CMAP': cmap = b
        elif tid == b'BODY': body = b
        o += 8+sz+(sz&1)
    if bmhd is None or body is None: return None
    w,h,x,y,np,mask,comp,_,xa,ya,pw,ph = bmhd
    rowbytes = ((w+15)//16)*2
    raw = unpack_byterun1(body, rowbytes*np*h) if comp==1 else body
    img = Image.new('P', (w,h)); px = img.load()
    for row in range(h):
        base = row*rowbytes*np
        for xx in range(w):
            v = 0
            for p in range(np):
                if raw[base+p*rowbytes+xx//8] & (0x80>>(xx&7)): v |= 1<<p
            px[xx,row] = v
    pal = list(cmap) + [0]*(768-len(cmap))
    img.putpalette(pal)
    return img.convert('RGB')

def forms(d):
    def walk(off, end):
        while off+8 <= end:
            tid = d[off:off+4]; sz = struct.unpack('>I', d[off+4:off+8])[0]
            if tid in (b'LIST', b'CAT '): yield from walk(off+12, off+8+sz)
            elif tid == b'FORM': yield (off+12, off+8+sz)
            off += 8+sz+(sz&1)
    yield from walk(0, len(d))

if __name__ == '__main__':
    src, dst = sys.argv[1], sys.argv[2]
    os.makedirs(dst, exist_ok=True)
    for fn in sorted(os.listdir(src)):
        p = os.path.join(src, fn); d = open(p,'rb').read()
        if d[:4] not in (b'LIST', b'FORM', b'CAT '): continue
        stem = fn.replace('.', '_')
        for i,(a,b) in enumerate(forms(d)):
            img = decode_form(d, a, b)
            if img is None: continue
            name = f'{stem}.png' if i==0 and fn.startswith('ESPENS') or fn.startswith('ESPENP') else f'{stem}_{i:03d}.png'
            img.save(os.path.join(dst, name))
        print(fn, i+1)
