# Contributing

Thanks for helping improve this skill! The bar is simple: **every addition should make Claude write better GPT Image 2 prompts**, and should be grounded in something that actually works.

## What makes a good contribution

- **A new scene recipe** (`references/scene-cookbook.md`): a specific, high-value use case that isn't already covered. Include:
  - a one-line "when to use it",
  - **the trick** — the single insight that makes the scene reliably work,
  - a ready-to-run prompt with `[editable slots]`,
  - any load-bearing negative constraints,
  - its **source** — `Source: original`, or the creator/repo it came from (`Source: @handle, [link]`).
- **A sharper pitfall fix** (`references/troubleshooting.md`): a real failure mode as `symptom → cause → fix`.
- **A new style component** (`references/style-library.md`): a reusable lens/film/lighting/material/style entry.
- **Template improvements** (`references/templates.md`): tighter scaffolds or better pitfall notes.

## House rules

- **Distill, don't dump.** Rewrite patterns in your own words; don't paste large verbatim prompt dumps from other repos.
- **Keep `SKILL.md` lean** (it loads every time). Put depth in the `references/` files.
- **Keep the router current.** When you add a recipe or template, add it to `references/categories.md` so requests can route to it.
- **People defaults stay neutral.** Don't hard-code a single demographic; appearance is always an editable slot (see `SKILL.md` → *Depicting people*).
- **Show it works.** A sample output image or a note on what you tested is appreciated.
- **Credit sources.** End each recipe with `Source: original` or `Source: @handle, [link]` so provenance is unambiguous.

## How to submit

1. Fork and create a feature branch.
2. Make your change in the relevant `references/` file (or `SKILL.md`).
3. Open a PR describing the scene/fix and, ideally, attach a sample result.

## Repackaging the `.skill`

The `dist/gpt-image-2-prompting.skill` is just a zip of the `gpt-image-2-prompting/` folder. **If you change anything under `gpt-image-2-prompting/`, rebuild the bundle** so `dist/` doesn't drift from source:

```bash
./scripts/build.sh          # macOS / Linux
```
```powershell
pwsh ./scripts/build.ps1    # Windows (or: powershell -File scripts\build.ps1)
```

CI also checks that `SKILL.md` carries a `version`, that the recipe count is consistent across files, and that no `<placeholder>` slipped through — see `.github/workflows/ci.yml`.
