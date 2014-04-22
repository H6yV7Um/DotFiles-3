set nocompatible " be iMproved
filetype off " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
Bundle 'gmarik/vundle'
 
"
" original repos on github
"Bundle 'tpope/vim-repeat'
" vim-scripts repos
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
 
 
 
 
"ruby
"Bundle 'tpope/vim-rails'
"Bundle 'vim-ruby/vim-ruby'
"Bundle 'astashov/vim-ruby-debugger'
"ruby-debug
"unmap <Leader>m
"map <Leader>M :call g:RubyDebugger.open_breakpoints()<CR>
"unmap <Leader>t
"map <Leader>T :call g:RubyDebugger.open_frames()<CR>
"unmap <Leader>n
"map <Leader>N :call g:RubyDebugger.next()<CR>
 
"由于映射原因,暂不使用
"Bundle 'janx/vim-rubytest'
 
 
"Bundle 'wincent/Command-T'
Bundle 'kien/ctrlp.vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/unite.vim'
"Bundle 'tsukkee/unite-tag'
Bundle 'h1mesuke/unite-outline'

"Bundle 'vim-scripts/FuzzyFinder'
 
Bundle 'scrooloose/nerdtree'
"Bundle 'jistr/vim-nerdtree-tabs'
 
"VOoM (Vim Outliner of Markers) is a plugin for Vim that emulates a two-pane text outliner.
"Bundle 'VOoM'
"Bundle 'h1mesuke/unite-outline'
 
"Bundle 'scrooloose/nerdcommenter'
Bundle 'EnhCommentify.vim'
 
"Bundle 'fholgado/minibufexpl.vim'
"Bundle 'sjbach/lusty'
 
 
Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-repeat'
 
"Bundle 'Lokaltog/vim-easymotion'
 
" key mapping , xml etc encoding decodeing......
"Bundle 'tpope/vim-unimpaired'
"Bundle 'ervandew/supertab'
"Bundle 'vim-scripts/AutoComplPop'
"Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplete'
 
" This script let you can use CTRL-P/N to complete word in cmdline mode just like in insert mode.
"Bundle 'cmdline-completion'
 
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-dispatch'
 
"Bundle 'vim-scripts/VimIM'
"Bundle 'vimim/vimim'
 
"Bundle 'vim-scripts/AutoClose'
"Bundle 'Raimondi/delimitMate'
"Bundle 'tpope/vim-endwise'
"Bundle 'jiangmiao/auto-pairs'
 
"Bundle 'scrooloose/syntastic'
 
"Bundle 'YankRing.vim'
 
" extend %
"Bundle 'matchit.zip'
 
Bundle 'majutsushi/tagbar'
"taglist
 
 
"snipmate & deps
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
 
Bundle 'jinleileiking/snipmate-snippets'
 
"Bundle 'scrooloose/snipmate-snippets'
 
"Bundle 'honza/snipmate-snippets'
"Bundle 'msanders/snipmate.vim'// not maintained
 
Bundle 'terryma/vim-multiple-cursors'
Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'Yggdroot/indentLine.git'
 
Bundle 'ShowMarks'
 
"git
"Bundle 'tpope/vim-fugitive'
 
"align
"Bundle 'godlygeek/tabular'
 
"Highlight what you want
Bundle 'Mark--Karkat'
 
Bundle 'Railscasts-Theme-GUIand256color'
"Bundle 'a.vim'
 
 
" show only window
"Bundle 'vim-scripts/ZoomWin'
 
"Narrowing means focussing on a region and making the rest inaccessible.
Bundle 'chrisbra/NrrwRgn'
 
"Buffergator is a plugin for listing, navigating between, and selecting buffers to edit.
"Bundle 'jeetsukumaran/vim-buffergator'
 
"Gundo is a plugin to make browsing this ridiculously powerful undo tree less painful.
"Bundle 'sjl/gundo.vim'
 
"This plugin defines a new text object, based on indentation levels. This is
"very useful in languages such as Python, in which the syntax defines scope in
"terms of indentation.
"Bundle 'michaeljsmith/vim-indent-object'
 
"Keep Window on Buffer Delete - Improved
"Bundle 'rgarver/Kwbd.vim'
"map <Leader>bd :Kwbd<CR>
 
"Bundle 'Gist.vim'
 
"Bundle 'Conque-Shell'
 
"Bundle 'rson/vim-conque'
 
"Bundle 'Lokaltog/vim-powerline'
 
"DrawIt is a plugin which allows one to draw lines left, right, up, down, and along both slants.
"Bundle 'DrawIt'
 
"Bundle 'calendar.vim'
 
 
"This plugin is aimed at making it more convenient to compile or run a single
"source file without leaving vim.
"Bundle 'xuhdev/SingleCompile'
 
 
"Bundle 'jcf/vim-latex'
 
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Langs
"Bundle 'tpope/vim-haml'
"Bundle 'pangloss/vim-javascript'
"Bundle 'jsbeautify'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'itspriddle/vim-jquery'
"Bundle 'leshill/vim-json'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'mmalecki/vim-node.js'
"Bundle 'skammer/vim-css-color'
"vim-liquid
 
