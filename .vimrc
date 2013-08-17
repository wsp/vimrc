" Bootstrap Vundle
silent !if [ \! -d ~/.vim/bundle/vundle ];
      \ then git clone https://github.com/gmarik/vundle
      \ ~/.vim/bundle/vundle;
      \ fi

" Initialize Vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/VimClojure'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-unimpaired'
Bundle 'ervandew/supertab'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'corntrace/bufexplorer'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'

color koehler
filetype plugin indent on

set number         " Show line numbers
set ruler          " Show line and column number
syntax enable      " Turn on syntax highlighting
set encoding=utf-8 " Set default encoding to UTF-8

set autoindent
set nowrap                     " don't wrap lines
set tabstop=2                  " a tab is two spaces
set softtabstop=2
set shiftwidth=2               " an autoindent is two spaces
set expandtab                  " use spaces, not tabs
set list                       " show invisible characters
set backspace=indent,eol,start " backspace through everything in insert mode

set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

set hlsearch 
set incsearch
set ignorecase
set smartcase

" Perl
let perl_extended_vars=1 " highlight advanced perl vars inside strings

set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

""""""""""""""""""""""""""
" Bundle Configurations
""""""""""""""""""""""""""

" VimClojure configuration
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let vimclojure#WantNailgun = 0
" let vimclojure#NailgunClient = "/usr/local/bin/ng"

" Taglist configuration
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

" NERDTree configuration
map <leader>n :NERDTreeToggle<CR>
