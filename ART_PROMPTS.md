# Art regeneration prompts

Generates modern versions of `assets/orig/*` into `assets/new/*` with identical filenames, using
the original as a reference image and, as of the full production run, **Nano Banana Pro
(`google/gemini-3-pro-image`)** via OpenRouter (switched from Gemini 2.5 Flash Image partway
through this project — see "Model switch" section near the end of this doc for why and the
before/after evidence).

## Model switch: Gemini 2.5 Flash Image -> Gemini 3 Pro Image ("Nano Banana Pro")

**Why:** across many rounds of prompt-engineering on `google/gemini-2.5-flash-image`, several
distinct defect classes proved resistant even after repeated, targeted fixes: literal color-
copying of saturated 1990 source colors (`ESPENS_18`, 3 separate failed attempts), jagged
staircase pixel-edge tracing on both small props and large landscape shapes, multiple small
sprites fusing into one deformed creature, and rendered text/captions appearing despite explicit
prohibition. These read as fundamental limitations of that model on this kind of edit task, not
prompt-wording gaps — see the sections below for the full history.

**Test:** re-ran the 4 worst documented failures (`ESPENS_18`, `ESPENS_25`, `ESPENS_5`,
`ESPENP_13`) through `google/gemini-3-pro-image` with the exact same prompts/anchors. All 4
avoided their specific documented failure mode on the first try — no neon-cyan literal copy, no
text, no jagged edges, no sprite fusion — see git history / session record for the side-by-side.
Confirmed same OpenRouter request/response shape (`modalities: ["image","text"]`,
`message.images[].image_url.url`); the new model additionally returns `reasoning`/
`reasoning_details` fields and occasionally 2 image candidates per call (code takes the first).

**Result of the full 173-file production run on the new model:** **zero failures, zero retries
needed**, across all three categories — a meaningful reliability improvement over the old model,
which needed several retries per phase (transient "no image returned" glitches, one
`content_filter` false-positive on a gallows scene). Cost was ~3.6x higher per image (~$0.143 vs.
~$0.039), consistent with OpenRouter's quoted pricing difference.

**Composition fidelity also improved** (spot-checked, not exhaustively re-verified): the earlier
model's ad-hoc test of `ESPENS_25` (viking ship) drifted to a completely different camera angle
than the original (a side view with a village, vs. the original's forward view down the ship's
deck). On the new model, the same scene's camera angle matches the original closely — looking
forward along the deck at the carved prow, consistent with `assets/orig/ESPENS_25.png`. Spot-check
of several other scenes (`ESPENS_9`, `ESPENS_18`) against their originals showed door/exit/
furniture positions preserved.

**Update — the vignette border was a symptom, not an independent defect, and is now RESOLVED.**
Root cause (found by inspecting the actual engine, not guessed): `assets/new/ESPENS_1.png` was
1024x1024 (square), but the engine's `#scene-frame` is 360x200 (~1.8:1 landscape), matching the
original game. The model defaults to a square 1:1 output unless told otherwise. Composing a
landscape-feeling scene (door on one side, window/fireplace spread across) onto a forced-square
canvas, the model was padding the leftover space with a border/vignette as a side effect — not a
separate independent rendering bug. See "Aspect ratio" section below for the fix and confirmation
that the vignette disappeared entirely once scenes were generated at the correct ratio.

## RESOLVED: square output vs. the engine's landscape scene frame (root cause of the vignette border)

**Finding (2026-09-11):** loaded the finished 173-file batch into the actual browser engine.
Style/identity/composition looked good, but every scene was letterboxing in the UI. Checked
`assets/new/ESPENS_1.png` directly: 1024x1024 square. The engine's `#scene-frame` (style.css) is
360x200, a ~1.8:1 landscape box matching the original game — a square image can't fill that
without cropping or bars, regardless of the vignette-border issue chased earlier in this doc. The
vignette turned out to be the model's own workaround for the same mismatch: composing a
landscape-feeling layout onto a forced-square canvas and padding the leftover space, not an
independent defect requiring its own prompt fix.

**Fix:** `google/gemini-3-pro-image` accepts an `image_config.aspect_ratio` parameter in the
OpenRouter chat-completions request body (confirmed empirically — NOT assumed from docs; the
model defaults to square 1:1 if omitted). It only accepts a fixed set of standard ratios (1:1,
4:3, 3:2, 16:9, 21:9, etc.), not arbitrary values, so each category maps to its closest standard
option (`ASPECT_RATIO_FOR_CATEGORY` in `gen_art.py`):

| Category | Original asset ratio | Closest standard option | Output size observed |
|---|---|---|---|
| Scenes | 360x200 = 1.80:1 | `"16:9"` (1.78:1) | 1376x768 |
| Portraits | 108x116 = 0.93:1 | none — default 1:1 is already closest | 1024x1024 |
| Icons | 56x40 = 1.40:1 | `"4:3"` (1.33:1) | 1200x896 |

