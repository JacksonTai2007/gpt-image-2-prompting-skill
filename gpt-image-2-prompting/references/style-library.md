# GPT Image 2 — Style Component Library

Composable menus for filling the **Composition** (block 3) and **Style** (block 5) slots. Pull concrete components from here instead of writing vague words like "high quality" or "beautiful lighting." Mix and match; most strong prompts combine one item from several menus.

## Contents
- [Aspect ratios](#aspect-ratios)
- [Camera & lens](#camera--lens)
- [Film stocks & camera types](#film-stocks--camera-types)
- [Lighting setups](#lighting-setups)
- [Depicting people](#depicting-people)
- [Color systems](#color-systems)
- [Materials & textures](#materials--textures)
- [Art & illustration styles](#art--illustration-styles)
- [Composition patterns](#composition-patterns)
- [Realism boosters](#realism-boosters)
- [Render-quality tags](#render-quality-tags)
- [Reusable text directives](#reusable-text-directives)

---

## Aspect ratios
Pin one explicitly — leaving it open is a top cause of wrong crops.

- **1:1** — social tiles, product mains, logo previews, app icons.
- **4:5** — Instagram portrait, e-commerce mains that need more height.
- **9:16** — phone-screen mockups, story posters, vertical "hero subject" posters, livestream frames.
- **16:9** — web hero sections, landscape scenes, presentation slides, cinematic stills.
- **3:2 / 2:3** — classic photography feel (landscape / portrait).
- **A4 / poster portrait** — print posters, editorial pages, menus.
- **Double-page spread** — magazine layouts (specify "two-page spread, gutter in the middle").

---

## Camera & lens
Numbers beat adjectives. Use these for any photoreal or cinematic request.

**Focal length (controls framing + compression)**
- **24–35mm** — wide; environments, architecture, establishing shots (watch distortion → pair with "eye-level").
- **50mm** — natural, human-eye; portraits, lifestyle, "half-body."
- **85mm** — flattering portrait compression, creamy background separation.
- **100mm macro** — extreme product/detail close-ups.

**Aperture (controls depth of field)**
- **f/1.4–f/2** — shallow DOF, background fully blurred, subject isolation.
- **f/5.6–f/8** — balanced, product clarity.
- **f/11–f/16** — deep focus, everything sharp; landscapes, architecture.

**Shot type / angle**
- Close-up · medium · wide · full-body · over-the-shoulder.
- **Eye-level** (tames perspective distortion) · **low-angle** (power, drama) · **high-angle** (vulnerability) · **Dutch/tilted** (tension) · top-down/flat-lay (food, products).

**Gear / stock flavor** — "shot on [Sony A7R IV / Canon EOS R5]"; film emulation "[Kodak Portra 400 / Fuji Pro 400H / CineStill 800T]" + "subtle film grain."

---

## Film stocks & camera types
Naming a capture medium is the fastest route to a believable, non-digital look. Pick one as the *first* line of a photoreal prompt.

**Film stocks (color character)**
- **Kodak Portra 400** — warm, soft, flattering skin; the default "pretty film" look.
- **Fuji Pro 400H** — cool-leaning pastel greens, airy.
- **CineStill 800T** — tungsten-balanced, neon-friendly, halated highlights; night/city.
- **Kodak Gold 200** — warm nostalgic snapshot.
- **Ilford HP5 / Tri-X** — classic black-and-white grain.
- General: "35mm film photography, authentic film grain, slight color cast."

**Camera-type looks (texture / authenticity)**
- **"RAW, unprocessed iPhone photo"** — flat, real, un-edited; anti-influencer realism.
- **Old CCD compact, harsh flash** — grainy, blown highlights, candid 2000s vibe.
- **Disposable / point-and-shoot** — soft, light leaks, date stamp optional.
- **Webcam / security-cam / dashcam** — low-fi, specific framing, timestamp overlay.
- **Photo of a monitor/screen** — "close-up handheld photo of a 4K monitor, slight blur" — makes game/CGI screenshots read as real captures.
- **Polaroid / instant** — white border, soft focus, muted color.

---

## Lighting setups
Lighting is the soul of realism and the fastest route to a "premium" read.

- **Softbox / soft diffused** — clean commercial product and beauty light.
- **Rim / edge light** — bright outline separating subject from background (premium product cue).
- **Golden hour** — warm, low, long shadows; flattering and cinematic.
- **Blue hour / overcast** — cool, even, moody.
- **Hard side light** — dramatic texture and shadow (sculpts faces, materials).
- **Backlight / contre-jour** — glow, silhouette, atmosphere.
- **Neon / practical lights** — cyberpunk, night street, reflections on wet surfaces.
- **Studio gradient** — seamless backdrop with a soft falloff.
- **Cool-exterior + warm-interior contrast** — the architecture/space "high-end cheat code."
- **Volumetric / god rays** — beams through dust/fog for scale and drama.

---

## Depicting people
For an international, open-source-friendly skill, **appearance is always an explicit variable — never a hard-coded default.** (Full rationale in SKILL.md → *Depicting people*.)

- **Scene context first.** If the request implies a culture/place (Hanfu garden, onsen, Parisian café, Diwali photo), depict people consistent with it.
- **Otherwise match the user's language/locale** as a sensible default (Japanese request → Japanese subject; Hindi → South Asian; Korean → Korean; Arabic → Middle Eastern, etc.).
- **Ambiguous neutral English** → ask, vary, or state the assumption made.
- **Decompose features** regardless of group: eye shape, brow, nose bridge, jawline, skin undertone and real texture (pores, fine lines), hair type and movement — specifics beat "beautiful."
- **Realism kit:** visible pores, peach-fuzz, natural asymmetry, subtle flush, stray hairs; `no plastic skin, no over-smoothing`.
- Keep the slot editable in output (e.g. `subject.ethnicity_age`) and tell the user they can swap it in one edit.

---

## Color systems
Specify a system, not a single color, and say where each color is allowed to go.

- **Monochrome + one accent** — editorial, premium, high-contrast (e.g. "black/white with stark red accents").
- **Restrained 4–6 color system** — dominant background, primary type color, subject tone, emotional accent, muted support, paper/ink tone (great for posters/branding).
- **Low-saturation / muted** — scientific, sophisticated, modern.
- **Duotone / split-tone** — graphic, poster-like.
- **Analogous / complementary** — name the wheel relationship for harmony or punch.
- **Brand-locked** — main + accent only; accents confined to thin lines, icons, and titles, never full-bleed.
- **HEX-pinned** — give explicit codes for brand/identity work.

Tip: confine accent colors to small areas (icons, titles, rules). Flooding accents reads cheap.

---

## Materials & textures
Stack these for realism and tactility — the difference between "render" and "real."

- **Metals** — brushed/matte/polished aluminum, anodized, chrome, gold.
- **Plastics/finishes** — matte soft-touch, glossy, frosted, translucent.
- **Glass** — clear, frosted, tinted, refractive.
- **Natural** — raw/oiled timber, marble veining, rough concrete, stone, leather grain.
- **Soft goods** — woven fabric, knit, silk sheen, denim, velvet.
- **Organic surface** — fur, scales, carapace, feathers, skin pores/wrinkles, plant texture.
- **Print/paper** — paper fibers, silkscreen/risograph grain, subtle ink imperfection, letterpress deboss.

Pair material + a matching light (e.g. "brushed metal + sharp rim light", "silk + soft side light").

---

## Art & illustration styles
Name the style precisely, or describe its *mechanics* (induces the look without cloning one artwork).

- **Anime / Ghibli-style** — cel shading, painterly backgrounds, soft glow.
- **Watercolor** — wet-on-wet bleed, paper texture, soft edges.
- **Flat vector** — clean shapes, limited palette, no gradients.
- **Thick-paint / impasto** — visible brush strokes, heavy texture.
- **Ink wash (sumi-e / 水墨)** — flying-white edges, negative space, tonal gradients.
- **Ukiyo-e** — woodblock lines, flat color planes.
- **Isometric 3D** — clean cutaways, technical product/infographic look.
- **Risograph / silkscreen** — grain, misregistration charm, limited inks.
- **Line art / blueprint** — technical reference, monochrome, clean strokes.
- **Cinematic concept art** — sharp linework, dramatic light, rich background.
- **Double-exposure** — silhouette filled with a secondary scene; connect zones with mist/ink diffusion and negative space.

For a master's influence, write the **technique** ("Van Gogh's swirling impasto starscape", "Mucha-style ornamental linework") rather than "by [artist]," which tends to copy a specific famous piece.

---

## Composition patterns
- **Rule of thirds** · **centered/symmetrical** · **diagonal** · **golden ratio**.
- **Single strong hero** (one dominant subject, lots of whitespace).
- **Triptych / three-panel** · **N×M grid** (state counts + numbering).
- **Exploded / cutaway view** (numbered callouts).
- **Foreground–midground–background layering** for depth.
- **Frame-within-frame** (subject framed by an element).
- **Negative space** as an intentional design element.
- **Bottom-heavy / top-heavy** weighting for posters.

---

## Realism boosters
Defeat the plastic "AI mannequin" look:
- Skin pores, freckles, fine wrinkles, slight facial asymmetry, stray hairs.
- Subtle sweat, fabric wrinkles, scuffs, fingerprints, natural wear.
- Film grain, slight chromatic aberration, real lens bokeh shape.
- Accurate, soft contact shadows grounding the subject.
- Imperfect, asymmetric natural arrangement (not "perfectly centered everything").

---

## Render-quality tags
Use sparingly and concretely; these support, they don't replace, the blocks above.
- "Photorealistic, hyper-detailed."
- "8k / 2k, sharp focus."
- "Unreal Engine 5 style, ray tracing" (3D/architectural).
- "Commercial photography quality."
- "Editorial / museum-grade graphic design."

Avoid empty stacking like "masterpiece, best quality, ultra HD, trending" — it adds noise, not control.

---

## Reusable text directives
Drop these verbatim into the **Text** block to lock typography (the model's signature strength and #1 failure point):

- **Exact-spelling lock:** "Render this text exactly as written, correctly spelled and fully legible. Do not translate, shorten, paraphrase, or substitute it."
- **No-extra-text lock:** "Do not add any other large readable text, captions, watermarks, or labels."
- **Language lock:** "Text is in [Simplified Chinese / Japanese / Cyrillic]; render the correct characters."
- **Title-as-hero:** "The title is the dominant visual structure — huge, exact, and the strongest element; nothing else competes with it."
- **Body-copy fallback:** "Fill body text with realistic simulated text blocks; only the headline must be exact."
- **Single-artifact lock (posters/mockups):** "Single finished [poster/screen] only — no moodboard, grid, mockup gallery, process sheet, or sample labels."
