set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
map <F6> :NERDTreeToggle<CR>

Bundle 'scrooloose/nerdcommenter'
let mapleader = '\'

Bundle 'kien/ctrlp.vim'
map <C-B> :CtrlPBuffer<CR>

Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on
syntax on

set background=dark
colorscheme solarized

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set backspace=indent,eol,start

set mousehide
set mouse=a
set ttymouse=xterm2

set fileencodings=utf-8
set encoding=utf-8
set nobackup

set smartcase
set incsearch
" replace with 'g' option in default
set gdefault

set wildmenu
set novisualbell
set noerrorbells
set nu
set ruler
set showmatch
set showcmd
set showmode

" always display statusline
set laststatus=2
set statusline=%F\ %m%r%h%w\ %y\ %=\ %l,%v\ [%<%P]

set tags=tags;
set autochdir

" always recognize *.md as markdown file
autocmd BufEnter,BufNew *.md set filetype=markdown

if has("gui_running")
    set guioptions-=T
    set lines=30
    set columns=100
endif
