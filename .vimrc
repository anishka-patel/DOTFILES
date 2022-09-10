syntax enable

filetype on
filetype indent on

" Setting mapleader to SPC
let mapleader=" "

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=75

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee %> /dev/null' <bar> edit!

set ruler " Always show current position
set cmdheight=1
set hidden

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set path+=**
set nocompatible
set cursorline 
set colorcolumn=80,120
set foldcolumn=1
set nowrap
set number relativenumber
set splitbelow splitright
set shiftwidth=4 tabstop=4 softtabstop=4
set expandtab autoindent smartindent
set showmatch showcmd
set noshowmode
set ignorecase smartcase                " Ignore case when searching
set incsearch hlsearch                  " Highlight search results
set wildmenu wildmode=list,longest,full " Turn on the wildmenu
set history=1000
set nobackup nowb noswapfile
set clipboard=unnamedplus
set lazyredraw                          " Don't redraw while executing macros (good performance config)

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set encoding=utf8

nnoremap <SPACE> <Nop>
nnoremap <Leader>/ :nohlsearch<CR>

map <leader>bd :Bclose<cr>:tabclose<cr>gT
map <leader>ba :bufdo bd<cr>
map <leader>bn :bnext<cr>
map <leader>bp :bprevious<cr>
map <leader>bq :e ~/buffer<cr>
map <leader>bx :e ~/buffer.md<cr>

map <leader>e  :Lexplore 20<cr>

map <leader>fs : w!<cr>

map <leader>h  :nohl<cr>

map <leader>tN :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tn :tabnext
map <leader>tp :tabprev
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/
map <leader>cd :cd %:p:h<cr>:pwd<cr>

map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

map <leader>pp :setlocal paste!<cr>
map <leader>q  :q<cr>


try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', {'name':'dracula'}
Plug 'townk/vim-autoclose'
call plug#end()

colorscheme dracula
