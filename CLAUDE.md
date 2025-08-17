# Homebrew Claude Tools Tap

## Project Overview
A Homebrew tap repository for distributing Claude Code CLI enhancement tools. This is the companion repository to the main tool repositories, containing only Homebrew formula definitions.

## Repository Structure
```
homebrew-claude-tools/
├── Formula/
│   └── claude-profile-manager.rb    # Formula for profile management tool
├── README.md                        # Installation and usage docs
└── CLAUDE.md                        # This file
```

## Available Tools

### claude-profile-manager
- **Source repo**: `derekspelledcorrectly/claude-profile-manager`
- **Description**: Authentication profile management system for Claude Code CLI
- **Features**: Save/switch between multiple authentication profiles with secure keychain storage

## Installation Process
Users install tools from this tap with:
```bash
brew tap derekspelledcorrectly/claude-tools
brew install claude-profile-manager
```

## Development Status
- ✅ Initial tap structure created
- ✅ claude-profile-manager formula written
- ✅ Local testing setup ready
- ⏳ Need to test formula with actual tool release
- ⏳ Need to publish tap to GitHub
- ⏳ Need to create first release of claude-profile-manager

## Testing Locally
Test the tap locally before publishing:
```bash
# Create local tap
brew tap derekspelledcorrectly/claude-tools ~/Code/homebrew-claude-tools

# Test formula (once main tool is ready)
brew install claude-profile-manager
```

## Next Steps
1. Complete claude-profile-manager implementation
2. Create first release with proper tarball and SHA256
3. Update formula with correct URL and hash
4. Test installation process end-to-end
5. Publish tap repository to GitHub
6. Document installation process for users

## Publishing Workflow
1. Push this repo to GitHub as `derekspelledcorrectly/homebrew-claude-tools`
2. Create release in main tool repo (`claude-profile-manager`)
3. Update formula with release URL and SHA256 hash
4. Test installation: `brew tap derekspelledcorrectly/claude-tools && brew install claude-profile-manager`

## GitHub Repo Names
- **This repo**: `derekspelledcorrectly/homebrew-claude-tools`
- **Main tool**: `derekspelledcorrectly/claude-profile-manager`
- **Tap name**: `derekspelledcorrectly/claude-tools` (homebrew- prefix is dropped)