**Confirmed fixed, not just theorized:** regenerated `ESPENS_1.png` and `ESPENS_18.png` (the two
most-tested cases in this whole doc) at `16:9`. **The vignette border disappeared completely on
both, full-bleed edge to edge, first try** — not a partial improvement, a full fix. Composition
also read as more naturally landscape-balanced (door/window/table/fireplace spread across the
frame properly, no cramped square composition fighting for space). Then regenerated the full
batch: all 39 scenes at `16:9`, all 108 icons at `4:3` (icons weren't visibly letterboxing before,
but 56:40 is far enough from square that the correction was worth doing while already re-running
the category; portraits were left alone — 0.93:1 is already closer to the default 1:1 than to any
other standard option, so no regeneration needed there). Spot-checked ~6 more scenes post-fix
(`ESPENS_9`, `ESPENS_25`, `ESPENS_34`, others) — all full-bleed, zero vignette recurrence.

**Cost of this fix:** regenerating all 39 scenes + all 108 icons (147 calls; portraits untouched,
no additional cost) cost **~$21.11** (scenes ~$5.59, icons ~$15.53 including retries — see "Model
switch" section for per-image pricing). This was a full redo of those two categories, not an
incremental patch, since the aspect ratio is a property of the whole image, not something a prompt
tweak alone can fix after the fact.

## RESOLVED: portrait filename number ≠ character id

**Finding (2026-09-10, third follow-up), discovered incidentally while spot-checking a troll
portrait, fixed the same session (in a parallel track, not by this script's author) and then
wired into `gen_art.py`.** `gen_art.py` originally assumed the number in `ESPENP_<n>.png` equals
the character's `id` in `game.json`'s `characters[]` array. **That assumption was wrong** —
confirmed by visually checking original portraits against what their "id" would predict, e.g.
`ESPENP_12.png` (predicted: id 12 "Brutroll", a troll) actually showed a human woman in a blue
dress; `ESPENP_6.png` (predicted: id 6 "Heksa", the witch) actually showed a rat pack.

**Root cause and fix (done elsewhere, in the game-data extraction, not in this script):**
`tools/adv_dump.py` wasn't decoding the character record's real portrait field at all (a word at
byte offset 288 in the 828-byte character record). It's now decoded, `game.json` regenerated, and
`characters[]` entries carry a real `portrait` field, e.g. `{"id": 12, "name": "Brutroll",
"portrait": 25, ...}`. A `portrait` of `0` means the character has no real portrait image in the
original data (six characters: Rotter2, Rotter3, Heksa, Pål, Per, "Mor og sønner") — the web
engine hides the portrait pane for these rather than guessing, and `gen_art.py` now does the
equivalent (skips the anchor reference, generates without one, same as the pre-existing
no-anchor-yet fallback path).

**`gen_art.py` updated accordingly:** replaced the id-keyed `character_name_map()` with
`portrait_number_to_character()`, a reverse lookup keyed by `characters[].portrait`. Both the
portraits-category prompt (naming a given `ESPENP_<n>.png`) and the scene anchor-chaining lookup
(`characters_mentioned_in_room()` → anchor path) now go through this corrected mapping.

**Spot-checked 4 corrected mappings against original image content, all confirmed correct:**
`ESPENP_25.png` (Brutroll, portrait 25) is a troll; `ESPENP_17.png` (Kongen/king, portrait 17) is
a crowned king; `ESPENP_14.png` (Harer/hares, portrait 14) is red rabbits; `ESPENP_21.png`
(Hedalstroll, portrait 21 — this is the file generated earlier in this session's testing and
mislabeled "an unnamed character" before the fix landed) is confirmed to be trolls, consistent
with Hedalstroll. Regenerated `ESPENP_25.png` (the correctly-identified Brutroll) with the fixed
code — output is a troll-appropriate character, not the earlier mismatched human-in-a-dress
result.

**One more discrepancy found and corrected while spot-checking:** "Mor"'s real portrait is
`ESPENP_2.png` (`portrait: 2`), not `ESPENP_1.png` as used throughout the earlier
identity-chaining tests (`ESPENS_1.png`/`ESPENP_1.png`, "Test 1" in this doc's history). Checked
`ESPENP_1.png` and `ESPENP_2.png` originals side by side — they're near-identical (same
hunched red-haired woman, brown sweater, pink-dotted skirt), so the earlier scene/portrait
identity-match demonstration is still visually valid evidence that reference-chaining works, but
the anchor file the corrected code will actually look up for "Mor" going forward is
`ESPENP_2.png`, not `ESPENP_1.png`. Generated `ESPENP_2.png` with the fixed pipeline for
consistency; `ESPENP_1.png` remains in `assets/new/` as a harmless (visually near-identical, but
no longer canonically linked by the corrected code) leftover from before the fix.

**Previously incorrect claim removed:** this doc used to say "confirmed 26 characters / 26
portrait files, 1:1 by id" — that was never actually verified against image content and was wrong
(`game.json` has only 16 character records; the mapping is via the `portrait` field above, not
`id`, and not all 26 portrait files necessarily correspond to a unique one of the 16 characters —
some are likely alternate-state portraits per `FORMAT.md`'s "two dialogue sets per character").

## Model / API

- Model slug: `google/gemini-2.5-flash-image` (OpenRouter, provider Google).
- Endpoint: `POST https://openrouter.ai/api/v1/chat/completions` with `"modalities": ["image", "text"]`.
- Request: one user message, content = `[{"type": "text", "text": <prompt>}, {"type": "image_url",
  "image_url": {"url": "data:image/png;base64,<original>"}}]`.
- Response: generated image is `choices[0].message.images[0].image_url.url`, a
  `data:image/png;base64,...` URL (NOT `message.content`, which stays text/empty). Confirmed
  empirically 2026-09-10 against `ESPENS_1.png` — output was a real 1344x768 PNG.
- The model does not honor an exact output pixel size; it returns roughly 16:9-ish landscape
  images regardless of the tiny original dimensions (e.g. 56x40 icons still come back large).
  The engine already scales scene art, so this is fine for scenes/portraits. Treat icon output
  size as a known open question — see "Object icons" below.

## Identity consistency across images (reference chaining)

**Finding (2026-09-10):** generating each scene and each portrait independently, with only the
tiny 16-color original as reference, does NOT keep a character's appearance consistent across
images. First test run: `ESPENS_1.png` (scene "Hjemme") showed a young blonde braided-hair girl
in blue sitting by the fireplace; `ESPENP_1.png` (portrait "Mor", the same character per the room
desc "Mor ser trist ut") showed an older red-haired, hook-nosed woman in a brown sweater. Same
character, two unrelated designs — each generation call has no memory of the other, so the model
free-associates a plausible "mother" each time. This gets worse, not better, at 39 scenes x 26
portraits if not fixed before the full batch.

**Fix: two-phase reference chaining.**

1. **Anchor phase** (`--category portraits`, run first): generate all 26 character portraits.
   Each becomes the *canonical design reference* for that character — the portrait prompt now
   says so explicitly, asking the model to keep the design simple/distinct enough to reuse.
2. **Scene phase** (`--category scenes`, run after): for each scene, `gen_art.py` now detects
   which character(s) are textually mentioned in that room's description(s) (see "Character
   detection" below) and, if that character's anchor portrait already exists in `assets/new/`,
   attaches it as an **additional** reference image alongside the original 16-color scene image.
   The prompt tells the model explicitly: reference image 1 (original scene) governs room
   layout/exits only, reference image 2+ (anchor portraits) govern character likeness only.

If a scene's category run happens before the relevant anchor portrait exists, the scene is still
generated (not blocked) — just without the extra identity reference, with a printed warning
recommending the portraits phase be run first. `main()` also prints a one-time heads-up if
`assets/new/` has zero `ESPENP_*.png` files when a scenes run starts.

**Character detection: text-mention matching, not `room.person`.** The room record has a single
per-room `person` field (`FORMAT.md` offset 0x19, confirmed one word, not per-state — so it is
NOT a per-state field, contrary to what you might expect from a room having multiple description
states). It looked like the obvious signal, but it is unreliable for "who is drawn in this
scene": room 1 "Hjemme" has `person = 15` ("Per"), yet the room's own description text is
"...Mor ser trist ut" (Mor looks sad) — Per is never mentioned, Mor is. `person` reads as an
NPC-encounter/rule-trigger id (who a rule *can* summon into the room), not "who appears in the
base scene art". `room.portrait` is even less useful — it is `1` ("Mor") for all 36 rooms, a
stale/unused field, discarded entirely.

What actually works, empirically: scanning each room's description text for literal,
word-boundary, case-insensitive mentions of character names (`characters_mentioned_in_room()` in
`gen_art.py`). This correctly found "Mor" in room 1 and nothing else. Known limitation: three
characters are named "Rotter"/"Rotter2"/"Rotter3" (background rats); description text only ever
says "Rotter", so this always resolves to id 2 and never disambiguates 3/4 — acceptable, they're
generic background rats, not a named identity that needs to match precisely.

**Recurring objects:** checked whether any *object* (not character) name is mentioned across
enough rooms to need the same anchor treatment. Only `"Peisen"` (the fireplace) hit the
threshold (3 mentions), and all 3 are different states of the *same* room's own fireplace, not a
cross-scene recurring prop — no separate object-identity anchoring implemented. If a genuinely
recurring named object turns out to matter later, the same anchor-phase mechanism generalizes to
it directly.

**Confirmed: the model does accept and use multiple reference images per call.** Tested directly
(2026-09-10): a request with the original scene + the already-generated "Mor" anchor portrait as
two `image_url` content parts in one message returned `prompt_tokens=690` (vs. ~265-306 for a
single-image call, confirming both were ingested) and the output scene visibly matched the
anchor's face, hair, and outfit while preserving the original scene's room layout. Re-verified
end to end via `gen_art.py` after the code change (see "Re-test result" below) — this is not
"ignored/averaged badly", it works well for this model on this kind of edit task.

**New side effect found and fixed during this test:** the multi-reference scene generation for
`ESPENS_1` first came back with the room's Norwegian description text baked into the image as a
rendered caption bar — the model apparently decided the second reference (a portrait crop with a
plain background) implied "add a caption like a picture book page". This would collide with the
engine's own text rendering. Fixed by adding an explicit "do not render any text, letters, words,
or captions" line to `SHARED_STYLE`; re-generating after the fix produced a clean image with no
baked-in text. This line is now in every prompt (scenes/portraits/icons), not just scenes, in
case any category drifts the same way.

**Minor unresolved cosmetic inconsistency:** some generations come back full-bleed rectangular,
others (including the fixed `ESPENS_1.png` re-test) come back with a soft rounded-corner
white-bordered "postcard" vignette around the illustration. Not addressed — flagging it, since a
mix of bordered and full-bleed scenes would look inconsistent in the engine. Worth an explicit
"no border, no vignette, no frame, full-bleed edge-to-edge image" instruction if it recurs across
more than a couple of the 39 scenes once the full batch runs.

## Style anchor: text-only SHARED_STYLE demonstrated unreliable, fixed with reference chaining

**Finding (2026-09-10, fourth follow-up):** user compared `ESPENS_18.png` ("Prinsesserom", one of
the "style holds" spot-check samples from an earlier report) against `ESPENS_1.png` side by side.
**Verdict: it did not hold.** `ESPENS_18.png` had neon-cyan furniture, thick uniform
clipart/cartoon outlines, and sparkle overlay effects on the fire — a fundamentally different
rendering approach from `ESPENS_1.png`'s muted, painterly, canvas-textured treatment. The earlier
"style holds" claim for that file was wrong; text-only `SHARED_STYLE` instructions are not
reliably steering every generation, and can drift wildly with no warning.

**Step 1: is this randomness, or specific to this room's reference image?** Regenerated
`ESPENS_18.png` twice more with the exact same prompt/reference, no style anchor yet. **Both
repeats showed the same drift** — neon-cyan table legs, sparkle/particle effects near the fire, in
all 3 total generations (original + 2 repeats). This is NOT generation-to-generation randomness;
it's specific to this room. Root cause, checked directly against the original: `ESPENS_18.png`'s
1990 source art has an unusually saturated palette even for this game (a bright neon-cyan table,
and a dithered pink/white stipple pattern next to the fire standing in for spark/heat effects on
1990 EGA hardware) — the model appears to be color-copying and texture-copying those distinctive
source features literally rather than reinterpreting them, the same "copy the reference too
literally" failure mode already documented for the near-flat shelf icon/prop, here acting on a
whole room's palette instead of one small object.

**Step 2: implemented a style anchor, not just a character-identity anchor.** Added
`STYLE_ANCHOR_PATH` (`assets/new/ESPENS_1.png`, the confirmed-good scene) as an ADDITIONAL
reference image attached to every scene generation (alongside that scene's own original reference
and any character anchor already in use) — the same reference-chaining technique that fixed
character identity, now applied to overall rendering technique. A new prompt block
(`STYLE_ANCHOR_NOTE`) tells the model explicitly: match the style reference's technique (muted
palette, painterly shading, moderate ink outlines), and explicitly do NOT reproduce the original
scene reference's saturated 1990 EGA colors or dithered patterns — those are hardware limitations
being color/texture-copied by mistake, not an intentional style choice, and must be reinterpreted
into the muted palette instead. `gen_art.py`'s module docstring now documents that `ESPENS_1.png`
must be generated first, before any other scene, for this anchor to be available.

**Step 3: re-tested `ESPENS_18.png` with the style anchor, 3 times** (first with the initial
style-anchor wording, then twice more after strengthening it with a more explicit,
`ESPENS_18`-agnostic instruction naming the specific failure modes: reinterpret neon source colors
into muted hues, never render dithered/stippled/sparkle/particle patterns). **Honest result: real,
specific, verifiable improvement, but incomplete — not claiming a full fix.**

Specific before/after comparison against `ESPENS_1.png` (not just "looks fine"):
- **Wall/floor color muting:** with the style anchor, `ESPENS_18`'s walls and floor came out in
  the same muted brick-red/maroon family as `ESPENS_1`'s — a real match, and a clear change from
  the pre-anchor attempts' more saturated red and (one attempt) an invented busy wallpaper texture.
- **Shading technique:** with the style anchor, `ESPENS_18` gained the same soft directional-light
  gradient across walls/floor and visible canvas/paper grain texture that `ESPENS_1` has — a real
  match, versus the pre-anchor flat cartoon fills.
- **Outline weight:** with the style anchor, `ESPENS_18`'s ink outlines (door, bookshelf,
  fireplace stones) read as moderate and slightly varied, matching `ESPENS_1`'s outline weight —
  a real match, versus the pre-anchor thick, uniform clipart outlines.
- **Sparkle/particle effect near the fire:** improved across the 3 anchored attempts (progressively
  softer, more like a painterly smoke plume by the third, strengthened-wording attempt) but not
  fully eliminated — some grain/texture in the smoke could still read as slightly more "speckled"
  than `ESPENS_1`'s smoother rendering. Better, not perfect.
- **Neon-cyan table legs: NOT fixed.** All 3 style-anchored attempts, including after the
  strengthened wording explicitly forbidding literal color-copying, still rendered the table's
  legs in the same saturated neon cyan as the 1990 original. (One attempt did reinterpret the
  tabletop surface itself into a muted cream tone, while leaving the legs neon — an inconsistent,
  partial application of the instruction within the same image.) This specific color is being
  color-copied more stubbornly than the rest of the room, even with the style anchor and explicit
  "do not copy this, reinterpret it" wording.

**Conclusion, stated plainly:** style-anchoring is a real, substantial improvement — it fixed
outline weight, shading technique, and general color muting, which is most of what "style holds"
means — but it is not a complete fix for every kind of literal-reference-copying; a strongly
saturated, distinctive source color can still leak through 3/3 times even with an explicit
same-image instruction not to. This is the same underlying model behavior documented for the flat
shelf icon and the glossy metal key: certain strong, distinctive features of a reference image
resist stylistic reinterpretation more than the rest of the image does, and neither text
instructions nor reference-image anchoring have fully solved it in every case tried so far.

**Standing approach for the full batch, if/when it runs:** yes, attach `ESPENS_1.png` as a style
anchor on every scene generation — it is now the default behavior in `gen_art.py` (generate
`ESPENS_1.png` first, then run the rest of `--category scenes` normally, no extra flags needed).
This is a net improvement over text-only `SHARED_STYLE` reliance, which is now demonstrated
unreliable. It should substantially reduce, but will likely not eliminate, wild per-scene style
drift — expect that some individual scenes with unusually saturated/distinctive source colors
(like this one) may still need a manual second look or regen-and-pick pass, the same
recommendation already standing for the flat-object and metal-icon limitations above. Given this,
review of individual scene outputs during/after the full batch remains warranted — style-anchoring
lowers the rate of drift, it does not make per-scene review unnecessary.

## Known limitation: under-stylized "flat cutout" objects (not fully fixed)

**Finding (2026-09-10, follow-up):** user visually caught that in `ESPENS_1.png`, the wall shelf
("Hylla") rendered as a flat, unshaded, solid-purple cutout while everything else in the same
image (door, table, bench, character) got full painterly shading/texture — visually inconsistent
within a single generated image.

**Checked whether this is systemic** by generating two more scenes chosen specifically for small
background props of comparable scale: `ESPENS_4` ("Tun", yard — has a small stacked woodpile and
log-end rounds against the house wall) and `ESPENS_8` ("Ved elva", riverbank — has small
foreground rocks). **Neither showed the same defect** — the woodpile has visible wood-grain
shading, the log rounds have rings/shadow, the rocks have highlighting. So this is NOT simply
"small objects get less effort." Narrower hypothesis, consistent with the evidence: the shelf in
`ESPENS_1`'s *original* 1990 reference is drawn as a near-flat, thin-outline silhouette (a bracket
shape with almost no internal detail) rather than a shape with visible volume/texture cues like a
woodpile or rock — the model appears to partially copy that specific object's flat silhouette
rather than inventing volume for it, while everything else in frame (which had more to work from
in the original bitmap) gets fully reinterpreted.

