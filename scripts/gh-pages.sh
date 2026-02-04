#!/usr/bin/env bash
# Build Marp slides to HTML in docs/ for GitHub Pages (branch deploy).
# Run from repo root. Then: git add docs/ && git commit -m "Update slides" && git push

set -e
cd "$(dirname "$0")/.."

mkdir -p docs/slides
for f in slides/*.md; do
  [ -f "$f" ] && npx --yes @marp-team/marp-cli "$f" -o "docs/slides/$(basename "$f" .md).html"
done

echo '<!DOCTYPE html><html><head><meta http-equiv="refresh" content="0;url=slides/slides01.html"></head><body>Redirecting to <a href="slides/slides01.html">slides</a>...</body></html>' > docs/index.html

echo "Built. Output in docs/. Commit and push to update GitHub Pages."
