if has('vim_starting') | set nocompatible | set runtimepath+=~/.vim/bundle/neobundle.vim/ | endif
let g:neobundle#types#git#pull_command = "pull --rebase"

" {{{
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', { 'build' : { 'unix' : 'gmake', 'linux': 'make' } }

" Syntax checker
NeoBundle 'scrooloose/syntastic'

" Completion
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'osyo-manga/vim-monster'
NeoBundle 'cmdline-completion'
NeoBundle 'asins/vim-dict'
NeoBundle 'tracyone/dict'
NeoBundle 'guileen/vim-node-dict'


NeoBundle 'itchyny/lightline.vim'
NeoBundle 'ryanoasis/vim-webdevicons'
NeoBundle 'junegunn/vim-emoji'

" Navigation
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'majutsushi/tagbar', { 'lazy': 1, 'commands': 'TagbarToggle' }
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rhysd/clever-f.vim'
NeoBundle 'ruby-matchit'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'derekwyatt/vim-fswitch'
NeoBundle 'kien/ctrlp.vim' " NeoBundleLazy 'vim-scripts/FuzzyFinder'
NeoBundleLazy 't9md/vim-choosewin' " easymotion-like choosing window

NeoBundle 'mileszs/ack.vim'
NeoBundle 'tyok/nerdtree-ack'
NeoBundle 'thinca/vim-qfreplace'
NeoBundle 'nelstrom/vim-qargs'

" Git
NeoBundle     'tpope/vim-fugitive'
NeoBundle     'tommcdo/vim-fugitive-blame-ext'
NeoBundleLazy 'gregsexton/gitv', { 'commands': 'Gitv', 'depends' : 'fugitive.vim'}
NeoBundle     'kablamo/vim-git-log' " Interactive git log
NeoBundleLazy 'airblade/vim-gitgutter'

" Tpope's staff
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-scriptease'
NeoBundle 'tpope/vim-dispatch'
NeoBundleLazy 'p0deje/vim-dispatch-vimshell'

" Ruby plugins
NeoBundleLazy 'tpope/vim-rvm'
NeoBundle     'tpope/vim-rbenv'
NeoBundle     'tpope/vim-rake'
NeoBundle     'tpope/vim-rails'
NeoBundle     'vim-ruby/vim-ruby'
NeoBundle     'ecomba/vim-ruby-refactoring'
NeoBundle     'p0deje/vim-ruby-interpolation'

" Useful highlights
NeoBundle 'nathanaelkane/vim-indent-guides' " 'Yggdroot/indentLine'
NeoBundleLazy 'kien/rainbow_parentheses.vim',  { 'lazy': 1, 'commands': ['RainbowParenthesesToggle'] }
NeoBundle 'kshenoy/vim-signature' " Set line marks

" Snippets
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundleLazy 'mattn/emmet-vim', {'autoload': { 'filetypes': ['html', 'eruby', 'slim', 'css', 'sass', 'scss'] } }

" Unite
NeoBundle 'Shougo/unite.vim'
NeoBundle         'Shougo/unite-outline'
NeoBundle     'osyo-manga/unite-quickfix'
NeoBundle        'ujihisa/unite-colorscheme'
NeoBundle         'Shougo/unite-build'
NeoBundle         'Shougo/neomru.vim'
NeoBundleLazy 'majkinetor/unite-cmdmatch', { 'depends':  'Shougo/unite.vim', 'mappings' : [['c', '<Plug>(unite_cmdmatch_complete)']] }

NeoBundleLazy 'Shougo/vimfiler.vim'
NeoBundleLazy 'Shougo/vimshell.vim', { 'commands': 'VimShell' }

" Webdev
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle     'slim-template/vim-slim.git'
NeoBundle     'gmoe/vim-espresso'
NeoBundle     'kchmck/vim-coffee-script'
NeoBundle     'cakebaker/scss-syntax.vim'
NeoBundle     'hail2u/vim-css3-syntax'
NeoBundle     'jelera/vim-javascript-syntax'
NeoBundle     'jonathanfilip/vim-lucius'
NeoBundle     'KabbAmine/vCoolor.vim' " 'Rykka/colorv.vim'
NeoBundle     'skammer/vim-css-color' " 'gorodinskiy/vim-coloresque'
NeoBundleLazy 'gregsexton/MatchTag' , {'autoload':{'filetypes':['html', 'eruby', 'slim', 'css', 'sass', 'scss']}}

NeoBundle     'chrisbra/unicode.vim'
NeoBundleLazy 'atweiden/vim-betterdigraphs'

NeoBundle     'plasticboy/vim-markdown', { 'depends' : 'godlygeek/tabular'}
NeoBundle     'suan/vim-instant-markdown'
NeoBundle     'greyblake/vim-preview'
" NeoBundleLazy 'othree/html5.vim' " , {'autoload': {'filetypes': ['html', 'eruby']  } }

" Improved search
NeoBundle 'henrik/vim-indexed-search'
NeoBundle 'junegunn/vim-oblique', { 'depends': 'junegunn/vim-pseudocl' } " (similar: 'haya14busa/vim-asterisk', 'haya14busa/incsearch.vim')
NeoBundle 'junegunn/vim-fnr', { 'depends': 'junegunn/vim-pseudocl' }

" Command line wrappers
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'junegunn/vim-pseudocl'


" Textobjects
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'whatyouhide/vim-textobj-xmlattr'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'textobj-rubyblock'
NeoBundle 'mattn/vim-textobj-url'
NeoBundle 'henrik/vim-open-url'

" Usefull text editing assistants
NeoBundle     'sickill/vim-pasta'
NeoBundle     'terryma/vim-expand-region'
NeoBundle     't9md/vim-textmanip' " Drag visual text blocks
NeoBundle     'AndrewRadev/splitjoin.vim'
NeoBundle     'AndrewRadev/switch.vim'
NeoBundle     'AndrewRadev/sideways.vim'
NeoBundle     'tommcdo/vim-exchange'
NeoBundle     'Tabular'
NeoBundle     'Raimondi/delimitMate'
NeoBundleLazy 'Chiel92/vim-autoformat'
NeoBundleLazy 'rhysd/vim-clang-format', { 'lazy': 1, 'commands': 'ClangFormat' }

" Note taking
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-notes', { 'depends': 'xolox/vim-misc' }
" NeoBundle 'jceb/vim-orgmode'

" Diff tools
NeoBundle 'AndrewRadev/linediff.vim'
NeoBundleLazy 'chrisbra/vim-diff-enhanced'

