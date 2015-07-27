fu s:SID()
  return matchstr(expand('<sfile>'), '\zs<SNR>\d\+_\zeSID$')
endfun
set laststatus=2
set noshowmode
let g:Powerline_symbols = 'fancy'
let $GEM_HOME = system('env -i PATH="'.$PATH.'" ruby -rubygems -e "print Gem.dir"')
let s:SID = s:SID()

let g:lightline = {
      \ 'colorscheme': 'spacegray',
      \ 'active': {
      \   'left': [[ 'mode', 'paste' ], [ 'filename', 'modified'], [ 'search_stat' ]],
      \   'right': [['percent', 'lineinfo'], [ 'relpath', 'filetype', 'fticon'], 
                  \ ['rbver', 'rbicon', 'warn_count', 'gicon', 'gbranch', 'warn_icon', 'err_count', 'err_icon', 'first_err']]
      \ },
      \ 'inactive': {
      \   'left': [[], ['filename', 'modified'], []],
      \   'right': [[], ['relpath', 'filetype']]
      \ },
      \ 'tabline': {
      \   'left':  [[ 'tabs' ]],
      \   'right': [[]]
      \ },
      \ 'tab': {
      \   'active':   [ 'tabnum', 'fticon', 'filename', 'modified' ],
      \   'inactive': [ 'tabnum', 'filename', 'modified' ]
      \ },
      \ 'component': {
      \ },
      \ 'component_function': {
      \   'filetype':     s:SID."filetype",
      \   'relpath':      s:SID."relpath",
      \   'rvm':          s:SID.'rvmrbver',
      \   'filename':     s:SID.'fname',
      \   'mode':         s:SID.'mode',
      \   'rbver':        s:SID.'rbver',
      \   'gbranch':      s:SID.'gbranch',
      \   'modified':     s:SID.'modified',
      \   'search_stat':  s:SID.'search_stat',
      \ },
      \ 'tab_component_function': {
      \   'fticon': s:SID.'fticon'
      \ },
      \ 'component_expand': {
      \   'percent':    s:SID.'percent',
      \   'lineinfo':   s:SID.'lineinfo',
      \   'gicon':      s:SID.'gicon',
      \   'rbicon':     s:SID.'rbicon',
      \   'err_icon':   s:SID.'err_icon',
      \   'warn_icon':  s:SID.'warn_icon',
      \   'err_count':  s:SID.'err_count',
      \   'first_err':  s:SID.'first_err',
      \   'warn_count': s:SID.'warn_count',
      \ },
      \ 'component_type': {
      \   'warn_icon': 'warnicon',
      \   'err_icon':  'erricon',
      \   'rbicon':    'rbicon',
      \   'err_count': 'middle',
      \ },
      \   'separator':            { 'left': '', 'right': '' },
      \   'subseparator':         { 'left': '', 'right': '' },
      \   'tabline_separator':    { 'left': '', 'right': '' },
      \   'tabline_subseparator': { 'left': '⋮', 'right': '⋮' }
      \ }

" \   'erricon':   s:SID.'SyntasticStatuslineCustom',
" \   'warnicon':  s:SID.'SyntasticStatuslineCustom',

fu! s:first_err()
  if get(w:, 's_err_count', 0) == 0
    return ''
  endif
  let err_text = w:s_errors[0].text
  let short_err_text = substitute(err_text, '\<.', '\u&', '')[:g:max_err_len]
  " if strlen(err_text) > g:max_err_len+1 
  if strlen(err_text) > strlen(short_err_text)
    let short_err_text .= '…'
  endif
  return '['.short_err_text.']'
endfu

fu! s:err_count()
  return get(w:, 's_err_count', '')
endfu
fu! s:warn_count()
  return get(w:, 's_warn_count', '')
endfu

fu! s:warn()
  let wc = get(w:, 's_warn_count', '')
  if wc > 0
    return '%#LightLineRight_active_2_warnicon#'
          \.'•'.'%#LightLineRight_active_2#'.wc
  endif
  return ''
endfu

fu! s:err_icon()
  return get(w:, 's_err_count', 0) == 0 ? '' : '•'
endfu

fu! s:warn_icon()
  " return  s:regularbuf() ? '%3l◦%-2v' : ''
  return get(w:, 's_warn_count', 0) == 0 ? '' : '▪'
endfu



let g:lightline.mode_map = {
    \ 'n' : 'N',
    \ 'i' : 'I',
    \ 'R' : 'R',
    \ 'v' : 'V',
    \ 'V' : 'VL',
    \ 'c' : 'C',
    \ "\<C-v>": 'VB',
    \ 's' : 'S',
    \ 'S' : 'SL',
    \ "\<C-s>": 'SB',
    \ '?': ' ' }

fu! s:percent()
  return s:regularbuf() ? '%3p%%' : ''
endfu

fu! s:search_stat()
  return s:regularbuf() ? anzu#search_status() : ''
endfu

fu! s:lineinfo()
  return  s:regularbuf() ? '%3l:%-2v' : ''
endfu

fu! s:regularbuf()
  return expand('%:t') !~? '__Gundo\|NERD_tree\|__Tagbar__\|ControlP'
endfu

fu! s:gbranch()
  return s:regularbuf() && exists("*fugitive#head") ? fugitive#head() : ''
endfu

fu! s:gicon()
  return s:regularbuf() && exists("*fugitive#head") && !empty(fugitive#head()) ? '' : ''
endfu

fu! s:rbicon()
  return s:regularbuf() && (RailsDetect() || &ft==#"ruby")? '' : ''
endfu
fu! s:rbver()
  return s:regularbuf() && (RailsDetect() || &ft==#"ruby") ?
        \ substitute(matchstr($GEM_HOME,'[^/]*$'),'^\[\]$','','') : ''
endfu
fu! s:modified()
  return &ft =~ 'help' || !s:regularbuf() ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfu

fu! s:relpath()
  return &ft =~ 'help' || !s:regularbuf()  ? '' : substitute(expand('%f'), 'fugitive://'.$PWD.'/', '', '')
endfu

fu! s:readonly()
  return &ft !~? 'help' && &readonly ? '' : ''
endfu

fu! s:fname()
  let fname = expand('%:t')
  return fname == 'ControlP' ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != s:readonly() ? s:readonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]')
endfu

fu! s:ctrlps1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfu

let g:ctrlp_status_func = {
  \ 'prog': s:SID.'ctrlps2',
  \ 'main': s:SID.'ctrlps1',
  \ }
fu! s:ctrlps2(str)
  return lightline#statusline(1)
endfu

fu! s:tagbar(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfu
let g:tagbar_status_func = s:SID.'tagbar'

fu! s:mode()
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
endfu

fu! s:rvmrbver()
  if &filetype ==# 'ruby' && exists('$RUBY_VERSION')
    return '[' . $RUBY_VERSION . ']'
  else
    return ''
  endif
endfu

fu! s:fticon(tabnum)
  let fticon = WebDevIconsGetFileTypeSymbol()
  return strlen(&filetype) && fticon != g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol ? fticon : ''
endfu

fu! s:filetype()
  return winwidth(0) > 70 && s:regularbuf() ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfu
