" Example help commands below:
" Show where is config file ':echo stdpath('config')'

" On Windows config file is in ~/AppData/Local/nvim/init.vim
" On Linux config file is in ~/.config/nvim/init.vim

set nocompatible   " disable compatibility to old-time vi
set showmatch      " show matching
set ignorecase     " case insensitive
set mouse=v        " middle-click paste with
set hlsearch       " highlight search
set incsearch      " incremental search
set tabstop=4      " number of columns occupied by a tab
set softtabstop=4  " see multiple spaces as tabstops so <BS> does the right thing
set expandtab      " converts tabs to white space
set shiftwidth=4   " width for autoindents
set autoindent     " indent a new line the same amount as the line just typed
set number         " add line number
set wildmode=longest,list   " get bash-like tab completions
set cc=80,120      " set an 80 and 120 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on          " syntax highlighting
set mouse=a        " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline     " highlight current cursorline
set ttyfast        " speed up scrolling in Vim
" set spell        " enable spell check (may need to download language package)
" set noswapfile   " disable creating swap file
" set backupdir=~/.cache/vim   " directory to store backup files

set splitright     " new window after vertical split will be on right
set splitbelow     " new window after horizontal split will be on bottom

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/mg979/vim-visual-multi'
" Plug 'ziglang/zig.vim'
Plug 'preservim/nerdtree'
Plug 'https://github.com/tpope/vim-fugitive'
call plug#end()

autocmd VimEnter * NERDTree   " start NERDTree at start

