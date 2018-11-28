set shell=/bin/bash
set number
set relativenumber
set encoding=utf-8
set showmatch
set showtabline=2
set cursorline
set scrolloff=5

set hlsearch
set incsearch
set ignorecase
set smartcase

inoremap § <ESC>
set nocompatible              " required for Vundle
filetype off                  " required for Vundle

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kh3phr3n/python-syntax'
Plugin 'fisadev/vim-isort'
Plugin 'tell-k/vim-autopep8'
Plugin 'lifepillar/vim-solarized8'
Plugin 'vim-airline/vim-airline'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:vim_isort_map = '<C-i>'
let g:vim_isort_python_version = 'python3'

" Configure YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Configure python
let python_highlight_all = 1
syntax on

" Configure NERDtre
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" autocmd vimenter * NERDTree
nmap <C-a> :NERDTreeToggle<CR>

" Configure NERDcommenter
let g:NERDSpaceDelims = 1
" TagBar
nmap <F8> :TagbarToggle<CR>

" Color scheme
set background=dark
colorscheme solarized8

" VIM window splitting
set splitbelow
set splitright

" Press F5 to run python script in VIM
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

set laststatus=2
set noshowmode
let mapleader = ","
