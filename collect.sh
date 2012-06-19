#!/bin/bash

dotfiles=( ~/.vimrc ~/.zshrc ~/.aliasrc ~/.fonts.conf ~/.gitconfig ~/.xbindkeysrc ~/.vimperatorrc ~/.vimperator/info/default/quickmarks ~/.conkyrc )

for file in ${dotfiles[*]}
do
    if [ -f $file ]
    then
        name=${file##*/}
        if [ `expr index "$name" "."` == "1" ]
        then
            name=${name#.}
        fi
        echo "$file => $name"
        cp "$file" "$name"
    fi
done