" Misc
NeoBundleLazy 'justinmk/vim-syntax-extra', {'autoload':{'filetypes':['flex', 'lex', 'bison']}}
NeoBundle     'AndrewRadev/undoquit.vim'
NeoBundle     'danro/rename.vim'
NeoBundle     'derekwyatt/vim-protodef'
NeoBundle     'vim-scripts/LargeFile'
NeoBundleLazy 'vim-scripts/Hints-for-C-Library-Functions'
NeoBundleLazy 'vim-scripts/lilypink'
" neobundle 'milkypostman/vim-togglelist'
" NeoBundle 'bkad/CamelCaseMotion'
" NeoBundle 'wesQ3/vim-windowswap'

" Unused plugins
NeoBundleLazy 'ervandew/supertab'
NeoBundleLazy 'itchyny/thumbnail.vim'
NeoBundleLazy 'yssl/autocwd.vim'
NeoBundleLazy 'sheerun/vim-polyglot'


" Colors
NeoBundle 'zeis/vim-kolor'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundleLazy 'altercation/vim-colors-solarized'
NeoBundleLazy 'xterm-color-table.vim', { 'commands': 'XtermColorTable' }
NeoBundle 'jordwalke/VimCleanColors'
NeoBundle 'cschlueter/vim-wombat'
NeoBundleLazy 'vim-scripts/Mustang2'
NeoBundleLazy 'croaker/mustang-vim'
NeoBundle 'Railscasts-Theme-GUIand256color'
NeoBundle 'desertink.vim'
NeoBundle 'joedicastro/vim-molokai256'
NeoBundle 'jordwalke/flatlandia'
NeoBundle 'vivkin/flatland.vim'
NeoBundleLazy 'abra/vim-abra'
NeoBundleLazy 'ajh17/Spacegray.vim'
NeoBundleLazy 'cdmedia/itg_flat_vim'
NeoBundleLazy 'chriskempson/base16-vim'
NeoBundleLazy 'desert-warm-256'
NeoBundleLazy 'edkolev/tmuxline.vim'
NeoBundleLazy 'gosukiwi/vim-atom-dark'
NeoBundleLazy 'mbbill/desertEx'

call neobundle#end()
filetype plugin indent on
" }}}
set runtimepath+=~/.vim/colors/

" ,General {{{
if has("gui_running")
  " set guioptions-=m  "remove menu bar
  " set guioptions-=T  "remove toolbar
  " set guioptions-=r  "remove right-hand scroll bar
  " set guioptions-=L  "remove left-hand scroll bar
  " set guioptions-=e  "remove tabbar
  set guioptions=
endif

if executable('ag')
  set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
  set grepformat=%f:%l:%c:%m
endif

set nocompatible
set expandtab
set autoindent

set history=200
set ignorecase
set hls
set incsearch

set showcmd  " show command you entering at the bottom
scriptencoding utf-8
set encoding=utf-8

set shell=/bin/bash
" set cursorline

set textwidth=80

set winminheight=0

set noequalalways " max size for the active window by default
set winheight=9999

set linebreak   " wrap by a word
set wrap
" set sidescroll=9000

set dy=lastline

set foldenable
set foldmethod=marker
set foldlevel=9000
set foldcolumn=0
set foldtext=CustomFoldText()
"set foldnestmax=1
set foldminlines=2
"set foldlevelstart=1
"au WinEnter * set foldcolumn=
set lazyredraw
set ttyfast

set number      " line numbers
"au BufWinEnter * setlocal numberwidth=2
set ts=2 sw=2 sts=2

set timeoutlen=1000 ttimeoutlen=40

set list
" set listchars=tab:▷ ,trail:·,nbsp:⍽
set listchars=tab:▷ ,trail:·
" set smartcase
set smarttab
set smartindent

set scrolloff=1

"if !isdirectory(backupDirectory) | silent exec '!mkdir -p ' . backupDirectory | endif
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swapfiles
set backup
"set swapfile
if has("persistent_undo")
  set hidden
  set undodir='~/.vim/tmp/undo'
  set undofile
endif

