#!/bin/bash

if [ -f ~/.vimrc ]
then
	echo 'Collecting vimrc'
	cp ~/.vimrc vimrc
fi

if [ -f ~/.zshrc ]
then
	echo 'Collecting zshrc'
	cp ~/.zshrc zshrc
fi

if [ -f ~/.aliasrc ]
then
	echo 'Collecting aliasrc'
	cp ~/.aliasrc aliasrc
fi

if [ -f ~/.fonts.conf ]
then
	echo 'Collecting fonts.conf'
	cp ~/.fonts.conf fonts.conf
fi

if [ -f ~/.tmux.conf ]
then
	echo 'Collecting tmux.conf'
	cp ~/.tmux.conf tmux.conf
fi

if [ -f ~/.gitconfig ]
then
	echo 'Collecting gitconfig'
	cp ~/.gitconfig gitconfig
fi

if [ -f ~/.xbindkeysrc ]
then
	echo 'Collecting xbindkeysrc'
	cp ~/.xbindkeysrc xbindkeysrc
fi

if [ -f ~/.config/zathura/zathurarc ]
then
	echo 'Collecting zathurarc'
	cp ~/.config/zathura/zathurarc zathurarc
fi

