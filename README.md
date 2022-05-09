# Dotfiles repo



## Initial setup

1. Install Xcode for gcc & make `xcode-select --install`
    
2. Install homebrew: 
    ```
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    ```

3. `brew bundle install --file=mac/brewfiles/BrewfileDevenv`
    

## Zsh && Zgenom && install

    brew install zsh
    chsh -s /bin/zsh
    git clone https://github.com/jandamm/zgenom.git "${HOME}/.zgenom"
    cd ~/dotfiles
    ~/dotfiles/install.sh
    p10k configure

## Vim

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
    

## SDKs with asdf
  
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
    

## Python

  