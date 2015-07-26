" ,vCoolor
let g:vcoolor_disable_mappings = 1
let g:vcoolor_lowercase = 1
let g:vcoolor_custom_picker = 'zenity --title "Vim colorsel" --color-selection --show-palette --color '

" let g:vcoolor_map = '<leader>pp'
" let g:vcool_ins_rgb_map = '<leader>pr'
let g:vcoolor_map = '<F4>'
let g:vcool_ins_rgb_map = '<F4>'


" ,instantmarkdown
let g:instant_markdown_autostart = 0

" ,clever-f
let g:clever_f_smart_case = 1
let g:clever_f_fix_key_direction = 1

" ,sideways
nnoremap <S-h> :SidewaysLeft<CR>
nnoremap <S-l> :SidewaysRight<CR>

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


" let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''
" let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = 'd'
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = '🗋'
hi YellowFG ctermfg=3


" ,indexed-search
let  g:indexed_search_mappings = 0

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


" ,IndentLine
" let g:indentLine_char = '⋮'   " another versions ┆│┊︙¦⋮
" let g:indentLine_fileTypeExclude = ['nerdtree', 'help']
" nmap <leader>ig :IndentLinesToggle<CR>
" let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_enabled = 0
" let g:indentLine_color_term = 238

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




" ,emmet
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
    " if s:use_grep_breaks | let grep_args .= ' --break' | endif

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

" ,javascript
augroup JavascriptFold
  au!
  au FileType javascript call JavaScriptFold()
augroup END

" ,vim-monster
"

" ,rails
let g:rails_ctags_arguments = '-f tmp/tags'

" ,gitv
let g:Gitv_DoNotMapCtrlKey = 1

" ,scratch
let g:scratch_no_mappings = 1

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
