#!/usr/bin/env python3
"""Regenerate Espen i Asmo art assets in a modern style via OpenRouter (Gemini 2.5 Flash Image).

Reads assets/orig/<file>.png as a reference image plus a category-specific prompt built from
game.json, calls OpenRouter chat completions with modalities=["image","text"], and writes the
result to assets/new/<same file>.png.

See ART_PROMPTS.md for the prompt design and the model/API shape this relies on.

Reference chaining, two kinds (see STYLE_GUIDE.md, and ART_PROMPTS.md "Identity consistency" and
"Style anchor" for why — text-only style instructions were demonstrated unreliable, drifting
wildly on some scenes and portraits):

1. Style anchors (STANDING, not generated per-run): two purpose-built, game-asset-independent
   reference images at the repo root, `style_ref_scene.png` and `style_ref_creature.png`,
   generated from STYLE_GUIDE.md's rules and confirmed by direct visual comparison to render in
   the same consistent technique as each other. EVERY generation (scenes, portraits, icons) gets
   the category-appropriate one attached as an additional reference image (see
   `STYLE_ANCHOR_FOR_CATEGORY` below for which category uses which, and why). This replaced an
   earlier approach that used a real generated scene (assets/new/ESPENS_1.png) as the style
   anchor — that worked better than text-only instructions, but was still vulnerable to that one
   real asset's own generation being imperfect; a purpose-built anchor decouples "what is our
   style" from "did this one game asset happen to generate well."
2. Character identity anchors: character portraits should be generated BEFORE scenes. When
   generating a scene, any character textually mentioned in that room's description gets their
   already-generated portrait (assets/new/ESPENP_<portrait>.png — keyed by characters[].portrait
   in game.json, NOT filename number == character id, see "RESOLVED" note in ART_PROMPTS.md)
   passed as an EXTRA reference image, so the model matches a concrete likeness instead of
   inventing a new one per scene.

If a character anchor hasn't been generated yet, the scene is generated anyway (with a printed
warning) using the style anchor and original-scene reference only.

Usage:
    python3 tools/gen_art.py --category portraits   # identity anchors - run first
    python3 tools/gen_art.py --category scenes      # reuses portraits as character anchors
    python3 tools/gen_art.py --category icons
    python3 tools/gen_art.py --category scenes --file ESPENS_18.png --force

Requires OPENROUTER_API_KEY in the environment (already set per project conventions).
"""
from __future__ import annotations

import argparse
import base64
import json
import re
import sys
import time
from pathlib import Path

import requests

ROOT = Path(__file__).resolve().parent.parent
ORIG_DIR = ROOT / "assets" / "orig"
NEW_DIR = ROOT / "assets" / "new"
GAME_JSON = ROOT / "game.json"

# Standing style anchors: purpose-built, game-asset-independent reference images (repo root),
# generated from STYLE_GUIDE.md and confirmed by direct visual comparison to match each other's
# rendering technique (flat color fields, confident ink outlines, visible canvas grain, no
# photographic/glossy rendering, no vignette border). See STYLE_GUIDE.md for the full rule list
# and ART_PROMPTS.md "Style anchor" for the history of why a purely-textual SHARED_STYLE and even
# a single-real-asset anchor (an earlier version of this script used assets/new/ESPENS_1.png)
# both proved unreliable before landing on this approach.
STYLE_REF_SCENE = ROOT / "style_ref_scene.png"
STYLE_REF_CREATURE = ROOT / "style_ref_creature.png"

# Which standing style anchor each category uses, and why (documented in ART_PROMPTS.md "Style
# anchor" too): scenes are environments/props, the same kind of subject as style_ref_scene.png
# (a room full of furniture) — use that. Portraits are a single character/creature face, the same
# kind of subject style_ref_creature.png was purpose-built to nail (organic material shading,
# single coherent subject, flat fur linework) — use that. Icons are small inanimate objects,
# closer in kind to the furniture/props inside style_ref_scene.png (flat fields + ink outline +
# a few texture strokes) than to a character's face — use style_ref_scene.png too.
STYLE_ANCHOR_FOR_CATEGORY = {
    "scenes": STYLE_REF_SCENE,
    "portraits": STYLE_REF_CREATURE,
    "icons": STYLE_REF_SCENE,
}

