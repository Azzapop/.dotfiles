"don't bother with vi compatibility
set nocompatible

"enable syntax highlighting
syntax on

"configure Vundle
filetype on "without this vim emits a zero exit status, later, because of :ft off
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplete.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'digitaltoad/vim-pug'
Plugin 'mbbill/undotree'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'idris-hackers/idris-vim'
Plugin 'slim-template/vim-slim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-endwise'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'enricobacis/vim-airline-clock'
Plugin 'jiangmiao/auto-pairs'
Plugin 'eslint/eslint'
Plugin 'yggdroot/indentline'
Plugin 'sickill/vim-pasta'
Plugin 'johngrib/vim-game-snake'
Plugin 'johngrib/vim-game-code-break'
Plugin 'roman/golden-ratio'
Plugin 'json-formatter.vim'
Plugin 'webfd/vim-scss'
Plugin 'sekel/vim-vue-syntastic'
Plugin 'posva/vim-vue'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rust-lang/rust.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'

call vundle#end()
filetype plugin indent on

" plugin settings
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1

let g:neocomplete#enable_at_startup = 1
let g:clang_library_path="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib"
let g:syntastic_html_tidy_ignore_errors=['proprietary attribute "ng-']

let g:syntastic_slim_checkers = ['slimrb']
let g:syntastic_html_tidy_ignore_errors=['proprietary attribute "ng-']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
    let g:syntastic_vue_eslint_exec = local_eslint
endif

" let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

" let g:airline#extensions#clock#format = '%H:%M:%S'
" let g:airline#extensions#clock#updatetime = 1000

if has("persistent_undo")
  set undofile
  set undodir=~/.vim/undodir/
  set undolevels=1000
  set undoreload=10000
endif

" ensure ftdetect et al work by including this after the Vundle stuff
filetype plugin indent on

set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=7                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=8                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set updatetime=250

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" Where a line is over 80 characters long, highlight charcters over the limit.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%101v.\+/

" Enable basic mouse behavior such as resizing buffers.
set mouse=a

" keyboard shortcuts
let mapleader = ','
noremap <leader>t :TagbarToggle<CR>
noremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>


" in case you forgot to sudo
cnoremap w!! %!sudo tee > /dev/null %



" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set spell
colorscheme azzapop
