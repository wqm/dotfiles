call plug#begin('~/.vim/plugged')

" Colorschemes
"Plug 'captbaritone/molokai'
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'
Plug 'altercation/vim-colors-solarized'
Plug 'ajh17/spacegray.vim'
Plug 'jpo/vim-railscasts-theme'
Plug 'chriskempson/tomorrow-theme'

" Syntax
Plug 'tpope/vim-git', { 'for': 'git' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'qrps/lilypond-vim', { 'for': 'lilypond' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'mxw/vim-jsx'

" Make tab handle all completions
Plug 'ervandew/supertab'

" Syntastic: Code linting errors
Plug 'scrooloose/syntastic'

" Pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'

" Fancy statusline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy file opener
Plug 'ctrlpvim/ctrlp.vim'

" Function look-up
Plug 'tacahiroy/ctrlp-funky'

" Open from quick-fix-list in new split
Plug 'yssl/QFEnter'

" Respect .editorconfig files. (http://editorconfig.org/)
Plug 'editorconfig/editorconfig-vim'

" Search files using Silver Searcher
Plug 'rking/ag.vim'

" Make Ag searches of selected text
Plug 'Chun-Yang/vim-action-ag'

" Rename/remove files from within vim
Plug 'tpope/vim-eunuch'

" Make commenting easier
Plug 'tpope/vim-commentary'

" Navigate files in a sidebar
Plug 'scrooloose/nerdtree'

" CamelCase motions through words
Plug 'bkad/CamelCaseMotion'

" Split and join lines of code intelligently
Plug 'AndrewRadev/splitjoin.vim'

" Only show cursorline in the current window
Plug 'vim-scripts/CursorLineCurrentWindow'

" Split navigation that works with tmux
Plug 'christoomey/vim-tmux-navigator'

" Change brackets and quotes
Plug 'tpope/vim-surround'

" Make vim-surround repeatable with .
Plug 'tpope/vim-repeat'

" This plugin allows me to close and delete any open buffers which are not active in a tab.
" !Wipeout
Plug 'artnez/vim-wipeout'


Plug 'majutsushi/tagbar'
Plug 'chazy/cscope_maps'

" Custom motions

" Indent object
Plug 'michaeljsmith/vim-indent-object'
" Camel Case object
Plug 'bkad/CamelCaseMotion'
"
" Argument object
Plug 'vim-scripts/argtextobj.vim'

" Fugitive: Git from within Vim
Plug 'tpope/vim-fugitive'

" Show git status in the gutter
Plug 'airblade/vim-gitgutter'

" Run Python tests in tmux splits
" Plug 'captbaritone/projects/vim-vigilant', { 'for': 'python' }
Plug '~/projects/vim-vigilant', { 'for': 'python' }
Plug 'benmills/vimux', { 'for': ['python', 'javascript'] }

" Python completion and tag navigation
Plug 'davidhalter/jedi-vim', { 'for': 'python' }

" Wrap and upwrap argument lists
Plug 'FooSoft/vim-argwrap'

" Take notes and keep todo lists in vim
Plug 'vimwiki/vimwiki'

" 'Vastly improved Javascript indentation and syntax support in Vim'
Plug 'pangloss/vim-javascript'

" Visualize undo tree
Plug 'mbbill/undotree'

" YouCompleteMe
"Plug 'Valloric/YouCompleteMe'

filetype plugin indent on                   " required!
call plug#end()

" change the leader
let mapleader=","

" ciw to cut the whole word under cursor
" viw to visually highlight the whole word under cursor
" yiw to copy the whole word under cursor
" diw to delete the while word under cursor

" copy to and paste from global buffer
set clipboard=unnamed

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" ignore case when searching
set ignorecase

" highlight matched search pattern
set hlsearch

" hilight while typing search
set incsearch

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" ALT + arrow key to move cursor around different windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" tab configuration
" > to shift to right or < to shift to left, . to repeat shift
set tabstop=4
set expandtab
set shiftwidth=4

" enable line number
set number

" enable syntax
syntax enable

" set color scheme
colorscheme railscasts

if &diff
    colorscheme solarized
endif

" airline theme and show git information by default
let g:airline_theme='base16_monokai'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Ctrl+Tab to select the next tab.
nnoremap <silent> <C-tab>   :bnext<CR>
"Ctrl+Shift+Tab to select the previous tab
nnoremap <silent> <C-S-tab> :bprevious<CR>

" ctrlp funky setting
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

nnoremap <leader>a :Ag!<CR>
let g:ag_highlight=1

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Set font and size
set guifont=Menlo\ Regular:h13

" Ignore compiled files
set wildignore=*.o,*~,tags,1
