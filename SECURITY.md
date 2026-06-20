# Security Policy

This repository is **documentation only** — it ships Markdown skill files and a
zipped bundle of them. There is no executable code shipped to users, no runtime
dependencies, and no network access, so the attack surface is small.

## Reporting a concern

Please open a [GitHub issue](https://github.com/JacksonTai2007/gpt-image-2-prompting-skill/issues),
or for anything sensitive use GitHub's **private vulnerability reporting**
(repo → *Security* → *Report a vulnerability*). Things worth reporting:

- a prompt example that could reliably produce harmful, deceptive, or unsafe imagery;
- accidentally committed secrets (API keys, tokens) in the history;
- a packaging problem with `dist/gpt-image-2-prompting.skill`.

## Scope

- **No credentials here.** This skill writes *prompts*; it never asks for or
  stores your OpenAI/Anthropic keys. If a future version adds an optional
  generation script, its key handling will be documented in this file.
- **People defaults stay neutral.** Reports about a hard-coded demographic
  default are in scope — see `SKILL.md` → *Depicting people*.

## Supported versions

This is a rolling document project: fixes land on `main` and ship in the next
tagged release. Always use the latest tag or `main`.
