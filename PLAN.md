# Remake plan: Espen i Asmo in the browser

Goal: same story and puzzles, modern art generated from the original scenes, point-and-click
controls, runs as a static web page. Private use.

## Status

- [x] Original runs in DOSBox (`run.sh`)
- [x] All art extracted to `assets/orig/` (39 scenes, 26 portraits, 108 object icons, UI)
- [x] Room names and all description text extracted (`tools/adv_rooms.py`)
- [x] Exits, objects, dialogue, messages, hints exported to `game.json`
- [x] Rule semantics decoded from the interpreter; `game.json` has `rules_folded` and `global_rules`
- [ ] Web engine
- [ ] New art
- [ ] Playtest against the original

## Steps

1. **Data model: done.** `game.json` is complete. Remaining unknowns are small: the exact
   semantics of exits 5-8 labels, and the folding of a few rule groups should be verified in play.
2. **Engine.** Single HTML page, no build step. Scene image, text box, inventory, exits as clickable
   hotspots or a compass, verbs reduced to look / take / use / talk. Keep the original's turn-based
   state machine; do not add real-time anything. Save to localStorage.
3. **Art.** For each scene image in `assets/orig/`, generate a modern version with Gemini using the
   original as the reference image plus the room description as the prompt. Keep composition and
   exits in the same places so hotspots line up. Portraits and object icons the same way. Fix the
   style with one shared style prompt so the 39 scenes look like one game. Store under
   `assets/new/` with the same file names.
4. **Text.** Keep the original Norwegian. Optionally add a Nynorsk or English toggle later.
5. **Playtest.** Walk both versions side by side; every room, every object, every ending.

## Decisions

- Vanilla JS, not a framework. The game is 39 rooms; a framework is overhead.
- Original text is kept verbatim. The story is the point.
- Original art stays in the repo as reference and as an optional "classic" toggle.

## Rights

Copyright: Utdannings- og forskningsdepartementet / Nasjonalt læremiddelsenter, 1990. Authors
Geir Larsen and Lars Vavik. Fine for private use; do not publish without asking.
