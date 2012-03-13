#!/bin/bash

dotfiles=( ~/.vimrc ~/.zshrc ~/.aliasrc ~/.fonts.conf ~/.gitconfig ~/.xbindkeysrc ~/.config/zathura/zathurarc ~/.vimperatorrc ~/.vimperator/info/default/quickmarks )

for file in ${dotfiles[*]}
do
    name=${file##*/}
    if [ `expr index "$name" "."` == "1" ]
    then
        name=${name#.}
    fi

    if [ -f $file ]
    then
        echo "$name => $file"
        cp "$name" "$file"
    else
        echo -n "Do you wish to copy $name to $file? [Yn]"
        read ans
        if [ "$ans" == "" -o "$ans" == "y" -o "$ans" == "Y" ]
        then
            echo "$name => $file"
            cp "$name" "$file"
        fi
    fi
done

