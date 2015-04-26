" =================================
" VIM Configuration
" =================================

" Make sure everything works like we think it will
set nocompatible


" Turn off annoying beeps and bells
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif


" Setup Pathogen to manage your plugins
filetype off
filetype plugin indent off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on


" Colorscheme
syntax on
set t_Co=256
set background=dark
colorscheme solarized
set lines=50 columns=150


" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed


" Mouse and backspace
set mouse=a
set bs=2


" Rebind <Leader> key
let mapleader = ","


" Remap ctrl-s to save
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>


" Bind nohl
" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>


" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows


" Bind Ctrl+<movement> keys to move around windows,
" instead of using Ctrl+w + <movement>
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h


" easier movement between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" Quickly edit/reload vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" map sort function to a key
noremap <Leader>s :sort<CR>


" easier moving of code blocks
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" Showing line numbers and length
set number   " show line numbers
set tw=79    " width of document
set nowrap   " don't automatically wrap on load
set fo-=t    " don't automatically wrap text when typing
set colorcolumn=80
set autoindent
set copyindent
set relativenumber


" Useful settings
set history=700
set undolevels=700


" Use tabs not spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile


" Map jj to the esc key
imap jj <Esc>


" Change <F1> to <ESC> so help won't show up
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>


" Use semi-colon instead of colon for commands
nnoremap ; :


" Map a key to remove all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>


" =========================
" Plugins to Download
" ========================
"
" Pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
"
" Download all vim addons into ~/.vim/bundle and then call
" execute pathogen#infect()
"
" Ctrlp
" https://github.com/kien/ctrlp.vim
"
" Fugitive
" https://github.com/tpope/fugitive
"
" Syntastic
" https://github.com/scrooloose/syntastic
"
" Solarized Vim
" https://github.com/altercation/vim-colors-solarized

" Settings for ctrlp
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 'a'
set wildignore+=*.pyc


" Settings for syntastic
let g:syntastic_mode_map = { 'mode': 'active',
        \ 'active_filetypes': [],
        \ 'passive_filetypes': [] }
let g:syntastic_python_checkers = ['flake8']
