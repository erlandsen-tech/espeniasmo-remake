# Espen i Asmo — target art style guide

Purpose: a concrete, checkable definition of the target rendering style, separate from any single
game asset. Written after several rounds of reactive fixing (patch one defect, spot-check, find
another) failed to converge — the pattern in every failure so far has been the model over-trusting
a specific 1990 source image's low-resolution/saturated/jagged qualities instead of reinterpreting
through a stable style. This document exists to give the model (and any reviewer) something to
check against that doesn't depend on any particular source image.

## The failure modes this document exists to prevent

Every defect found in prior rounds, so nothing gets re-litigated or silently dropped:

1. **Literal color-copying of saturated 1990 source colors** (`ESPENS_18`'s neon-cyan table,
   copied instead of muted, 3/3 attempts even with a style-anchor image).
2. **Jagged/staircase pixel-edge tracing** — reproducing a low-res source bitmap's blocky pixel
   steps as the actual outline shape, instead of smoothing them into a hand-drawn line
   (`ESPENP_13`'s rabbit silhouette).
3. **Fusing multiple small sprites/incidental marks into one deformed subject** — a source canvas
   with several small figures (rat pack, three hares) or a stray mark (a motion-line squiggle)
   getting merged into a single corrupted creature instead of one clean subject
   (`ESPENP_13`, `ESPENP_6`).
4. **Uneven rendering effort within one image** — "hero" objects (furniture, characters) getting
   full painterly shading while small background props (a wall shelf bracket) get left as flat,
   undetailed color silhouettes.
5. **Glossy/photographic material rendering creeping in on reflective objects** — a metal key
   rendered with a full specular gradient and glossy highlight instead of the same flat-plus-ink
   treatment as everything else (`ESPEN_OBI_003`).
6. **Rendered text/captions** — the model spontaneously adding a caption bar with the room's
   description text, or a product label on a matchbox, despite "no text" already being requested.
7. **Disproportionate object scale** — a key rendered comically oversized relative to the shelf
   it sits on.
8. **Inconsistent framing border** — some generations come back full-bleed, others with a soft
   rounded-corner "postcard" vignette. Not yet a functional bug, but a visible inconsistency.

Rule of thumb behind most of these: **the source reference image is for content and composition,
never for rendering technique.** A 1990 16-color EGA/VGA image's colors, edges, and dithering are
hardware limitations, not stylistic choices, and must never be copied as if they were.

## Concrete visual rules (checkable, not just adjectives)

**Palette.** Desaturate and warm every color relative to its 1990 source: roughly a 30-40%
reduction in saturation, hue preserved (a neon cyan becomes a dusty teal-blue, a pure EGA red
becomes a brick red/maroon, pure green becomes a muted moss/sage green). No neon, no pure
primary/secondary colors straight from an 8- or 16-color palette. Warm-leaning overall (slight
push toward amber/red in the midtones) rather than cool/neutral.

**Line weight.** One consistent confident ink outline around every shape — not a hairline sketch,
not a thick uniform vector/clipart stroke. The line should read as roughly 0.3-0.5% of the image's
shorter dimension, and should VARY slightly along its own length (very slightly heavier on the
shadow side of a form, lighter on the lit side) — a perfectly uniform stroke weight all the way
around every shape is a tell for the "clipart" failure mode and must be avoided.

**Shading.** One soft, consistent directional light source per image (never flat ambient
lighting). Soft-edged gradient falloff from lit to shadow side, plus a bit of visible
paper/canvas grain texture over the whole image. This applies to EVERY object in frame equally —
see "hero vs. background objects" below. Avoid hard-edged cel-shading (a single flat shadow
polygon with a crisp edge) — the transition should be soft, not sharp.

**Material-specific shading, still within the flat-plus-ink system, never photographic:**
- Wood / cloth / paper / organic materials: flat base color plus soft directional shading plus a
  few simple linework strokes suggesting grain/weave/texture. This is the easy case and has
  generally worked.
- Metal / reflective materials (the harder case): flat base color, confident ink outline, and AT
  MOST 1-2 simple flat highlight strokes to suggest shine. Never a smooth photographic gradient
  across the whole surface, never an airbrushed specular sheen, never a thicker/glossier outline
  than other materials in the same image just because it's metal.
- Fire / smoke / water / weather effects: soft painterly gradient shapes with visible brushwork.
  Never a field of small dots/specks/particles standing in for sparks, glitter, or dithering —
  that reads as literal-copying a source bitmap's dither pattern, not an intentional effect.

**Hero object vs. background/secondary object.** There is no such tier in the final rendering —
every object in frame, regardless of size or narrative importance, gets the full treatment above
(shading, outline, a little texture). A small wall-mounted shelf bracket is rendered with the same
technique as a character in the foreground, just with a simpler shape and smaller value range —
not as a flat, undetailed color silhouette.

**Scale/proportion.** Every object is rendered at the size and proportion it actually has relative
to its own parts and to anything else pictured with it — never exaggerated or enlarged for
dramatic effect. A key on a shelf reads as "a normal key on a normal shelf," not a hero close-up.

**Single coherent subject.** If a source reference contains multiple small figures/sprites on one
canvas, or a stray incidental mark (a motion line, a dust speck, a UI artifact), that is NOT an
instruction to render multiple overlapping/fused figures. Read it as: either multiple
frames/angles of the same one character (pick or synthesize ONE coherent version), or an artifact
to ignore — unless the accompanying text description explicitly calls for more than one figure in
frame.

**Silhouette smoothness.** Outlines are always smooth and hand-drawn/continuous. A low-resolution
source bitmap's blocky, staircase-stepped pixel edges are a resolution limitation of 1990
hardware, never the intended silhouette — always smooth them into a clean curve or line, never
trace the pixel steps literally.

**No text.** Never render text, letters, words, numbers, captions, or a caption/text bar anywhere
in the image, even where a real-world equivalent object would plausibly carry text (packaging,
signage, a logo). The game engine renders all text separately.

**Framing/border.** Full-bleed, edge-to-edge image. No border, no vignette, no rounded corners, no
"postcard" frame effect around the illustration.

## Style reference images (decoupling "what is our style" from "does this 1990 source generate well")

Several of the failures above trace to the model over-trusting a *specific* problematic 1990
source image (unusually saturated, unusually low-res/jagged, or containing multiple sprites) even
when told not to. The fix direction: generate a small set of **purpose-built style reference
images that are not tied to any specific game asset**, purely to pin down "this is what our
target rendering technique looks like," and use those (instead of, or in addition to, a real game
scene like `ESPENS_1.png`) as the anchor reference for every real generation going forward. This
decouples style definition from any one asset's source-image quirks.

Two produced for initial review (see repo root, not under `assets/`, since they are not final game
assets — `style_ref_scene.png`, `style_ref_creature.png`), generated from this document's rules
alone, with NO input reference image at all (pure text-to-image call, so there is no 1990 source
to over-trust):

1. **`style_ref_scene.png`** — a generic cozy cottage interior (table, window, door, a simple
   rug), nothing tied to any specific room in this game. Tests: palette muting, line weight,
   directional shading, background-prop treatment (the rug, a small object on the table), no
   vignette border.
2. **`style_ref_creature.png`** — a single friendly woodland creature (a fox), head-and-shoulders,
   plain background. Tests: single coherent subject, smooth silhouette, fur/organic-material
   shading, no text.

If these read as on-target on review, the plan is to fold them into the anchor-reference set
`gen_art.py` attaches to every real generation (alongside or instead of `ESPENS_1.png`), and only
then resume the full batch. Not done yet — holding per instruction pending review of this
document and these two images.
