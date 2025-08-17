# Claude Tools Homebrew Tap

A collection of tools for enhancing the Claude Code CLI experience.

## Installation

```bash
brew tap derekspelledcorrectly/claude-tools
brew install claude-profile-manager
```

## Available Formulae

### claude-profile-manager
Authentication profile management system for Claude Code CLI. Allows seamless switching between different Claude authentication methods with secure keychain storage.

**Features:**
- Save and switch between multiple authentication profiles
- Secure credential storage via macOS keychain
- Automatic detection of subscription vs console API methods
- Settings preservation per profile

**Usage:**
```bash
claude-profile save <name>     # Save current credentials as named profile
claude-profile list            # Show all saved profiles
claude-profile switch <name>   # Switch to specified profile
claude-profile current         # Show active profile
claude-profile delete <name>   # Delete saved profile
```

## Requirements

- macOS (for keychain integration)
- Claude Code CLI

## Repository Structure

This tap follows Homebrew conventions:
- `Formula/` - Contains all formula definitions
- Each tool has its own source repository under the derekspelledcorrectly GitHub organization

## Contributing

Issues and pull requests welcome! Each tool's source code is maintained in separate repositories:
- [claude-profile-manager](https://github.com/derekspelledcorrectly/claude-profile-manager)