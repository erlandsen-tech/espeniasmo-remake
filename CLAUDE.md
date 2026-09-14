# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

A browser remake of *Espen i Asmo* (1990), a Norwegian DOS adventure. Two halves live side by side:

- **The original**, as reference: `ESPEN/`, `START/`, `GT/`, `METAWNDO/` (floppy contents), `C/` (reconstructed
  hard-disk install that DOSBox runs), `disk*.ima`, `disasm/` (interpreter disassembly). Do not modify these.
- **The remake**: `index.html`, `style.css`, `js/`, data in `game.json` / `dialogue.json`. Vanilla JS, no build
  step, no framework, no npm dependencies.

Copyright belongs to the original publisher: private use only. Do not publish game text, art or data to any
external service (artifacts, gists, pastebins).

## Commands

```bash
python3 tools/serve.py            # http://127.0.0.1:8797/ with caching disabled; stock http.server serves stale CSS
node --test test/*.test.js        # engine tests: UI-reachability of every rule + full winning walkthrough
node test/build_walkthrough.js    # recompile test/route.js -> test/walkthrough.json after route or engine changes
./run.sh                          # play the original in DOSBox Staging, for side-by-side comparison
npx eslint@10 .                   # JS lint; eslint.config.mjs is import-free so it runs without a package.json
uvx ruff check tools/             # Python lint, bug rules only (ruff.toml)

# Regenerate game.json from the original data file (reproduces the committed file byte-for-byte)
python3 tools/adv_dump.py ESPEN/ESPEN.ADV game.json && python3 tools/rules.py game.json
```

## Engine rules

- `js/engine.js` must stay pure logic with no DOM access, in its UMD wrapper — the tests `require()` it from Node.
  DOM wiring belongs in `js/ui.js`.
- Opcode semantics come from the "Rules" section of `FORMAT.md`, decoded from the original interpreter. Read it
  before changing rule evaluation. `rules.txt` is a human-readable dump of every rule.
- Never hand-edit `game.json`; it is generated. Fixes to defects in the original rules go in the `PATCHES` array in
  `engine.js`, each with a comment stating the original defect and why it is changed.
- Deviating from the original is allowed, but must be documented: a `PATCHES` comment for rule changes, the commit
  body for UI or behaviour changes. Original Norwegian text is kept verbatim.
- Any change to game behaviour must keep the walkthrough test green; rebuild `walkthrough.json` if the route
  legitimately changes.

## Art

- `assets/orig/` (extracted 1990 art) is tracked. `assets/new/` holds the generated masters (~270 MB, gitignored).
  The page never loads them: it loads WebP copies from `assets/web/` (committed, ~5 MB) and falls back to
  `assets/orig/`. After generating or changing any art, run `.venv/bin/python tools/build_web_assets.py`.
- `tools/gen_art.py` calls OpenRouter (paid, needs `OPENROUTER_API_KEY`). Regenerating a single asset is fine
  without asking; any batch needs explicit approval first.
- Read `STYLE_GUIDE.md` and `ART_PROMPTS.md` before any art work — they record failure modes already hit and
  fixed. Portrait files are keyed by `characters[].portrait` in `game.json`, not by character id.

## Releasing

- Every file URL carries `?v=<app-version>`: the `<meta name="app-version">` in `index.html`, the `?v=` on its CSS,
  JS and icon links, and (read from the meta at runtime) the JSON fetches in `ui.js` and art URLs in `data.js`.
  Bump the meta and every `?v=` in `index.html` together on each deploy, or players get mixed old/new files.

## Verification and commits

- Verify UI changes in a real browser: serve with `tools/serve.py`, then screenshot with Playwright.
- Commits: imperative subject line, then a body explaining what changed and why.