# google/gemini-3-pro-image defaults to a square 1:1 output unless image_config.aspect_ratio is
# set (confirmed empirically 2026-09-10). Each category's original asset has a distinct aspect
# ratio (scenes 360x200 = 1.8:1, portraits 108x116 = 0.93:1, icons 56x40 = 1.4:1); the model only
# accepts a fixed set of standard ratios, not arbitrary ones, so each maps to its closest
# available option. A forced-square output was the root cause of the "vignette/postcard border"
# issue on scenes — the model was padding the leftover space in a square canvas rather than
# filling a landscape frame — confirmed fixed by setting the correct ratio (see ART_PROMPTS.md
# "Aspect ratio"). None = let the model default (already close enough to square for portraits).
ASPECT_RATIO_FOR_CATEGORY = {
    "scenes": "16:9",  # 1.78:1, closest standard option to 360:200 = 1.8:1
    "portraits": None,  # 108:116 = 0.93:1, closest to default 1:1 already
    "icons": "4:3",  # 1.33:1, closest standard option to 56:40 = 1.4:1
}

MODEL = "google/gemini-3-pro-image"
API_URL = "https://openrouter.ai/api/v1/chat/completions"

SHARED_STYLE = (
    "Modern painterly children's-book illustration style: soft brushy digital painting, warm "
    "and inviting color palette, clean confident linework, gentle lighting and soft shadows, a "
    "bit of visible paper/canvas texture. Whimsical and cozy, in the tone of a beloved "
    "Scandinavian children's storybook — NOT photorealistic, NOT anime, NOT 3D-rendered, NOT "
    "a different genre (no horror, no grimdark). Keep it readable as a point-and-click adventure "
    "game scene: clear silhouettes, uncluttered composition, nothing important hidden in shadow. "
    "Do not render any text, letters, words, captions, or a caption bar/text box anywhere in the "
    "image — the game engine draws its own text separately; the image must be pure illustration. "
    "This applies even where you might be tempted to add lettering for realism or flavor — e.g. a "
    "ship's name painted on its hull, a shop or building sign, a nameplate, a flag or banner "
    "inscription, a sail's markings, a gravestone or plaque: NONE of these get any rendered text "
    "or logo, ever, no matter how natural it would look on the real object. Leave those surfaces "
    "blank, textured, or decorated with wordless patterns/emblems instead. This also means: never "
    "transcribe any word or phrase from this prompt's own scene/object description text into the "
    "image as a floating label, caption, or annotation (e.g. do not write a sound effect like "
    "'scratching and screaming' or a word like 'daylight' onto the illustration just because it "
    "appears in the description below) — the description is source material to depict visually, "
    "never text to render literally into the picture. "
    "Apply the SAME level of painterly rendering — shading, gradients, brush texture, linework "
    "weight — to every object in the frame, including small or simple background props, wall "
    "fixtures, and decorations, not just the main furniture or characters. Do not leave any "
    "object as a flat, untextured, undetailed color silhouette while the rest of the scene is "
    "shaded and textured, even if that object was drawn very simply (e.g. as a plain bracket or "
    "outline shape) in the reference image — reinterpret its form in the target style just as "
    "fully as everything else, as if the whole image were painted by the same artist in one pass. "
    "Always draw smooth, continuous, hand-drawn linework — NEVER reproduce the jagged, "
    "staircase-shaped pixel edges of a low-resolution source bitmap as if they were the intended "
    "outline shape; treat blocky/jagged silhouette steps in the reference as a resolution "
    "limitation to smooth over, not a shape to trace literally. This rule applies to EVERY edge "
    "in the image at EVERY scale — not just small foreground objects or character silhouettes, "
    "but also large background/environment shapes: cloud outlines, hillside and mountain "
    "silhouettes, tree lines, horizons, water edges, rooftops, and any other big terrain or sky "
    "shape. A large shape traced pixel-for-pixel from a low-res source is just as wrong as a small "
    "one — redraw its silhouette as one smooth, confident, hand-drawn curve or line at any size. "
    "If the reference image contains "
    "multiple small sprites, repeated small figures, incidental marks, or stray motion/whisker "
    "lines on one canvas, do not literally reproduce each one as a separate merged/overlapping "
    "part of a single deformed subject — synthesize ONE clean, coherent, anatomically sensible "
    "subject (reading the sprites as different frames/angles of the same character, or picking "
    "the clearest single figure), unless the prompt text below explicitly asks for multiple "
    "distinct figures in the same image."
)

