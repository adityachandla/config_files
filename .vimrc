set nocompatible              " be iMproved, required
filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'lervag/vimtex'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'Kranex/vim-rascal-syntax'

call vundle#end()            " required
filetype plugin indent on    " required

set background=dark
colorscheme molokai
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
nnoremap <tab> :Files<CR>

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

"For latex
"let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'evince'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_compiler_method = 'latexrun'
:vnoremap <leader>t xi\text{}<Esc>hp

"" Set previous word to uppercase in insert mode
:inoremap <c-u> <esc>vbUEa

"" Right indent
:noremap <leader>l 5<c-w>>
:noremap <leader>h 5<c-w><

" We also have cnoremap for mapping stuff in command mode
"
" Abbreviations
:iabbrev adn and

"" ALE 
" let $JAVA_TOOL_OPTIONS = '-javaagent:~/.m2/repository/org/projectlombok/lombok/1.18.6/lombok-1.18.6.jar'
" let g:ale_java_javac_executable = "javac -cp ~/.m2/repository/org/projectlombok/lombok/1.18.6/lombok-1.18.6.jar"
"
"Rascal file extension
autocmd BufRead,BufNewFile *.rsc set filetype=rascal

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
