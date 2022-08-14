syntax enable

filetype on
filetype indent on

let mapleader=" "

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=75

set path+=**
set nocompatible
set cursorline 
set colorcolumn=80,120
set nowrap
set number relativenumber
set splitbelow splitright
set shiftwidth=4 tabstop=4 softtabstop=4
set expandtab autoindent
set showmatch showcmd
set noshowmode
set ignorecase smartcase
set incsearch hlsearch
set wildmenu wildmode=list,longest,full
set history=1000
set nobackup
set clipboard=unnamedplus

nnoremap <SPACE> <Nop>
nnoremap <Leader>/ :nohlsearch<CR>

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'townk/vim-autoclose'
call plug#end()
