" Some basics:
let mapleader =","
let maplocalleader =","

nnoremap c "_c
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set printencoding=utf-8
set printoptions=paper:a4
set number
set relativenumber

set nowrap

" vim-plug
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
    echo "Downloading junegunn/vim-plug to manage plugins..."
    silent !mkdir -p ~/.config/nvim/autoload/
    silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'lervag/vimtex'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ludovicchabant/vim-gutentags'

call plug#end()

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-v>"

" Vimtex
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'zathura'
let g:tex_flavor = 'latex'

" Folding
set foldcolumn=1

" Diff config
set diffopt+=vertical

" Scroll
set scrolloff=5

" Highlight Linelength
highlight ColorColumn ctermbg=gray
call matchadd('ColorColumn', '\%81v', 100)

" Show hiden Characters
set listchars=tab:――»,trail:·
set list

" Enable autocompletion:
set wildmode=longest,list,full

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

" Reload and Edit VIMRC
nnoremap <leader>rv :so $MYVIMRC<CR>
nnoremap <leader>ev :sp $MYVIMRC<CR>

" Colors
set background=dark
"colorscheme base16_default-dark

" Get syntax
syntax on

" Sane split
set splitbelow
set splitright

" Nerd tree
map <leader>n :NERDTreeToggle<CR>

" Tabs
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

" Proper search
set incsearch
set ignorecase
set smartcase
set gdefault
set nohls

"Keybindings

" Shortcutting split navigation, saving a keypress:
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

map H ^
map L $

"nnoremap : ;
nnoremap ; :

" Disable Arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <right> <nop>
inoremap <left> <nop>

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
vnoremap <leader>y "+y
nnoremap <leader>p "+P

