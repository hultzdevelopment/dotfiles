" Enable syntax highlighting
syntax on

" Fixes backspace
set backspace=indent,eol,start

" Enable line/column info at bottom
set ruler

set scrolloff=10

" Autoindentation
set ai
filetype indent plugin on

" Copies using system clipboard
set clipboard+=unnamedplus

" Tabs instead of spaces, indent config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab

" Show line numbers relatively
set number
set relativenumber

" Ripgrep for search
if executable('rg')
  set grepprg=rg\ -i\ --vimgrep

  " Ripgrep on /
  command! -nargs=+ -complete=file -bar Rg silent! grep! <args>|cwindow|redraw!
  nnoremap <leader>/ :Rg<SPACE>
endif

