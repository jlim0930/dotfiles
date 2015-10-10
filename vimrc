" Justin Lim <justin@isthecoolest.ninja> github.com/jlim0930
"
"  COLORS
syntax on                          " enable sytanx processing
colorscheme desert                 " using badwolf color scheme
set background=dark                
"
" STUFF
set ttyfast                         " faster redraw
set backspace=indent,eol,start
set ffs=unix,dos,mac                " use UNIX as the standard file type
set encoding=utf8
set noerrorbells                    " turn off annoying sound on error
set history=1000
set laststatus=2
"
" SPACES & TABS
set smarttab
set tabstop=2                       " use 2 spaces as tab
set expandtab
set softtabstop=2
set shiftwidth=2
set modelines=1
filetype indent on
filetype plugin on
set autoindent
set smartindent                     " use smart indent
"
" UI STUFF
set number                          " show line numbers to turn off :set nonumber
set showcmd                         " show command in bottom bar
set nocursorline                    " highlight current line
set wildmenu
set showmatch                       " highlight matching parenthesis
set ruler                           " show me a ruler
set wrap                            " wrap lines
"
" SEARCH STUFF
set hlsearch                        " highlight matching search results
set ignorecase                      " ignore case when searching
set incsearch                       " search as characters are entered
set smartcase                       " be smart about cases when searching
"
" FOLDING
" set foldmethod=indent               " fold based on indent level
" set foldnestmax=10                  " max 10 depth on folds
" set foldenable                      " dont fold files by default on open
" nnoremap <space> za
" set foldlevelstart=10               " star twith fold level of 1
