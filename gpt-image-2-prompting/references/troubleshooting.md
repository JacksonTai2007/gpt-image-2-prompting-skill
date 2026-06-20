# GPT Image 2 — Troubleshooting

When a generation comes out wrong, the fix is almost always a missing or under-specified block, not a "bad seed." Find the symptom, apply the fix, regenerate. Most fixes are about *adding a constraint or a concrete component*, not writing a longer poetic description.

## Symptom → cause → fix

**Text is gibberish / misspelled / wrong language**
- Cause: text left open, or only described ("a motivational headline").
- Fix: hardcode the literal string in quotes + add the exact-spelling lock and (if needed) the language lock. Keep on-image text short; name the script for non-English. See style-library → *Reusable text directives*.

**Model invented extra text you didn't ask for**
- Cause: no upper bound on text.
- Fix: add "Do not add any other large readable text, captions, or labels." Hardcode only the strings that must appear.

**Layout is a messy collage / elements scattered**
- Cause: structure not pinned before style; too many competing elements.
- Fix: lock aspect ratio + a named layout pattern + module/panel count *first*; cap the number of elements; for posters declare "single hero / triptych / grid" before adding subject and copy.

**Infographic overflows / unreadable**
- Cause: unbounded modules and paragraph-length captions.
- Fix: force an exact module count, a diagram type, and short phrase captions. Move long explanation out of the image.

**People look plastic / fake / airbrushed**
- Cause: no imperfections; vague optics.
- Fix: add pores, freckles, slight asymmetry, stray hairs, film grain; specify lens + aperture (`50mm`, `f/1.4`) and a real lighting setup. See style-library → *Realism boosters*.

**"Beautiful" subject doesn't match what you pictured**
- Cause: vague adjectives the model can't map to your taste.
- Fix: decompose into observable features (eye shape, nose, brows, build) and name clothing material.

**Product shot looks cheap / flat**
- Cause: missing material + lighting.
- Fix: stack material keywords (matte, brushed metal, woven) + a lighting setup (softbox + rim light); add a clean studio gradient and grounding shadow.

**Too much promo text buried the product**
- Cause: overloaded copy.
- Fix: 1–2 short lines max (e.g. one badge + one slogan); everything else removed.

**Character changes face/outfit across a series or grid**
- Cause: consistency contract stated too late or not at all.
- Fix: write "same character — identical face, outfit, proportions, hairstyle" *before* the panel list; lock the grid count, numbering, and per-panel structure.

**Logo looks like an illustration / won't scale**
- Cause: too many ideas; no isolation background.
- Fix: define brand keywords, then demand one visual idea, flat vector look, and a pure white background; preview it shrunk onto a card/app icon to catch legibility issues.

**Architecture render has warped perspective**
- Cause: uncontrolled camera.
- Fix: specify "eye-level perspective" (and a sensible focal length); use cool-exterior vs warm-interior light for depth.

**Scene reads like a static postcard, no drama**
- Cause: no event and a flat camera.
- Fix: add a verb/event ("the seal is cracking", "torch just dropped") and a dramatic angle (low-angle, Dutch).

**Historical image mixes eras/cultures or has anachronisms**
- Cause: era unspecified; no negative guard.
- Fix: name the exact dynasty/period, demand period-accurate clothing structure, and add "no modern elements."

**Style is generic "default AI" with no soul**
- Cause: no brushstroke/medium lock, or a bare artist name that cloned one work.
- Fix: name the technique (thick-paint, watercolor bleed, cel shading) or describe a master's *mechanics* ("swirling impasto starscape") rather than "by [artist]."

**Got a moodboard / multi-option board instead of one finished piece**
- Cause: no single-artifact lock.
- Fix: add "Single finished [poster/screen] only — no moodboard, grid, mockup gallery, or process sheet."

**Wrong aspect ratio / unexpected crop**
- Cause: ratio not stated.
- Fix: always pin the aspect ratio explicitly (1:1, 4:5, 9:16, 16:9, etc.).

**Body text page is full of errors (menu, magazine)**
- Cause: asking the model to typeset a full page of real copy.
- Fix: use "simulated text blocks" for body; hardcode only the headline; pin columns + margins.

**Screenshot looks like concept art / illustration, not a real screenshot**
- Cause: described the vibe, not the literal UI; no realism anchor.
- Fix: spell out the full UI logic top-to-bottom (status bar at 9:41, nav, content modules, tab bar), hardcode every label, and end with "must look like an authentic app screenshot, not concept art." See scene-cookbook → *Full app screenshot*.

**Same person looks different across separate images (identity drift)**
- Cause: relying on text alone across independent generations — that yields *similar*, not *identical*, faces.
- Fix: lock and repeat identity attributes verbatim; for a strict lock, switch to image-to-image — generate one hero image, then feed it back as a reference ("using this exact face, generate [scene]"). See SKILL.md → *Consistency & series*.

**Asked for a set/series but got one collage or grid**
- Cause: no explicit "separate images" instruction; the model packed them into one frame.
- Fix: open the prompt with "Generate these as N SEPARATE standalone images, one per scene, one after another; do NOT merge into a grid/collage/contact sheet," then the shared base + per-scene deltas.

**Stray words / JSON key names rendered into the image**
- Cause: this model renders text eagerly and sometimes paints prompt tokens or keys.
- Fix: keep a `no text/watermark/labels` constraint; if it persists, convert that JSON to prose for the run.

**"Candid / amateur" photo still looks too polished or staged**
- Cause: model defaults to flattering, model-like subjects and clean light.
- Fix: invoke a humble capture device ("RAW unprocessed iPhone", "old CCD, harsh flash"), demand "everyday clothes, no influencer styling, faces like real pedestrians," and add mundane environmental props. See scene-cookbook → *Authentic amateur snapshot*.

**Defaulted to an ethnicity the user didn't intend**
- Cause: silently assuming appearance.
- Fix: make appearance an explicit editable slot; default to the user's language/locale or the scene's cultural context, and note it's swappable. See SKILL.md → *Depicting people*.

## General escalation order

When unsure which block is failing, fix in this order — earlier blocks gate the later ones:
1. **Intent** present and first? (artifact type + use case)
2. **Structure** pinned? (ratio, layout/grid, counts, camera)
3. **Text** hardcoded + locked?
4. **Constraints/negatives** for this artifact added?
5. *Then* refine **subject** detail and **style/material**.

If two attempts still fail, simplify: cut elements, reduce text, lower module count — an over-stuffed prompt fails more often than a focused one.
