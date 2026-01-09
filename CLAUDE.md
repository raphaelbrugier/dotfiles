# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a dotfiles repository managed with chezmoi for macOS systems. It contains configuration files for development environments including shell configurations, editor settings, keyboard remapping, and system preferences.

## Key Commands

### Chezmoi Management
- `chezmoi apply -v` - Apply all managed dotfiles to the system with verbose output
- `chezmoi diff` - Show differences between repository and target files
- `chezmoi edit <file>` - Edit a managed file
- `chezmoi status` - Show status of managed files

### Karabiner Keyboard Configuration
- `cd config/karabiner && make` - Generate karabiner.json from karabiner.json.erb template
- `make clean` - Clean and reformat karabiner.json

### Initial Setup Commands
From README.md, for new machine setup:
1. Install Homebrew and update
2. `brew bundle install --file=mac/brewfiles/BrewfileDevenv` or `brew bundle install --file=mac/brewfiles/work/Brewfile`
3. Install fish shell: `brew install fish starship chezmoi`
4. Configure fish as default shell

### Legacy Setup
- `./install.sh` - Legacy symlink-based installation (for files prefixed with _)

## Architecture & Structure

### Shell Configuration
- **Zsh**: Primary configuration in `_zshrc` with custom functions and aliases in `_zsh_custom/`
  - Uses zgenom plugin manager with powerlevel10k theme
  - Custom git aliases and functions in `_zsh_custom/git.zsh`
  - ASDF version manager integration
- **Fish**: Modern shell config in `home/dot_config/private_fish/` with Starship prompt
  - Git abbreviations and functions in `conf.d/git.fish`
  - PATH management in `conf.d/path.fish` using `fish_add_path`
  - Modular configuration using `conf.d/` directory for automatic sourcing
- **Dual Shell Support**: Repository supports both Zsh (legacy) and Fish (current) configurations

### Configuration Management
- **Chezmoi Templates**: Files with `.tmpl` extension are processed as templates
- **Private Files**: Files/directories prefixed with `private_` are handled specially by chezmoi
- **Dotfile Mapping**: Files in `home/` are mapped to home directory with `dot_` prefix becoming `.`

### Keyboard Customization
- **Karabiner Elements**: Complex keyboard remapping configuration
  - ERB templates in `config/karabiner/karabiner.json.erb` with Ruby helper libraries
  - Custom key mapping system for TypeMatrix keyboard layouts
  - Device-specific conditionals for different keyboards

### Development Tools
- **Brewfiles**: Package management for different environments (devenv, work, home)
- **Tool Versions**: ASDF configuration in `home/dot_tool-versions`
- **Git Configuration**: Templated git config with custom aliases and settings
- **Vim Configuration**: Plugin management with Vundle in `_vim/plugins.vim`

### System Integration
- **Alfred Workflows**: Audio switching utilities in `Alfred/audio-switch/`
- **iTerm2 Profiles**: Terminal configuration in `mac/iterm2_profile/`
- **macOS Defaults**: System preference automation in `mac/osx-install-defaults.sh`

## Important Files

- `home/dot_gitconfig.tmpl` - Main git configuration template
- `_zshrc` - Primary Zsh configuration
- `home/dot_config/private_fish/config.fish` - Fish shell configuration
- `home/dot_config/private_fish/conf.d/path.fish` - Fish PATH management
- `home/dot_config/private_fish/conf.d/git.fish` - Fish git abbreviations
- `config/karabiner/karabiner.json.erb` - Keyboard remapping template
- `home/dot_config/starship.toml` - Starship prompt configuration
- `mac/brewfiles/` - Package definitions for different environments

## Development Notes

- Repository uses both legacy symlink system (files with `_` prefix) and modern chezmoi management
- Keyboard configuration supports complex device-specific remapping scenarios
- Shell configurations are designed for development workflow optimization with extensive git integration