SCENE_TEMPLATE = """{style}

Repaint this exact scene, keeping the same room layout, camera angle, and the same positions
for every door, window, opening, and exit visible in the reference image — those positions are
load-bearing, players click on them to navigate, so do not move, add, or remove any exit.
Keep the same approximate arrangement of furniture and objects, just rendered in the new style.

Scene description (Norwegian, from the original game): "{desc}"

Reference image is the original 1990 scene; use it for composition, spatial layout, and object
placement, not for color/rendering style."""

# Scene numbers whose ORIGINAL reference has no discernible room content for the model to draw
# from (either a genuinely blank/black screen with an empty room description, or an abstract
# effect like underwater dithering with no real objects/furniture) — found during full-batch
# spot-checking 2026-09-10. Generic SCENE_TEMPLATE told the model to "keep the same arrangement
# of furniture," which is meaningless with nothing there, and in practice the model filled the
# gap by copying the STYLE REFERENCE image's own literal content (a cottage room) instead of
# generating anything appropriate. Both get dedicated handling instead of the generic template.
#
# 21 = "Drømmeland" (Dreamland): room desc is the empty string, reference is solid black. There is
#      nothing to depict — do not invent furniture/content, render an abstract mood field instead.
# 37 = "I sjøen" (In the sea): desc describes swimming through clear water; reference is an
#      abstract blue/white dithered pattern (water/light, not objects) — render an underwater
#      abstract scene grounded in the text, not a literal room.
SCENE_BLANK_NUMBERS = {21}
SCENE_ABSTRACT_HINTS = {
    37: (
        "This room has no literal furniture or objects — it is being experienced while swimming "
        "underwater. Render an abstract underwater scene: murky blue-green water with soft "
        "shafts of light filtering down from above, gentle bubbles, and maybe a few soft "
        "silhouetted shapes of water plants or small fish in the distance. Do NOT render a room, "
        "walls, furniture, a door, or any indoor content — there is none. Do NOT copy the style "
        "reference image's own room/furniture content; use it for rendering technique only."
    ),
}

BLANK_SCENE_TEMPLATE = """{style}

This "scene" has no room content to depict — the original game shows a deliberately blank/dark
screen at this point (an empty room description, e.g. a dream or unconscious sequence). Do NOT
invent furniture, objects, characters, or any literal content. Render a simple, smooth, abstract
mood field instead: a soft dark gradient (deep muted blues/purples/near-black) with a gentle
dreamlike quality — soft cloud-like or wispy shapes are fine, but nothing that reads as a room or
a concrete object. Keep the same overall dark tonality as the original reference. Full-bleed, no
border, no text."""

STYLE_ANCHOR_NOTE = """

A STYLE REFERENCE image is also attached: a purpose-built illustration (not tied to any specific
game asset) in the exact target rendering technique — flat-to-lightly-shaded color fields,
confident consistent ink outlines, visible canvas-grain texture, warm muted palette, full-bleed
with no border/vignette. Match that image's rendering TECHNIQUE — outline weight, shading
approach, color saturation and muting, background treatment — exactly, regardless of how
saturated, low-resolution, or jagged the ORIGINAL 1990 reference's own colors/edges are.

The ORIGINAL 1990 reference is EGA/VGA source art with a small, harshly saturated color palette
and blocky, low-resolution pixel edges — these are hardware limitations, not a style choice, and
must NOT be reproduced literally. Reinterpret the original's colors into the STYLE REFERENCE's
muted palette (a bright neon color becomes a muted, desaturated version of that same hue family,
never the neon color itself). Redraw the original's jagged/staircase-stepped pixel silhouette as
a smooth, continuous, hand-drawn outline — never trace the pixel steps literally. If the original
reference shows multiple small sprites, repeated small figures, or stray incidental marks on one
canvas, do not fuse them into one deformed subject — synthesize ONE clean, coherent subject
instead (see STYLE_GUIDE.md for the full rule list this is drawn from).

The style reference is for rendering technique only, not for this asset's own layout/identity/
content, which still comes from the original 1990 reference (and, where relevant, the character
identity anchor)."""

