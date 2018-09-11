" dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " Required
  call dein#end()
  call dein#save_state()
endif

" Required
filetype plugin indent on
syntax enable

" Install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" End dein Scripts-------------------------

let mapleader = ","

" Show line numbers relatively
set number
set relativenumber

" Share clipboard
set clipboard=unnamed

" Quickly edit/reload init.vim file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Bind Ctrl+<movement> keys to move around windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" Movement between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Move code blocks 
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


