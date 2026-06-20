# Contributing

Thanks for helping improve this skill! The bar is simple: **every addition should make Claude write better GPT Image 2 prompts**, and should be grounded in something that actually works.

## What makes a good contribution

- **A new scene recipe** (`references/scene-cookbook.md`): a specific, high-value use case that isn't already covered. Include:
  - a one-line "when to use it",
  - **the trick** — the single insight that makes the scene reliably work,
  - a ready-to-run prompt with `[editable slots]`,
  - any load-bearing negative constraints.
- **A sharper pitfall fix** (`references/troubleshooting.md`): a real failure mode as `symptom → cause → fix`.
- **A new style component** (`references/style-library.md`): a reusable lens/film/lighting/material/style entry.
- **Template improvements** (`references/templates.md`): tighter scaffolds or better pitfall notes.

## House rules

- **Distill, don't dump.** Rewrite patterns in your own words; don't paste large verbatim prompt dumps from other repos.
- **Keep `SKILL.md` lean** (it loads every time). Put depth in the `references/` files.
- **People defaults stay neutral.** Don't hard-code a single demographic; appearance is always an editable slot (see `SKILL.md` → *Depicting people*).
- **Show it works.** A sample output image or a note on what you tested is appreciated.
- **Credit sources** if a pattern came from a specific creator/repo.

## How to submit

1. Fork and create a feature branch.
2. Make your change in the relevant `references/` file (or `SKILL.md`).
3. Open a PR describing the scene/fix and, ideally, attach a sample result.

## Repackaging the `.skill` (optional)

The `dist/gpt-image-2-prompting.skill` is just a zip of the `gpt-image-2-prompting/` folder. After editing, you can rebuild it with any zip tool, or with Anthropic's skill-creator packager if you have it. Keeping `dist/` updated is optional — most users install from the folder.
