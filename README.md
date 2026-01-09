# Dotfiles repo



## Initial setup
    
1. Install homebrew: 
    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
    ```

2. `brew bundle install --file=mac/brewfiles/BrewfileDevenv` or `brew bundle install --file=mac/brewfiles/work/Brewfile`
    

## Fish and all

`brew install --cask ghostty`
`brew install chezmoi`
`brew install fish`
`brew install starship`
`echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells`
`chsh -s /opt/homebrew/bin/fish`
`fish_add_path /opt/homebrew/bin`

### Customizing Fish PATH

To add custom directories to your PATH in Fish shell:

1. Edit `home/dot_config/private_fish/conf.d/path.fish` in the chezmoi source directory
2. Add paths using `fish_add_path`:
   ```fish
   # Add to the beginning of PATH (higher priority)
   fish_add_path --prepend ~/bin
   fish_add_path --prepend ~/.local/bin

   # Add to the end of PATH (lower priority)
   fish_add_path --append ~/scripts
   ```
3. Apply changes: `chezmoi apply -v`
4. Restart your Fish shell or open a new terminal

**Notes:**
- Use `--prepend` to add paths at the beginning (higher priority, searched first)
- Use `--append` to add paths at the end (lower priority, searched last)
- `fish_add_path` automatically prevents duplicates and checks if paths exist
- The `conf.d` directory is for modular configuration files that are automatically sourced

## Vim

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

  
Migrating to Fish + ChezMoi notes
- https://github.com/twpayne/chezmoi/discussions/2330

# Using chezmoi

`chezmoi apply -v`

Install chezmoi ? TBC
`chezmoi init raphaelbrugier --apply --ssh`