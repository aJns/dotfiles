" Plugins and their settings
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

" Colorschemes etc
Plugin 'bling/vim-airline'              " cool looking statusbar #bling
Plugin 'flazz/vim-colorschemes'             " Collection of colorschemes
Plugin 'vim-scripts/CSApprox'               " Colorschemes look (about) the same in gui and term

" Generic plugins
Plugin 'scrooloose/syntastic'           " syntax support
Plugin 'tpope/vim-vinegar'              " enchances netrw (no need for NERDTree)
Plugin 'tpope/vim-sleuth'               " checks file for tab settings etc
Plugin 'tpope/vim-fugitive'             " git support
Plugin 'Raimondi/delimitMate'           " auto-pairs (for brackets etc)
Plugin 'majutsushi/tagbar'              " shows classes and functions
Plugin 'tpope/vim-commentary'           " commenting
Plugin 'mhinz/vim-startify'             " fancy startscreen
Plugin 'vim-scripts/TaskList.vim'       " Plugin for tracking todos and fixmes
Plugin 'mileszs/ack.vim'                " Use ack in vim
Plugin 'dhruvasagar/vim-table-mode'     " table mode
Plugin 'SirVer/ultisnips'               " code snippet engine
Plugin 'honza/vim-snippets'             " code snippets
Plugin 'dkprice/vim-easygrep'           " find and replace
Plugin 'xolox/vim-misc'                 " required by other plugins

Plugin 'szw/vim-tags'                   " automated generation of ctags, WHY DIDN'T I FIND THIS BEFORE NOW?????
" Plugin 'xolox/vim-easytags'             " easier tags, seems to be slow though
Plugin 'kien/ctrlp.vim'                 " goto

" Language specific plugins
Plugin 'Valloric/YouCompleteMe'         " auto-completion for C family
Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-scripts/Vimchant'           " Spellchecking using enchant
Plugin 'eagletmt/neco-ghc'              " Haskell autocomplete
Plugin 'vim-latex/vim-latex'            " latex plugin
Plugin 'itchyny/vim-haskell-indent'     " what it says on the tin
Plugin 'racer-rust/vim-racer'           " Rust racer support

" default vimchant language
let g:vimchant_spellcheck_lang = 'fi'

" Eclim autocompletion in YCM
let g:EclimCompletionMethod = 'omnifunc'
" Disable eclim for C
let g:EclimCValidate = 0

" make YCM compatible with UltiSnips
" let g:ycm_key_list_select_completion = ['<tab>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<s-tab>"
let g:UltiSnipsJumpBackwardTrigger = ""

" Airline powerline symbol set up
let g:airline_powerline_fonts = 1

" mapping Tagbar toggle to F8
nmap <F8> :TagbarToggle<CR>

" Ycm global compile flags file
let g:ycm_global_ycm_extra_conf = '~/dotfiles/ycm_extra_conf.py'
" YCM uses ctags
let g:ycm_collect_identifiers_from_tags_files = 1

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8']


" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" My own mappings and settings
nnoremap <BS> zA            " Toggle folds with backspace
let mapleader = "\<Space>"  " Map space as leader
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>  " For local replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>      " For global replace

" Force .md to be recognized as markdown instead of modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" proper cmake commentstring
autocmd FileType cmake setlocal commentstring=#\ %s

" proper vhdl commentstring
autocmd FileType vhdl setlocal commentstring=--\ %s

" autowrap text in latex and plaintex
autocmd FileType tex set tw=79
autocmd FileType plaintex set tw=79

" default filetype for .tex is latex instead of plaintex
let g:tex_flavor = "latex"

" Add include its subdirectories recursively to path
set path+=/usr/include/**
set path+=/usr/avr/include/**
" Only show popup menu on auto-completion
set completeopt=menuone
" Start explore-mode (netrw) in a tree view
let g:netrw_liststyle=3


" colorscheme
set t_Co=256                " enable 256-color mode.
syntax enable               " enable syntax highlighting (previously syntax on).
set background=dark         " Ensure dark background
colorscheme janah           " Set colorscheme

" other settings
set number                  " show line numbers
set laststatus=2            " last window always has a statusline
set nohlsearch              " Don't continue to highlight searched phrases.
set incsearch               " But do highlight as you type your search.
set ignorecase              " Make searches case-insensitive.
set ruler                   " Always show info along bottom.
set foldmethod=indent       " Fold on indents
set autoindent
set tabstop=4               " tab spacing
set softtabstop=4           " unify
set shiftwidth=4            " indent/outdent by 4 columns
set shiftround              " always indent/outdent to the nearest tabstop
set expandtab               " use spaces instead of tabs
set nowrap                  " don't wrap text
set colorcolumn=80          " Shows a "margin" at 80 chars
set scrolloff=5             " keeps 5 lines below and above cursor if possible
set cino+=(0                " Aligns function arguments nicely


