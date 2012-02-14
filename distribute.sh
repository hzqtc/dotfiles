#!/bin/bash

if [ -f ~/.vimrc ]
then
	echo 'Distributing vimrc'
	cp vimrc ~/.vimrc
fi

if [ -f ~/.zshrc ]
then
	echo 'Distributing zshrc'
	cp zshrc ~/.zshrc
fi

if [ -f ~/.aliasrc ]
then
	echo 'Distributing aliasrc'
	cp aliasrc ~/.aliasrc
fi

if [ -f ~/.fonts.conf ]
then
	echo 'Distributing fonts.conf'
	cp fonts.conf ~/.fonts.conf
fi

if [ -f ~/.tmux.conf ]
then
	echo 'Distributing tmux.conf'
	cp tmux.conf ~/.tmux.conf
fi

if [ -f ~/.gitconfig ]
then
	echo 'Distributing gitconfig'
	cp gitconfig ~/.gitconfig
fi

if [ -f ~/.xbindkeysrc ]
then
	echo 'Distributing xbindkeysrc'
	cp xbindkeysrc ~/.xbindkeysrc
fi
