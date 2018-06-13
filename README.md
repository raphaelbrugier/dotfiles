# Dotfiles repo



## Initial setup

1. Install Xcode for gcc & make `xcode-select --install`
    
2. Install homebrew: 
    ```
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    ```
3. `brew bundle install --file=mac/brewfiles/BrewfileDevenv`
    
## Zsh && Zgen

    brew install zsh
    chsh -s /bin/zsh
    git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
    ~/dotfiles/install.sh

## Vim

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
    

## SDKs

    curl -s "https://get.sdkman.io" | bash
    