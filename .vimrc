" VIM - Vi IMproved 7.4 (2013 Aug 10, compiled Feb  4 2017 00:48:24)
" Included patches: 1-898, 8056
" Compiled by root@apple.com

" General
set nocompatible
"set cmdheight=2
set directory=~/tmp,.,/var/tmp,/tmp
set number
set ruler
set showcmd
set incsearch
set noignorecase
set hlsearch
set mouse=a
syntax on
filetype plugin indent on
set autowrite
set autoread
set spell
set cursorline
set shortmess=I

" Folding
set foldmethod=indent

" Format
set textwidth=79
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
"set wrap

" Mappings
nnoremap <F12> :set number!<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>
"nnoremap <C-S-L> 'dd
" complete task
let @x='03lrx'
nnoremap <C-X> @x