**Tried the fix anyway** (per instruction, regardless of exact scope): added an explicit
instruction to `SHARED_STYLE` requiring uniform painterly treatment across every object in frame,
including small/simple ones, and explicitly calling out "even if drawn as a plain
bracket/outline shape in the reference, reinterpret its form just as fully as everything else."

**Re-tested `ESPENS_1.png` 3 times with `--force` after the prompt change. Honest result: it did
not fix the shelf.** All 3 regenerations still show the shelf as a comparatively flat, minimally
shaded purple bracket next to fully-painterly furniture and character. (One of the 3 attempts was
also a broader regression — the whole room briefly reverted to a flatter, more graphic style
that generation; the other 2 had good general painterly consistency everywhere *except* the
shelf, which stayed flat in all 3.) This reads as a real, resistant model behavior specific to
this near-silhouette reference object, not something the shared prompt wording can reliably
override — reporting this rather than claiming the fix worked.

**Recommendation:** don't keep iterating on the shared prompt for this — it's already been tried
and the sample size (3/3) is enough to call it a real limitation rather than noise. For the full
batch, treat any objects that were drawn as near-flat outline shapes in the 1990 original (there
are likely a handful more across 39 scenes — simple signs, brackets, thin tools) as candidates
for a manual regen-and-pick pass (multiple seeds, keep the best) or a manual touch-up, rather than
assuming the shared style prompt alone guarantees uniform rendering. Not a blocker for running the
batch — it is a real but localized quality issue, not a broken pipeline.