PORTRAIT_TEMPLATE = """{style}

Repaint this exact character portrait in the new style. Head-and-shoulders (or the same framing
as the reference) portrait of a character from a Norwegian folk-tale adventure game, named
"{name}". Keep the same pose, framing, and readable silhouette as the reference image — this
is used as a dialogue portrait, it must stay recognizable as the same character across the whole
game. Plain or softly blurred background, character is the sole focus.

This portrait is the CANONICAL design reference for "{name}" — it will be reused as a reference
image for every scene this character appears in, so keep the face, hair, coloring, and outfit
simple and distinct enough to recognize consistently at a glance.

Reference image is the original 1990 portrait; use it for identity, pose, and framing, not for
color/rendering style."""

SCENE_CHARACTER_NOTE = """

The following character(s) appear in or are associated with this room, and a canonical character
design reference image is attached for each of them (in addition to the original scene reference):
{character_list}
Render {character_or_them} in the scene matching that exact design — same face, hair color and
style, and outfit as in their reference image(s). The ORIGINAL SCENE reference image (the first
one attached) governs room layout, architecture, and exit positions only; the character reference
image(s) govern character likeness only, not the room's style or palette."""

SCENE_OBJECTS_NOTE = """

This room contains the following specific, named, interactive objects (from the game's own data),
which the player can look at and interact with — each one MUST be clearly recognizable in the
scene AS THAT OBJECT, not reinterpreted as a different kind of object:
{object_list}
The original 1990 reference image renders each of these as a small, crude, low-resolution shape —
do not trust your own visual interpretation of an ambiguous shape in the reference over this list.
For example, if the reference shows a vague two-part rectangular shape and this list says it's a
wall shelf, render a wall shelf — do not invent an unrelated real-world object (like a bed, a
cabinet, or a window) just because the low-res shape could be visually misread as one. Do not add
any object, named or unnamed, that is not in this list and not otherwise part of the room's basic
architecture (walls, floor, door, window)."""

ICON_TEMPLATE = """{style}

Repaint this small inventory/object icon using the EXACT SAME rendering technique as the rest of
this game's art (the same technique used for the scene backgrounds and character portraits):
flat-to-lightly-shaded color fields, visible confident ink outline strokes around every shape, a
bit of painterly brush texture. It must look like it was cut out of the same illustrated world as
the scenes and portraits — NOT a separate, cleaner "icon set" style.

Explicitly avoid: glossy/product-render material highlights, soft airbrush gradients, realistic
material shading (e.g. photographic wood-grain or metal specular reflections), and a soft blurred
drop shadow that makes the object float off the background like a stock icon or 3D product shot.
Those read as generic AI-stock-art and must not appear here.

Metal/reflective objects specifically: this is where photorealistic rendering tends to creep in —
resist that. A metal object (key, blade, buckle, coin, etc.) must be rendered exactly like
everything else: a flat or near-flat base color field, a confident ink outline, and AT MOST 1-2
simple flat highlight strokes to suggest shine — never a smooth photographic gradient across the
whole surface, never a soft airbrushed specular sheen, never a heavier/thicker outline than other
objects in the same style just because the material is metal. It should look like the same
illustrator painted the metal object and the cloth/wood/food objects in the same sitting.

Scale/proportion: render the object at the size and proportion it actually has relative to its own
parts and to any other object visible with it in the reference image (e.g. a key resting on a
shelf should look key-sized on that shelf, not blown up to dominate the frame). Do not
exaggerate or enlarge the object past its natural proportions for dramatic effect — keep it
looking like a normal object, not a hero close-up.

Framing: single centered composition on a simple plain flat-color (or no) background so it reads
clearly at small display size in an inventory grid. Preserve every visually distinguishing detail
from the reference image that makes the object identifiable as itself (e.g. a pattern, a
distinctive part) — simplify the RENDERING TECHNIQUE, not the CONTENT; do not drop or omit a
distinguishing feature just to make the silhouette simpler. If the Context text below mentions a
specific separate item associated with the object (e.g. "a key lies on the shelf"), that item is
NOT optional set-dressing — it MUST be clearly rendered and recognizable in the icon, sized
naturally next to the main object, not omitted, not shrunk to invisibility. Absolutely no rendered
text, letters, words, or labels anywhere in the image, even if the real object would plausibly
carry packaging text or a logo in real life.

Object: "{name}". Context: "{desc}"

Reference image is the original 1990 icon; use it for identity and shape, not for color/rendering
style."""