"md, rdoc, textile
Bundle 'greyblake/vim-preview'
"vim-markdown
"textile
 
 
"Bundle 'nelstrom/vim-textobj-rubyblock'
"Bundle 'kana/vim-textobj-user'
 
 
"html,xml
"Bundle 'tpope/vim-ragtag'
 
"C
"Bundle 'std_c.zip'
"Bundle 'cg433n/better-c'
"Bundle 'davidxia/vim-c'
Bundle 'TagHighlight'
 
"When you type '(' after a function name
"in insert mode, the function declaration
"will be displayed in the command line
"automatically.
"Bundle 'echofunc.vim'
 
"lua
"Bundle 'lua-support'
 
"Auto reload ctags
"Bundle 'xolox/vim-easytags'
 
"Bundle 'bash-support.vim'
 
"Bundle 'tpope/vim-speeddating'
 
 
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 
" Navigation
"Bundle 'mutewinter/bufpos'
"Bundle 'spiiph/vim-space'
"Bundle 'mutewinter/LustyJuggler'
 
" UI Additions
"Bundle 'dickeytk/status.vim'
"Bundle 'mutewinter/ir_black_mod'
"Bundle 'godlygeek/csapprox'
 
" OS Integration
"Bundle 'mkitt/browser-refresh.vim'
"Bundle 'hexHighlight.vim'
 
" Automatic Helpers
"Bundle 'IndexedSearch'
"Bundle 'xolox/vim-session'
 
" Language Additions
"Bundle 'mutewinter/taskpaper.vim'
"Bundle 'msanders/cocoa.vim'
 
" Libraries
"Bundle 'L9'
 
 
 
"closetag
"camelcasemotion
"hammer
"mru
"Bundle 'OmniCppComplete'
"Bundle 'ifdef-highlighting'
"simplefold
"vim-abolish
"vim-colors-solarized
"vim-extradite
"vim-pastie
"vim-rake
"vim-ruby-sinatra
"zencoding-vim
 
 
 
filetype plugin indent on " required!
 
 
 
 
 
 
"allow backspacing over everything in insert mode
set backspace=indent,eol,start
 
set mouse=a
"set vb t_vb=
set novb
set wildmenu
 
"search ignore case
set ignorecase
 
" only one file
set backup
 
set showmode
 
" Show (partial) command in the last line of the screen.
set showcmd
 
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
 
"set fileencodings=ucs-bom,utf-8,cp936,euc-cn,chinese,big5,latin1
"set fileencodings=ucs-bom,utf-8,cp936,euc-cn,chinese,latin1
set fileencodings=ucs-bom,utf-8,euc-cn,cp936,latin1
"set fileencodings=ucs-bom,utf-8,cp936,euc-cn,chinese
 
syntax on
"set number
set nospell
set linebreak
set showbreak=...
set nowrap
set hlsearch
 
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
 

set autoread
set hidden
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

" set the column to check weather you write a lot of codes.
"set cc=110
 
"au BufWinLeave *.c mkview
"au BufWinEnter *.c silent loadview
 
set listchars=tab:▸\ ,eol:¬
set list
 
"set guifont=DejaVu\ Sans\ Mono\ 10
set guifont=Ubuntu\ Mono\ 12
"set guifont=DejaVu\ Sans\ Mono\ 10
 
"set guifont=Droid\ Sans\ Mono\ 10.5
"set linespace=2 "The fucking underscore problem
 
set bsdir=last
set shortmess+=A
 
 
"let mapleader='\'
 
 
set undofile
set ul=500

map <leader>bn :bn<CR>

if bufwinnr(1)
map <kPlus> <C-W>+
map <kMinus> <C-W>-
map <kDivide> <c-w><
map <kMultiply> <c-w>>
endif
 
"map <F7> eb"tye k /<C-R>t<CR>
"map <F12> :!ctags <CR> <CR> :!cscope -Rbq<CR><CR>
"map <F12> :!ctags <CR>
map <F12> :!ctags <CR> :UpdateTypesFile<CR> :!cscope -Rbq<CR>
map <Leader>h *#
" In case I forget to start as root
cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>
map <Leader>y "+y
map <Leader>p "+gP
map <Leader>wp ve"0p
map vp "cp
map vy "cy
colorscheme railscasts
 
autocmd BufRead,BufNewFile *.conf setfiletype c
autocmd BufRead,BufNewFile *.inc setfiletype c
autocmd BufRead,BufNewFile *.md setfiletype markdown
"autocmd BufRead,BufNewFile *.c syntax region Comment start="#if 0" end="#endif"
"autocmd BufRead,BufNewFile *.c syntax region Comment start=".*#if .*OS_FREERTOS" end="#endif"
"autocmd BufRead,BufNewFile *.c syntax region Comment start=".*#if .*OS_FREERTOS" end="#endif"
autocmd BufRead,BufNewFile *.c syntax keyword return return
"guibg=darkblue
 
 
"highlight Pmenu guifg=white guibg=DarkGray
"highlight PmenuSel guifg=white guibg=red
highlight Pmenu guifg=white guibg=darkblue
highlight PmenuSel guifg=red guibg=blue
highlight Comment guifg=#404040 gui=none
hi Search guibg=yellow guifg=red gui=none
highlight return guifg=red guibg=darkblue
 
 
 
