" =================================
" VIM Configuration
" =================================

" Automatic reloading of .vimrc
autocmd BufWritePost .vimrc source %


" Setup Pathogen to manage your plugins
filetype off
filetype plugin indent off

call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on


" Colorscheme
syntax enable
set background=dark
colorscheme solarized
set t_Co=256
let g:solarized_termcolors=256


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


" Bind Ctrl+<movement> keys to move around windows, instead of using Ctrl+w + <movement>
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h


" easier movement between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


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
" highlight ColorColumn ctermbg=233


" Useful settings
set history=700
set undolevels=700


"Use TABs not spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


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
