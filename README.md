# Dotfiles repo



## Initial setup
    
1. Install homebrew: 
    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
    ```

2. `brew bundle install --file=mac/brewfiles/BrewfileDevenv` or `brew bundle install --file=mac/brewfiles/work/Brewfile`
    

## Zsh && Zgenom && install

    brew install zsh
    chsh -s /bin/zsh
    git clone https://github.com/jandamm/zgenom.git "${HOME}/.zgenom"
    cd ~/dotfiles
    ~/dotfiles/install.sh
    p10k configure
    ./osx-install-defaults.sh

## Vim

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
    

## SDKs with asdf
  
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
    
  
