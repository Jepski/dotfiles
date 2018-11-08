set number
set relativenumber
set encoding=utf-8
set showmatch
set showtabline=1

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

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'
Plugin 'python-mode/python-mode'
" Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
" Plugin 'tell-k/vim-autopep8'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'lifepillar/vim-solarized8'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'chriskempson/base16-vim'
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Configure YouCompleteMe
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Configre python-mode
let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_syntax_all = 1
let g:pymode_warnings = 0
syntax on
"# Configure NERDtre
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" autocmd vimenter * NERDTree
nmap <C-a> :NERDTreeToggle<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

" Color scheme
" let g:base16_shell_path=base16-builder/output/shell/
" let base16colorspace=256
"set t_Co=256
"set background=dark
"colorscheme base16-solarized-vim 
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Syntax highlighting
" syntax on
"let g:python_highlight_all = 1

" VIM window splitting
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Python specific parameters
" au BufNewFile,BufRead *.py
"    \ set tabstop=4 |
"    \ set softtabstop=4 |
"    \ set shiftwidth=4 |
"    \ set textwidth
"    \ set expandtab |
"    \ set autoindent |
"    \ set fileformat=unix

" Press F5 to run python script in VIM
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

let g:gitgutter_max_signs = 1000

" Status line commands and setup
function! GitBranch()
   return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

" STATUS LINE CONFIGURATION
function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
set laststatus=2


