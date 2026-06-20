# GPT Image 2 — Category Router

Classify the request **before** you draft. Map it to one archetype below, then pull that archetype's **template** (`templates.md`) and any matching **recipe** (`scene-cookbook.md`). Recipes are tighter and more opinionated than templates — prefer a recipe when the request matches a *specific* scene, fall back to the template for a generic artifact type. Layer style from `style-library.md`; if a generation comes out wrong, jump to `troubleshooting.md`.

> Quick path: **request → archetype → template §N (+ recipe #N) → fill the 6 blocks → add negatives.**

| # | Archetype | Best for | One-line pattern | Template | Recipes |
|---|-----------|----------|------------------|----------|---------|
| A | **UI & screens** | app/web mockups, dashboards, game & live UIs | declare device + layout grid + exact on-screen text, demand legible type | [§1 UI & Interface](templates.md#1-ui--interface) | 13 named-game screenshot · 14 full app · 15 live-stream · 16 social-feed · 17 UI design system |
| B | **Infographic & data** | explainers, diagrams, knowledge cards | fixed module/callout count + short exact labels + layout skeleton | [§2 Infographic & Data-viz](templates.md#2-infographic--data-viz) | 21 museum-catalog disassembly · 22 exploded breakdown · 23 process-journey · 24 relationship map |
| C | **Poster & layout** | event/travel/product posters, typographic art | the title *is* the structure (huge, exact) + one named style + negatives | [§3 Poster & Layout](templates.md#3-poster--layout) | 6 city-silhouette · 7 silhouette-world · 8 vintage screen-print · 9 surface-integrated type · 25 text-hierarchy product · 26 brand-mascot |
| D | **Product & e-commerce** | hero product shots, packaging, dielines | material + lighting on a clean set, hardcode the pack copy | [§4 Product & E-commerce](templates.md#4-product--e-commerce) | 25 text-hierarchy product poster |
| E | **Brand & logo** | logos, marks, brand systems | name the construction (grid / negative space) + one idea, no stray text | [§5 Brand & Logo](templates.md#5-brand--logo) | 26 brand-mascot collab |
| F | **Architecture & space** | interiors, exteriors, archviz renders | camera height + lens + cool-exterior / warm-interior lighting | [§6 Architecture & Space](templates.md#6-architecture--space) | — |
| G | **Photoreal people** | portraits, lifestyle, street, "real photo" looks | named film stock + specific lighting + decomposed features + imperfections | [§7 Photography & Realism](templates.md#7-photography--realism) | 1 film-stock portrait · 2 amateur snapshot · 3 mirror selfie · 4 consistency grid · 5 documentary street |
| H | **Illustration & art** | editorial illustration, ink, watercolor, surreal | name the medium's mechanics; make elements interact, not decorate | [§8 Illustration & Art](templates.md#8-illustration--art) | 10 double-exposure ink · 11 watercolor editorial · 12 surreal scale-contrast · 28 watercolor map |
| I | **Character & concept** | reference sheets, expression grids, VN art | identity contract up front + N×M grid + per-panel structure | [§9 Character & Concept](templates.md#9-character--concept) | 18 character reference sheet · 19 expression grid · 20 visual-novel intro |
| J | **Narrative scene** | story moments, cinematic single frames | one decisive moment + camera + mood; subject interacts with the setting | [§10 Narrative Scene](templates.md#10-narrative-scene) | 12 surreal scale-contrast · 20 visual-novel intro |
| K | **Historical & oriental** | period pieces, scrolls, heritage art | name era + medium + "no modern elements / anachronisms" | [§11 Historical & Oriental](templates.md#11-historical--oriental) | 27 ancient scroll / poetry · 28 hand-drawn watercolor map |
| L | **Document & publication** | labeled grids, catalogs, page layouts | grid + numbering + short captions; simulate body text | [§12 Document & Publication](templates.md#12-document--publication) | 29 labeled item grid |
| M | **General / custom** | anything that doesn't fit cleanly | compose the 6 blocks by hand, pull parts from `style-library.md` | [§13 General / Custom](templates.md#13-general--custom) | — |

## Hybrids

Real requests often span two archetypes — route to both and merge. A *game UI mockup* = **A (UI)** + the named-game look of recipe **#13**; a *typographic product poster* = **C (Poster)** + **D (Product)**; a *visual-novel expression grid* = **I (Character)** + **J (Narrative)**. Pull at most 2–3 references; don't load the whole library.

## After routing

1. Fill the **6 blocks** (Intent → Subject → Composition → Text → Style → Constraints) — see `SKILL.md`.
2. Hardcode every on-image string; keep people appearance an **editable, locale-aware slot** (`SKILL.md` → *Depicting people*).
3. Add the archetype's load-bearing **negatives** (each template lists its top traps).
4. Wrong output? Look the symptom up in `troubleshooting.md`.
