#!/usr/bin/env bash
# Repo sanity checks. Runnable locally (./scripts/ci-checks.sh) and in CI.
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."

echo "Checking for unfilled placeholders..."
# Scan only the files publishing placeholders can appear in (avoids self-matching).
if grep -no -e '<Your Name>' -e 'github.com/<' README.md README_zh.md LICENSE; then
  echo "::error::Unfilled placeholder found"
  exit 1
fi

echo "Checking recipe-count consistency..."
file=gpt-image-2-prompting/references/scene-cookbook.md
n=$(grep -cE '^### [0-9]+\.' "$file")
nums=$(grep -rhoE '[0-9]+ optimized, ready-to-run' --include=*.md . | grep -oE '^[0-9]+' | sort -u || true)
for v in $nums; do
  if [ "$v" != "$n" ]; then
    echo "::error::recipe-count drift: found $v but scene-cookbook.md has $n"
    exit 1
  fi
done
for f in README.md README_zh.md; do
  if ! grep -q "$n" "$f"; then
    echo "::error::$f should mention recipe count $n"
    exit 1
  fi
done

echo "Checking SKILL.md frontmatter..."
for k in name description version; do
  if ! grep -qE "^$k:" gpt-image-2-prompting/SKILL.md; then
    echo "::error::SKILL.md frontmatter missing $k"
    exit 1
  fi
done

echo "Checking skill bundle is present..."
test -f dist/gpt-image-2-prompting.skill

echo "All checks passed (recipe count: $n)."
