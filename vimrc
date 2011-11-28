set nocompatible

colorscheme elflord

filetype plugin indent on
syntax on

set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set backspace=indent,eol,start

set mousehide
set mouse=a

set fileencodings=utf-8
set encoding=utf-8
set nobackup

set ignorecase
set smartcase
set incsearch
set gdefault

set wildmenu
set novisualbell
set noerrorbells
set nu
set ruler
set showmatch
set showcmd
set showmode

set tags=tags;
set autochdir

autocmd VimEnter * set ttymouse=xterm2
autocmd FocusGained * set ttymouse=xterm2
autocmd BufEnter * set ttymouse=xterm2

map <F6> :NERDTreeToggle<CR>
map <F7> :BufExplorer<CR>
