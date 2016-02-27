" ======================
" VIM Configuration
" ======================

" Make sure everything works like we think it will
set nocompatible

" Setup Pathogen to manage all plugins
filetype plugin indent off

if has("gui_running")
    call pathogen#infect()
    call pathogen#helptags()
endif

" Use semi-colon instead of colon for commands
nnoremap ; :

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed


" Mouse and backspace
set mouse=a
set bs=2


" Userful settings
set history=700
set undolevels=700


" Diable backup and swap files
set nobackup
set nowritebackup
set noswapfile
