#!/bin/bash
# Publish the PUBLIC files to gh-pages from an isolated staging tree.
# Target: https://sindrimar02.github.io/wildlifephototravel-preview/ (noindex).
#
# The local server is deliberately NOT published, and neither are the QA scripts.
#
# NOTE: redeploys rewrite the gh-pages branch and so need --force. The workspace
# backup guard blocks force pushes from inside a Claude session by design; run
# this script yourself in a terminal for redeploys.
set -e
REPO="$(cd "$(dirname "$0")" && pwd)"
STAGE="$(mktemp -d)/wpt-pages"
mkdir -p "$STAGE"

cp -R "$REPO/assets" "$REPO/fonts" "$STAGE/"
cp "$REPO/index.html" "$REPO/robots.txt" "$STAGE/"
touch "$STAGE/.nojekyll"

# GATE 1 - check the STAGED tree, byte-for-byte what gets published. A preview that
# ships without a usable favicon shows the ARTIX helm from the origin root in the
# client's tab. Rules and history: _tools/favicon-guard.mjs
node "$REPO"/../_tools/favicon-guard.mjs "$STAGE"

cd "$STAGE"
git init -q
git remote add origin https://github.com/SindriMar02/wildlifephototravel-preview.git
git add -A
git -c user.email=sindri@klubbr.is -c user.name="Sindri Már" \
    commit -q -m "Deploy $(git -C "$REPO" rev-parse --short HEAD) (noindex preview)"
git push -q --force origin HEAD:gh-pages

# GATE 2 - on-disk correct is not proof the client sees an icon: the build can rename
# files and the Pages CDN takes a minute. Check the DEPLOYED url. Polls ~3 min.
node "$REPO"/../_tools/favicon-verify-live.mjs "https://sindrimar02.github.io/wildlifephototravel-preview/"