ICON_FALLBACK_TEMPLATE = """{style}

Repaint this small inventory/object icon using the EXACT SAME rendering technique as the rest of
this game's art (the same technique used for the scene backgrounds and character portraits):
flat-to-lightly-shaded color fields, visible confident ink outline strokes around every shape, a
bit of painterly brush texture. It must look like it was cut out of the same illustrated world as
the scenes and portraits — NOT a separate, cleaner "icon set" style.

Explicitly avoid: glossy/product-render material highlights, soft airbrush gradients, realistic
material shading, and a soft blurred drop shadow that makes the object float off the background
like a stock icon or 3D product shot. Those read as generic AI-stock-art and must not appear here.
Metal/reflective objects specifically: render with a flat base color, a confident ink outline, and
at most 1-2 simple flat highlight strokes — never a photographic gradient or airbrushed sheen.

Scale/proportion: render the object at its natural size and proportion relative to its own parts
and any other object visible with it in the reference image — do not exaggerate or enlarge it for
dramatic effect.

Framing: single object, centered, on a simple plain flat-color (or no) background. Preserve every
visually distinguishing detail from the reference image; simplify the rendering technique, not
the content. Absolutely no rendered text, letters, words, or labels anywhere in the image. This
is a generic adventure-game inventory object; no further description is available — stay as
faithful as possible to the reference image's shape and identity.

Reference image is the original 1990 icon; use it for identity and shape, not for color/rendering
style."""


def load_game_data():
    with open(GAME_JSON, encoding="utf-8") as f:
        return json.load(f)


def scene_desc_map(game: dict) -> dict[int, str]:
    """scene number -> first state's desc for the room that scene belongs to."""
    out: dict[int, str] = {}
    for room in game["rooms"]:
        for state in room["states"]:
            scene = state["scene"]
            if scene not in out:
                out[scene] = state["desc"]
    return out


def portrait_number_to_character(game: dict) -> dict[int, dict]:
    """ESPENP_<n>.png file number -> character dict, via characters[].portrait (a word at byte
    offset 288 in the 828-byte character record, decoded by adv_dump.py — NOT the character's
    `id`). A character with portrait == 0 has no real portrait image in the original data; the
    engine hides the portrait pane for those rather than guessing, and this script does the same
    (see `characters_mentioned_in_room` / anchor lookup below).

    Historical note: an earlier version of this script assumed filename number == character id.
    That was wrong (confirmed by visually checking image content against what it predicted, e.g.
    "ESPENP_12.png = Brutroll" actually showed an unrelated human woman) and has been fixed."""
    return {
        c["portrait"]: c
        for c in game["characters"]
        if c.get("portrait", 0) != 0
    }


def characters_mentioned_in_room(room: dict, game: dict) -> list[dict]:
    """Characters whose name is textually mentioned (word-boundary, case-insensitive) in any of
    this room's state descriptions.

    NOTE on why this, not room["person"]: room["person"] is a single per-room field (confirmed:
    FORMAT.md offset 0x19, one word, not per-state) but it does NOT reliably track who is
    depicted in the room's own description. Example: room 1 "Hjemme" has person=15 ("Per"), but
    its actual desc text is "...Mor ser trist ut." (Mor looks sad) — Per is never mentioned.
    room["person"] looks like an NPC-encounter/rule-trigger id (who *can* be summoned into this
    room by a rule), not "who is drawn in the base scene art". room["portrait"] (note: a ROOM
    field, unrelated to the CHARACTER "portrait" field used in portrait_number_to_character) is
    even less useful: it is 1 for all 36 rooms, i.e. a stale/unused field. Text-mention matching
    against the actual description is the only signal that empirically matched the ground truth.

    Known limitation: three characters are literally named "Rotter"/"Rotter2"/"Rotter3" — desc
    text only ever says "Rotter", so this always resolves to id 2, never 3/4. Left as-is; not
    worth disambiguating for background rats.
    """
    text = " ".join(state["desc"] for state in room["states"])
    found = []
    seen_ids = set()
    for c in game["characters"]:
        name = c["name"].strip()
        if not name or c["id"] in seen_ids:
            continue
        if re.search(r"\b" + re.escape(name) + r"\b", text, re.IGNORECASE):
            found.append(c)
            seen_ids.add(c["id"])
    return found


