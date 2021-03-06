
" Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nonius/cargo.vim'
Plugin 'rust-lang/rust.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/syntastic'

Plugin 'airblade/vim-gitgutter'
Plugin 'https://github.com/leafgarland/typescript-vim'
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" End vundle stuff

set autoindent
set backspace=indent,eol,start
set cmdheight=3
set expandtab
set helpheight=999
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mousefocus
set number
set report=0
set shiftround
set shortmess=AI
set smartcase
set smarttab
set statusline=%(%w%q%y\ %)%f%(\ %m%)%=%p%%\ l:%5l/%-5L\ c:%3c
set shiftwidth=2
set noswapfile
set tabstop=2

cabbr <expr> %% expand('%:p:h')

filetype on
filetype plugin on
filetype indent on

syntax on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_rust_checkers = ['cargo']

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set background=dark
let g:indent_guides_enable_on_vim_startup = 1

augroup BufferOptions
  au BufNewFile,BufRead *.py set nocin
augroup END

filetype plugin indent on
