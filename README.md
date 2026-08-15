# Homebrew Tap

This Homebrew tap provides formulas for installing open-source development tools.

## Available Formulas

### Scriptling

A powerful scripting language with Python-like syntax and Go performance.

**Install:**
```shell
brew install paularlott/tap/scriptling

brew uninstall paularlott/tap/scriptling
```

### Knot

A tool for creating and managing developer environments within a Nomad cluster.

**Desktop app (macOS menu bar tray + CLI):**
```shell
brew install --cask paularlott/tap/knot

brew uninstall --cask --zap paularlott/tap/knot
```

**CLI only:**
```shell
brew install paularlott/tap/knot

brew uninstall paularlott/tap/knot
```

### Knot Pro

The commercial version of Knot with additional features including OAuth authentication and enhanced audit logging.

**Desktop app (macOS menu bar tray + CLI):**
```shell
brew install --cask paularlott/tap/knot-pro

brew uninstall --cask --zap paularlott/tap/knot-pro
```

**CLI only:**
```shell
brew install paularlott/tap/knot-pro

brew uninstall paularlott/tap/knot-pro
```

> Note: Knot and Knot Pro are mutually exclusive — you cannot have both installed at the same time.

### LLM Router

A tool for loadbalancing and chatting with LLMs and MCP servers.

**Desktop app (macOS menu bar tray + CLI):**
```shell
brew install --cask paularlott/tap/llmrouter

brew uninstall --cask --zap paularlott/tap/llmrouter
```

**CLI only:**
```shell
brew install paularlott/tap/llmrouter

brew uninstall paularlott/tap/llmrouter
```

## Development

### Adding a New Formula

1. Create a new Ruby file in the `Formula/` directory following the naming convention: `<project>.rb`
2. Use the existing formulas as templates
3. Test the formula locally before committing

### Testing Formulas

To test a formula before committing:
```shell
brew install --build-from-source ./Formula/scriptling.rb
```

### Updating Formulas

Formulas are automatically updated during the release process of each project. The release scripts generate the appropriate Homebrew formula with correct checksums and version information.

## Support

For issues with the formulas themselves (not the projects they install), please open an issue in this repository.

For project-specific issues:
- **Scriptling**: [scriptling GitHub repository](https://github.com/paularlott/scriptling)
- **Knot**: [knot GitHub repository](https://github.com/paularlott/knot)
- **Knot Pro**: [knot-pro GitHub repository](https://github.com/paularlott/knot-pro)
- **LLM Router**: [llmrouter GitHub repository](https://github.com/paularlott/llmrouter)

## License

This Homebrew tap is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