"fold
set foldenable
"set foldmethod=indent
set foldmethod=syntax
set foldlevel=0
set foldcolumn=2
set foldnestmax=2
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
"set cursorline
highlight CursorLine guibg=#222222
 
 
"tab
set showtabline=2
 
 
function! ShortTabLine()
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
" only show the first 6 letters of the name and
" .. if the filename is more than 8 letters long
let maxlen = 15
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
 
"set guitablabel=%!ShortTabLine()
set guitablabel=%m%t
 
"function! InfoGuiTooltip()
""get window count
"let wincount = tabpagewinnr(tabpagenr(),'$')
"let bufferlist=''
""get name of active buffers in windows
"for i in tabpagebuflist()
"let bufferlist .= '[' . fnamemodify(bufname(i),':t') .'] '
"endfor
"return bufname($).' windows: ' . wincount .' ' . bufferlist. ' '
"endfunction
 
"set guitabtooltip=%!InfoGuiTooltip()
 
" Execute a cmd in a shell :Shell xxxx
function! s:ExecuteInShell(command)
let command = join(map(split(a:command), 'expand(v:val)'))
let winnr = bufwinnr('^' . command . '$')
silent! execute winnr < 0 ? 'botright new ' . fnameescape(command) : winnr . 'wincmd w'
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
 
" Get :cmd output to a buffer :TabMessage
function! TabMessage(cmd)
redir => message
silent execute a:cmd
redir END
new
silent put=message
set nomodified
endfunction
command! -nargs=+ -complete=command CmdPutInTab call TabMessage(<q-args>)
 
 
"ctags
set tags=tags;
 
"Cscope
map <leader>jc :cs f c <C-R><C-W><CR>
"map <F4> :cs f t <C-R><C-W><CR>
map <leader>cs :cs add cscope.out<CR>
 
 
"Marks
 
map <F5> mA
map <C-F5> `A

"map <F3> :Unite tag<CR>
map <F11> :noh<CR>
map <F10> :UpdateTypesFile<CR>
call unite#custom#source( 'buffer', ['converter_file_directory']) 

"nnoremap <leader>u :<C-u>Unite tag -start-insert file_rec/async:!<CR>
"map <leader>ff :<C-u>Unite file_rec -start-insert file_rec/async:!<CR>
map <leader>ff :<C-u>Unite file_rec<CR>
map <leader>ub :<C-u>Unite buffer<CR>
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'

"----------------------status line----------------------
set laststatus=2
"syntastic
set statusline=
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%2*\|%f\|%0*%k\ %l/%L\(%p%%\)\:%c%(\ %y%m%r%h%)
set statusline+=\(%{&fileencoding}\,%{&fileformat}\)
 
 
hi User2 guifg=red guibg=lightblue
 
 
set complete=.,w,b,u,t
 
"------------------------plugins------------------------"
 
" voom
 
 
let g:voom_tree_placement = "right"
 
"ack
map <C-H><C-H> eb :Ack <C-R><C-W><CR>

let g:ackprg = 'ag --nogroup --nocolor --column'
 
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
let NERDTreeIgnore=['\.o$','\.a$', '\.d$', '\.taghl$','\~$', 'cscope\.', 'tags$']
let NERDTreeChDirMode = 2
let NERDTreeWinSize = 30
let NERDTreeShowBookmarks = 1
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"autocmd vimenter * NERDTree
 
 
 
" neocomplete
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_disable_auto_complete = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 10
let g:neocomplcache_manual_completion_start_length = 100
let g:neocomplcache_auto_completion_start_length = 5
let g:neocomplcache_min_keyword_length = 10
let g:neocomplcache_min_syntax_length = 10
let g:neocomplcache_disable_caching_file_path_pattern = "out*.*"
" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
 
 
 
"Tagbar
map <F6> :TagbarToggle<CR>
let g:tagbar_sort = 0
let g:tagbar_width = 40
"let g:tagbar_foldlevel = 0
autocmd FileType c,cpp,rb,vim nested :TagbarOpen
 
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
 
 
" MiniBufExpl Colors
hi MBEVisibleActive guifg=#A6DB29 guibg=fg
hi MBEVisibleChangedActive guifg=#F1266F guibg=fg
hi MBEVisibleChanged guifg=#F1266F guibg=fg
hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
hi MBEChanged guifg=#CD5907 guibg=fg
hi MBENormal guifg=#808080 guibg=fg
let g:miniBufExplorerMoreThanOne=0
let g:miniBufExplSplitBelow=0 " Put new window above
 
 
"Leader P
"let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript']
let g:ctrlp_extensions = ['tag']
map <Leader>ft :CtrlPTag<CR>
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:40,results:40'
 
 
"Autoclose
"nmap <Leader>x <Plug>ToggleAutoCloseMappings
 
"Yankring
"
let g:yankring_paste_using_g = 0
nmap <Leader>yr :YRShow<CR>
