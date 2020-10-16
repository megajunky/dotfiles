set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set splitbelow
set splitright

set relativenumber number
set scrolloff=4
set nowrap
set nohls

set list

set path+=**

let mapleader = ','
let maplocalleader = ','

let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'zathura'
let g:tex_flavor = 'latex'

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:ale_cache_executable_check_failures = 1

"Change fieltype for .asm files to nasm
autocmd BufNewFile,BufRead *.asm set filetype=nasm

nnoremap <leader>a :ALEToggle<CR>

nnoremap ; :

"Enable shortcuts for copy/past to clipboard
nnoremap <leader>p "+p
vnoremap <leader>y "+y
vnoremap <leader>x "+x

"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

vnoremap <C-f> <ESC>
onoremap <C-f> <ESC>
cnoremap <C-f> <C-c><ESC>

noremap <C-s> <ESC>:w<CR>
noremap! <C-s> <ESC>:w<CR>

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>rv :so $MYVIMRC<CR>


"""""""""""""""""""""""""
""""    vim-plug     """"
"""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'majutsushi/tagbar'
Plug 'tpope/vim-repeat'
"Plug 'jmcantrell/vim-virtualenv'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'christoomey/vim-sort-motion'
Plug 'lervag/vimtex'
Plug 'chriskempson/base16-vim'
Plug 'w0rp/ale', { 'on': 'ALEToggle' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'Valloric/YouCompleteMe'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()

"let base16colorspace=256
"colorscheme base16-atelier-dune
colorscheme onehalfdark
