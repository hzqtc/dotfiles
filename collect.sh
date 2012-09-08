#!/bin/bash

dotfiles=( ~/.vimrc ~/.zshrc ~/.aliasrc ~/.config/fontconfig/fonts.conf ~/.gitconfig ~/.xbindkeysrc ~/.vimperatorrc )

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

