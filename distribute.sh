#!/bin/bash

dotfiles=( ~/.vimrc ~/.zshrc ~/.aliasrc ~/.fonts.conf ~/.gitconfig ~/.xbindkeysrc ~/.vimperatorrc ~/.vimperator/info/default/quickmarks ~/.conkyrc ~/.mozilla/firefox/*.default/chrome/userChrome.css ~/.mozilla/firefox/*.default/chrome/userContent.css )

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
        echo -n "Do you wish to copy $name to $file? [y/N]"
        read ans
        if [ "$ans" == "y" -o "$ans" == "Y" ]
        then
            echo "$name => $file"
            cp "$name" "$file"
        fi
    fi
done

