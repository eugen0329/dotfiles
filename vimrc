" #Neobindle {{{
if has('vim_starting') | set nocompatible | set runtimepath+=~/.vim/bundle/neobundle.vim/ | endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc.vim', { 'build' : { 'unix' : 'gmake', 'linux': 'make' } }

NeoBundle 'skammer/vim-css-color'
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'Lokaltog/vim-easymotion'
"NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'osyo-manga/unite-quickfix'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'tpope/vim-commentary'
NeoBundleLazy 'Yggdroot/indentLine'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'nelstrom/vim-qargs'

NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'cmdline-completion'
NeoBundle 'ctrlp.vim'
NeoBundle 'eugen0329/splitjoin.vim'
NeoBundle 'f.vim'
NeoBundle 'gmoe/vim-espresso'
NeoBundle 'fugitive.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'honza/vim-snippets'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'nelstrom/vim-visual-star-search'
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'ruby-matchit'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'slim-template/vim-slim.git'
NeoBundle 'surround.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'whatyouhide/vim-textobj-xmlattr'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'textobj-rubyblock'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rvm'
"NeoBundle 'tpope/vim-scriptease'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'vim-ruby/vim-ruby'
"NeoBundle 'vim-scripts/mru'
NeoBundleLazy 'yssl/autocwd.vim'
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundleLazy 'L9'
NeoBundleLazy 'Tabular'
" NeoBundleLazy 'Valloric/MatchTagAlways' , {'autoload':{'filetypes':['html', 'eruby', 'slim', 'css', 'sass', 'scss']}}
NeoBundleLazy 'gregsexton/MatchTag' , {'autoload':{'filetypes':['html', 'eruby', 'slim', 'css', 'sass', 'scss']}}

NeoBundleLazy 'othree/html5.vim' " , {'autoload': {'filetypes': ['html', 'eruby']  } }
NeoBundle 'kablamo/vim-git-log'


NeoBundleLazy 'abra/vim-abra'
NeoBundleLazy 'airblade/vim-gitgutter'
NeoBundleLazy 'ajh17/Spacegray.vim'
NeoBundleLazy 'cdmedia/itg_flat_vim'
NeoBundleLazy 'chriskempson/base16-vim'
NeoBundleLazy 'delview'
NeoBundleLazy 'desert-warm-256'
NeoBundleLazy 'edkolev/tmuxline.vim'
NeoBundleLazy 'gosukiwi/vim-atom-dark'
NeoBundleLazy 'gregsexton/gitv', {'depends' : ['fugitive.vim']}
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'justinmk/vim-syntax-extra', {'autoload':{'filetypes':['flex', 'lex', 'bison']}}
NeoBundleLazy 'kien/rainbow_parentheses.vim'
NeoBundleLazy 'mattn/emmet-vim', {'autoload': { 'filetypes': ['html', 'eruby', 'slim', 'css', 'sass', 'scss'] } }
NeoBundleLazy 'mbbill/desertEx'
NeoBundleLazy 'rhysd/vim-clang-format'
NeoBundleLazy 'rking/ag.vim'

NeoBundle     'mileszs/ack.vim'

NeoBundleLazy 'terryma/vim-smooth-scroll'
NeoBundleLazy 'vim-scripts/FuzzyFinder'
NeoBundleLazy 'vim-scripts/Hints-for-C-Library-Functions'
NeoBundleLazy 'vim-scripts/lilypink'

NeoBundle 'Shougo/neomru.vim'
NeoBundle 'ecomba/vim-ruby-refactoring'
NeoBundle 'sickill/vim-pasta'
NeoBundle 'osyo-manga/vim-monster'
NeoBundle 'chrisbra/unicode.vim'
NeoBundle 'terryma/vim-expand-region'
"NeoBundle 'wesQ3/vim-windowswap'
NeoBundle 'kchmck/vim-coffee-script'

