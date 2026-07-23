#!/usr/bin/env bash
# Run this from inside the manassilab-site folder any time you want to
# push whatever's currently on disk up to GitHub.
#
#   ./deploy.sh "short description of what changed"
#
set -e
msg="${1:-Update site}"
git add -A
git commit -m "$msg"
git push
echo ""
echo "Pushed. Live at https://mauromanassi.github.io"
echo "(GitHub's CDN can take a minute to catch up — hard refresh with Cmd+Shift+R if you don't see the change right away.)"
