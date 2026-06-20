#!/usr/bin/env bash
# Rebuild dist/gpt-image-2-prompting.skill from the gpt-image-2-prompting/ folder.
# Usage:  ./scripts/build.sh
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

mkdir -p dist
rm -f dist/gpt-image-2-prompting.skill
zip -r -X dist/gpt-image-2-prompting.skill gpt-image-2-prompting \
  -x '*.DS_Store' '*__pycache__*' >/dev/null

echo "Built dist/gpt-image-2-prompting.skill"
