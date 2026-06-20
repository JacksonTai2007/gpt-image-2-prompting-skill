# Changelog

All notable changes to this skill are documented here. The format is based on
[Keep a Changelog](https://keepachangelog.com/), and this project aims to follow
[Semantic Versioning](https://semver.org/).

## [Unreleased]

## [0.1.0] — 2026-06-20

Initial public release.

### Added
- `gpt-image-2-prompting/SKILL.md` — the core method: 7 leverage points, the
  6-block prompt protocol (Intent → Subject → Composition → Text → Style →
  Constraints), a 7-step authoring workflow, an internationalization
  ("Depicting people") policy, text-rendering guidance, consistency & series,
  image-to-image, prose-vs-JSON, runtime knobs, and a capability-gated
  "generate the image" policy.
- `references/categories.md` — a category router mapping each request to its
  artifact archetype, the matching template, and the recipe(s) that apply.
- `references/templates.md` — 13 artifact categories, each with prose + JSON
  templates and a "top traps" list.
- `references/scene-cookbook.md` — 29 ready-to-run scene recipes, each tagged
  with "the one trick".
- `references/style-library.md` — composable component menus (aspect ratios,
  lenses, film stocks, lighting, palettes, materials, styles, composition,
  realism boosters).
- `references/troubleshooting.md` — a symptom → cause → fix table with a
  block-by-block escalation order.
- `dist/gpt-image-2-prompting.skill` — prebuilt bundle for Claude.ai upload.
- Bilingual README (English + 简体中文), MIT license, contributing guide.
- Project scaffolding: `SECURITY.md`, a "new recipe" issue form, a PR template,
  `scripts/build.{sh,ps1}` to repackage the bundle, an `evals/` trigger +
  prompt-quality harness, and a CI workflow that checks placeholders, recipe-count
  consistency, and `SKILL.md` frontmatter.

[Unreleased]: https://github.com/JacksonTai2007/gpt-image-2-prompting-skill/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/JacksonTai2007/gpt-image-2-prompting-skill/releases/tag/v0.1.0