The best of the 3 re-test outputs is what's currently saved as `assets/new/ESPENS_1.png` (chosen
for best overall scene consistency, not because it fixed the shelf — none of the 3 did).

## Shared style prompt

Fixed wording, prepended to every generation call so all 173 assets read as one game:

> Modern painterly children's-book illustration style: soft brushy digital painting, warm and
> inviting color palette, clean confident linework, gentle lighting and soft shadows, a bit of
> visible paper/canvas texture. Whimsical and cozy, in the tone of a beloved Scandinavian
> children's storybook — NOT photorealistic, NOT anime, NOT 3D-rendered, NOT a different genre
> (no horror, no grimdark). Keep it readable as a point-and-click adventure game scene: clear
> silhouettes, uncluttered composition, nothing important hidden in shadow. Do not render any
> text, letters, words, captions, or a caption bar/text box anywhere in the image — the game
> engine draws its own text separately; the image must be pure illustration. Apply the SAME level
> of painterly rendering — shading, gradients, brush texture, linework weight — to every object in
> the frame, including small or simple background props, wall fixtures, and decorations, not just
> the main furniture or characters. Do not leave any object as a flat, untextured, undetailed
> color silhouette while the rest of the scene is shaded and textured, even if that object was
> drawn very simply (e.g. as a plain bracket or outline shape) in the reference image —
> reinterpret its form in the target style just as fully as everything else, as if the whole image
> were painted by the same artist in one pass.