set wildignore+=.git,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.o,*.obj,*.exe,*.dll
set wildignore+=vendor/*
set wildignore+=*.sw?


if v:version > 703 || v:version == 703 && has("patch541")
" Delete comment character when joining commented lines
  set formatoptions+=j
endif

set splitbelow
set splitright
set diffopt+=vertical

set undolevels=1000
set novisualbell           " don't beep
set noerrorbells         " don't beep

set clipboard=unnamedplus
let colLim = 80

"}}}

" ,Wild menus {{{

set wildmenu
set wcm=<Tab>
menu Settings.paste-toggle       :call toggle_paster_mode()<CR>
menu Settings.mouse-toggle       :call ToggleMouseMode()<CR>
map <F12> :emenu Settings.<Tab>
"}}}

" ,Autocmd plugins {{{
filetype plugin indent on

if &t_Co > 2 || has("gui_running") | syntax on | endif

augroup FiletypeAutocommands
  au!
  au FileType eruby setlocal iskeyword+=-  "commentstring=<!--%s-->
  au BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in runtime! indent/cmake.vim
  au BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in setf cmake
  au BufRead,BufNewFile *.ctest,*.ctest.in setf cmake
  au FileType vimrc setlocal foldmethod=marker ts=2 sw=2 sts=2
  au Filetype c,cpp setlocal ts=4 sw=4 sts=4 cindent foldmethod=syntax
  au Filetype ruby setlocal expandtab ts=2 sw=2 sts=2  foldmethod=syntax
  au Filetype ruby let ruby_fold = 1
  au Filetype lex,yacc setlocal cindent ts=4 sw=4 sts=4
  au Filetype html,css setlocal expandtab foldmethod=syntax ts=2 sw=2 sts=2
  au Filetype html,css setlocal autoindent
  au Filetype ruby,eruby setlocal foldmethod=indent  iskeyword-=.
  au BufNewFile,BufRead *.slim set iskeyword-=. foldmethod=indent
  au BufRead,BufNewFile *.scss set filetype=scss.css
  au FileType unite call s:unite_settings()
  au FileType qf call s:SetQuickfixMappings()
  au FileType qf setlocal nolist
  au FileType notes setlocal foldmethod=indent
  " au FileType ruby compiler ruby
augroup END

augroup OmniFunctions
  au!
  au FileType css setlocal omnifunc=csscomplete#CompleteCSS
  au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  au FileType python setlocal omnifunc=pythoncomplete#Complete
  au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  au FileType ruby setlocal omnifunc=rubycomplete#Complete
augroup END


augroup incsearch-keymap
  au!
  au VimEnter * call s:incsearch_keymap()
augroup END

augroup collumnLimit
  autocmd!
  au FileType vim,ruby,c,cpp,eruby,html  exe 'setlocal colorcolumn='.colLim
  au VimEnter * hi ColorColumn cterm=bold ctermfg=161 ctermbg=none
  " au BufEnter,WinEnter,FileType vim,ruby,c,cpp,eruby,html hi ColLim cterm=bold ctermfg=160 guibg=red
  " au BufEnter,WinEnter,FileType vim,ruby,c,cpp,eruby,html
  "       \ let w:colLimHl = matchadd('ColLim', '\%'.colLim.'v.', -1)
augroup END

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

au VimEnter * call SetGrepCommand()
augroup InitAutocommands
  au!
  au BufDelete * let g:deleted_buffer = bufname('%')
  au BufEnter  * call KeepTree()
  au BufEnter *  if !exists('b:created') | call fugitive#detect(getcwd()) | endif
  au BufEnter *  let b:created = 1
  au VimEnter  * if argc() == 0  | NERDTree | end
  au BufWritePost * if line('$') < max_autocheck_lines | exe 'SyntasticCheck' | call lightline#update() | endif
  au WinEnter     * if &buftype == 'quickfix' && winheight(0) < 10 | resize 10 | endif
  au BufWinEnter * let &numberwidth=(float2nr(log10(line('$'))) + 3)
  " au BufNewFile,BufRead fugitive://* set bufhidden=delete
  " Restore cursor position
  au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

augroup END

augroup ChangeCurosrShape
  au!
  if 0 && executable('gconftool-2')
    au InsertEnter * call system("gconftool-2 -s -t int /apps/guake/style/cursor_shape 1")
    au InsertLeave * call system("gconftool-2 -s -t int /apps/guake/style/cursor_shape 0")
    au WinLeave,FocusLost * call system("gconftool-2 -s -t int /apps/guake/style/cursor_shape 0")
    au VimEnter,WinEnter,BufWinEnter * if mode() == 'i' |
          \ call system("gconftool-2 -s -t int /apps/guake/style/cursor_shape 1") |
          \ else |
          \ call system("gconftool-2 -s -t int /apps/guake/style/cursor_shape 0") |
          \ endif
  endif
augroup END
" augroup NoSimultaneousEdit
"   au!
"   au SwapExists * let v:swapchoice = 'o'
"   au SwapExists * exe ' au VimEnter * echohl WarningMsg | echo "Duplicate edit session (readonly)" | echohl None'
" augroup END


"}}}

" ,plugins {{{

" ,lightline {{{
set laststatus=2
set noshowmode
let g:Powerline_symbols = 'fancy'

let g:lightline = {
      \ 'colorscheme': 'mycolorscheme',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'unite', 'readonly', 'filename', 'modified'],  [ ] ],
      \   'right': [ ['percent', 'lineinfo'], ['relativepath', 'filetype', 'ftgliph'], ['gbranchicon', 'gbranch','rubyicon', 'rubyv', 'syntastic'] ]
      \ },
      \ 'inactive': {
      \   'left': [ [], [ 'filename', 'modified'],  [ ] ],
      \   'right': [ [], ['gbranch', 'relativepath', 'filetype'] ]
      \ },
      \ 'tabline': {
      \ 'left': [ [ 'tabs' ] ],
      \ 'right': [[]]
      \ },
      \ 'tab': {
      \ 'active': [ 'tabnum', 'ftgliph', 'filename', 'modified' ],
      \ 'inactive': [ 'tabnum', 'filename', 'modified' ]
      \ },
      \ 'component': {
      \   'unite'   : '%{&filetype == "unite" ? unite#get_status_string() : ""}',
      \   'modified': '%{"" != MyModified() ? MyModified() : ""}',
      \   'gbranch': '%{ShowBranch()?fugitive#head():""}',
      \   'gbranchicon': '%#LightLineLeft_active_0_tabsel#%{ShowBranch()?"":""}%#lightlineright_active_2#',
      \   'rubyv':    '%{ShowRubyV()?RubyVersion():""}',
      \   'rubyicon':    '%#LightLineLeft_normal_error_2#%{ShowRubyV()?"":""}%#lightlineright_active_2#',
      \ },
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'relativepath': 'MyRelativePath',
      \   'rvm': 'RvmRubyV',
      \   'filename': 'MyFilename',
      \ },
      \ 'tab_component_function': {
      \ 'ftgliph': 'FtGliph'
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineCustom',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \ 'separator':    { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'tabline_separator':    { 'left': '', 'right': '' },
      \ 'tabline_subseparator': { 'left': '⋮', 'right': '⋮' }
      \ }

" \   'modified': '%#LightLineLeft_normal_error_1#%{"" != MyModified() ? MyModified() : ""}%#LightLineLeft_active_1#',
let g:lightline.enable = {
    \ 'statusline': 1,
    \ 'tabline': 1
    \ }

fu! ShowBranch()
  return expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && exists("*fugitive#head") && ""!=fugitive#head()
endfu
fu! ShowRubyV()
  return expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && (RailsDetect() || &ft ==# 'ruby')
endfu

let $GEM_HOME = system('env -i PATH="'.$PATH.'" ruby -rubygems -e "print Gem.dir"')
function! RubyVersion()
  return substitute(matchstr($GEM_HOME,'[^/]*$'),'^\[\]$','','')
endfunction

function! MyModified()
  let fname = expand('%:t')
  return &ft =~ 'help' || fname =~ '__Gundo\|NERD_tree\|__Tagbar__\|ControlP'  ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      " let mark = '⌥ '
      let mark = ' '
      let _ = fugitive#head()
      return strlen(_) ? mark._ : ''
    endif
  catch
  endtry
  return ''
endfunction


fu! MyRelativePath()
  let fname = expand('%:t')
  return &ft =~ 'help' || fname =~ '__Gundo\|NERD_tree\|__Tagbar__'  ? '' : expand('%f')
endfu

function! MyReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction
function! MyFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]')
endfunction
function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

let g:ctrlp_status_func = {
  \ 'prog': 'CtrlPStatusFunc_2',
  \ 'main': 'CtrlPStatusFunc_1',
  \ }
function! CtrlPStatusFunc_2(str)
  return lightline#statusline(1)
endfunction

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction
let g:tagbar_status_func = 'TagbarStatusFunc'

function! MyMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction
fu! RvmRubyV()
  if &filetype ==# 'ruby' && exists('$RUBY_VERSION')
    return '[' . $RUBY_VERSION . ']'
  else
    return ''
  endif
endfu

fu! FtGliph(tabnum)
  let ftgliph = WebDevIconsGetFileTypeSymbol()
  return strlen(&filetype) && ftgliph != g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol ? ftgliph : ''
endfu
fu! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfu
" }}} <- lightline

" ,instantmarkdown
let g:instant_markdown_autostart = 0

" ,notes
let g:notes_suffix = '.txt'

" Exchange
au VimEnter * hi ExchangeRegion cterm=bold ctermfg=7 ctermbg=240

" ,webdev icons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 0
let g:webdevicons_enable_airline_statusline = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['Gemfile'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rb'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['erb'] = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = 'd'
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = '🗋'
hi YellowFG ctermfg=3


" ,indexed-search
let  g:indexed_search_mappings = 0

" ,oblique
autocmd User Oblique       ShowSearchIndex
autocmd User ObliqueStar   ShowSearchIndex
autocmd User ObliqueRepeat ShowSearchIndex
hi link ObliqueCurrentMatch Search
hi link ObliqueCurrentIncSearch Search
let g:oblique#clear_highlight = 0
let g:oblique#incsearch_highlight_all = 1
fu! s:ClearHlSearch()
  if exists('w:current_match_id')
    try
      call matchdelete(w:current_match_id)
    catch
    endtry
  endif
  call feedkeys(":nohl\<CR>")
endfu

" ,sitch
let g:switch_mapping = '-'

" ,undoquit
nnoremap <c-w>c :call undoquit#SaveWindowQuitHistory()<cr><c-w>c

" ,Delimmate
let delimitMate_expand_space = 1

" ,Tagbar
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }
let g:tagbar_autofocus = 1

" ,IndenGuides
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
au VimEnter,Colorscheme * hi IndentGuidesOdd  ctermbg=237   guibg=gray
au VimEnter,Colorscheme * hi IndentGuidesEven ctermbg=236 guibg=darkgray
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'qf']

" ,Notes
let g:notes_directories = ['~/Dropbox/Notes']

" ,OpenUrl
map gx :OpenURL<CR>

" ,IndentLine
"let g:indentLine_char = '⋮'   " another versions ┆│┊︙¦⋮
"let g:indentLine_fileTypeExclude = ['nerdtree', 'help']
"nmap <leader>ig :IndentLinesToggle<CR>
""let g:indentLine_showFirstIndentLevel = 1
"let g:indentLine_enabled = 0
"let g:indentLine_color_term = 238

" ,NERDTree
let g:NERDTreeHijackNetrw = 0

" ,Syntastic
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_checkers = ['tidy']
let g:syntastic_c_compiler = "gcc"
let g:syntastic_c_compiler_options = "-Wall"
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_ruby_checkers =  ['mri']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol   = ' ●'
let g:syntastic_warning_symbol = ' ●'
let g:syntastic_style_error_symbol   = ' ◉'
let g:syntastic_style_warning_symbol = ' ○'
"let g:syntastic_stl_format = '[%E{Err at line %fe,  E: #%e}%B{, }%W{W: #%w}]'
let g:syntastic_stl_format = '%E{ line %fe; E %e}%B{,}%W{ W %w}]'
let max_autocheck_lines = 300
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:max_err_len = 30

" ,OverCommandLine
let g:over_command_line_prompt = ':'

" ,incsearch
fu! s:incsearch_keymap()
  nnoremap <silent> n nzz
  nnoremap <silent> N Nzz
    " IncSearchNoreMap <C-p> <Over>(buffer-complete)
    " IncSearchNoreMap <C-n> <Over>(buffer-complete-prev)
endfu

" ,emmet
let g:user_emmet_leader_key = ','
let g:user_emmet_mode='iv'


" ,Matchtagalways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'eruby' : 1,
    \}

" ,Vim-ruby
let ruby_operators = 1
let ruby_spellcheck_strings = 1
let g:rubycomplete_rails = 1
let g:rubycomplete_use_bundler = 1
let g:rubycomplete_classes_in_global = 1


" ,clang formatter
let g:clang_format#style_options = {
      \ "IndentWidth" : 4,
      \ "UseTab" : "Never",
      \ "BasedOnStyle" : "LLVM",
      \ "BreakBeforeBraces" : "Linux",
      \ "AlwaysBreakTemplateDeclarations" : "true",
      \ "AllowShortFunctionsOnASingleLine" : "false",
      \ "AllowShortIfStatementsOnASingleLine" : "false"
      \ }

" ,ultiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" ,ctrlp
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix\|NERD_tree_2\|NERD_tree_3'
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = { 'fallback': 'ag %s -l --nocolor -g ""' }
let g:ctrlp_root_markers = ['Gemfile', '.git', '.meteor', 'Rakefile', 'package.json', 'bower.json']


" ,fuzzyFinder
" nnoremap <silent> <C-p> :call fuf#givenfile#launch('', 0, '>>>', split(system('ag -l --nocolor -g ""'), "\n"))<CR>

" ,ack
fu! SetGrepCommand()
  if !empty(fugitive#extract_git_dir('%'))
    let cmd = 'git --no-pager grep '
    let grep_args = ' --no-color -n -I '
    if s:use_grep_breaks | let grep_args .= ' --break' | endif

    let pat = join(readfile('/home/eugen/.agignore'), '|')
    let pat = substitute(pat, '\.', '\\.', 'g')
    let pat = substitute(pat, '\*', '.*', 'g')
    " let sources = ' -- $(git ls-files | ag -v "'.pat.'")'
    let sources = ' -- $(git ls-files --exclude-standard --exclude-from="$HOME/.agignore")'
    " let g:ackprg = cmd . grep_args . ' "%s" ' . sources
  endif
endfu

let g:ackhighlight = 0
let g:ack_use_dispatch = 1
let g:ack_qhandler = ''
command! -bang -complete=file -nargs=* Find exe 'call ClearQuickFix()' | Ack<bang> <args>

" ,ag
let g:ag_qhandler="copen"
let g:ag_highlight=1
fu! s:SetQuickfixMappings()
  let l:matches_window_prefix = 'c'
  nnoremap <silent> <buffer> h  <C-W><CR><C-w>K
  nnoremap <silent> <buffer> H  <C-W><CR><C-w>K<C-w>b
  nnoremap <silent> <buffer> o  <CR>z<S-o>
  nnoremap <silent> <buffer> t  <C-w><CR><C-w>T
  nnoremap <silent> <buffer> T  <C-w><CR><C-w>TgT<C-W><C-W>
  nnoremap <silent> <buffer> v  <C-w><CR><C-w>H<C-W>b<C-W>J<C-W>t
  exe 'nnoremap <silent> <buffer> e <CR><C-w><C-w>:' . l:matches_window_prefix .'close<CR>'
  exe 'nnoremap <silent> <buffer> go <CR>:' . l:matches_window_prefix . 'open<CR>'
  exe 'nnoremap <silent> <buffer> q  :' . l:matches_window_prefix . 'close<CR>'
  exe 'nnoremap <silent> <buffer> gv :let b:height=winheight(0)<CR><C-w><CR><C-w>H:' . l:matches_window_prefix . 'open<CR><C-w>J:exe printf(":normal %d\<lt>c-w>_", b:height)<CR>'
endfu


" ,javascript
augroup JavascriptFold
  au!
  au FileType javascript call JavaScriptFold()
augroup END

" ,vim-monster
let g:monster#completion#rcodetools#backend = "async_rct_complete"
let g:neocomplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}

" ,neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 4
let g:neocomplete#auto_completion_start_length = 4
let g:neocomplete#enable_fuzzy_completion = 1
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
fu! s:my_cr_function()
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfu

let g:neocomplete#max_list = 8
let g:neocomplete#same_filetypes = {}
let g:neocomplete#same_filetypes._ = '_'
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'css': "/home/eugen/.vim/bundle/vim-dict/dict/css.dic",
      \ 'ruby': "~/.vim/dict/ruby.dic",
\ }

" ,gitv
let g:Gitv_DoNotMapCtrlKey = 1

" ,rainbowParentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" ,unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file,file/new,mru,buffer,file_rec,line,grep,outline', 'matchers', 'matcher_fuzzy')

call unite#custom#profile('default', 'context', {
  \ 'winheight': 10,
  \ 'prompt_direction': 'below',
  \ 'direction': 'botright'
  \ })
let g:unite_prompt = '>>> '
let g:unite_marked_icon = '✓'
let g:unite_split_rule = 'botright'
let g:unite_data_directory='~/.vim/.cache/unite'
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  " let g:unite_source_grep_default_opts = '-Q --nogroup --nocolor --column'
  let g:unite_source_grep_default_opts = '--nocolor --nogroup --column'
  let g:unite_source_grep_recursive_opt = ' '
  " let g:unite_source_grep_max_candidates = 80000
endif

let s:use_grep_breaks = 1
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column '
endif

function! s:unite_settings()
  resize 10
  nmap      <buffer> Q <plug>(unite_exit)
  nmap      <buffer> <esc> <plug>(unite_exit)
  imap      <buffer> <esc> <plug>(unite_exit)
  imap      <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap      <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <C-c> <Esc>
  inoremap  <silent><buffer><expr> <C-x>     unite#do_action('split')
endfunction

function! s:UniteBuffFilter(candidates, context)
  let a:context.source.name =  a:context.source.name[0]
  for candidate in a:candidates
    let bufname = bufname(candidate.action__buffer_nr)
    let filename = bufname == '' ? '[ Empty ]' : substitute(fnamemodify(bufname, ':p'), $PWD, '.', '')
    let candidate.abbr = printf("%s", filename)
  endfor
  return a:candidates
endfunction

function! s:UniteMRUFilter(candidates, context)
  let a:context.source.name =  a:context.source.name[0]
  let first = 0
  for candidate in a:candidates
    if match(candidate.word, $PWD) != -1
      let candidate.word = substitute(candidate.word, $PWD, '.', '')
    endif
  endfor
  return a:candidates
endfunction

call unite#define_filter({'name': 'buff_filter', 'filter': function('s:UniteBuffFilter')})
call unite#define_filter({'name': 'mru_filter', 'filter': function('s:UniteMRUFilter')})
call unite#custom#source('buffer', 'converters', 'buff_filter')
call unite#custom#source('file_mru', 'converters', 'mru_filter')
let g:unite_force_overwrite_statusline = 0
let g:unite_source_menu_menus = {}
" }}} <- plugins

" ,helpers {{{

function! FullBuffersList()
  let all = range(0, bufnr('$'))
  let res = []
  for b in all
    "if buflisted(b)
      call add(res, bufname(b))
    "endif
  endfor
  return res
endfunction

function! IndentWithI()
  if getline('.') =~ '^\s*$'
    " return "\"_cc"
    return "cc"
  else
    return "i"
  endif
endfunction
nnoremap <expr> i IndentWithI()
map <F10> :call GetSyn()<CR>

fu! GetSyn()
  echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . "> trans<"
        \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
        \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
endfu

let g:rails_commands = {
      \ 'h': [ 'Ehelper', 'app/helpers' ],
      \ 'm': {
        \ 'o': [ 'model',      'app/models' ],
        \ 'i': [ 'migration',  'db/migrate' ],
        \ 'a': [ 'mailer',     'app/mailers' ]
        \ },
      \ 'c': [ 'controller',   'app/controllers' ],
      \ 's': [ 'stylesheet',   'app/assets/stylesheets' ],
      \ 'v': [ 'view',         'app/views' ],
      \ 'l': [ 'locale',       'config/locales' ]
      \ }
let g:rails_edit_mappings = {
      \ "\<S-t>": 'T',
      \ "\<S-s>": 'S',
      \ "\<S-e>": 'E',
      \}

let g:rails_edit_default = 'S'
nnoremap <leader>e :call RailsCommands(g:rails_commands, g:rails_edit_mappings, 'CtrlP %s')<CR>

fu! RailsCommands(commands, mappings, runner)
  let commands = a:commands
  let edit_target = ''
  let edit_at = g:rails_edit_default
  while 1
      redraw
      echo (edit_at == g:rails_edit_default ? '('.edit_at.')': edit_at). 'edit >>> ' . edit_target
      let edit_target = nr2char(getchar())

      let mapping = get(a:mappings, edit_target, '') 
      if !empty(mapping)
        if edit_at == mapping
          let g:rails_edit_default = mapping
        else
          let edit_at = mapping
        endif
        continue
      endif

      let a = get(commands, edit_target)
      if type(a) == type([])
        let rails_command = a[0]
        let target_path = get(a, 1, '')
        break
      elseif type(a) == type({})
        let commands = a
        unlet a
      elseif edit_target == "\<C-c>" || edit_target == "\<Esc>"
        redraw
        echo 'Cancelled'
        return -1
      else
        redraw
        echohl ErrorMsg | echo 'No such handler =(' | echohl None
        return -1
      endif
  endwhile

  let rails_command = toupper(edit_at) . rails_command
  try
    exe rails_command
  catch
    if target_path == ''
      call feedkeys(':' . rails_command . "\<space>", 'n')
    else
      exe printf(a:runner, target_path)
    endif
  endtry
endfu

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

fu! Quit()
  try
    silent q
  catch /^Vim(quit):/
    echohl ErrorMsg | echo 'Save changes before closing?(Y/n)' | echohl None
    let choice = tolower(nr2char(getchar()))
    redraw
    if choice == 'y' || choice == "\<CR>"
      exe 'wq'
    elseif choice == 'n' || choice == "\<S-q>"
      exe 'q!'
    else
      echo 'Cancelled'
    endif
  endtry
endfu

fu! TogglePasterMode()
  if &paste | set nopaste | else | set paste | endif | echo ''
endf

fu! ToggleMouseMode()
  if &mouse == 'a' | set mouse= | echo '' | else | set mouse=a | echo 'Mouse enabled' | endif
endf

set previewheight=50
au BufEnter ?* call PreviewHeightWorkAround()
fu! PreviewHeightWorkAround()
  if &previewwindow
    exec 'setlocal winheight='.&previewheight
  endif
endfunc

fu! g:FoldEverything()
  if &foldmethod == "indent" | setl foldlevel=1 | else | setl foldlevel=0 | endif
endfu

fu! ToggleFoldColumn()
  if &foldcolumn == 0
    let max = max(map(range(1, line('$')), 'foldlevel(v:val)'))
    let &foldcolumn = max == 0 ? 0 : 1 + max
    setlocal numberwidth=1
  else
    let &foldcolumn = 0
    setlocal numberwidth=2
  endif
endfu

fu! GdiffInTab()
  if &modifiable && bufname('%') != ''
    exe 'tabedit %'
    exe 'Gdiff'
  else
    echohl ErrorMsg | echo "Can't run gdiff on the curr buffer" | echohl None
  endif
endfu

fu! RunFugitiveInNewWindow(cmd)
  if g:NERDTree.GetWinNum() != -1 | NERDTreeClose | let restore_tree = 1 | else | let restore_tree = 0 | endif
  Explore .
  let tmpBuf = bufnr('%')
  if restore_tree | NERDTreeFocus | wincmd p | endif
  exe a:cmd
  if bufexists(tmpBuf) && bufnr('%') != tmpBuf | exe 'bw '.tmpBuf | endif
endfu

fu! RunFugitiveInNewTab(cmd)
  Texplore .
  let tmpBuf = bufnr('%')
  exe a:cmd
  if bufexists(tmpBuf) && bufnr('%') != tmpBuf | exe 'bw '.tmpBuf | endif
endfu
command! -nargs=* -complete=command Exe call RunFugitiveInNewWindow(<f-args>)
command! -nargs=* -complete=command TExe call RunFugitiveInNewTab(<f-args>)

fu! HighlightColLimit(collumnLimit, matchName)
  let pattern = '\%<' . (a:collumnLimit+1) . 'v.\%>' . a:collumnLimit . 'v'
  let w:colLimHl = matchadd(a:matchName, pattern, -1)
endf

fu! OpenMyVimrc()
  if &mod == 1 | exec('split '. $MYVIMRC) | else | exec('edit '. $MYVIMRC) | endif
endf

fu! TrimWhiteSpace()
  %s/\s\+$//e
  %s/\n\{3,}/\r\r/e
  retab
endf

fu! BufCompl(A,L,P)
  let result = ''
  for lindex in range(1, line('$'))
    let result .= join(filter(split(getline(lindex)), 'v:val =~ "'.a:A.'"'), "\n") . "\n"
  endfor
  return result
endfu

fu! Grep()
  " exe 'Dispatch! ag -Q --nogroup --nocolor --column "' . FilterAckString(input('pattern >>> ', '', "custom,BufCompl")) . '"'
  exe 'silent Dispatch! ag -Q --nogroup --nocolor --column "' . substitute(input('pattern >>> ', '', "custom,BufCompl"), '["#$%]', '\\\0', 'g') . '"'
  let s:dispatch_grep_request = dispatch#request()
  let s:dispatch_grep_request.format = '%f:%l:%c:%m,%f:%l:%m'
  let s:updatetime = &updatetime
  let &updatetime = 1000
  augroup GrepAutocommands
    au!
    au CursorHold * call CheckGrep()
  augroup END
endfu

fu! CheckGrep()
  if !dispatch#completed(s:dispatch_grep_request) && filereadable(s:dispatch_grep_request.file . '.complete')
    exe 'au! GrepAutocommands'
    let &updatetime = s:updatetime
    let s:dispatch_grep_request.background = 0
    call dispatch#complete(s:dispatch_grep_request.file)
    call setqflist(filter(getqflist(), 'v:val.lnum != 0 && v:val.col != 0'))
    call lightline#update_once()
    echohl WarnMsg | echo ' --- Done --- ' | echohl None
  else
    call feedkeys('[grep]', 'n')
  endif
endfu


fu! FilterAckString(str)
  " let rstr = substitute(a:str, '["(){}\[\]]', '\\\0', 'g')
  " let rstr = substitute(rstr, '#', '\\\#', 'g')
  let rstr = substitute(a:str, '["#$%]', '\\\0', 'g')
  return rstr
endfu


fu! CustomFoldText()
  let fs = v:foldstart "get first non-blank line
  while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1) | endwhile
  if fs > v:foldend
      let line = getline(v:foldstart)
  else
      let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
  endif

  let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
  let foldSize = 1 + v:foldend - v:foldstart
  let foldSizeStr = " " . foldSize . " lines "
  let foldLevelStr = repeat("+--", v:foldlevel)
  let lineCount = line("$")
  let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
  let expansionString = repeat("-", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
  return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf

" If only NERDTRree window left keep them except there was an empty buffer
let g:deleted_buffer = -1
fu! KeepTree()
  if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")
    if g:deleted_buffer == ''
      q
    else
      new
      NERDTreeClose
      NERDTreeTabsToggle
      " NERDTreeToggle
    endif
  endif
  let g:deleted_buffer = -1
endfu

" Try to parse error names from the loclist
fu! SyntasticStatuslineCustom()
  let sflag = SyntasticStatuslineFlag()
  if sflag == '' | return '' | endif
  let errLine = ''
  for e in getloclist(bufnr('%')) | if e.type == 'E' | let errLine = e.text | break | endif | endfor
  if !empty(errLine)
    let shortErr = substitute(errLine, '\<.', '\u&', '')[:g:max_err_len-2]
    if strlen(errLine) > g:max_err_len-1 | let shortErr .= '..' | endif
    return '['.shortErr.','.sflag
  endif
  return '[Synt:'.sflag
endfu

fu! ExitFugitive(cmd) abort
  try
    if !exists(':Gedit') | exe 'silent ' . a:cmd | return | endif
    if (&diff == 0 || getbufvar('#', '&diff') == 0) " && (bufname('%') !~ '^fugitive:' && bufname('#') !~ '^fugitive:')
        exe a:cmd
    else
        exe a:cmd
        Gedit :
    endif
  catch
    echohl ErrorMsg | echo v:exception | echohl None
  endtry
endfu

"au BufWinEnter * call SourseIndentShowPlug()
"fu SourseIndentShowPlug(g)
  "if line2byte(line('$')) < g:ig_buf_size
    "NeoBundleSource 'Yggdroot/indentLine'
  "else
    "NeoBundleSource 'nathanaelkane/vim-indent-guides'
  "endif
"endfu

fu! ClearQuickFix()
  " exe 'cclose'
  " let qfix = getqflist()
  " let bufs = []
  " for b in qfix | call add(bufs, b.bufnr) | endfor
  " call uniq(bufs)
  " for bnr in bufs
  "   if bufexists(bnr) && bnr != 0 | exe 'bw '. bnr | endif
  " endfor
  " redraw!
  call setqflist([])
endfu

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vnoremap <silent> <expr> p <sid>Repl()

" }}}

" ,Keymappings {{{

" zfat - set marker
" Rus lang settings
map ё `| map й q| map ц w| map у e| map к r| map е t| map н y| map г u| map ш i| map щ o| map з p| map х [| map ъ ]
map ф a| map ы s| map в d| map а f| map п g| map р h| map о j| map л k| map д l| map ж ;| map э '| map я z| map ч x
map с c| map м v| map и b| map т n| map ь m| map б ,| map ю .| map Ё ~| map Й Q| map Ц W| map У E| map К R| map Е T
map Н Y| map Г U| map Ш I| map Щ O| map З P| map Х {| map Ъ }| map Ф A| map Ы S| map В D| map А F| map П G| map Р H
map О J| map Л K| map Д L| map Ж :| map Э "| map Я Z| map Ч X| map С C| map М V| map И B| map Т N| map Ь M| map Б <
map Ю >

let mapleader = ","

command! ReloadVimrc ro

nnoremap <silent> <leader>fc :call ToggleFoldColumn()<CR>

" Fugitive
nnoremap <leader>gg :Git<space>
nnoremap <silent> <leader>gs :Gtabedit :<CR>
nnoremap <silent> <leader>gd :call GdiffInTab()<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gv :Gitv<CR>
cabbrev ga Git add
cabbrev gcm Git commit -m
cabbrev gcam Git commit --amend -m





" Visual mode mappings
vmap v      <Plug>(expand_region_expand)
vmap <C-v>  <Plug>(expand_region_shrink)
vnoremap < <gv
vnoremap > >gv
vnoremap = =gv
vnoremap <S-y> ygv


nnoremap <Leader>f<S-s> :%S/
vnoremap <Leader>f<S-s> :S/
nnoremap <leader>fl :Unite -buffer-name=search\ line -start-insert line<CR>
nnoremap <leader>fl :Unite -buffer-name=outline -start-insert outline<CR>
nnoremap <leader>fm :Unite -winheight=10 -buffer-name=mru buffer file_mru<CR>
nnoremap <leader>fb :CtrlPLine<CR>


nnoremap <C-f> <Nop>
" nnoremap <C-f>l :Unite -buffer-name=outline -start-insert outline<CR>
nnoremap <C-f>l :Unite -buffer-name=search\ line -start-insert line<CR>
nnoremap <C-r> :Unite -buffer-name=outline -start-insert outline<CR>
nnoremap <C-f>f :call Grep()<CR>
nnoremap <C-f>m :Unite -winheight=10 -buffer-name=recent buffer file_mru<CR>
nnoremap <C-f><C-f> :call Grep()<CR>

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz


inoremap  <silent><C-c> <Esc>
nnoremap <C-c> <Esc>
nnoremap <C-s> :write<CR>
nnoremap <S-u> :redo<CR>

" nnoremap <silent> <C-c> <C-c>




nnoremap <leader>sc :SyntasticCheck<CR>



"inoremap  <silent><C-j><C-k> <C-o><S-o>
"inoremap  <silent><C-j>k     <C-o><S-o>
"inoremap  <silent><C-k><C-j> <C-o>o
"inoremap  <silent><C-k>j     <C-o>o


" <C-o>:call InsertLineBefore()<CR>

vnoremap <leader>ree :Rextract<space>

nnoremap          <leader>ig :IndentGuidesToggle<CR>
nnoremap <silent> <Leader>t :NERDTreeTabsToggle<CR>
nnoremap <silent> <leader>nf :NERDTreeFind<CR>
" nnoremap <silent> <leader>nf :NERDTreeTabsFind<CR>

let NERDTreeMapJumpNextSibling = "\<C-w>j"
let NERDTreeMapJumpPrevSibling = "\<C-w>k"
" nnoremap <silent> <leader>e <plug>NERDTreeTabsToggle<CR>





nnoremap <Tab>   gt
nnoremap <S-Tab> gT
" nnoremap <leader>tc :tabclose<CR>

nnoremap <silent> <S-q>     :call Quit()<CR>
nnoremap <silent> <C-q>     :tabclose<CR>


" ,easymotion
map <C-g> <Plug>(easymotion-prefix)
nmap <C-g>/ <Plug>(easymotion-sn)
nmap <C-g>l <Plug>(easymotion-iskeyword-w)
nmap <C-g>h <Plug>(easymotion-iskeyword-b)
nmap <C-g><C-l> <Plug>(easymotion-iskeyword-w)
nmap <C-g><C-h> <Plug>(easymotion-iskeyword-b)
nmap gh <Plug>(easymotion-iskeyword-b)
nmap gl <Plug>(easymotion-iskeyword-w)

" nnoremap <leader>ff :exe 'Ack! "' . FilterAckString(input('pattern >>> ', '', "custom,BufCompl")) . '"'<CR>
nnoremap <leader>fw :exe 'silent Find! '.expand('<cword>')<cr>
nnoremap <leader>ff :call Grep()<CR>


nnoremap ; :
"nnoremap : ;

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Drag visual
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


imap <C-k>  <Plug>(neocomplete_start_unite_complete)


nmap <leader>rc :tabedit $MYVIMRC<CR>
nmap <leader>rrc :source $MYVIMRC<CR>

" command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <down>
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>
cmap     <C-P> <Plug>CmdlineCompletionForward
cmap     <C-N> <Plug>CmdlineCompletionBackward
cmap <c-o> <Plug>(unite_cmdmatch_complete)
cabbrev qq q!
cabbrev qqq qa!
cnoreabbrev <silent> q Q
cnoreabbrev <silent> qq Q!
cnoreabbrev m Make

cabbrev plu NeoBundleUpdate
cabbrev pli NeoBundleCheck
cabbrev trw :call TrimWhiteSpace()

" Rename current file <S-F2>
nmap <silent> <Esc>[1;2Q :call feedkeys(':Rename '.expand('%:t'), 'n')<CR>
nnoremap <F2> :TagbarToggle<CR>
" Search backward <S-F3>
nnoremap <Esc>[1;2R <S-n>
nnoremap <F3> n



if has('gui')
  inoremap <C-v> <C-r><C-o>*
  cnoremap <C-v> <C-r><C-o>*
else
  inoremap <C-v> <C-r><C-o>0
  cnoremap <C-v> <C-r><C-o>0
  augroup GuiPasteMappings
    au!
    au GUIEnter * inoremap <C-v> <C-r><C-o>* | cnoremap <C-v> <C-r><C-o>*
  augroup END
endif



nnoremap <silent> <C-i> <C-i>zz
nnoremap <silent> <C-o> <C-o>zz

nnoremap <silent><C-w>o     :res<CR>
nnoremap <silent><C-w><C-o> :res<CR>


nnoremap <silent> <leader>rp :RainbowParenthesesToggle<CR>
command! -bang -nargs=0 Q call ExitFugitive('q<bang>')
" W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

cabbrev Tab Tabularize

" if exists(":Tabularize")
  vnoremap <leader>t, :Tabularize/,\zs<CR>
  vnoremap <leader>t: :Tabularize/:\zs<CR>
  vnoremap <leader>t= :Tabularize/=<CR>
" endif

nnoremap <leader>l :lopen<CR>
nnoremap <leader>c :copen<CR>
nnoremap <leader><S-c> :Copen<CR>

nnoremap <C-t> :tabnew<CR>

" fold
nnoremap <silent> z<S-m> :call g:FoldEverything()<CR>




nnoremap <silent> <Leader>fs :OverCommandLine<CR>%s/
vnoremap <silent> <Leader>fs :OverCommandLine<CR>s/
" nnoremap <silent> <Leader>f<S-s> :OverCommandLine<CR>%S/
" vnoremap <silent> <Leader>f<S-s> :OverCommandLine<CR>S/

nnoremap <CR> :call <SID>ClearHlSearch()<CR><CR>
nmap <leader>/ :call <SID>ClearHlSearch()<CR>

nnoremap <C-y> 2<C-y>
nnoremap <C-e> 2<C-e>
nnoremap z<S-e> <nop>

if &clipboard != 'unnamedplus'
  if executable('xclip')
    vnoremap <silent> <leader>d :!xclip -f -sel clip<CR>gvd
    vnoremap <silent> <leader>y :!xclip -f -sel clip<CR>
  endif
  inoremap <leader>p <C-o>:set paste<CR><C-r>+<C-o>:set nopaste<CR>
  inoremap <leader>p :set paste<CR>i<C-r>+<Esc>:set nopaste<CR>
endif

" }}}


" Colors {{{
set t_Co=256

au ColorScheme * call <SID>FixColors()
fu! s:FixColors()
  if !exists('g:colors_name') | return | endif
  if 1 && g:colors_name =~ 'Tomorrow-Night-Eighties' 
    hi VertSplit    ctermbg=236
    hi Directory    cterm=bold
    hi Normal       ctermbg=8
    hi FoldColumn   ctermbg=8
  elseif g:colors_name =~ 'base16-eighties'
    hi clear SignColumn
    hi Directory        ctermfg=2 cterm=bold
    hi link NERDTreeOpenable Directory

    hi SignColumn   ctermbg=236
    " hi VertSplit    ctermbg=236 ctermfg=238
    hi VertSplit    ctermbg=236 ctermfg=236
    hi ColorColumn  ctermbg=237
    hi LineNr       ctermbg=236 ctermfg=240
    hi CursorLineNr ctermbg=236 ctermfg=240 cterm=bold
    hi CursorLine   ctermbg=237
    hi StatusLineNC ctermbg=238 ctermfg=0
    hi StatusLine   ctermbg=240 ctermfg=12
    hi Visual       ctermbg=239
    hi PMenu        ctermfg=250 ctermbg=239
    hi PmenuSel     cterm=reverse ctermfg=250 ctermbg=239
    hi PmenuSbar    ctermbg=248
    hi SpellBad     ctermbg=0   ctermfg=1
    hi Folded       ctermfg=245 ctermbg=235
    hi SyntasticErrorSign        ctermbg=236
    hi SyntasticWarningSign      ctermbg=236
    hi SyntasticStyleErrorSign   ctermbg=236
    hi SyntasticStyleWarningSign ctermbg=236

    hi MatchParen     cterm=bold ctermbg=240 ctermfg=none
    " hi Function       ctermfg=223
    " ctermfg=blue

    hi FoldColumn     ctermfg=14 ctermbg=236

    " hi DiffChange cterm=bold ctermfg=white ctermbg=4
    hi DiffChange cterm=none ctermfg=white ctermbg=239
    hi DiffText   cterm=bold ctermfg=white ctermbg=27

    hi DiffAdd      cterm=bold ctermbg=64  ctermfg=white
    " hi String ctermfg=144

    " hi Normal     ctermbg=235
    hi Constant ctermfg=229
    hi rubyConstant ctermfg=229
    hi rubyConstant ctermfg=222
    hi wildmenu     ctermfg=0 ctermbg=11
    hi StatusLine   cterm=reverse ctermfg=59 ctermbg=221
    hi StatusLineNC cterm=reverse ctermfg=59 ctermbg=251

    " au FileType html,eruby,slim hi htmlTagName  ctermfg=252
    " au FileType html,eruby,slim hi htmlArg      ctermfg=252

    " hi DiffDelete   cterm=bold ctermbg=9   ctermfg=white
    hi DiffDelete   cterm=bold ctermbg=203   ctermfg=white
    " hi DiffChange   cterm=bold ctermbg=178 ctermfg=white

    " hi DiffText     cterm=bold ctermbg=178 ctermfg=white
    hi clear Search
    hi clear IncSearch
    hi Search       ctermbg=241
    hi IncSearch       ctermbg=241
  elseif g:colors_name =~ 'base16-rails'
    hi clear SignColumn
    hi Directory    ctermfg=2 cterm=bold
    hi SignColumn   ctermbg=236
    hi VertSplit    ctermbg=236 ctermfg=238
    hi ColorColumn  ctermbg=237
    hi LineNr       ctermbg=236 ctermfg=240
    hi CursorLineNr ctermbg=236 ctermfg=240
    hi CursorLine   ctermbg=236
    hi StatusLineNC ctermbg=238 ctermfg=0
    hi StatusLine   ctermbg=240 ctermfg=12
    hi Visual       ctermbg=239
    hi PMenu        ctermfg=250 ctermbg=239
    "
    " hi PmenuSel     cterm=reverse ctermfg=250 ctermbg=239
    hi PmenuSel     cterm=reverse ctermfg=2

    hi PmenuSbar    ctermbg=248
    hi SpellBad     ctermbg=0   ctermfg=1
    hi Folded       ctermfg=245 ctermbg=235
    au ColorScheme * hi SyntasticErrorSign        ctermbg=236
    au ColorScheme * hi SyntasticWarningSign      ctermbg=236
    au ColorScheme * hi SyntasticStyleErrorSign   ctermbg=236
    au ColorScheme * hi SyntasticStyleWarningSign ctermbg=236
    hi MatchParen     ctermbg=none ctermfg=blue
  endif

  hi htmlBold cterm=bold
endfu

" au ColorScheme * hi SignColumn ctermbg=8
augroup SyntasticColors
  au ColorScheme * hi SyntasticErrorSign        ctermfg=203
  au ColorScheme * hi SyntasticWarningSign      ctermfg=227
  au ColorScheme * hi SyntasticStyleErrorSign   ctermfg=27
  au ColorScheme * hi SyntasticStyleWarningSign ctermfg=27
augroup END
hi WarnMsg       ctermfg=15 ctermbg=27 guifg=White guibg=Blue


set background=dark
colorscheme base16-eighties

"}}}
