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

## Vim

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

  
Migrating to Fish + ChezMoi notes
- https://github.com/twpayne/chezmoi/discussions/2330