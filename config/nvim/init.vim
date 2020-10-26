" Nvim is always nocompatible

filetype off

" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'

Plug 'vimwiki/vimwiki'

" Initialize plugin system
call plug#end()

" Enable loading the plugin files and the indent file for specific file types
filetype plugin indent on

" Tabs/spaces
set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab

" Basic options
set encoding=utf-8
set scrolloff=3
set autoindent
set noshowmode
set showcmd
set visualbell
set ruler
set backspace=indent,eol,start
set laststatus=2 " always show statusline
set relativenumber

" Leader
let mapleader = ","

" Searching
set ignorecase
set smartcase
set showmatch
set hlsearch
map <leader><space> :noh<cr>
nmap <tab> %
vmap <tab> %

" No arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set nolist
set listchars=tab:▸\ ,eol:¬

" Color scheme (Terminal)
syntax on
set background=dark
colorscheme gruvbox

" Don't give the intro message when starting Vim
set shortmess+=I

" Toggle unprintable characters
map <leader>l :set list!<cr>

" Toggle line numbers
map <leader>n :set relativenumber!<cr>

" Toggle paste mode
map <leader>p :set paste!<cr>
