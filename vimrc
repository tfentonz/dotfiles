filetype off
filetype plugin indent on

set nocompatible

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
set statusline=2

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

" Use the same symbols as TextMate for EOLs
set listchars=eol:�

" Color scheme (terminal)
syntax on
set background=dark
colorscheme herald

" NERD tree
map <F5> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\~$', '.OB$', '.gz$', '.vim$']
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 0

" Various syntax stuff
au BufNewFile,BufRead *.C    set filetype=cobol
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.rake set filetype=ruby
au BufNewFile,BufRead *.sql  set filetype=mysql

" Ruby on Rails
map <leader>m  :Rmodel<cr>
map <leader>vf :Rview _form<cr>
map <leader>ve :Rview edit<cr>
map <leader>vi :Rview index<cr>
map <leader>vn :Rview new<cr>
map <leader>vs :Rview show<cr>
map <leader>c  :Rcontroller<cr>

" Toggle unprintable characters
map <leader>l :set list!<cr>

" Toggle line numbers
map <leader>n :set number!<cr>

" Remove object
map <leader>o :!rm -f %.OB<cr>

" Split window
map <leader>s <C-w>v<C-w>l

" Clean whitespace
map <leader>w :%s/\s\+$//<cr>:let @/=''<cr>

" Rails
let rails_menu = 2
map <leader>m :Rmodel<cr>
map <leader>v :Rview<cr>
map <leader>c :Rcontroller<cr>
map <leader>h :Rhelper<cr>
map <leader>e :Renvironment<cr>
map <leader>vf :Rview _form<cr>
map <leader>ve :Rview edit<cr>
map <leader>vi :Rview index<cr>
map <leader>vn :Rview new<cr>
map <leader>vs :Rview show<cr>

" Edit .vimrc
nmap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
