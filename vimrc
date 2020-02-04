set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'elzr/vim-json'
call vundle#end()            " required

filetype plugin indent on    " required

syntax on
" colorscheme desert
" colorscheme pablo

set tabstop=4
set shiftwidth=4
set expandtab

set incsearch
set hlsearch

set t_Co=256

" Airline theme
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='simple'
" let g:airline_powerline_fonts = 1

"" Multi cursor
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

map <C-j> <Esc>:bp<CR>
map <C-k> <Esc>:bn<CR>


execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
nnoremap <M-j> j
nnoremap <M-k> k
map <M-j> <Esc>:tabprev<CR>
map <M-k> <Esc>:tabNext<CR>

" Autowrite to save on complile from vim
set autowrite

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

if &diff
  colorscheme blue
endif
