#!/bin/bash
# Run once after accepting the Xcode license: sudo xcodebuild -license
set -e
cd "$(dirname "$0")"

git init
git add -A
git commit -m "Add one-page website for Correia Mobile Detailing." || true
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/BTheCoderr/Correia-Mobile-Auto-Detailing-.git
git push -u origin main

echo ""
echo "Done. Repo: https://github.com/BTheCoderr/Correia-Mobile-Auto-Detailing-"
echo "Next: connect this repo in Netlify (publish directory: .)"
