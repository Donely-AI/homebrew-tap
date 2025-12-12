# Homebrew Tap for Donely

This is the official Homebrew tap for [Donely CLI](https://github.com/Donely-AI/donely-cli) - an AI-native desktop GUI automation framework for macOS.

## Installation

```bash
brew tap donely-ai/tap
brew install --cask donely-cli
```

Or install directly:

```bash
brew install --cask donely-ai/tap/donely-cli
```

## Usage

```bash
# Check accessibility permissions
donely check

# List running applications
donely apps

# Take a screenshot
donely screenshot output.png

# Inspect app UI tree
donely inspect --app Finder --depth 3

# Find UI elements
donely find "role:Button" --app Finder

# Start MCP server for AI integration
donely mcp
```

## Requirements

- macOS 12.0+ (Monterey or later)
- Accessibility permissions (granted via System Settings)

## More Information

- [Donely CLI Repository](https://github.com/Donely-AI/donely-cli)
- [Documentation](https://github.com/Donely-AI/donely-cli#readme)
