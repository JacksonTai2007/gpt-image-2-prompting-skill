# Prompt-quality eval cases

Each case is a deliberately vague request plus the qualities a strong skill output
must have. Run the request through the skill, then score the rewrite on each rubric
row. A good output scores full marks.

## Rubric (0–2 each)

| Row | What to check | 0 | 1 | 2 |
|-----|---------------|---|---|---|
| Structure-first | aspect ratio + layout/grid + module/panel count named **before** style words | none | partial | all present, up front |
| Text hardcoded | every on-image string quoted with a spelling/readability lock | invented copy | some quoted | all quoted + locked |
| Subject decomposed | concrete observable features, not vague adjectives | "beautiful, cinematic" | mixed | fully decomposed |
| Negatives present | the artifact's load-bearing forbidden elements are listed | none | generic | artifact-specific |
| People neutral | appearance is an editable, locale-aware slot, not a hard-coded default | hard-coded | implicit | explicit editable slot |

## Cases

### 1. "Make me a cool tech poster for our AI conference"
Expect a **poster** (`templates.md` §3 / archetype **C**): exact title + subtitle
strings, an aspect ratio, a typography-led layout, a named style + lighting, and
negatives ("no gibberish text", "single poster only — no moodboard").

### 2. "A photo of a girl in a cafe, make it look real"
Expect a **photoreal** recipe (cookbook #1 / #2, archetype **G**): lead with a
named film stock + a specific lighting situation, decomposed features, pores/grain
imperfections, and `no plastic skin, no watermark, no text` — with appearance as an
editable, locale-aware slot.

### 3. "An infographic explaining how a transformer works"
Expect an **infographic** (`templates.md` §2 / archetype **B**): a fixed module/
callout count, short exact labels, a layout skeleton, and "no invented stats / no
gibberish text".

### 4. "Six pictures of the same mascot in different poses"
Expect a **batch-orchestrated** prompt: an explicit "N SEPARATE standalone images,
do not merge into a grid" instruction, an identity contract repeated per frame, and
an honest note that a reference image is needed for a strict identity lock.
