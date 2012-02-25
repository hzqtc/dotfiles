set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'majutsushi/tagbar'
map <F8> :TagbarToggle<CR>
let g:tagbar_sort=0
let g:tagbar_compact=1

Bundle 'ervandew/supertab'

Bundle 'FencView.vim'
let g:fencview_autodetect=0

Bundle 'scrooloose/nerdtree'
map <F6> :NERDTreeToggle<CR>

Bundle 'scrooloose/nerdcommenter'
let g:NERDMenuMode=0

Bundle 'kien/ctrlp.vim'
map <C-B> :CtrlPBuffer<CR>

filetype plugin indent on
syntax enable

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
set statusline=%F\ %m%r%h%w\ %y\ %=\ line:%l\ [%<%P]

set tags=tags;
set autochdir

" always recognize *.md as markdown file
autocmd BufEnter,BufNew *.md set filetype=markdown

if has("gui_running")
    set guioptions=acei
    set lines=30
    set columns=100
    set background=light
else
    set background=dark
endif

