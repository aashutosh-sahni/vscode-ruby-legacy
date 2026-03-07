# VS Code Ruby Legacy Extension

The original VS Code Ruby extension by [rubyide](https://github.com/rubyide/vscode-ruby) was deprecated in favor of [Shopify's Ruby LSP](https://github.com/Shopify/ruby-lsp). However, Ruby LSP requires **Ruby 3.0+**, which doesn't work for legacy projects on older Ruby versions.

This repo provides an easy way to install the **last working version (v0.28.1)** of the original extension, which works with **any Ruby version** including Ruby 2.x.

## Features

- **Go to Definition** - `Cmd+Click` or `F12` on methods, classes, modules
- **Workspace Symbol Search** - `Cmd+T` to search for symbols
- **Document Symbols** - `Cmd+Shift+O` for outline view
- Works with **Ruby 2.x** projects (no Ruby 3.0+ requirement)
- Pure JavaScript parser - no gem dependencies

## Installation

### Option 1: One-liner (macOS/Linux)

```bash
curl -sSL https://raw.githubusercontent.com/aashutosh-sahni/vscode-ruby-legacy/main/install.sh | bash
```

### Option 2: Manual

```bash
# Download from this repo (backup mirror)
curl -L "https://github.com/aashutosh-sahni/vscode-ruby-legacy/raw/main/ruby-0.28.1.vsix.gz" -o /tmp/ruby-legacy.vsix.gz

# Extract (it's gzipped)
gunzip /tmp/ruby-legacy.vsix.gz

# Install
code --install-extension /tmp/ruby-legacy.vsix
```

> **Note:** This repo includes a backup copy of the extension (`ruby-0.28.1.vsix.gz`) in case Microsoft removes it from the marketplace.

## Configuration

After installation, add this to your VS Code settings (`Cmd+,` → "Open Settings (JSON)"):

```json
{
  "ruby.intellisense": "rubyLocate"
}
```

Then reload VS Code and run:
- `Cmd+Shift+P` → **"Ruby: Reload Project"**

This will index your Ruby files for Go to Definition.

## Settings

| Setting | Description | Default |
|---------|-------------|---------|
| `ruby.intellisense` | Set to `rubyLocate` to enable Go to Definition | `""` |
| `ruby.locate.include` | Glob pattern for files to index | `**/*.rb` |
| `ruby.locate.exclude` | Glob pattern for files to exclude | `{vendor,node_modules}/**` |

## Troubleshooting

### Go to Definition not working?

1. Make sure `ruby.intellisense` is set to `rubyLocate`
2. Run `Cmd+Shift+P` → "Ruby: Reload Project" to re-index
3. Check the Output panel (`Cmd+Shift+U`) → select "Ruby" for errors

### Conflicts with Ruby LSP?

If you have Shopify's Ruby LSP installed, you may want to disable it for workspaces using this extension:

```json
{
  "rubyLsp.enable": false
}
```

## Why this exists

- Ruby LSP requires Ruby 3.0+
- Solargraph has complex gem dependencies that conflict with older projects
- This extension uses a pure JavaScript parser (`ruby-method-locate`) with zero Ruby dependencies
- It just works

## Credits

- Original extension: [rubyide/vscode-ruby](https://github.com/rubyide/vscode-ruby)
- Maintainers: Peng Lv, Stafford Brunk, and contributors

## License

MIT (same as original)