def icon_object_map(game: dict) -> dict[int, tuple[str, str]]:
    """icon number -> (object name, state desc), first object/state that references it."""
    out: dict[int, tuple[str, str]] = {}
    for obj in game["objects"]:
        for state in obj["states"]:
            icon = state.get("icon")
            if icon is not None and icon not in out:
                out[icon] = (obj["name"], state.get("desc", ""))
    return out


def room_for_scene(scene_num: int, game: dict) -> dict | None:
    for room in game["rooms"]:
        for state in room["states"]:
            if state["scene"] == scene_num:
                return room
    return None


def objects_in_room(room_id: int, game: dict) -> list[tuple[str, str]]:
    """(object name, first-state desc) for every object whose objects[].room == room_id.

    Added 2026-09-11 after a confirmed content-correctness defect: ESPENS_6 ("Kjeller"/basement)
    rendered a full bunk bed with pillows/blankets where the room actually only has a wall shelf
    (Vegghylle), rope/canvas (Seilduk), and a ladder (Stige) — no bed anywhere in the game data or
    the room's own description. The original 1990 art renders Vegghylle as an ambiguous crude
    two-bar shape, and the model, given only the room's flavor text with no object grounding,
    freely (and wrongly) reinterpreted that shape as a bed. Root cause: the scene prompt only ever
    fed the room's flavor-text description, never the room's actual object list from game.json —
    the model had no data-grounded list of what discrete objects the scene needs to contain, just
    prose to riff on. This function supplies that missing grounding."""
    return [
        (obj["name"], obj["states"][0].get("desc", ""))
        for obj in game["objects"]
        if obj.get("room") == room_id and obj["states"]
    ]


def attach_style_anchor(category: str, prompt: str, extra_refs: list[Path]) -> tuple[str, list[Path]]:
    """Appends the category-appropriate standing style anchor (see STYLE_ANCHOR_FOR_CATEGORY) as
    an extra reference image, with a prompt note. These are static files at the repo root, not
    generated per-run, so this always applies (no "generate the anchor first" ordering needed,
    unlike the old real-asset-as-anchor approach)."""
    anchor_path = STYLE_ANCHOR_FOR_CATEGORY[category]
    if not anchor_path.exists():
        print(f"    (note: style anchor {anchor_path.name} missing at repo root — generating without it)")
        return prompt, extra_refs
    prompt += STYLE_ANCHOR_NOTE
    return prompt, extra_refs + [anchor_path]


