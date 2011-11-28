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
"Bundle 'spiiph/vim-space'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'mutewinter/LustyJuggler'
" UI Additions
"Bundle 'mutewinter/vim-indent-guides'
"Bundle 'dickeytk/status.vim'
"Bundle 'mutewinter/ir_black_mod'
"Bundle 'godlygeek/csapprox'
" OS Integration
"Bundle 'mkitt/browser-refresh.vim'
"Bundle 'tpope/vim-speeddating'
"Bundle 'vim-scripts/hexHighlight.vim'
" Automatic Helpers
"Bundle 'IndexedSearch'
"Bundle 'xolox/vim-session'
" Language Additions
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
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...





Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'mileszs/ack.vim'
"Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
"Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-ruby/vim-ruby'
Bundle "tpope/vim-endwise"
Bundle "majutsushi/tagbar"
Bundle "msanders/snipmate.vim"
Bundle "scrooloose/snipmate-snippets"
" vim-scripts repos
Bundle "Railscasts-Theme-GUIand256color"
Bundle "a.vim"
Bundle "YankRing.vim"
Bundle "std_c.zip"
Bundle "matchit.zip"
Bundle "Mark--Karkat"

"Bundle "vim-scripts/Railscasts-Theme-GUIand256color"
"Bundle "vim-scripts/a.vim"
"Bundle "vim-scripts/YankRing.vim"
"Bundle "vim-scripts/std_c.zip"
"Bundle "vim-scripts/matchit.zip"


"camelcasemotion
"gundo
"hammer
"matchit
"mru
"omnicppcomplete
"simplefold
"taglist
"textile
"vim-abolish
"vim-colors-solarized
"vim-extradite
"vim-haml
"vim-liquid
"vim-markdown
"vim-pastie
"vim-ragtag
"vim-rails
"vim-rake
"vim-repeat
"vim-ruby-sinatra
"vim-surround
"vim-textobj-rubyblock
"vim-textobj-user
"vim-unimpaired
"zencoding-vim



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


set showmode
set showcmd
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

set fileencodings=ucs-bom,utf-8,chinese,big5,latin1

syntax on
"set number
set nospell
set linebreak
set showbreak=...
set nowrap
set hlsearch

"C
set shiftwidth=4
set sts=4
set tabstop=4

"highlight word according to the language
set incsearch

set cwh=25

"remove toobar
set go-=T

autocmd BufRead,BufNewFile *.conf		setfiletype c


set listchars=tab:▸\ ,eol:¬
set list

set guifont=DejaVu\ Sans\ Mono\ 10.5



set bsdir=last

"ctags
set tags=tags;


"let mapleader='\' 


set undofile
set ul=500

if bufwinnr(1)
  map <kPlus> <C-W>+
  map <kMinus> <C-W>-
  map <kDivide> <c-w><
  map <kMultiply> <c-w>>
endif

map <F7> eb"tye k /<C-R>t<CR>
map <F12> :!ctags -R<CR> <CR> :!cscope -Rbq<CR><CR>

colorscheme railscasts

highlight Pmenu                     guifg=white guibg=DarkGray
highlight PmenuSel                  guifg=white guibg=red
highlight Comment                   guifg=DarkGray gui=none
hi        Search                    guibg=yellow guifg=red gui=none

"number
set nu
set nuw=2
hi LineNr guifg=darkgray guibg=#181818

"fold
set foldenable
"set foldmethod=indent
set foldmethod=syntax
set foldlevel=0
set foldcolumn=2
"hi FoldColumn guifg=white guibg=#660000
"hi FoldColumn guifg=white guibg=darkblue
hi FoldColumn guifg=white guibg=#181818
hi Folded guifg=darkgray guibg=#141414

"tab
set showtabline=0

"------------------------plugins------------------------"

"ack 
map <C-H><C-H> eb :Ack <C-R><C-W><CR>

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
"map <F7> :TlistToggle<CR>

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
set statusline+=%2*\|%F\|%0*%k\ %l/%L\(%p%%\)\:%c%(\ %y%m%r%h%)
set statusline+=\(%{&enc}\,%{&fileformat}\)




hi User2 guifg=red guibg=lightblue

