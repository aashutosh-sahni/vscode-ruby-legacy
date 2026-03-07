#!/bin/bash
set -e

echo "Installing VS Code Ruby Legacy Extension (v0.28.1)..."

# Download
echo "Downloading..."
curl -L "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/rebornix/vsextensions/Ruby/0.28.1/vspackage" -o /tmp/ruby-legacy.vsix.gz

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