def build_prompt(category: str, filename: str, game: dict) -> tuple[str, list[Path]]:
    """Returns (prompt_text, extra_reference_image_paths). Extra references: the standing style
    anchor (always, for every category) plus, for scenes, any character identity anchors."""
    if category == "scenes":
        m = re.match(r"ESPENS_(\d+)\.png$", filename)
        if not m:
            raise ValueError(f"unrecognized scene filename: {filename}")
        scene_num = int(m.group(1))
        desc = scene_desc_map(game).get(scene_num)
        if desc is None:
            raise ValueError(f"no room desc found for scene {scene_num}")

        if scene_num in SCENE_BLANK_NUMBERS:
            prompt = BLANK_SCENE_TEMPLATE.format(style=SHARED_STYLE)
            # No character anchors make sense for a blank mood field; still attach style anchor.
            return attach_style_anchor(category, prompt, [])

        prompt = SCENE_TEMPLATE.format(style=SHARED_STYLE, desc=desc)
        if scene_num in SCENE_ABSTRACT_HINTS:
            prompt += "\n\n" + SCENE_ABSTRACT_HINTS[scene_num]

        room = room_for_scene(scene_num, game)
        extra_refs: list[Path] = []
        if room is not None:
            mentioned = characters_mentioned_in_room(room, game)
            available = []
            for c in mentioned:
                portrait_num = c.get("portrait", 0)
                if not portrait_num:
                    print(
                        f"    (note: '{c['name']}' mentioned in this room, but has no real "
                        f"portrait in the game data (portrait=0) — generating without an "
                        f"identity anchor for them, same as the engine hiding their portrait pane)"
                    )
                    continue
                anchor_path = NEW_DIR / f"ESPENP_{portrait_num}.png"
                if anchor_path.exists():
                    available.append((c["name"], anchor_path))
                else:
                    print(
                        f"    (note: '{c['name']}' mentioned in this room, but no anchor "
                        f"portrait at {anchor_path.name} yet — run --category portraits first "
                        f"for full identity consistency; generating without it for now)"
                    )
            if available:
                names = ", ".join(n for n, _ in available)
                char_list = "\n".join(f"- {n}" for n, _ in available)
                prompt += SCENE_CHARACTER_NOTE.format(
                    character_list=char_list,
                    character_or_them="them" if len(available) > 1 else names,
                )
                extra_refs = [p for _, p in available]

            objects = objects_in_room(room["id"], game)
            if objects:
                object_list = "\n".join(
                    f"- {name}: {desc}" if desc else f"- {name}"
                    for name, desc in objects
                )
                prompt += SCENE_OBJECTS_NOTE.format(object_list=object_list)

        return attach_style_anchor(category, prompt, extra_refs)

    if category == "portraits":
        m = re.match(r"ESPENP_(\d+)\.png$", filename)
        if not m:
            raise ValueError(f"unrecognized portrait filename: {filename}")
        portrait_num = int(m.group(1))
        char = portrait_number_to_character(game).get(portrait_num)
        name = char["name"] if char else "an unnamed character"
        prompt = PORTRAIT_TEMPLATE.format(style=SHARED_STYLE, name=name)
        return attach_style_anchor(category, prompt, [])

    if category == "icons":
        m = re.match(r"ESPEN_OBI_(\d+)\.png$", filename)
        if not m:
            raise ValueError(f"unrecognized icon filename: {filename}")
        icon_num = int(m.group(1)) + 1  # filenames are 0-padded, icon numbers are 1-based
        entry = icon_object_map(game).get(icon_num)
        if entry is None:
            prompt = ICON_FALLBACK_TEMPLATE.format(style=SHARED_STYLE)
        else:
            name, desc = entry
            prompt = ICON_TEMPLATE.format(style=SHARED_STYLE, name=name, desc=desc)
        return attach_style_anchor(category, prompt, [])

    raise ValueError(f"unknown category: {category}")


CATEGORY_GLOBS = {
    "scenes": "ESPENS_*.png",
    "portraits": "ESPENP_*.png",
    "icons": "ESPEN_OBI_*.png",
}


