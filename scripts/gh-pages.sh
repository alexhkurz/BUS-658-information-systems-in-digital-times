#!/usr/bin/env bash
# Build Marp slides to HTML in docs/ for GitHub Pages (branch deploy), then commit and push.

set -e
cd "$(dirname "$0")/.."

mkdir -p docs/slides
for f in slides/*.md; do
  [ -f "$f" ] && npx --yes @marp-team/marp-cli "$f" -o "docs/slides/$(basename "$f" .md).html"
done

echo '<!DOCTYPE html><html><head><meta http-equiv="refresh" content="0;url=slides/slides01.html"></head><body>Redirecting to <a href="slides/slides01.html">slides</a>...</body></html>' > docs/index.html

echo "Built. Output in docs/."

if git diff --quiet docs/ 2>/dev/null && git diff --cached --quiet -- docs/ 2>/dev/null; then
  echo "No changes in docs/. Nothing to commit."
else
  git add docs/
  git commit -m "Update slides (gh-pages)"
  git push
  echo "Committed and pushed. GitHub Pages will update shortly."
fi
