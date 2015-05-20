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
" Plugin 'scrooloose/nerdtree'        " file browser
Plugin 'vim-scripts/simple-pairs'   " auto-pairs (for brackets etc)
Plugin 'majutsushi/tagbar'          " shows classes and functions
Plugin 'scrooloose/nerdcommenter'   " support for comment blocks
Plugin 'lervag/vimtex'              " Latex plugin
Plugin 'vim-scripts/c.vim'          " C++ plugin
Plugin 'ervandew/eclim'             " eclipse for vim, Java support
Plugin 'bling/vim-airline'          " cool looking statusbar #bling

" vim-snipmate with dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'

" Colorschemes etc
Plugin 'altercation/vim-colors-solarized'
Plugin 'andrwb/vim-lapis256'
Plugin 'vim-scripts/Liquid-Carbon'

" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set omnifunc=syntaxcomplete#Complete    " enables omni completion
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

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
