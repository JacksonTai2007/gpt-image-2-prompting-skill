# GPT Image 2 — Template Library

Copy-paste scaffolds for every common artifact type. Each category has a **prose template** (for one-off human use), a **JSON template** (for automation / Agent pipelines), and **top traps** (the failures this category falls into). Replace every `[bracketed slot]`. For non-English on-image text, paste the *actual characters* into the text slots and keep the spelling/language lock.

All templates assume the 6-block protocol from SKILL.md: Intent → Subject → Composition → Text → Style → Constraints.

## Contents
1. [UI & Interface](#1-ui--interface)
2. [Infographic & Data-viz](#2-infographic--data-viz)
3. [Poster & Layout](#3-poster--layout) — incl. typography-led & minimalist-hero variants
4. [Product & E-commerce](#4-product--e-commerce)
5. [Brand & Logo](#5-brand--logo)
6. [Architecture & Space](#6-architecture--space)
7. [Photography & Realism](#7-photography--realism)
8. [Illustration & Art](#8-illustration--art)
9. [Character & Concept](#9-character--concept) — incl. multi-panel sheets
10. [Narrative Scene](#10-narrative-scene)
11. [Historical & Oriental](#11-historical--oriental)
12. [Document & Publication](#12-document--publication)
13. [General / Custom](#13-general--custom)

---

## 1. UI & Interface
**When:** app screens, web hero sections, dashboards, social-media UI mockups.

**Prose**
```
Generate a high-fidelity [iOS / Android / Web] interface mockup for a [product type].
Core features shown: [feature A], [feature B], [feature C].
Layout: [top nav / two-column / card feed / bottom tab bar]; clear visual hierarchy, generous whitespace.
Visual style: [minimal / techy / neumorphic]; primary color [color], accent [color]; clean sans-serif type.
On-screen text (render exactly, fully legible): header "[exact text]"; key labels "[exact]", "[exact]".
Output: crisp UI screenshot, [9:16 / 16:9], pixel-sharp readable text.
Constraints: no gibberish text, no broken alignment, no placeholder lorem unless requested.
```

**JSON**
```json
{
  "type": "UI Screenshot",
  "platform": "iOS",
  "product": "[Fitness App]",
  "layout": "Card feed with bottom tab bar",
  "style": { "theme": "Dark Mode", "primary_color": "[Neon Green]", "typography": "Clean sans-serif" },
  "content": {
    "header": "[Today's Activity]",
    "cards": [
      { "title": "[Running]", "data": "[5.2 km]", "button": "[Start]" },
      { "title": "[Calories]", "data": "[340 kcal]" }
    ]
  },
  "constraints": "High fidelity, all text exact and readable, 9:16 aspect ratio"
}
```

**Top traps**
- Vague layout → intern-grade chaos. Always pin **platform + aspect ratio + layout pattern**.
- Floating/garbled labels → add a hard **text lock** ("all UI text exact and clearly readable", name the language if not English).

---

## 2. Infographic & Data-viz
**When:** explainer graphics, process/comparison/relationship/timeline diagrams, technical concept illustrations.

**Prose**
```
Create an infographic on [topic] for [target audience].
Structure: title area + exactly [3–5] modules; each module = icon + short title + 1–2 line caption.
Diagram type: [flowchart / comparison / relationship map / timeline / isometric cutaway].
Style: [clean report / science-atlas / friendly explainer]; primary color [color]; [light / dark] background; color-coded sections.
All labels exact and readable; captions short.
Output: clear information hierarchy, high legibility.
Constraints: cap the module count, no gibberish text, no overflowing copy, strict structural layout.
```

**JSON**
```json
{
  "type": "Infographic",
  "topic": "[Urban Metabolism]",
  "audience": "[General public]",
  "structure": {
    "title_area": "[Headline]",
    "layout": "Isometric cutaway, [6] numbered panels",
    "modules": [
      { "title": "[Energy]", "icon": "lightning", "text": "[short caption]" },
      { "title": "[Water]", "icon": "water_drop", "text": "[short caption]" }
    ]
  },
  "style": { "aesthetic": "Scientific atlas", "colors": "Low saturation, color-coded", "background": "Light paper" },
  "constraints": "No gibberish text, capped modules, strict structural layout, short captions"
}
```

**Top traps**
- Too many modules → visual soup. **Force a module count and a diagram type.**
- Paragraphs crammed in → the model is not a typesetter. **Keep copy to short phrases.**

---

## 3. Poster & Layout
**When:** event/product/film posters, campaign visuals, typographic posters.

### 3a. Standard poster (prose)
```
Design a [event / product / film] poster, theme "[theme]".
Main visual: [the concrete hero element — say exactly what it is].
Headline (exact, dominant): "[headline]"; subhead (exact): "[subhead]".
Layout: [centered / left-aligned / diagonal]; style: [retro / futuristic / minimal].
Color: [primary + accent]; mood: [emotion keywords].
Output: high-resolution, social-share ready.
Constraints: headline spelled exactly and legible; no invented extra text; no cluttered collage.
```

### 3b. Typography-led poster (the title IS the artwork)
Use when the words are the subject. Distilled technique:
```
Create ONE finished premium typographic poster for the exact title: "[title]".
Single poster only — no moodboard, grid, mockup, caption, or process sheet.
The title is the dominant visual structure: huge, exact spelling, powerful; no other large readable text competes with it.
Interpret the title's meaning and mood, then express it through custom-looking letterforms — weight, spacing, distortion, negative space, and ink texture should carry the emotion (not a default font).
If the title names a known person, include a large editorial portrait occupying ~40–70% of the frame that interacts with the type (overlapping, emerging from, framed by, or breaking through the letters).
Restrained 4–6 color system tied to the theme; editorial/museum-grade composition, strong hierarchy, few elements, intelligent whitespace, silkscreen/riso grain.
Avoid: generic word-art, glossy 3D lettering, random icons, stock-photo realism, cluttered collage, misspelled text, copied logos/slogans.
```

### 3c. Minimalist "hero-subject" editorial poster (Apple-keynote style)
Reusable distillation for premium science/product posters:
```
Design a [9:16] premium editorial poster, Apple-keynote visual language: pure white (or faint gradient) background, lots of whitespace, restraint, strong visual impact.
Hero subject: [subject], enlarged to occupy [50–70%] of the frame as the strongest focal point, with realistic studio lighting, true shadow, photoreal texture ([fur / scales / metal / skin]).
Title block (top): large bold [language] title "[title]"; muted subhead "[subhead]"; thin rule; small grey secondary line "[english name / detail]".
Bottom info strip: exactly [4] minimal columns, each = thin-line icon + small colored title + 1–3 line caption, separated by hairline dividers. No cards, no rounded boxes, no big color blocks. Accent color only on icons/titles.
Output: clean, high-impact, premium.
Constraints: no aged-paper texture, no busy infographic grid, no thick borders, no stray logos, subject not small, text never covers the subject.
```

**JSON (poster, generic)**
```json
{
  "type": "Poster",
  "theme": "[Interstellar Journey]",
  "typography": { "headline": "[BEYOND STARS]", "subheading": "[A New Era Begins]", "layout": "Centered, bold, bottom-heavy" },
  "visuals": { "subject": "[Astronaut silhouette before a glowing nebula]", "style": "Cinematic lighting, high contrast", "color_palette": "[Deep blue + glowing orange]" },
  "constraints": "Single poster only, headline exact and legible, no clutter, no extra text"
}
```

**Top traps**
- "Just make a poster" → mush. **Name the actual hero visual.**
- Auto-invented text → **hardcode headline + subhead**, forbid other large text.
- Campaign posters drift into collage → **lock the structure** (single hero / triptych / data-graffiti) *before* subject and copy.
- Props as wallpaper → give key props a **specified angle, scale, and position** so they anchor the composition.
- Typographic posters going pretty-but-unreadable → demand **exact spelling + title-as-primary-structure**; require text and figure to **interact**, not sit side by side.

---

## 4. Product & E-commerce
**When:** hero product shots, marketplace main images, live-stream overlays, recommendation cards.

**Prose**
```
Generate an e-commerce hero image of [product], selling points [point 1], [point 2].
Setting: [seamless studio / lifestyle scene]; shot: [close-up / three-quarter / floating].
Material detail: [matte / brushed metal / woven / glass]; lighting: [softbox + rim light / side light].
Add-ons (minimal): badge "[NEW]", price "[$299]", one short slogan "[exact]".
Output: commercial-photography quality, hyper-real textures.
Constraints: materials + lighting emphasized; max 1–2 lines of promo copy; no cluttered overlays.
```

**JSON**
```json
{
  "type": "E-commerce Hero Image",
  "product": { "name": "[Headphones]", "material": "[Matte black + metallic accents]", "angle": "3/4 profile, floating slightly" },
  "setting": { "background": "Minimalist studio, soft gray gradient", "lighting": "Softbox overhead, sharp rim light" },
  "copywriting": { "badges": ["[NEW]", "[$299]"], "slogan": "[Silence the World]" },
  "constraints": "Commercial quality, hyper-real textures, minimal copy"
}
```

**Personalized-analysis variant** (e.g. beauty/lipstick try-on, "analyze then recommend"): instruct the model to *first* analyze the input (skin tone cool/warm, face shape, lip base), output a one-line conclusion, *then* map it to [3–5] differentiated options shown as a try-on matrix **on the same face, only the product changing**. Use brand color only as thin-line/accent, never a full-bleed logo.

**Top traps**
- No material/lighting → looks like a flea-market photo. **Stack material + lighting keywords.**
- Promo text everywhere → **1–2 lines max.**
- (Recommendation type) different model per option → **lock "same face, only product varies."**
- (Recommendation type) skipping analysis → **analyze first, then recommend**, so choices are justified.

---

## 5. Brand & Logo
**When:** logo concepts, brand identity systems, brand touchpoint boards.

**Prose (logo)**
```
Design a [geometric / wordmark / pictorial] logo for "[brand]".
Brand keywords: [keyword 1], [keyword 2], [keyword 3]; industry [industry]; audience [audience].
Concept: [the single visual idea — one clear metaphor].
Style: [modern / premium / friendly]; flat vector, high contrast.
Output: clean logo on PURE WHITE background (for easy isolation), plus a small application preview ([business card / app icon]).
Constraints: one idea only (not an illustration), scalable vector look, pure white background, no gradients unless requested.
```

**JSON**
```json
{
  "type": "Brand Identity Design",
  "brand": { "name": "[Nova Dynamics]", "industry": "[AI]", "keywords": ["Innovative", "Minimalist", "Trustworthy"] },
  "deliverables": [
    "Logo mark ([geometric fusion of a neural node and a star])",
    "Color palette ([Electric Blue + Pure White])",
    "Business-card + app-icon mockup"
  ],
  "style": "Modern corporate, flat vector, high contrast",
  "constraints": "Pure white background for logo, scalable vector style, no gradients"
}
```

**Identity-system / touchpoint-board variant**: ask for a *system*, not one poster — hero product shot + packaging/bag/cup/label/sticker + menu/price card + a lifestyle scene, all sharing one color/type/graphic language. Require: not just a logo; no cluttered collage; no random text; consistent style across touchpoints.

**Top traps**
- Logo-as-illustration → **define brand keywords first, then demand one idea.** "A fire-breathing dragon coiled around a pillar with lightning" is art, not a logo.
- Hard to isolate → **force pure white background.**
- Pretty but unjustified → **decide brand strategy/audience first**, and **show it shrunk onto real touchpoints** (card, app icon, billboard) to catch legibility failures.
- Identity drift across collateral → write **"never break" rules** (and what *not* to do).

---

## 6. Architecture & Space
**When:** interior/exterior renders, spatial concepts.

**Prose**
```
Generate a photoreal [space type] render, function [use].
Style: [modern minimal / industrial / contemporary]; materials: [wood / concrete / metal / floor-to-ceiling glass].
Structure: [open-plan / zoned]; main circulation: [describe].
Camera: eye-level perspective, [wide-angle] lens (avoids distortion).
Lighting: [golden hour], warm interior glow against cool exterior ambient.
Output: hyper-realistic, [Unreal Engine 5 style], 8k, ray-traced.
Constraints: correct perspective, no warped geometry.
```

**JSON**
```json
{
  "type": "Architectural Visualization",
  "space": { "type": "[Modern cabin interior]", "function": "[Living room]", "materials": "[Exposed concrete, glass walls, warm timber]" },
  "environment": "[Snowy pine forest visible through glass]",
  "camera": { "angle": "Eye-level, wide-angle", "lighting": "Golden hour; warm interior vs cool blue exterior" },
  "render_quality": "Unreal Engine 5 style, hyper-realistic, 8k, ray tracing"
}
```

**Top traps**
- Warped perspective → **specify "eye-level perspective"** to tame it.
- Flat/cheap look → **cool-exterior vs warm-interior light** is the premium cheat code.

---

## 7. Photography & Realism
**When:** portraits, product/lifestyle, street, editorial — anything that must read as a real photo.

**Prose**
```
Photograph: [subject], in [location].
Subject detail: [observable specifics — pores, sweat, wrinkles, freckles, wardrobe material].
Camera: shot on [Sony A7R IV], [50mm] lens, [f/1.4] (shallow DOF, background blurred).
Lighting: [cinematic / window light / neon backlight]; mood [emotion].
Film aesthetic: [Kodak Portra 400] emulation, subtle film grain.
Output: hyper-realistic photograph.
Constraints: natural imperfections, no plastic/airbrushed skin, no over-smoothing.
```

**JSON**
```json
{
  "type": "Hyper-realistic Photography",
  "subject": { "description": "[Weary 30-yr-old barista wiping a cup]", "details": "[Forehead sweat, visible pores, denim apron]" },
  "setting": "[Dim vintage cafe, rain on the window behind]",
  "camera_specs": { "gear": "[Sony A7R IV, 50mm]", "aperture": "f/1.4 (background fully blurred)", "lighting": "Cinematic, neon reflecting on wet glass, soft hair rim light" },
  "film_aesthetic": "[Kodak Portra 400] emulation, subtle film grain"
}
```

**Top traps**
- Too-perfect = fake. **Add imperfections** (pores, freckles, slight asymmetry, film grain).
- Vague optics → **speak in numbers**: `f/1.4` not "blurry background", `50mm` not "half-body".
- Don't assume who appears: **make `[subject]` appearance an explicit, editable slot**, defaulting to the user's language/locale or the scene's cultural context (see SKILL.md → *Depicting people*). For named film looks and camera types, see style-library → *Film stocks & camera types*.

---

## 8. Illustration & Art
**When:** covers, editorial illustration, stylized scenes.

**Prose**
```
Create a [subject/scene] illustration.
Art style: [Ghibli-style anime / watercolor / flat vector / thick-paint]; linework: [delicate / bold].
Palette: [scheme]; background: [simple / detailed scene].
Composition: [close / mid / wide]; emphasize [key detail].
Technique: [cel shading / wash bleed / soft glowing aura]; mood: [whimsical / nostalgic].
Output: cover/social-ready, high quality.
Constraints: hold the named brushstroke/technique; no default plastic AI render.
```

**JSON**
```json
{
  "type": "Artistic Illustration",
  "art_style": "[Studio Ghibli-inspired anime]",
  "scene": { "description": "[A flying whale carrying a cozy village]", "details": "[Turning windmills, tiny people, fluffy clouds]" },
  "palette": "[Sky blue, lush green, pastel accents]",
  "technique": "Cel shading, detailed background, soft magical glow",
  "mood": "Whimsical, adventurous"
}
```

**Top traps**
- No brushstroke lock → soulless default. **Name the technique** (thick-paint, watercolor bleed).
- Master's name → clones a famous canvas. **Describe the mechanics** ("swirling impasto starscape") instead of writing "by [artist]".

---

## 9. Character & Concept
**When:** character sheets, concept art, action/turnaround breakdown grids.

**Prose (single character)**
```
Design a character concept for a [identity].
Appearance: [age / hairstyle / decomposed facial features / build]; attire: [garment + material].
Personality cues: [keywords]; pose: [dynamic stance]; expression: [emotion].
Worldview: [era / faction / profession]; signature element: [element].
Style: concept art, [sharp linework], [palette].
Output: main view, cohesive character design.
Constraints: decomposed features (not "pretty"), specified clothing material.
```

**Multi-panel sheet (action / turnaround)**
```
Generate a [character] action-breakdown sheet.
Style: [clean line-art / 3D greyscale / comic panels], clean background, technical-reference feel.
Layout: [4×4] grid, [16] equal panels, hairline dividers, each panel numbered [1–16] top-left.
Consistency contract (applies to ALL panels): same character — identical face, outfit, proportions, hairstyle.
Per panel: top = action title; center = full-body pose; bottom = 3–4 line caption; overlay = directional/rotation/motion-trail arrows.
Sequence: [from base stance → … → final action].
Constraints: no busy background, no new characters, no color distraction, do not change identity.
```

**JSON**
```json
{
  "type": "Character Concept Art",
  "character": { "identity": "[Cybernetic bounty hunter]", "appearance": "[Short silver hair, glowing red synthetic left eye, athletic build]", "attire": "[Tactical coat with neon piping, plasma rifle]" },
  "pose": "[Dynamic stance, looking over shoulder]",
  "environment": "[Rainy neon alley, blurred]",
  "style": "Concept art, sharp linework, vibrant cyberpunk palette"
}
```

**Top traps**
- "A beautiful girl" → the model can't read your taste. **Decompose features** (eye shape, nose, brows) and **name clothing material**. Keep human appearance an editable slot defaulted to the user's context (see SKILL.md → *Depicting people*).
- Long sequences drift faces/outfits → put the **consistency contract before the panel list**, lock grid count + numbering + per-panel structure. For a strict identity lock across separate images, use a **reference image** (image-to-image). For ready-made sheet/grid/intro-page recipes, see scene-cookbook → *Character design*.

---

## 10. Narrative Scene
**When:** story moments, concept scenes with dramatic tension.

**Prose**
```
Generate a [story theme] scene, set in [time + place].
Main event (use a verb — something is happening): [event, e.g. "the seal is cracking", "the torch just dropped"].
Protagonist: [character]; conflict: [tension point].
Camera language: [low-angle / Dutch angle / wide establishing / mid] for drama.
Atmosphere: [tense / warm / eerie]; palette: [cool / warm / high-contrast]; lighting: [dramatic key].
Output: narrative concept art with tension.
Constraints: depict an action/moment, not a static postcard.
```

**JSON**
```json
{
  "type": "Narrative Scene",
  "story_context": "[The moment an ancient seal breaks]",
  "environment": "[Crumbling temple, glowing blue vines]",
  "action": "[Explorer dropping a torch as a beam of light erupts skyward]",
  "atmosphere": { "mood": "Awe-inspiring, terrifying", "lighting": "Blinding central light, long shadows" },
  "camera": "Low-angle, emphasizing the light beam's scale"
}
```

**Top traps**
- Reads like a landscape postcard → **always include an event/verb** (collapsing, igniting) to animate it.
- Flat staging → use **low-angle or Dutch-angle** camera language for conflict.

---

## 11. Historical & Oriental
**When:** period scenes, traditional / dynastic aesthetics.

**Prose**
```
Generate a [specific dynasty/era] scene, theme [theme].
Subject: [identity / period-accurate clothing + artifacts]; setting: [court / market / landscape].
Art style: [gongbi / ink-wash / cinematic realism]; palette: [palette].
Cultural detail: [accurate patterns / etiquette / architecture].
Output: historically coherent period image.
Constraints: NO modern elements; clothing structure period-accurate; do not mix eras/cultures.
```

**JSON**
```json
{
  "type": "Historical/Oriental Scene",
  "setting": "[Tang Dynasty capital at night]",
  "subject": { "identity": "[Noblewoman]", "clothing": "[Ruqun with floral embroidery]", "action": "[Holding a glowing silk lantern, watching fireworks]" },
  "style": "Cinematic realism with subtle ink-wash texture",
  "details": "[Accurate Tang architecture, bustling crowd]",
  "constraints": "No modern elements, historically accurate clothing, single era only"
}
```

**Top traps**
- Era/culture mash-up → **name the exact dynasty**, or you'll get a kimono-wearing figure with a Qing fan in a Tang palace.
- Anachronisms sneak in → **hard "no modern elements"** stops the stray coffee cup.

---

## 12. Document & Publication
**When:** menus, magazine spreads, newspaper layouts, editorial pages.

**Prose**
```
Create a [menu / magazine spread / newspaper layout].
Grid: [3-column], [wide margins], clear heading hierarchy.
Modules: [cover / body / chart / footnote regions].
Typography: [serif headlines + sans body]; palette: [scheme].
Text: hardcode the big headline "[exact]"; fill body with realistic "simulated text blocks".
Output: legible, well-structured publication visual.
Constraints: structure (columns + margins) over style words; do not attempt full error-free body copy.
```

**JSON**
```json
{
  "type": "Editorial Layout",
  "document": "[Fashion magazine double-page spread]",
  "grid": "3-column, wide margins",
  "content": {
    "left_page": "[Full-bleed photo of a model in a red dress]",
    "right_page": { "headline": "[THE RED RENAISSANCE]", "body_text": "Simulated text blocks", "pull_quote": "[\"Color is power.\"]" }
  },
  "typography": "Elegant serif headlines, clean sans body",
  "palette": "Monochrome with stark red accents"
}
```

**Top traps**
- Style-stacking with no skeleton → **columns + margins first.**
- Expecting a perfect full page of body text → **use "simulated text blocks"**, hardcode only the headline.

---

## 13. General / Custom
**When:** anything outside the categories above.

**Prose**
```
Task goal: [what you want generated] — intended use: [use case].
Subject: [main subject]; scene: [context]; style: [visual style]; palette: [scheme].
Composition: [framing / rule]; aspect ratio: [ratio]; resolution: [4k / 8k].
On-image text (exact): "[text]".
Output focus: highlight [key element].
Constraints: [forbidden elements].
Please produce a primary version plus one alternate.
```

**JSON**
```json
{
  "type": "Custom Generation",
  "objective": "[Specific content] — for [use case]",
  "inputs": { "subject": "[…]", "scene": "[…]", "style": "[…]", "palette": "[…]" },
  "quality_constraints": { "resolution": "8k, hyper-detailed", "aspect_ratio": "[16:9]", "composition": "[Rule of thirds]" },
  "output_requirements": { "focus": "[key element]", "variants": "primary + 1 alternate" },
  "constraints": "[forbidden elements]"
}
```

**Top traps**
- Diving into visuals with no frame → **state goal + use first** so the model builds global context.
- One roll, no choice → **request a primary + alternate** for easy A/B.
