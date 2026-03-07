#!/bin/bash
set -e

echo "Installing VS Code Ruby Legacy Extension (v0.28.1)..."

MARKETPLACE_URL="https://marketplace.visualstudio.com/_apis/public/gallery/publishers/rebornix/vsextensions/Ruby/0.28.1/vspackage"
GITHUB_URL="https://github.com/aashutosh-sahni/vscode-ruby-legacy/raw/main/ruby-0.28.1.vsix.gz"

# Try marketplace first, fall back to GitHub mirror
echo "Downloading..."
if curl -fL "$MARKETPLACE_URL" -o /tmp/ruby-legacy.vsix.gz 2>/dev/null; then
  echo "Downloaded from VS Code Marketplace"
else
  echo "Marketplace unavailable, using GitHub mirror..."
  curl -fL "$GITHUB_URL" -o /tmp/ruby-legacy.vsix.gz
fi

# Extract
echo "Extracting..."
gunzip -f /tmp/ruby-legacy.vsix.gz

# Install
echo "Installing..."
code --install-extension /tmp/ruby-legacy.vsix

# Cleanup
rm -f /tmp/ruby-legacy.vsix

echo ""
echo "Done! Now:"
echo "1. Add to your VS Code settings.json:"
echo '   "ruby.intellisense": "rubyLocate"'
echo ""
echo "2. Reload VS Code"
echo ""
echo "3. Run: Cmd+Shift+P → 'Ruby: Reload Project'"
