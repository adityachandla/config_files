
" set the runtime path to include Vundle and initialize
set encoding=utf-8
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'fatih/vim-go'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ycm-core/YouCompleteMe'
Plug 'bfrg/vim-cpp-modern'
Plug 'morhetz/gruvbox'

call plug#end()            " required

filetype plugin indent on    " required

set background=dark
colorscheme gruvbox
"set path+=**
syntax enable
set ruler
set hidden
set smartindent
set termguicolors
set wildmenu

packadd termdebug

"" My leader
nnoremap <SPACE> <Nop>
let mapleader=" "

""Fuzzy finder
nnoremap <tab> :GFiles<CR>

"" Nerdtree maping
map <leader>o :NERDTreeToggle<CR>

"" Indent with selection
vnoremap < <gv
vnoremap > >gv 

"" Remap escape
:inoremap jj <esc>

"" Shadow files disabled
set nobackup
set nowritebackup
set noswapfile

"" Use system clipboard 
set clipboard=unnamedplus
set t_Co=256

"Tab
set tabstop=4
set shiftwidth=4
set expandtab


"" Set previous word to uppercase in insert mode
:inoremap <c-u> <esc>vbUEa

"" Right indent
:noremap <leader>l 5<c-w>>
:noremap <leader>h 5<c-w><

" We also have cnoremap for mapping stuff in command mode
"
" Abbreviations
:iabbrev adn and

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

set exrc
set secure
