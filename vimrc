filetype off
filetype plugin indent on

set nocompatible

call pathogen#infect()

" Security
set modelines=0

" Tabs/spaces
set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab

" Basic options
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2 " always

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

" Use the same symbols as TextMate for tabstops and EOLs
set nolist
set listchars=tab:▸\ ,eol:¬

" Color scheme (Terminal)
syntax on
set background=dark
colorscheme herald

" NERD Tree
map <F5> :NERDTreeToggle<cr>
let NERDTreeIgnore = ['\~$', '.OB$', '.gz$', '.vim$']
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 0

" Various syntax stuff
let cobol_legacy_code = 1
au BufNewFile,BufRead *.C    set filetype=cobol
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.rake set filetype=ruby
au BufNewFile,BufRead *.sql  set filetype=mysql

" Toggle unprintable characters
map <leader>l :set list!<cr>

" Toggle line numbers
map <leader>n :set number!<cr>

" Remove object
map <leader>o :!rm -f %.OB<cr>

" Clean whitespace
map <leader>w :%s/\s\+$//<cr>:let @/=''<cr>

" Ruby on Rails
let rails_menu = 2
map <leader>m :Rmodel<cr>
map <leader>v :Rview<space>
map <leader>c :Rcontroller<cr>
map <leader>h :Rhelper<cr>
map <leader>e :Renvironment<cr>
map <leader>vf :Rview _form<cr>
map <leader>ve :Rview edit<cr>
map <leader>vi :Rview index<cr>
map <leader>vn :Rview new<cr>
map <leader>vs :Rview show<cr>

" Edit vimrc
nmap <leader>ev <C-w>s<C-w>j<C-w>L:e $MYVIMRC<cr>
