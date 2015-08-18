set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tfentonz/vim-magiq'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'

call vundle#end()

filetype plugin indent on

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

" Disable automatic insert of the current comment leader
autocmd FileType * setlocal formatoptions-=r

" Don't give the intro message when starting Vim
set shortmess+=I

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

" Substitute YYYYMMDD date with current date
map <leader>d :s/\d\{8\}/\=strftime('%Y%m%d')/<cr>

" Toggle unprintable characters
map <leader>l :set list!<cr>

" Toggle line numbers
map <leader>n :set number!<cr>

" Toggle paste mode
map <leader>p :set paste!<cr>

" Remove object
map <leader>o :!rm -f %.OB<cr>

" Clean whitespace
map <leader>w :%s/\s\+$//<cr>:let @/=''<cr>

" CtrlP
let g:ctrlp_custom_ignore = { 'dir': 'db/sphinx\|node_modules\|vendor/cache' }
let g:ctrlp_working_path_mode = 'a'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
