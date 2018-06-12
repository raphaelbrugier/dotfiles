# Dotfiles repo

## Zsh && Zgen

    brew install zsh
    chsh -s /bin/zsh
    git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
    ~/dotfiles/install.sh

## ITerm 2
See http://stratus3d.com/blog/2015/02/28/sync-iterm2-profile-with-dotfiles-repository/

## Vim

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall