set tabstop=4
set shiftwidth=4
set softtabstop=4

set splitbelow
set splitright

set number
set scrolloff=7
set nowrap

let mapleader = ','
let maplocalleader = ','

let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'zathura'
let g:tex_flavor = 'latex'

let g:UltiSnipsExpandTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger="<c-z>"
let g:UltiSnipsJumpBackwardTrigger="<c-x>"

"Enable shortcuts for copy/past to clipboard
nnoremap <leader>v "+p
vnoremap <leader>c "+y
vnoremap <leader>x "+x

inoremap <C-f> <ESC>
vnoremap <C-f> <ESC>
onoremap <C-f> <ESC>
cnoremap <C-f> <C-c><ESC>

noremap <C-s> <ESC>:w<CR>
noremap! <C-s> <ESC>:w<CR>

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <leader>ev :split $MYVIMRC<CR>

"""""""""""""""""""""""""
""""    vim-plug     """"
"""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'majutsushi/tagbar'
Plug 'lervag/vimtex'
Plug 'chriskempson/base16-vim'
Plug 'w0rp/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'Valloric/YouCompleteMe'

call plug#end()

let base16colorspace=256
colorscheme base16-atelier-dune
