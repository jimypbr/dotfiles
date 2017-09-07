

" This must be first, because it changes other options as a side
" effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
"" call pathogen#helptags()
"" call pathogen#runtime_append_all_bundles()
execute pathogen#infect()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Behavior
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Hide buffers instead of closing them
set hidden

set wrap          " wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "   case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "   shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set magic
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set so=7
set lazyredraw

" no backup files!
set nobackup
set noswapfile

" Set to auto read when a file is changed from the outside
set autoread

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

set cmdheight=2 "The commandbar height

set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File type plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
autocmd filetype python set expandtab
autocmd filetype fortran set expandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Scheme / syntax highlighting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Obviously insert
source ~/.vim/obv/obviously-insert.vim

" Fortran Syntax
let fortran_free_source=1
let fortran_fold=1
let fortran_fold_conditionals=1
let fortran_fold_multilinecomments=1
let fortran_more_precise=1

if &t_Co >= 256 || has("gui_running")
	syntax on
	"""set background=dark
	"""colorscheme solarized
endif

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pasting in vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set pastetoggle=<F2>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Efficient shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

nnoremap j gj
nnoremap k gk

" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" clear highlighted searches by pressing ,/
nmap <silent> ,/ :nohlsearch<CR>

" Haskell GHC stuff
" This assumes that ghc is in your path, if it is not, or you
" wish to use a specific version of ghc, then please change
" the ghc below to a full path to the correct one
au BufEnter *.hs compiler ghc

" For this section both of these should be set to your
" browser and ghc of choice, I used the following
" two vim lines to get those paths:
" :r!which google-chrome
" :r!which ghc
let g:haddock_browser = "/usr/bin/google-chrome"
let g:ghc = "/usr/bin/ghc"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vim_runtime/vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" fast escaping
imap fd <Esc>


