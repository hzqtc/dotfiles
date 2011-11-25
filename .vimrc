if has("gui_running")
	set lines=30
	set columns=110
	set guifont=monospace\ 10
	set guioptions-=T
	set cursorline
	colorscheme koehler
else
	colorscheme elflord
endif

set mousehide
set fileencodings=utf-8,utf-16,utf-16le,gbk,gb2312
set nocompatible
set clipboard+=unnamed
set nobackup
set wildmenu
set shortmess=atI
set noerrorbells
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showmatch
set ruler
set incsearch
set mouse=a
set nu
set backspace=indent,eol,start
filetype on
syntax on
set smarttab
set showcmd
set showmode
set ai
set tags=tags;
set autochdir

autocmd VimEnter * set ttymouse=xterm2
autocmd FocusGained * set ttymouse=xterm2
autocmd BufEnter * set ttymouse=xterm2

map <F6> :NERDTreeToggle<CR>
map <F7> :BufExplorer<CR>
