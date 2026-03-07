# VS Code Ruby Extension for Ruby 2.x (Legacy)

[![VS Code](https://img.shields.io/badge/VS%20Code-Extension-blue)](https://code.visualstudio.com/)
[![Ruby](https://img.shields.io/badge/Ruby-2.x%20%7C%203.x-red)](https://www.ruby-lang.org/)

**Go to Definition, IntelliSense, and Symbol Search for Ruby in VS Code — works with Ruby 2.x projects where Ruby LSP fails.**

## The Problem

- **Shopify's Ruby LSP** requires Ruby 3.0+ and doesn't work with legacy Ruby 2.x projects
- **Solargraph** has complex gem dependencies that often conflict with older Rails apps
- The **original VS Code Ruby extension** was deprecated, but it still works great

## The Solution

This repo provides an easy installer for the **last working version (v0.28.1)** of the original Ruby extension, which:

- Works with **Ruby 1.9, 2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 3.x** — any version
- Has **zero gem dependencies** — uses a pure JavaScript parser
- Provides **Go to Definition** (`Cmd+Click` / `F12`)
- Provides **Symbol Search** (`Cmd+T`)
- Provides **Document Outline** (`Cmd+Shift+O`)

## Installation

### One-Line Install (macOS/Linux)

```bash
curl -sSL https://raw.githubusercontent.com/aashutosh-sahni/vscode-ruby-legacy/main/install.sh | bash
```

### Manual Install

```bash
# Download
curl -L "https://github.com/aashutosh-sahni/vscode-ruby-legacy/raw/main/ruby-0.28.1.vsix.gz" -o /tmp/ruby-legacy.vsix.gz

# Extract
gunzip /tmp/ruby-legacy.vsix.gz

# Install
code --install-extension /tmp/ruby-legacy.vsix
```

## Configuration

Add to your VS Code `settings.json`:

```json
{
  "ruby.intellisense": "rubyLocate"
}
```

Then: `Cmd+Shift+P` → **"Ruby: Reload Project"** to index your files.

## Common Issues

### "Go to Definition not working"

1. Ensure `"ruby.intellisense": "rubyLocate"` is in your settings
2. Run `Cmd+Shift+P` → "Ruby: Reload Project"
3. Check Output panel → "Ruby" for errors

### "Conflicts with Ruby LSP / Shopify extension"

Disable Ruby LSP for your workspace:

```json
{
  "rubyLsp.enable": false
}
```

### "Extension not found in marketplace"

The extension was deprecated. That's why this repo exists — we host a backup copy.

## Alternatives Comparison

| Extension | Ruby Version | Gem Dependencies | Status |
|-----------|--------------|------------------|--------|
| **This (Legacy)** | Any (2.x, 3.x) | None | Works |
| Ruby LSP (Shopify) | 3.0+ only | ruby-lsp gem | Active |
| Solargraph | 2.4+ | solargraph gem | Active |
| vscode-ruby (original) | Any | None | Deprecated |

## Keywords

`vscode ruby extension`, `ruby go to definition`, `vscode ruby 2`, `ruby intellisense`, `vscode ruby legacy`, `ruby lsp alternative`, `vscode ruby not working`, `ruby extension deprecated`, `vscode ruby old version`, `rails vscode extension`

## Credits

- Original: [rubyide/vscode-ruby](https://github.com/rubyide/vscode-ruby)
- Maintainers: Peng Lv, Stafford Brunk

## License

MIT
