# Evals

A lightweight, dependency-free way to check that this skill (a) **triggers** on the
right requests and (b) **rewrites** vague asks into the protocol. There is no
automated model-scoring in CI — that needs an API key and is non-deterministic —
so run these by hand, or wire them into your own harness.

## Files

- **`triggers.yaml`** — phrases that *should* and *should not* activate the skill.
  Paste each into a fresh Claude session that has the skill installed and confirm
  it loads only for the `should_trigger` set. This validates the `description:`
  field in `SKILL.md` frontmatter — the surface that controls auto-triggering.
- **`prompt-cases.md`** — vague requests plus a 0–2 rubric. Run each through the
  skill and score the output; a strong result hits full marks on every rubric row.

## When to run

Before tagging a release, and after editing either:
- `SKILL.md`'s `description` (affects **triggering** → re-run `triggers.yaml`), or
- the references (affects **rewrite quality** → re-run `prompt-cases.md`).
