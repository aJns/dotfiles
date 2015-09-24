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
Plugin 'scrooloose/syntastic'           " syntax support
Plugin 'tpope/vim-vinegar'              " enchances netrw (no need for NERDTree)
Plugin 'tpope/vim-sleuth'               " checks file for tab settings etc
Plugin 'Valloric/YouCompleteMe'         " auto-completion

" My own set
" Plugin 'wincent/Command-T'              " improves file searches
Plugin 'tpope/vim-fugitive'             " git support
Plugin 'Raimondi/delimitMate'           " auto-pairs (for brackets etc)
Plugin 'majutsushi/tagbar'              " shows classes and functions
Plugin 'tpope/vim-commentary'           " commenting
Plugin 'bling/vim-airline'              " cool looking statusbar #bling
Plugin 'tfnico/vim-gradle'              " gradle integration
Plugin 'SirVer/ultisnips'               " code snippet engine
Plugin 'honza/vim-snippets'             " code snippets
Plugin 'airblade/vim-rooter'            " sets working directory to project root
Plugin 'jplaut/vim-arduino-ino'         " arduino integration using 'ino'
Plugin 'yegappan/mru'                   " Most Recently Used files
Plugin 'xolox/vim-misc'                 " lua plugin needs this
Plugin 'xolox/vim-lua-ftplugin'         " lua integration
Plugin 'mhinz/vim-startify'             " fancy startscreen
Plugin 'xolox/vim-notes'                " vim-notes for taking notes
Plugin 'raymond-w-ko/vim-lua-indent'    " better lua indentation
Plugin 'vim-scripts/Vimchant'           " Spellchecking using enchant
Plugin 'vim-scripts/c.vim'              " C++ integration
Plugin 'vim-scripts/TaskList.vim'       " Plugin for tracking todos and fixmes
Plugin 'hynek/vim-python-pep8-indent'   " Proper python indentation

" Colorschemes etc
Plugin 'flazz/vim-colorschemes'     " Collection of colorschemes
Plugin 'vim-scripts/CSApprox'       " Terminal colors match gui

" Eclim autocompletion in YCM
let g:EclimCompletionMethod = 'omnifunc'
" Disable eclim for C
let g:EclimCValidate = 0

" Lua autocomplete setup
let g:lua_complete_omni = 1
let g:lua_define_completefunc = 0
let g:lua_define_omnifunc = 0

" Vim-notes conf
let g:notes_directories=["/home/nikulaj/Dropbox/notes/"]
let g:notes_suffix = '.markdown'

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
let g:ycm_global_ycm_extra_conf = '/home/nikulaj/.vim/ycm_extra_conf.py'
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

let g:syntastic_cpp_include_dirs = ['/usr/include/**']
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_remove_include_errors = 1

" Vim latexsuite settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
" set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" My own mappings
nnoremap <Enter> zA         " Toggle folds with enter
nnoremap <BS> za
let mapleader = "\<Space>"  " Map space as leader
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>  " For local replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>      " For global replace

" Force .md to be recognized as markdown instead of modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" proper C indentation
autocmd FileType cpp setlocal shiftwidth=4 tabstop=4
set cinoptions=g0

" Add include its subdirectories recursively to path
set path+=/usr/include/**
" Only show popup menu on auto-completion
set completeopt=menuone


set t_Co=256                " enable 256-color mode.
syntax enable               " enable syntax highlighting (previously syntax on).
colorscheme luna            " set colorscheme
set background=dark         " ensure dark background
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
