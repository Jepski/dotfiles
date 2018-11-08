set number
set relativenumber
set encoding=utf-8
set showmatch
set showtabline=2
set cursorline

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
Plugin 'python-mode/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'lifepillar/vim-solarized8'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'chriskempson/base16-vim'
Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'nvie/vim-flake8'
" Plugin 'tell-k/vim-autopep8'

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
let g:pymode_syntax_highlight_self = 1
let g:pymode_warnings = 1
let g:pymode_options_colorcolumn = 1
let g:pymode_indent = 1
let g:pymode_motion = 1
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_ignore = ['E501']
let g:pymode_rope_completion = 1
let g:pymode_rope_completion_bind = '<C-Space>'
syntax on

" Configure NERDtre
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
" autocmd vimenter * NERDTree
nmap <C-a> :NERDTreeToggle<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

" Color scheme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" VIM window splitting
set splitbelow
set splitright

" Press F5 to run python script in VIM
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

let g:gitgutter_max_signs = 1000

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set noshowmode
" Status line commands and setup
"function! GitBranch()
   "return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"endfunction

"" STATUS LINE CONFIGURATION
"function! StatuslineGit()
"  let l:branchname = GitBranch()
"  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction
"
"set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=%{StatuslineGit()}
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m\
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c
"set statusline+=\ 
"set laststatus=2
"
"
