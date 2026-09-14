#!/usr/bin/env python3
"""Build the served art in assets/web/ from the generated masters in assets/new/.

    python3 tools/build_web_assets.py          # only rebuilds files whose master is newer
    python3 tools/build_web_assets.py --force  # rebuild everything

The masters are ~1.6 MB PNGs, 1200-1400 px wide, including object icons that are displayed around
100 px wide. Serving them directly made a playthrough download most of ~270 MB. The web copies are
WebP, scaled to about 2x their largest on-screen size, and are committed (assets/new/ is not).
"""
import sys
from pathlib import Path

from PIL import Image

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / 'assets' / 'new'
DST = ROOT / 'assets' / 'web'

# Longest side in pixels, by file-name prefix. Scenes fill most of the window, so they keep their
# native size; portraits show in a 120 px box; icons in a side-panel grid cell.
MAX_SIDE = [('ESPEN_OBI_', 384), ('ESPENP_', 320), ('ESPENS_', None)]
QUALITY = 80


def max_side(name):
    for prefix, side in MAX_SIDE:
        if name.startswith(prefix):
            return side
    raise SystemExit(f'no size rule for {name}')


def build(src, dst):
    img = Image.open(src).convert('RGB')
    side = max_side(src.name)
    if side and max(img.size) > side:
        img.thumbnail((side, side), Image.LANCZOS)
    img.save(dst, 'WEBP', quality=QUALITY, method=6)


def main():
    force = '--force' in sys.argv[1:]
    DST.mkdir(exist_ok=True)
    built = 0
    for src in sorted(SRC.glob('*.png')):
        dst = DST / (src.stem + '.webp')
        if force or not dst.exists() or dst.stat().st_mtime < src.stat().st_mtime:
            build(src, dst)
            built += 1
    files = list(DST.glob('*.webp'))
    total = sum(f.stat().st_size for f in files)
    print(f'built {built}, {len(files)} files in assets/web/, {total / 1e6:.1f} MB')


if __name__ == '__main__':
    main()
