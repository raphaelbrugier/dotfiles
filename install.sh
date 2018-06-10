#!/bin/bash

# modified from: https://github.com/skeeto/dotfiles/blob/master/install.sh

## Install each _-prefixed file or dir
find . -regex "./_.*" -type f -print0 | sort -z | while read -d $'\0' file
do
    dotfile=${file/.\/_/.}

    ## Install directory first
    if [ ! -e $(dirname ~/$dotfile) ]; then
    	echo "create directory: "
    	echo $(dirname ~/$dotfile)
        mkdir -p -m 700  $(dirname ~/$dotfile)
    fi

    ## Create a link to the repository version
    echo Installing $dotfile
    ln -fs $(pwd)/$file ~/$dotfile
    chmod go-rwx $file
done
