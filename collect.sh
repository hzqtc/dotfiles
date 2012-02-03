#!/bin/bash

if [ -f /etc/vimrc ]
then
	cp /etc/vimrc vimrc
elif [ -f ~/.vimrc ]
then
	cp ~/.vimrc vimrc
fi

if [ -f ~/.zshrc ]
then
	cp ~/.zshrc zshrc
fi

if [ -f ~/.aliasrc ]
then
	cp ~/.aliasrc aliasrc
fi

if [ -f ~/.fonts.conf ]
then
	cp ~/.fonts.conf fonts.conf
fi

if [ -f ~/.tmux.conf ]
then
	cp ~/.tmux.conf tmux.conf
fi

if [ -f ~/.gitconfig ]
then
	cp ~/.gitconfig gitconfig
fi