NeoBundle 'asins/vim-dict'
NeoBundle 'tracyone/dict'
NeoBundle 'guileen/vim-node-dict'

NeoBundle 'tpope/vim-markdown'
NeoBundle 'gavinbeatty/dragvisuals.vim'


NeoBundle 'AndrewRadev/linediff.vim'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'AndrewRadev/undoquit.vim'


NeoBundle 'ryanoasis/vim-webdevicons'
NeoBundle 'jordwalke/VimCleanColors'
NeoBundle 'tpope/vim-speeddating'

" NeoBundle 'chrisbra/unicode.vim'
NeoBundleLazy 'chrisbra/vim-diff-enhanced'

NeoBundleLazy 'altercation/vim-colors-solarized'

NeoBundle 'danro/rename.vim'
NeoBundleLazy 'c9s/colorselector.vim'



NeoBundle 'abolish.vim'
" bkad/CamelCaseMotion


NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundleLazy 'xterm-color-table.vim'
NeoBundleLazy 'vim-scripts/Mustang2'
NeoBundleLazy 'croaker/mustang-vim'
NeoBundle 'Railscasts-Theme-GUIand256color'
call neobundle#end()
filetype plugin indent on
" }}}
set runtimepath+=~/.vim/colors/

" #General {{{

if has("gui_running")
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
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
set listchars=tab:▷ ,trail:·,nbsp:⍽
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

