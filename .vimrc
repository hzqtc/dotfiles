if has("gui_running")
	set lines=40
	set columns=130
	set guifont=Lucida\ Console\ 9
	set guioptions-=T
	colorscheme desert
	set cursorline
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

map <F6> :NERDTreeToggle<CR>
map <F7> :BufExplorer<CR>

