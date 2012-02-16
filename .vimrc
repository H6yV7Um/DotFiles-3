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
Bundle 'tpope/vim-endwise'
Bundle 'majutsushi/tagbar'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'greyblake/vim-preview'
Bundle 'xolox/vim-easytags'
" vim-scripts repos
Bundle 'Railscasts-Theme-GUIand256color'
Bundle 'a.vim'
Bundle 'YankRing.vim'
Bundle 'std_c.zip'
Bundle 'matchit.zip'
Bundle 'Mark--Karkat'
Bundle 'ZoomWin'
Bundle 'Gist.vim'
Bundle 'Conque-Shell'
Bundle 'calendar.vim'


" closetag

"camelcasemotion
"gundo
"hammer
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

set mouse=a
"set vb t_vb= 
set novb
set wildmenu


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
set expandtab

"highlight word according to the language
set incsearch

set cwh=25

"remove toobar
set go-=T

autocmd BufRead,BufNewFile *.conf		setfiletype c


set listchars=tab:▸\ ,eol:¬
set list

set guifont=DejaVu\ Sans\ Mono\ 10.5

"set guifont=Droid\ Sans\ Mono\ 10.5

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

" In case I forget to start as root
cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>
colorscheme railscasts

highlight Pmenu                     guifg=white guibg=DarkGray
highlight PmenuSel                  guifg=white guibg=red
highlight Comment                   guifg=#404040 gui=none
hi        Search                    guibg=yellow guifg=red gui=none


"fold
set foldenable
"set foldmethod=indent
set foldmethod=syntax
set foldlevel=0
set foldcolumn=2
set foldnestmax=1
"hi FoldColumn guifg=white guibg=#660000
"hi FoldColumn guifg=white guibg=darkblue
hi FoldColumn guifg=white guibg=#181818
"hi Folded guifg=darkgray guibg=#141414
hi Folded guifg=darkgrey guibg=#141414

"number
set nu
set nuw=2
"hi LineNr guifg=darkgray guibg=#181818
hi LineNr guifg=#404040 guibg=#181818


" Cursor line
set cursorline
highlight CursorLine guibg=#222222


"tab
set showtabline=2


function ShortTabLine()
    let ret = ''
    for i in range(tabpagenr('$'))
        " select the color group for highlighting active tab
        if i + 1 == tabpagenr()
            let ret .= '%#errorMsg#'
        else
            let ret .= '%#TabLine#'
        endif

        " find the buffername for the tablabel
        let buflist = tabpagebuflist(i+1)
        let winnr = tabpagewinnr(i+1)
        let buffername = bufname(buflist[winnr - 1])
        let filename = fnamemodify(buffername,':t')
        " check if there is no name
        if filename == ''
            let filename = 'noname'
        endif
        " only show the first 6 letters of the name  and
        " .. if the filename is more than 8 letters long
        let maxlen = 10
        if strlen(filename) >= maxlen
            let ret .= '[' . filename[0:maxlen - 1] . '..]'
        else
            let ret .= '[' . filename . ']'
        endif
    endfor
    " after the last tab fill with TabLineFill and reset tab page #
    let ret .= '%#TabLineFill#%T'
    return ret
endfunction

set guitablabel=%!ShortTabLine()

function! InfoGuiTooltip()
    "get window count
    let wincount = tabpagewinnr(tabpagenr(),'$')
    let bufferlist=''
   "get name of active buffers in windows
    for i in tabpagebuflist()
        let bufferlist .= '['.fnamemodify(bufname(i),':t').'] ' 
    endfor
    return bufname($).' windows: '.wincount.' ' .bufferlist ' '
endfunction

"set guitabtooltip=%!InfoGuiTooltip()

function! s:ExecuteInShell(command)
    let command = join(map(split(a:command), 'expand(v:val)'))
    let winnr = bufwinnr('^' . command . '$')
    silent! execute  winnr < 0 ? 'botright new ' . fnameescape(command) : winnr . 'wincmd w'
    setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile nowrap number
    echo 'Execute ' . command . '...'
    silent! execute 'silent %!'. command
    silent! execute 'resize ' . line('$')
    silent! redraw
    silent! execute 'au BufUnload <buffer> execute bufwinnr(' . bufnr('#') . ') . ''wincmd w'''
    silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . command . ''')<CR>'
    echo 'Shell command ' . command . ' executed.'
endfunction
command! -complete=shellcmd -nargs=+ Shell call s:ExecuteInShell(<q-args>)





"------------------------plugins------------------------"
" cd ~/.vim/bundle/Command-T/ruby/ ; ruby extconf.rb ; make 

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
let NERDTreeIgnore=['\.o$', '\~$', 'cscope\.', 'ctags$']

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

" Indent guides
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1


" syntastic
let g:syntastic_echo_current_error=0
let g:syntastic_enable_signs=0
"

"----------------------status line----------------------
set laststatus=2
"syntastic
set statusline=
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%2*\|%f\|%0*%k\ %l/%L\(%p%%\)\:%c%(\ %y%m%r%h%)
set statusline+=\(%{&enc}\,%{&fileformat}\)




hi User2 guifg=red guibg=lightblue