def call_openrouter(
    api_key: str,
    prompt: str,
    ref_image_paths: list[Path],
    max_retries: int = 4,
    aspect_ratio: str | None = None,
) -> tuple[bytes, float]:
    """ref_image_paths: one or more reference images, in order (first = primary/layout
    reference, any additional = identity anchors). Confirmed empirically that OpenRouter chat
    completions accepts multiple image_url content parts in one request and uses them all
    (prompt_tokens scales with each extra image, outputs visibly follow additional references)
    — see ART_PROMPTS.md.

    aspect_ratio: passed as image_config.aspect_ratio (e.g. "16:9"). Confirmed empirically
    2026-09-10 that google/gemini-3-pro-image honors this and otherwise defaults to a square
    1:1 output — see ART_PROMPTS.md "Aspect ratio" for why this matters (a square image can't
    fill the engine's 360x200 landscape scene frame without cropping/bars, and the model was
    filling the leftover space with a vignette border as a side effect of being forced square)."""
    content = [{"type": "text", "text": prompt}]
    for path in ref_image_paths:
        ref_b64 = base64.b64encode(path.read_bytes()).decode()
        content.append(
            {"type": "image_url", "image_url": {"url": f"data:image/png;base64,{ref_b64}"}}
        )
    body = {
        "model": MODEL,
        "modalities": ["image", "text"],
        "messages": [{"role": "user", "content": content}],
    }
    if aspect_ratio:
        body["image_config"] = {"aspect_ratio": aspect_ratio}
    headers = {
        "Authorization": f"Bearer {api_key}",
        "Content-Type": "application/json",
    }

    backoff = 5
    for attempt in range(max_retries):
        resp = requests.post(API_URL, headers=headers, json=body, timeout=120)
        if resp.status_code == 429 and attempt < max_retries - 1:
            time.sleep(backoff)
            backoff *= 2
            continue
        resp.raise_for_status()
        data = resp.json()
        message = data["choices"][0]["message"]
        images = message.get("images")
        if not images:
            raise RuntimeError(
                f"no image in response (finish_reason={data['choices'][0].get('finish_reason')}, "
                f"content={message.get('content')!r})"
            )
        url = images[0]["image_url"]["url"]
        if not url.startswith("data:image"):
            raise RuntimeError(f"unexpected image_url format: {url[:60]}")
        b64_data = url.split(",", 1)[1]
        cost = float(data.get("usage", {}).get("cost", 0.0))
        return base64.b64decode(b64_data), cost

    raise RuntimeError("exhausted retries")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--category",
        required=True,
        choices=["scenes", "portraits", "icons"],
        help=(
            "'portraits' is the identity-anchor phase — run it before 'scenes' so scene "
            "generations can reference already-generated character portraits for consistency."
        ),
    )
    parser.add_argument("--file", help="single filename (e.g. ESPENS_1.png); default: all in category")
    parser.add_argument("--force", action="store_true", help="regenerate even if output already exists")
    parser.add_argument(
        "--api-key",
        default=None,
        help="OpenRouter API key (default: $OPENROUTER_API_KEY)",
    )
    args = parser.parse_args()

    import os

    api_key = args.api_key or os.environ.get("OPENROUTER_API_KEY")
    if not api_key:
        sys.exit("OPENROUTER_API_KEY not set")

    game = load_game_data()
    NEW_DIR.mkdir(parents=True, exist_ok=True)

    if args.file:
        targets = [ORIG_DIR / args.file]
        if not targets[0].exists():
            sys.exit(f"not found: {targets[0]}")
    else:
        targets = sorted(ORIG_DIR.glob(CATEGORY_GLOBS[args.category]))

    print(f"{len(targets)} file(s) in category '{args.category}'")

    if args.category == "scenes" and not any(NEW_DIR.glob("ESPENP_*.png")):
        print(
            "  NOTE: no anchor portraits found in assets/new/ yet. Scenes will be generated "
            "without character-identity references (run --category portraits first for "
            "consistent character likeness across scenes and portraits)."
        )

    done = skipped = failed = 0
    total_cost = 0.0
    failures: list[tuple[str, str]] = []
    for src in targets:
        dst = NEW_DIR / src.name
        if dst.exists() and not args.force:
            print(f"  skip (exists): {src.name}")
            skipped += 1
            continue

        try:
            prompt, extra_refs = build_prompt(args.category, src.name, game)
        except ValueError as e:
            print(f"  FAIL (prompt): {src.name}: {e}")
            failed += 1
            failures.append((src.name, str(e)))
            continue

        ref_paths = [src] + extra_refs
        suffix = f" (+{len(extra_refs)} anchor ref)" if extra_refs else ""
        print(f"  generating: {src.name}{suffix} ...", end=" ", flush=True)
        try:
            img_bytes, cost = call_openrouter(
                api_key, prompt, ref_paths, aspect_ratio=ASPECT_RATIO_FOR_CATEGORY[args.category]
            )
        except Exception as e:
            print(f"FAIL: {e}")
            failed += 1
            failures.append((src.name, str(e)))
            continue

        dst.write_bytes(img_bytes)
        total_cost += cost
        print(f"ok ({len(img_bytes)} bytes, ${cost:.4f})")
        done += 1

    print(f"\ndone={done} skipped={skipped} failed={failed} total_cost=${total_cost:.4f}")
    if failures:
        print("failures:")
        for name, err in failures:
            print(f"  {name}: {err}")


if __name__ == "__main__":
    main()
