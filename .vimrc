runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  execute pathogen#infect('~/.vimbundles/{}')
endif

syntax on
filetype plugin indent on


set nocompatible
set showcmd

set expandtab
set smarttab

set shiftwidth=2
set softtabstop=2

set number

set ignorecase
set smartcase

inoremap jj <Esc>
nnoremap JJJJ <Nop>

set incsearch
set hlsearch

set nohidden

highlight MatchParen ctermbg=4

set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

map N Nzz
map n nzz

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

set guifont=Monaco:h16
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
