set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Fennekki recommends
Plugin 'scrooloose/syntastic'       " syntax support
Plugin 'tpope/vim-vinegar'          " enchances netrw (no need for NERDTree)
Plugin 'tpope/vim-sleuth'           " checks file for tab settings etc
Plugin 'Valloric/YouCompleteMe'     " auto-completion

" My own set
Plugin 'fholgado/minibufexpl.vim'   " "tab" support
Plugin 'wincent/Command-T'          " improves file searches
Plugin 'tpope/vim-fugitive'         " git support
Plugin 'Raimondi/delimitMate'   " auto-pairs (for brackets etc)
Plugin 'majutsushi/tagbar'          " shows classes and functions
Plugin 'scrooloose/nerdcommenter'   " support for comment blocks
Plugin 'lervag/vimtex'              " Latex plugin
Plugin 'vim-scripts/c.vim'          " C++ plugin
Plugin 'bling/vim-airline'          " cool looking statusbar #bling
Plugin 'neilagabriel/vim-geeknote'  " Geeknote integration
Plugin 'tfnico/vim-gradle'          " gradle integration
Plugin 'SirVer/ultisnips'           " code snippets
Plugin 'honza/vim-snippets'         " code snippets
Plugin 'airblade/vim-rooter'        " sets working directory to project root

" Colorschemes etc
Plugin 'altercation/vim-colors-solarized'
Plugin 'andrwb/vim-lapis256'
Plugin 'vim-scripts/Liquid-Carbon'




" Ultisnips conf
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" set omnifunc=syntaxcomplete#Complete    " enables omni completion

set t_Co=256                " enable 256-color mode.
syntax enable               " enable syntax highlighting (previously syntax on).
colorscheme lapis256        " set colorscheme
set background=dark         " ensure dark background
set number                  " show line numbers
set laststatus=2            " last window always has a statusline
set nohlsearch              " Don't continue to highlight searched phrases.
set incsearch               " But do highlight as you type your search.
set ignorecase              " Make searches case-insensitive.
set ruler                   " Always show info along bottom.
set autoindent              " auto-indent
set tabstop=4               " tab spacing
set softtabstop=4           " unify
set shiftwidth=4            " indent/outdent by 4 columns
set shiftround              " always indent/outdent to the nearest tabstop
set expandtab               " use spaces instead of tabs
set smarttab                " use tabs at the start of a line, spaces elsewhere
set nowrap                  " don't wrap text
set colorcolumn=80          " Shows a "margin" at 80 chars