set wildignore+=.git,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.o,*.obj,*.exe,*.dll
set wildignore+=vendor/*
set wildignore+=*.sw?

set splitbelow
set splitright
set diffopt+=vertical

set undolevels=1000
set novisualbell           " don't beep
set noerrorbells         " don't beep

set clipboard=unnamedplus
"}}}

" WildI menus {{{

set wildmenu
set wcm=<Tab>
menu Settings.paste-toggle       :call TogglePasterMode()<CR>
menu Settings.mouse-toggle       :call ToggleMouseMode()<CR>
map <F12> :emenu Settings.<Tab>
"}}}

" #autocmd plugins {{{
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
  au FileType ruby compiler ruby
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

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

au VimEnter * call SetGrepCommand()
augroup InitAutocommands
  au!
  " au BufWinLeave *.* mkview
  " au BufWinEnter *.* silent loadview
  au BufDelete * let g:deleted_buffer = bufname('%')
  au BufEnter  * call KeepTree()
  au VimEnter  * if argc() == 0  | NERDTree | end
  au BufWritePost * if line('$') < max_autocheck_lines | exe 'SyntasticCheck' | call lightline#update() | endif
  au WinEnter     * if &buftype == 'quickfix' && winheight(0) < 10 | resize 10 | endif
  au BufWinEnter * let &numberwidth=(float2nr(log10(line('$'))) + 3)
  au BufNewFile,BufRead fugitive://* set bufhidden=delete

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

" #Plugins Settings {{{
fu! MakeLazyCommand(plug, cmd)
  exe 'command! -nargs=* '.a:cmd.' call LazyPlugRun("'.a:plug.'","'.a:cmd.'", <f-args>)'
endfunction


" #webdev icons {{{
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
hi YellowFG ctermfg=3
" match YellowFG //
match YellowFG /[\ue739]/

" }}}

" #sitch {{{
let g:switch_mapping = ',ss'
" }}}

" #undoquit {{{
nnoremap <c-w>c :call undoquit#SaveWindowQuitHistory()<cr><c-w>c
" }}}

" #multicursor {{{
let g:multi_cursor_exit_from_insert_mode=0

function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
" }}}

" #rails {{{
" autocmd User Rails              silent! Lcd
" }}}

" #Delimmate {{{
let delimitMate_expand_space = 1
" }}}

" #vim-clang-format {{{
call MakeLazyCommand('vim-clang-format', 'ClangFormat')
" }}}

" #xterm-color-table.vim {{{
call MakeLazyCommand('xterm-color-table.vim', 'XtermColorTable')
" }}}

" #tagbar {{{
nmap <silent> <F2> :call LazyPlugRun('tagbar', 'TagbarToggle')<CR>
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
" }}}

" #IndenGuides {{{
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
au VimEnter,Colorscheme * hi IndentGuidesOdd  ctermbg=237   guibg=gray
au VimEnter,Colorscheme * hi IndentGuidesEven ctermbg=236 guibg=darkgray
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'qf']
" }}}

" #IndentLine {{{
"let g:indentLine_char = '⋮'   " another versions ┆│┊︙¦⋮
"let g:indentLine_fileTypeExclude = ['nerdtree', 'help']
"nmap <leader>ig :IndentLinesToggle<CR>
""let g:indentLine_showFirstIndentLevel = 1
"let g:indentLine_enabled = 0
"let g:indentLine_color_term = 238
" }}}

" #NERDTree {{{
let g:NERDTreeHijackNetrw = 0
" }}}

" #Syntastic  {{{
let g:syntastic_javascript_checkers = ['jshint']
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
" }}}

" #OverCommandLine {{{
let g:over_command_line_prompt = ':'
" }}}

" Incsearch {{{
fu! s:incsearch_keymap()
    IncSearchNoreMap <C-p> <Over>(buffer-complete)
    IncSearchNoreMap <C-n> <Over>(buffer-complete-prev)
endfu

" }}}

" Emmet {{{
fu! s:expand_html_tab()
  " try to determine if we're within quotes or tags. if so, assume we're in an emmet fill area.
  let line = getline('.')
  if col('.') < len(line)
    let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
    if len(line) >= 2
      return "\<C-y>n"
    endif
  endif
  " go to next item in a popup menu. this will insert a snippet if it's selected in the menu due to neosnippets being the first check.
  if pumvisible()
    return "\<C-n>"
  endif
  " expand anything emmet thinks is expandable.  I'm not sure anything happens below this block.
  if emmet#isExpandable()
    return "\<C-y>,"
  endif
  return "\<tab>"
endfu

"au FileType html,css imap <buffer><expr><tab> <sid>expand_html_tab()
"au FileType html,css nmap <leader>k <plug>(emmet-remove-tag)
let g:user_emmet_leader_key = ','
let g:user_emmet_mode='a'
" }}} emmet

" Lightline {{{
set laststatus=2
set noshowmode
"set clipboard=unnamed
let g:Powerline_symbols = 'fancy'


" \ 'colorscheme': 'wombat',
let g:lightline = {
      \ 'colorscheme': 'mycolorsheme',
      \ 'component': {
      \   'readonly': '%{&readonly?"  |":""}',
      \   'unite'   : '%{&filetype == "unite" ? unite#get_status_string() : ""}'
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'unite', 'readonly', 'filename', 'modified'] ],
      \   'right': [ ['percent', 'lineinfo'], ['relativepath', 'filetype'], ['rvm', 'syntastic'] ]
      \ },
      \ 'tabline': {
      \ 'left': [ [ 'tabs' ] ],
      \ 'right': []
      \ },
      \ 'inactive': {
      \   'right': [ [], ['relativepath', 'filetype'] ]
      \ },
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'rvm': 'rvm#statusline'
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
      \ 'tabline_subseparator': { 'left': '|', 'right': '|' }
      \ }
""\   'right': [ ['percent', 'lineinfo'], ['relativepath', 'filetype'], ['rvm', 'syntastic'] ]
      "\ 'component_expand': {
      "\   'syntastic': 'SyntasticStatuslineFlag',
      " \ 'tabline_subseparator': { 'left': '|', 'right': '|' }
let g:lightline.tab = {
      \ 'active': [ 'tabnum', 'ftgliph', 'filename', 'modified' ],
      \ 'inactive': [ 'tabnum', 'filename', 'modified' ]
      \ }

" \ 'active': [ 'tabnum', 'ft', 'filename', 'modified' ],
let g:lightline.tab_component_function = {
      \ 'ftgliph': 'FtGliph'
      \ }

let g:lightline.enable = {
    \ 'statusline': 1,
    \ 'tabline': 1
    \ }

fu! FtGliph(tabnum)
  let ftgliph = WebDevIconsGetFileTypeSymbol()
  " return strlen(&filetype) ? ftgliph : ''
  return strlen(&filetype) && ftgliph != '' ? ftgliph : ''
endfu
fu! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfu

" let g:lightline.tabline_separator = g:lightline.separator
" let g:lightline.tabline_subseparator = g:lightline.subseparator
" }}} <- lightline

" #Match tag {{{
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'eruby' : 1,
    \}
"}}} <- Match tag

" #Vim-ruby {{{
let ruby_operators = 1
let ruby_spellcheck_strings = 1
let g:rubycomplete_rails = 1
let g:rubycomplete_use_bundler = 1
let g:rubycomplete_classes_in_global = 1
"}}}


" #Clang formatter {{{
let g:clang_format#style_options = {
      \ "IndentWidth" : 4,
      \ "UseTab" : "Never",
      \ "BasedOnStyle" : "LLVM",
      \ "BreakBeforeBraces" : "Linux",
      \ "AlwaysBreakTemplateDeclarations" : "true",
      \ "AllowShortFunctionsOnASingleLine" : "false",
      \ "AllowShortIfStatementsOnASingleLine" : "false"
      \ }
" }}}

" #UltiSnips {{{
"let g:UltiSnipsSnippetDirectories=["~/.vim/UltiSnips", "~/.vim/bundle/vim-snippets/UltiSnips" ]
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-n>"
"let g:UltiSnipsJumpBackwardTrigger="<c-p>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
"set runtimepath+=~/.vim/ultisnips
"}}}

" #Ctrl-p {{{
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix\|NERD_tree_2\|NERD_tree_3'
"let g:ctrlp_lazy_update = 0

let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'git -C %s ls-files'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
  \ 'fallback': 'ag %s -l --nocolor -g ""'
  \ }
"}}}

" #Ack {{{
"
let s:use_grep_breaks = 1
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column '
  if s:use_grep_breaks | let g:ackprg .= ' --break' | endif
  let g:ackprg .= ' %s'
endif

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
")'

    " let g:ackprg = cmd . grep_args . ' "%s" ' . sources
  endif
endfu

let g:ackhighlight = 1

let g:ack_use_dispatch = 1
let g:ack_qhandler = ''

command! -bang -complete=file -nargs=* Find exe 'call ClearQuickFix()' | Ack<bang> <args>
au QuickFixCmdPost [^l]* nested cwindow

" }}}

" #Ag {{{
"let g:ag_qhandler="topleft copen"
"let g:grepformat='%f:%l:%m'
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

" }}}

" #Javascript {{{
augroup JavascriptFold
  au!
  au FileType javascript call JavaScriptFold()
augroup END
" }}}

" #Neocomplete {{{
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 4
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

let g:neocomplete#max_list = 8
let g:neocomplete#same_filetypes = {}
let g:neocomplete#same_filetypes._ = '_'
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'css': "/home/eugen/.vim/bundle/vim-dict/dict/css.dic",
      \ 'ruby': "~/.vim/dict/ruby.dic",
\ }
fu! s:my_cr_function()
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endf

" }}}

" #Smooth scroll {{{
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 1, 3)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>
"}}}

" #Gitv {{{
call MakeLazyCommand('gitv', 'Gitv')

let g:Gitv_DoNotMapCtrlKey = 1
" }}}

" RainbowParentheses {{{
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
"nnoremap <silent> <leader>rp :call LazyPlugRun('rainbow_parentheses.vim', 'RainbowParenthesesToggle'<CR>

call MakeLazyCommand('rainbow_parentheses.vim', 'RainbowParenthesesToggle')
"nnoremap <silent> <leader>rp :call LazyPlugRun('rainbow_parentheses.vim', 'RainbowParenthesesToggle')<CR>
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
" }}}

" Unite {{{
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file,file/new,mru,buffer,file_rec,line,grep', 'matchers', 'matcher_fuzzy')
"call unite#custom#source('grep', 'matchers', 'matcher_fuzzy')

call unite#custom#profile('default', 'context', {
  \ 'start_insert': 1,
  \ 'winheight': 10,
  \ 'prompt_direction': 'below',
  \ 'direction': 'botright'
  \ })

" let g:unite_prompt='» '
let g:unite_prompt = '>>> '
let g:unite_marked_icon = '✓'
let g:unite_split_rule = 'botright'
let g:unite_data_directory='~/.vim/.cache/unite'

fu! InNewTab(cmd)
  exe 'tabedit'
  exe a:cmd
endfu

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column --line-numbers -S -C4'
  let g:unite_source_grep_recursive_opt = ''
endif

function! s:unite_settings()
  " au! ChangeCurosrShape <buffer>
  resize 10
  nmap      <buffer> Q <plug>(unite_exit)
  nmap      <buffer> <esc> <plug>(unite_exit)
  imap      <buffer> <esc> <plug>(unite_exit)
  imap      <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap      <buffer> <C-k>   <Plug>(unite_select_previous_line)
  inoremap  <silent><buffer><expr> <C-x>     unite#do_action('split')
endfunction

function! s:UniteBuffFilter(candidates, context)
  let a:context.source.name =  a:context.source.name[0]
  for candidate in a:candidates
    let bufname = bufname(candidate.action__buffer_nr)
    let filename = bufname == '' ? 'Empty' : fnamemodify(bufname, ':p:t')
    let path = fnamemodify(bufname, ':p:h')
    let candidate.abbr = printf("[%s] %s", filename , path)
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
" }}}
"}}}

" #Helpers {{{
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

fu! s:IndentAll()
  if &foldmethod == "indent" | setl foldlevel=0 | else | setl foldlevel=1 | endif
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



augroup collumnLimit
  autocmd!
  " autocmd BufEnter,WinEnter,FileType scala,java,ruby highlight CollumnLimit ctermbg=237 guibg=DarkGrey
  " autocmd BufEnter,WinEnter,FileType scala,java,ruby 
  "       \ call HighlightColLimit(79, 'CollumnLimit')
  au VimEnter * call SetColumnLimit(79, ['ruby', 'c', 'cpp'], 'ctermbg=237 guibg=DarkGrey')
augroup END




fu! SetColumnLimit(col, filetypes, style)
  let filetypes = join(a:filetypes, ',')
  let l:pattern = '\%<' . (a:col+1) . 'v.\%>' . a:col . 'v'
  let match_name = 'ColLim'
  exe 'au BufEnter,WinEnter,FileType '.filetypes.' hi '.match_name.' '. a:style
  " au BufEnter,WinEnter,FileType scala,java,ruby   let w:m = matchadd(match_name, pattern, -1)
  " exe 'au BufEnter,WinEnter,FileType '.filetypes.' let w:colLimHl = matchadd("ColLim","'.l:pattern.'", -1)'
  exe 'au BufEnter,WinEnter,FileType '.filetypes.' let w:colLimHl = matchadd("ColLim","\%<80v.\%>79v", -1)'
  " echo 'au BufEnter,WinEnter,FileType '.filetypes.' let w:colLimHl = matchadd("' .match_name. '","'.pattern.'", -1)'
endfu


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

"command -bang -nargs=? QFix call QFixToggle(<bang>0)
"function! QFixToggle(forced)
  "if exists("g:qfix_win") && a:forced == 0
    "cclose
    "unlet g:qfix_win
  "else
    "copen 10
    "let g:qfix_win = bufnr("$")
  "endif
"endfunction

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
      NERDTreeToggle
    endif
  endif
  let g:deleted_buffer = -1
endfu

fu! LazyPlugRun(plug, cmd, ...)
  if ! neobundle#is_sourced(a:plug)  | call neobundle#source(a:plug) | endif
  let cmdArgs = ''
  for s in a:000
    cmdArgs += ' ' . s
  endfor
  exe a:cmd . cmdArgs
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
  " call setqflist([])
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
vmap <silent> <expr> p <sid>Repl()

"}}}

" #Keymappings {{{

" Rus lang settings {{{
map ё `| map й q| map ц w| map у e| map к r| map е t| map н y| map г u| map ш i| map щ o| map з p| map х [| map ъ ]
map ф a| map ы s| map в d| map а f| map п g| map р h| map о j| map л k| map д l| map ж ;| map э '| map я z| map ч x
map с c| map м v| map и b| map т n| map ь m| map б ,| map ю .| map Ё ~| map Й Q| map Ц W| map У E| map К R| map Е T
map Н Y| map Г U| map Ш I| map Щ O| map З P| map Х {| map Ъ }| map Ф A| map Ы S| map В D| map А F| map П G| map Р H
map О J| map Л K| map Д L| map Ж :| map Э "| map Я Z| map Ч X| map С C| map М V| map И B| map Т N| map Ь M| map Б <
map Ю >
" }}}

" zfat - set marker

let mapleader = ","

command! ReloadVimrc ro

nnoremap <silent> <leader>fc :call ToggleFoldColumn()<CR>

" Fugitive
nnoremap <leader>gs :TExe Gstatus<CR>
nnoremap <leader>gd :call GdiffInTab()<CR>
nnoremap <leader>gc :TExe Gcommit<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gv :Gitv<CR>
cabbrev ga Git add

nnoremap <leader>ff :Find!<space>
nnoremap <leader>fw :exe 'silent Find! '.expand('<cword>')<cr>


imap <expr> <C-q>  pumvisible() ?  \ "\<Plug>(neocomplete_start_unite_quick_match)" : ''

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

nnoremap <leader>sc :SyntasticCheck<CR>

vmap v      <Plug>(expand_region_expand)
vmap <C-v>  <Plug>(expand_region_shrink)

"inoremap  <silent><C-j><C-k> <C-o><S-o>
"inoremap  <silent><C-j>k     <C-o><S-o>
"inoremap  <silent><C-k><C-j> <C-o>o
"inoremap  <silent><C-k>j     <C-o>o

inoremap  <silent><C-c> <Esc>

" <C-o>:call InsertLineBefore()<CR>

vnoremap <leader>ree :Rextract<space>

nnorem ap <leader>ig IndenGuidesToggle
nnoremap <silent> <leader>e :NERDTreeToggle<CR>
" nnoremap <silent> <leader>e <plug>NERDTreeTabsToggle<CR>

" ,easymotion
map <C-g> <Plug>(easymotion-prefix)
nmap <C-g>/ <Plug>(easymotion-sn)
nmap <C-g>l <Plug>(easymotion-iskeyword-w)
nmap <C-g>h <Plug>(easymotion-iskeyword-b)
" nmap <C-g>l <Plug>(easymotion-fl)
" nmap <C-g>h <Plug>(easymotion-Fl)

cabbrev plu NeoBundleUpdate
cabbrev pli NeoBundleCheck


nnoremap ; :
"nnoremap : ;

nmap <leader>/ :noh<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nmap <leader>rc :call OpenMyVimrc()<CR>
nmap <leader>rrc :source $MYVIMRC<CR>

cmap <C-N> <Plug>CmdlineCompletionBackward
cmap <C-P> <Plug>CmdlineCompletionForward

cabbrev trw :call TrimWhiteSpace()
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-k> <Up>
cnoremap <C-j> <down>

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

" cnoremap <M-b> <S-Left>
" cnoremap <M-f> <S-Right>
"cmap <C-N> <Plug>CmdlineCompletionBackward
"cmap <C-P> <Plug>CmdlineCompletionForward

nnoremap <F3> n

"<S-F2>
nmap <Esc>[1;2Q :Rename<Space>

" unmap ex mode: 'Type visual to go into Normal mode.'
nnoremap Q <nop>

nnoremap gl gt
nnoremap gh g<S-t>

"command q call ExitFugitive('q')
"command qq call ExitFugitive('q!')
"fun! SetupCommandAlias(from, to)
  "exec 'cnoreabbrev <expr> '.a:from
        "\ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        "\ .'? ("'.a:to.'") : ("'.a:from.'"))'
"endfun
"call SetupCommandAlias('q', 'call ExitFugitive("q")')

cabbrev qq q!
cabbrev qqq qa!
cnoreabbrev <silent> q Q
cnoreabbrev <silent> qq Q!


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


" fu! SwitchPane(dir)
"   let winnr = winnr()

"   exe 'wincmd' . a:dir

"   if winnr == winnr()
"     if a:dir == 'l'
"       exe 'gT'
"     endif
"   endif
" endfu

nnoremap <silent> z<S-m> :call s:IndentAll()<CR>

vnoremap < <gv
vnoremap > >gv
vnoremap = =gv
vnoremap <S-y> ygv
"vnoremap // y/<C-R>"<CR>

" Subvert(smart substitute) with highlight
nnoremap <silent> <Leader>fs :OverCommandLine<CR>%s/
vnoremap <silent> <Leader>fs :OverCommandLine<CR>s/
" nnoremap <silent> <Leader>f<S-s> :OverCommandLine<CR>%S/
" vnoremap <silent> <Leader>f<S-s> :OverCommandLine<CR>S/

" Mnemonics (f)ind and (s)ubstitute
" nnoremap <Leader>fs :%s/
" vnoremap <Leader>fs :s/
nnoremap <Leader>f<S-s> :%S/
vnoremap <Leader>f<S-s> :S/

nnoremap <leader>fl :Unite -buffer-name=search\ line -start-insert line<CR>
nnoremap <leader>fm :Unite -winheight=10 -buffer-name=mru buffer file_mru<CR>
nnoremap <leader>fb :CtrlPLine<CR>


nnoremap <silent> <leader>qq :call ClearQuickFix()<CR>
nnoremap <silent> <leader>qw :Copen<CR>
nnoremap <leader>tc :tabclose<CR>

nnoremap <silent> <CR> :noh<CR><CR>

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
  if g:colors_name =~ 'Tomorrow-Night-Eighties'
    hi VertSplit    ctermbg=236
    hi Directory    cterm=bold
    " hi Normal       ctermbg=8
    hi FoldColumn   ctermbg=8
  elseif g:colors_name =~ 'base16-eighties'
    hi clear SignColumn
    hi Directory    ctermfg=2 cterm=bold
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
    hi MatchParen     ctermbg=none ctermfg=blue
    hi FoldColumn     ctermfg=14 ctermbg=236

    hi DiffChange cterm=bold ctermfg=white ctermbg=4
    hi DiffText   cterm=bold ctermfg=white ctermbg=27

    hi DiffAdd      cterm=bold ctermbg=64  ctermfg=white
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
    hi PmenuSel     cterm=reverse ctermfg=250 ctermbg=239
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

hi WarnMsg       term=standout ctermfg=15 ctermbg=27 guifg=White guibg=Blue

set background=dark
let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
let g:solarized_underline=0
"let base16colorspace=256
" colorscheme base16-railscasts

colorscheme base16-eighties

"}}}
"


" function QfMakeConv()
"    let qflist = getqflist()
"    for i in qflist
"      if i.text == ' ' | let i.text = '' | endif " = substitute(i.text, '||', '', '')
"    endfor
"    call setqflist(qflist)
" endfunction

" au QuickfixCmdPost * call QfMakeConv()
"




