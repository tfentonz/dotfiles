set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'powerline/powerline', { 'rtp': 'powerline/bindings/vim' }
Plugin 'kien/ctrlp.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kchmck/vim-coffee-script'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-fugitive'
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
set noshowmode
set showcmd
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2 " always show statusline
set relativenumber

" Use 256 colors
set t_Co=256

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
map <leader>n :set relativenumber!<cr>

" Toggle paste mode
map <leader>p :set paste!<cr>

" Remove object
map <leader>o :!rm -f %.OB<cr>

" Clean whitespace
map <leader>w :%s/\s\+$//<cr>:let @/=''<cr>

" Replace Ruby 1.8 hash syntax
map <leader>s :%s/\([^:]\):\(\w\w*\)\s*=>\s*/\1\2: /g<cr>

" CtrlP
if exists('g:loaded_ctrlp')
  let g:ctrlp_custom_ignore = { 'dir': 'db/sphinx\|node_modules\|vendor/cache' }
  let g:ctrlp_working_path_mode = 'a'
endif

" NERD Tree
if exists('loaded_nerd_tree')
  map <F5> :NERDTreeToggle<cr>
  let NERDTreeIgnore = ['\~$', '.OB$', '.gz$', '.vim$']
  let NERDTreeQuitOnOpen = 1
  let NERDTreeShowHidden = 0
endif

" Syntastic
if exists('g:loaded_syntastic_plugin')
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_javascript_checkers = ['jshint']
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
endif

" Ruby on Rails
if exists('g:loaded_rails')
  let rails_menu = 2
  map <leader>m :Emodel<cr>
  map <leader>v :Eview<space>
  map <leader>c :Econtroller<cr>
  map <leader>h :Ehelper<cr>
  map <leader>e :Eenvironment<cr>
  map <leader>vf :Eview _form<cr>
  map <leader>ve :Eview edit<cr>
  map <leader>vi :Eview index<cr>
  map <leader>vn :Eview new<cr>
  map <leader>vs :Eview show<cr>
endif

" Edit vimrc
nmap <leader>ev <C-w>s<C-w>j<C-w>L:e $MYVIMRC<cr>
