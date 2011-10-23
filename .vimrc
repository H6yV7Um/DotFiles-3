set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Navigation
"Bundle 'mutewinter/bufpos'
"Bundle 'vim-scripts/FuzzyFinder'
"Bundle 'vim-scripts/ZoomWin'
Bundle 'wincent/Command-T'
"Bundle 'spiiph/vim-space'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'mutewinter/LustyJuggler'
" UI Additions
"Bundle 'mutewinter/vim-indent-guides'
"Bundle 'dickeytk/status.vim'
Bundle 'scrooloose/nerdtree'
"Bundle 'mutewinter/ir_black_mod'
"Bundle 'godlygeek/csapprox'
" OS Integration
"Bundle 'mkitt/browser-refresh.vim'
" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-speeddating'
"Bundle 'vim-scripts/hexHighlight.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'mileszs/ack.vim'
" Automatic Helpers
"Bundle 'IndexedSearch'
"Bundle 'xolox/vim-session'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/AutoComplPop'
" Language Additions
Bundle 'vim-ruby/vim-ruby'
"Bundle 'msanders/cocoa.vim'
"Bundle 'tpope/vim-haml'
"Bundle 'pangloss/vim-javascript'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'itspriddle/vim-jquery'
"Bundle 'tpope/vim-rails'
"Bundle 'mutewinter/taskpaper.vim'
"Bundle 'leshill/vim-json'
" Libraries
"Bundle 'L9'
"Bundle 'tpope/vim-repeat'

Bundle "tpope/vim-endwise"
Bundle "majutsushi/tagbar"
Bundle "vim-scripts/Railscasts-Theme-GUIand256color"
Bundle "vim-scripts/a.vim"
Bundle "vim-scripts/YankRing.vim"
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'




" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..







"set nocompatible
"
"filetype off
"
""activate pathogen
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
"
"filetype plugin indent on 


"allow backspacing over everything in insert mode
set backspace=indent,eol,start

function! MySys()
  if has("win32")
    return "windows"
  else
    return "linux"
  endif
endfunction

if MySys() == 'linux'
  "When .vimrc is edited, reload it
  "autocmd! bufwritepost vimrc source ~/.vimrc
  autocmd! bufwritepost .vimrc source ~/.vimrc
elseif MySys() == 'windows'
  "When _vimrc is edited, reload it
  autocmd! bufwritepost _vimrc source $vim/_vimrc
  behave mswin
  source $VIMRUNTIME/vimrc_example.vim
  set ch=2		" Make command line two lines high
  set mousehide		" Hide the mouse when typing text
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
  au GUIEnter * simalt ~x
  "source $VIMRUNTIME/mswin.vim

  "set diffexpr=MyDiff()
  "function MyDiff()
  "let opt = '-a --binary '
  "if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  "if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  "let arg1 = v:fname_in
  "if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  "let arg2 = v:fname_new
  "if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  "let arg3 = v:fname_out
  "if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  "let eq = ''
  "if $VIMRUNTIME =~ ' '
  "if &sh =~ '\<cmd'
  "let cmd = '""' . $VIMRUNTIME . '\diff"'
  "let eq = '"'
  "else
  "let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
  "endif
  "else
  "let cmd = $VIMRUNTIME . '\diff'
  "endif
  "silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
  "endfunction
endif

set fileencodings=ucs-bom,utf-8,chinese,big5,latin1

syntax on
"set number
set nospell
set linebreak
set showbreak=...
set nowrap
set hlsearch
set shiftwidth=2
set sts=2
set tabstop=2
set expandtab
"c indent = 4 whitespace
set cindent shiftwidth=4 
set autoindent shiftwidth=2
"highlight word according to the language

set cwh=25

"colorscheme lk
colorscheme railscasts
"autocmd BufNewFile,BufRead *.rb source ~/.vim/scripts/rubysnippets.vim 
highlight Pmenu                     guifg=white guibg=DarkGray
highlight PmenuSel                  guifg=white guibg=red
highlight Comment                   guifg=DarkGray gui=none
hi        Search                    guibg=yellow guifg=red gui=none

if MySys() == 'linux'
  set listchars=tab:▸\ ,eol:¬
  set list
endif

if MySys() == 'linux'
  set guifont=DejaVu\ Sans\ Mono\ 10.5
endif

if MySys() == 'windows'
  set guifont=DejaVu_Sans_Mono:h10.5:cANSI
  "set guifont=Monaco:h10.5:cANSI
  "set guiont=Bitstream_Vera_Sans_Mono:h10.5:cANSI
  "set gfw=Microsoft\ Yahei\ 12:h10.5:cGB2312
endif


set bsdir=last

"ctags
set tags=tags;


"let mapleader='\' 

if v:version >= 730
  set undofile
  set ul=500
endif

if bufwinnr(1)
  map <kPlus> <C-W>+
  map <kMinus> <C-W>-
  map <kDivide> <c-w><
  map <kMultiply> <c-w>>
endif
"------------------------plugins------------------------"

"MBF
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMaxHeight = 1


"taglist
let Tlist_Auto_Open=1
let Tlist_Show_One_File = 1            
let Tlist_Exit_OnlyWindow = 1         
let Tlist_Use_Right_Window = 1       
map <F7> :TlistToggle<CR>

"nerdtree
map <F8> :NERDTreeToggle<CR>

"Cscope
map <F3> :cs f 3 <C-R><C-W><CR>
map <F2> :cs add cscope.out<CR>
map <F4> :cs f t <C-R><C-W><CR>

"Tagbar
map <F6> :TagbarToggle<CR>

"std_c plugin
let c_C99=1


"syntastic
let g:syntastic_c_check_header = 1

"----------------------status line----------------------
set laststatus=2
"syntastic
set statusline=
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%F%k\ %l\:%c%(\ %y%m%r%h%)
set statusline+=\(%{&enc}\,%{&fileformat}\)
