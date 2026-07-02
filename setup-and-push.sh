#!/bin/bash
# Run AFTER Homebrew is installed. Usage: bash setup-and-push.sh

set -e

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install it first:"
  echo '  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
  exit 1
fi

echo "Installing GitHub CLI..."
brew install gh

echo ""
echo "Sign in to GitHub (browser will open)..."
gh auth login

echo ""
echo "Pushing to GitHub..."
cd "$(dirname "$0")"
git push -u origin main

echo ""
echo "Done! Repo: https://github.com/BTheCoderr/Correia-Mobile-Auto-Detailing-"
echo "Next: connect this repo in Netlify (publish directory: .)"
