# Homebrew Tap

This Homebrew tap provides formulas for installing open-source development tools.

## Available Formulas

### Scriptling

A powerful scripting language with Python-like syntax and Go performance.

**Install:**
```shell
brew install paularlott/tap/scriptling
```

### Knot

A tool for creating and managing developer environments within a Nomad cluster.

**Install:**
```shell
brew install paularlott/tap/knot
```

## Usage

### Tap the Repository

First, tap this repository:
```shell
brew tap paularlott/tap
```

### Install a Formula

Choose the formula you want to install:
```shell
brew install scriptling  # Install Scriptling
brew install knot        # Install Knot
```

### Upgrade Formulas

To upgrade to the latest version:
```shell
brew update
brew upgrade scriptling  # Upgrade Scriptling
brew upgrade knot        # Upgrade Knot
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

## License

This Homebrew tap is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