(Note: this last instruction was added specifically to try to fix the flat-shelf defect below,
and — reported honestly — did not reliably fix it in 3/3 re-test attempts. Left in the prompt
anyway since it did no harm and may help on other assets in the full batch; see "Known limitation"
section below for what it didn't fix.)

Rationale: the 1990 original is flat-color EGA/VGA art with a warm, slightly eerie folk-tale
tone (troll story, dark forest, farmhouse). "Painterly children's-book" keeps that storybook
warmth while giving Gemini enough stylistic room to add depth/lighting that the original's
16-color palette couldn't. Explicitly ruling out photorealism/anime/3D/grimdark stops the model
from drifting genre on any individual generation (it strayed toward generic "flat design" and
toward moodier fantasy-art on early trial prompts).

## Scene prompt template (`ESPENS_*`, 39 files, 360x200 originals)

```
{SHARED_STYLE}

Repaint this exact scene, keeping the same room layout, camera angle, and the same positions
for every door, window, opening, and exit visible in the reference image — those positions are
load-bearing, players click on them to navigate, so do not move, add, or remove any exit.
Keep the same approximate arrangement of furniture and objects, just rendered in the new style.

Scene description (Norwegian, from the original game): "{room_desc}"

Reference image is the original 1990 scene; use it for composition, spatial layout, and object
placement, not for color/rendering style.
```

`{room_desc}` = the `desc` string of the *first* `states[]` entry for the room whose
`states[].scene == n` (a room can have multiple description variants across game states — the
first is the canonical/default one, good enough to ground the prompt; the art doesn't need to
change per state, only the room's static geometry does). Source: `game.json` → `rooms[].states[]`.

Multiple scene numbers can belong to the same room id at different states (e.g. peisen lit vs.
unlit) — those already differ in `assets/orig`, and are treated as independent images with their
own `desc`.

**If character anchor(s) are present** (see "Identity consistency" above), the scene prompt gets
an appended block:

```
The following character(s) appear in or are associated with this room, and a canonical character
design reference image is attached for each of them (in addition to the original scene reference):
- {character_name}
Render {them} in the scene matching that exact design — same face, hair color and style, and
outfit as in their reference image(s). The ORIGINAL SCENE reference image (the first one
attached) governs room layout, architecture, and exit positions only; the character reference
image(s) govern character likeness only, not the room's style or palette.
```

and the request's `content` array gets one extra `image_url` part per anchored character, in
addition to the original scene image (order: text prompt, original scene, anchor 1, anchor 2...).

## Portrait prompt template (`ESPENP_<id>`, 26 files, 108x116 originals)

```
{SHARED_STYLE}

Repaint this exact character portrait in the new style. Head-and-shoulders (or the same framing
as the reference) portrait of a character from a Norwegian folk-tale adventure game, named
"{character_name}". Keep the same pose, framing, and readable silhouette as the reference image —
this is used as a dialogue portrait, it must stay recognizable as the same character across the
whole game. Plain or softly blurred background, character is the sole focus.

This portrait is the CANONICAL design reference for "{character_name}" — it will be reused as a
reference image for every scene this character appears in, so keep the face, hair, coloring, and
outfit simple and distinct enough to recognize consistently at a glance.

Reference image is the original 1990 portrait; use it for identity, pose, and framing, not for
color/rendering style.
```

`{character_name}` = `characters[].name` where `characters[].portrait` (NOT `characters[].id` —
see "RESOLVED: portrait filename number ≠ character id" above) matches the portrait number in the
filename (`ESPENP_<portrait>.png`). Six characters have `portrait: 0` (no real portrait exists in
the original data); those fall back to "an unnamed character" and get no anchor reference in
scenes, same as the web engine hiding their portrait pane.

## Object icon prompt template (`ESPEN_OBI_<nnn>`, 108 files, 56x40 originals)

```
{SHARED_STYLE}

Repaint this small inventory/object icon using the EXACT SAME rendering technique as the rest of
this game's art (the same technique used for the scene backgrounds and character portraits):
flat-to-lightly-shaded color fields, visible confident ink outline strokes around every shape, a
bit of painterly brush texture. It must look like it was cut out of the same illustrated world as
the scenes and portraits — NOT a separate, cleaner "icon set" style.

Explicitly avoid: glossy/product-render material highlights, soft airbrush gradients, realistic
material shading (e.g. photographic wood-grain or metal specular reflections), and a soft blurred
drop shadow that makes the object float off the background like a stock icon or 3D product shot.
Those read as generic AI-stock-art and must not appear here.

Framing: single object, centered, on a simple plain flat-color (or no) background so it reads
clearly at small display size in an inventory grid. Preserve every visually distinguishing detail
from the reference image that makes the object identifiable as itself (e.g. a key resting on a
shelf, a pattern, a distinctive part) — simplify the RENDERING TECHNIQUE, not the CONTENT; do not
drop or omit a distinguishing feature just to make the silhouette simpler. Absolutely no rendered
text, letters, words, or labels anywhere in the image, even if the real object would plausibly
carry packaging text or a logo in real life.

Object: "{object_name}". Context: "{object_desc}"

Reference image is the original 1990 icon; use it for identity and shape, not for color/rendering
style.
```

`{object_name}` / `{object_desc}` come from `objects[]` where the icon number appears in
`states[].icon` (`ESPEN_OBI_<icon-1:03d>.png`, since icon numbers are 1-based and filenames are
0-padded from 000). An icon can be shared by multiple object states (e.g. "key present" vs "shelf
empty" are different icons on the same object) — use the first object/state pair that references
the icon; if no object references a given icon number (a few icons are cursor/UI-only, unverified
which), fall back to a generic "small adventure-game inventory object icon" prompt with no
name/desc.

**Open judgment call — icon output size.** Gemini does not return 56x40 pixel art; it returns a
~1100-1200x800-900-ish image of "an icon on a background". For icons this needs a
downscale-and-crop/pad step before it's usable in an inventory bar — the current script does NOT
do this, it saves the raw model output. Flagging this rather than silently deciding: either (a)
post-process every icon output through PIL (detect content bbox, center-crop to square, resize to
56x40 or whatever the new engine's icon size is), or (b) ask the model for a tighter framing and
accept some manual cleanup. Recommend (a), automated in a follow-up pass once the new engine's
actual icon display size is known — don't hardcode 56x40 into the postprocessing if the web
engine wants a larger icon size.

### Bug found and fixed: icon template was producing generic "AI stock art", not game style

**Finding (2026-09-10, second follow-up):** user flagged the very first icon sample,
`ESPEN_OBI_003.png` (key on a shelf), as looking "horrid... does not fit the original theme...
looks very AI." Comparing it side by side with `ESPENS_1.png`/`ESPENP_1.png`: the icon had soft
airbrush gradient shading, glossy specular highlights on the key, photographic wood-grain
texture, and a soft blurred drop shadow floating the object off a cream background — a generic
stock "product icon" look, structurally different from the scene/portrait samples' flat-color,
ink-outlined, painterly treatment.

**Root cause, confirmed by comparing the templates:** the old `ICON_TEMPLATE` did prepend
`{style}` (the shared style block), but then immediately steered it away with icon-specific
wording that implicitly pushed toward a product-shot look — "plain or transparent-feeling neutral
background" and "bold silhouette, minimal fine detail" read to the model as "vector icon set /
app icon" instructions, not "the same illustration technique as everything else." The scene and
portrait templates never say anything like that, which is why they didn't drift the same way.

**Fix:** rewrote `ICON_TEMPLATE` and `ICON_FALLBACK_TEMPLATE` (both shown above) to explicitly
name the shared technique ("flat-to-lightly-shaded color fields, visible confident ink outline
strokes... the same technique used for the scene backgrounds and character portraits") and to
explicitly list what to avoid (glossy highlights, airbrush gradients, photographic material
shading, floating drop shadow) by name, since simply inheriting `{style}` wasn't enough on its
own to prevent icon-specific drift.

**Two new defects found while re-testing, both fixed within this same round (reporting the whole
loop, not just the final good result):**

1. First regeneration of `ESPEN_OBI_003` (key/shelf) fixed the *style* problem (visible ink
   outlines, flatter shading, style now matches `ESPENS_1`/`ESPENP_1`) but **dropped the key
   entirely** — the shelf rendered with nothing on it. Root cause guess: "bold silhouette, minimal
   fine detail" pushed the model to simplify away the key as a small detail. Fixed by rewording to
   explicitly separate "simplify the rendering technique" from "preserve every distinguishing
   detail" (a key on a shelf is content, not rendering complexity).
2. First regeneration of `ESPEN_OBI_005` (matchbox, "Fyrstikker") fixed the style problem but
   **rendered legible text on the box** — "Fyrstitker" (also misspelled), directly violating the
   already-present "no text" rule in `SHARED_STYLE`. The model apparently reasoned "real matchboxes
   have a logo" and added one anyway. Fixed by adding a second, icon-specific, more emphatic
   restatement of the no-text rule ("even if the real object would plausibly carry packaging text
   or a logo in real life") — the general `SHARED_STYLE` wording alone wasn't being honored here.

**Re-tested `ESPEN_OBI_003`, `ESPEN_OBI_005` (both `--force`, after both fixes), and
`ESPEN_OBI_006`** (flatbread, for a third data point) **and visually compared against
`ESPENS_1.png`/`ESPENP_1.png`. Honest result: yes, this now matches.** All three icons show bold
black ink outlines, flat-to-lightly-shaded color fields (no gloss/specular highlights, no
photographic material rendering), and a much more subdued shadow — the same illustration register
as the scene and portrait samples, not a separate "icon set" look. `ESPEN_OBI_003`'s key is back
and clearly visible (rendered in a dark gunmetal tone rather than the earlier invented gold — a
color choice difference, not a fidelity problem). `ESPEN_OBI_005`'s matchbox has no text. This is
a real, confirmed fix — not asserted without the side-by-side check.

Not perfect, flagging honestly: the icon backgrounds are still a flat cream/off-white fill rather
than fully transparent or "no background," and there's still a faint soft shadow under each
object (much less pronounced than before, but not a hard graphic shadow either). Neither
contradicts the "same technique as the rest of the game" goal enough to be worth another
iteration right now — parking it as a minor open item for the full-batch pass rather than
re-testing further under a sample-validation budget.

### Follow-up: metal-material rendering and scale, and a regression found mid-fix

**Finding (2026-09-10, fourth follow-up):** user re-flagged `ESPEN_OBI_003` (key/shelf)
specifically, twice, with two concrete problems even after the style fix above: (1) the key was
disproportionately large relative to the shelf, dominating the frame instead of reading as "a key
resting on a shelf"; (2) the key's material rendering had drifted back toward glossy/gunmetal
gradient shading with a heavier outline than the rest of the icon — flat cardboard/bread materials
held the fixed style fine, metal did not.

**First fix attempt:** added explicit metal-rendering guidance ("flat base color, confident ink
outline, at most 1-2 flat highlight strokes, never a photographic gradient") and explicit
scale/proportion guidance ("render at natural size relative to its own parts and any other object
in frame, do not exaggerate for dramatic effect") to both icon templates.

**Result: this fix regressed the earlier fix. Reporting honestly, not hiding it.** Regenerating
`ESPEN_OBI_003` three times in a row after this change **omitted the key entirely** — the icon
showed only the empty shelf. Worse than the "oversized and glossy" problem it was meant to solve.
Root cause: the icon's `Object` field is "Hylla" (the shelf fixture) — the key only appears in the
`Context` field ("Det ligger en nøkkel i hylla"). Telling the model "single centered object" plus
"don't exaggerate/don't dominate the frame" appears to have been read as "the key is optional
scene-dressing on the real (single) subject, the shelf" and dropped it rather than rendering it at
a smaller natural scale.

**Second fix:** reworded the framing instruction to "single centered composition" (not "object")
and added an explicit non-omission clause: if the `Context` text mentions a specific separate item
associated with the object, that item is not optional and must be clearly rendered, sized
naturally, never omitted or shrunk to invisibility.

**Re-tested `ESPEN_OBI_003` twice more with `--force` after this reword. The key is back in both,
at a proportionate/natural scale (no longer dominating the frame), and rendered as a flat gold
color field with 1-2 highlight strokes** — a small residual gradient/bevel remains on the key's
bow (loop), less flat than the matchbox's pure color fields, but nowhere near the original
"gunmetal gradient + glossy sheen" complaint. Compared side by side against `ESPEN_OBI_005`
(matchbox): both now read as the same ink-outlined, mostly-flat illustration technique. This is a
real improvement, checked twice for reproducibility, not a one-off lucky sample — but the key's
material rendering is not pixel-identical in flatness to the matchbox's cardboard, and metal
objects generally may remain the hardest material class for this model to keep fully flat.
Recommend treating any other metal-heavy icons (axe, knife, buckle, coin, sword) as worth a quick
visual check during the full batch rather than assuming this template guarantees flatness on
every material equally.

## Left as-is (not run, flagged for a decision, not silently skipped)

- **`ESPEN_VFI_*`** (10 files) — verb toolbar icons (look/take/use/talk/etc chrome). These are UI
  affordances, not story art; recommend leaving them as simple flat vector/icon-style redraws (or
  untouched) rather than running them through the same painterly-illustration pipeline, which
  would visually fight with a clean UI toolbar. Not run.
- **`ESPEN_SEK/SLU/STA`** (3 files) — single title/end/start screens. These *are* good candidates
  for the same treatment (they're full illustrated screens, same category as scenes), but each is
  a one-off with its own bespoke prompt needs (title typography, "the end" framing) rather than a
  templated loop over 39 near-identical scene records. Recommend a short custom prompt per file,
  written by hand, run separately — not batched through `gen_art.py --category scenes`. Not run.

## Cost / time estimate (from the sample calls actually run)

Per call: ~$0.0002 request tokens + image output. Observed `usage.cost` across all chat-completion
calls that generated actual image output, including the two-reference-image scene call: **~$0.03–
0.04 per image**, no meaningful cost increase from adding a second reference image (matches
OpenRouter's quoted $30/M output tokens for this model — cost is dominated by the generated image's
output tokens, not input images). Call latency was a few seconds each, single-threaded.

Full run estimate: 39 scenes + 26 portraits + 108 icons = 173 calls × ~$0.035 ≈ **$6**, and at
~5-10s/call serially, **15-30 minutes** wall clock (faster with light parallelism, but the script
currently runs serially with simple backoff, not concurrent — safer for a one-shot batch you
don't want to re-run because of a rate-limit stampede). Two-phase chaining doesn't change this
estimate materially — portraits still run once each, scenes still run once each, just in a fixed
order (portraits, then scenes) with scenes carrying one extra (nearly free) reference image.

## Re-test result: ESPENS_1 ("Hjemme") + ESPENP_1 ("Mor") as a chained pair

Regenerated with `--force`: portrait first (`--category portraits --file ESPENP_1.png`), then the
scene (`--category scenes --file ESPENS_1.png`), which auto-detected "Mor" mentioned in the room's
description and attached the freshly-generated `ESPENP_1.png` as an extra reference.

**Result: yes, they now visibly read as the same character.** Both show: red hair in a bun,
hooked/pointed nose, blush, brown ribbed sweater, pink skirt with pale yellow diamond/dot pattern,
brown shoes. The scene composition is still preserved (blue door far left, purple shelf, window,
table+bench, stone fireplace far right, open cellar hatch in the floor — all in the same relative
positions as the 1990 original and as the earlier non-chained test). This is a clear, visible fix
of the identity-drift problem the first (non-chained) run had.

Not perfect: the character's *scale* relative to the room reads a bit large/close in the scene
version vs. a "background NPC" scale you'd expect in an adventure-game scene — a minor framing
note for the full batch, not an identity problem.
