let mapleader = "\<Space>"

" Use ; for commands
nnoremap ; :

" Quickly edit/reload init.vim file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Move code blocks
vnoremap < <gv
vnoremap > >gv

" <ESC> exits in terminal mode
tnoremap <Esc> <C-\><C-n>

" Copy & Paste to System clipboard with <Space>p and <Space>y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" <Space>o to open a file
nnoremap <Leader>o :Files<CR>

" <Space>w to save
nnoremap <Leader>w :w<CR>
