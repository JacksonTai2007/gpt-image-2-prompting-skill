# GPT Image 2 Prompting — a Claude Skill

> Turn vague image ideas into **reproducible, production-grade prompts** for GPT Image 2 (OpenAI's text-to-image / image-to-image model). A [Claude Skill](https://www.anthropic.com/news/skills) distilled from hundreds of community-reverse-engineered prompts into one structured methodology.

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Claude Skill](https://img.shields.io/badge/type-Claude%20Skill-8A63D2.svg)](https://www.anthropic.com/news/skills)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Version](https://img.shields.io/badge/version-0.1.0-blue.svg)](CHANGELOG.md)
[![CI](https://github.com/JacksonTai2007/gpt-image-2-prompting-skill/actions/workflows/ci.yml/badge.svg)](https://github.com/JacksonTai2007/gpt-image-2-prompting-skill/actions/workflows/ci.yml)

中文说明见 [README_zh.md](README_zh.md)。

---

## Why

Most "awesome prompt" lists are a pile of one-off examples. The moment your need differs slightly, you're back to guessing. This skill does the opposite: it compresses the patterns behind those examples into a **structured protocol** plus ready-to-run recipes, so Claude can write a strong GPT Image 2 prompt for *your* exact task — and tell you why each part is there.

The core shift it encodes: **stop writing prose wishes, start writing structured specifications.** GPT Image 2 follows long, layered instructions, so the bottleneck is no longer "can it make an image" but "can you specify the image precisely enough to be reproducible."

## What's inside

```
gpt-image-2-prompting/
├── SKILL.md                  Core method: leverage points, the 6-block protocol,
│                             universal principles, internationalization, image-to-image,
│                             series/batch orchestration, runtime knobs
└── references/
    ├── categories.md         Request router → artifact archetype → template + recipe
    ├── templates.md          13 artifact categories — prose + JSON templates + pitfall guides
    ├── scene-cookbook.md     29 optimized, ready-to-run scene recipes, each with "the trick"
    ├── style-library.md      Composable menus: aspect ratios, lenses, film stocks, lighting,
    │                         palettes, materials, art styles, composition, realism boosters
    └── troubleshooting.md     Symptom → cause → fix table for failed generations
```

When you ask for an image prompt, the skill **classifies the request** (via `categories.md`), pulls the matching template + recipe, fills the six blocks below, and — if a generation comes out wrong — debugs it against the troubleshooting table.

### The 6-block prompt protocol
Every strong prompt — prose or JSON — is built from these, ordered intent → structure → style → constraints:

1. **Intent** — what artifact this is and what it's for
2. **Subject** — the hero element, decomposed into concrete attributes
3. **Composition** — aspect ratio, layout/grid, module count, camera + lens, focal hierarchy
4. **Text** — the *exact* strings, each with a role + a spelling/readability/language lock
5. **Style** — medium, brushstroke/render, materials, color system, lighting
6. **Constraints** — explicit negatives and forbidden elements

### What GPT Image 2 is unusually good at (and how the skill exploits it)
- **Typography** — renders exact text (Latin / Cyrillic / CJK) → *hardcode the literal strings*
- **Identity retention** — same character across scenes → *state the contract up front; use a reference image for a strict lock*
- **Structured design** — infographics, exploded views, grids → *specify exact counts and the skeleton*
- **Style induction** — captures the "soul" of an aesthetic → *name the style or its mechanics*
- **World knowledge** — real places, named games/apps/brands → *reference them by name to replicate a look*
- **Prompt adherence** — handles detailed prompts *better* than short ones → *be specific and demanding*
- **Photorealism** — indistinguishable from photos/screenshots → *use camera/film vocab + imperfections*

### Scene recipes (a sample of the 29)
Film-stock editorial portrait · authentic amateur snapshot · consistency grid · city-silhouette poster · surface-integrated typography · double-exposure ink portrait · named-game screenshot · full app screenshot · live-stream UI · social-feed mockup · official character reference sheet · expression grid · museum-catalog disassembly infographic · exploded technical breakdown · text-hierarchy product poster · brand-mascot collab · ancient scroll / poetry · hand-drawn watercolor map · labeled item grid …

## Install

**Claude Code / agents that read a skills folder**
```bash
git clone https://github.com/JacksonTai2007/gpt-image-2-prompting-skill.git
cp -r gpt-image-2-prompting-skill/gpt-image-2-prompting ~/.claude/skills/
# restart your Claude Code session
```

**Claude.ai / Claude desktop app**
Download the **`.skill` bundle** — [`dist/gpt-image-2-prompting.skill`](dist/gpt-image-2-prompting.skill), or from the [latest release](https://github.com/JacksonTai2007/gpt-image-2-prompting-skill/releases/latest) — and upload it in **Settings → Capabilities/Skills**.

> ⚠️ Upload that `.skill` file, **not** GitHub's green **Code → Download ZIP** or a release's **Source code** archive. Those wrap the whole repo in an extra folder, so the importer reports `SKILL.md` as nested too deep. If your uploader only accepts `.zip`, just rename `gpt-image-2-prompting.skill` to `.zip` — it's the same file.
>
> Skill availability and exact menu names vary by plan and app version — check Anthropic's current docs if the option isn't where you expect.

## Use

Once installed, the skill triggers automatically when you ask for image-prompt help. For example:

- *"Write me a GPT Image 2 prompt for a minimalist smartwatch launch poster with the tagline 'Time, refined'."*
- *"Make a prompt for an Instagram beauty-portrait series — same person across 6 scenes."*
- *"My AI image keeps coming out with gibberish text on the buttons. Fix my prompt."*
- *"Turn this character drawing into an official three-view reference sheet."* (image-to-image)

You'll get a structured prompt (prose or JSON), plus the reasoning behind each block so you can tweak it yourself.

### Design notes
- **Internationalization:** the skill never hard-codes a demographic default. When people are depicted and appearance is unspecified, it follows the scene's cultural context, otherwise matches the user's language/locale, and always exposes appearance as a one-edit variable.
- **Series:** for a *set* of images it produces a single batch-orchestrated prompt ("N separate images, don't merge into a grid"), and is honest that strict identity across separate generations needs a reference image.

## Acknowledgments

This skill is an original synthesis, but the patterns were learned by studying excellent community prompt collections. Credit and thanks to (among others):
[freestylefly/awesome-gpt-image-2](https://github.com/freestylefly/awesome-gpt-image-2),
[Anil-matcha/Awesome-GPT-Image-2-API-Prompts](https://github.com/Anil-matcha/Awesome-GPT-Image-2-API-Prompts),
[YouMind-OpenLab/awesome-gpt-image-2](https://github.com/YouMind-OpenLab/awesome-gpt-image-2),
[bubblesslayyer-cmd/Awesome-GPT-Image-2-OpenAi](https://github.com/bubblesslayyer-cmd/Awesome-GPT-Image-2-OpenAi),
and the creators on X whose prompts those repos collected. Several upstream collections are licensed CC BY 4.0; this project credits them in that spirit. If you are a source author and want a correction or removal, please open an issue.

Not affiliated with or endorsed by OpenAI or Anthropic. "GPT Image" is a product of OpenAI; "Claude" is a product of Anthropic.

## Development

The skill itself is just the Markdown under `gpt-image-2-prompting/`; everything else is project scaffolding:

- **Rebuild the `.skill` bundle** after editing the skill: `./scripts/build.sh` (macOS/Linux) or `pwsh ./scripts/build.ps1` (Windows).
- **Run the same checks CI runs:** `bash scripts/ci-checks.sh` — placeholders, recipe-count consistency, `SKILL.md` frontmatter, and bundle presence.
- **Eval triggering & prompt quality:** see [`evals/`](evals/) (`triggers.yaml` + `prompt-cases.md`).
- **Version history:** [CHANGELOG.md](CHANGELOG.md).

## Contributing

PRs welcome — see [CONTRIBUTING.md](CONTRIBUTING.md). Good contributions: a new high-value scene recipe (with the trick that makes it work), a sharper pitfall fix, or a new style component. You can also propose one via the **New scene recipe** issue form.

## License

[MIT](LICENSE) — do anything you want, just keep the copyright line. Prefer zero conditions? Swap it for CC0; the content is happy to be public domain.
