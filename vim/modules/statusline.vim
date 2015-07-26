set laststatus=2
set noshowmode
let g:Powerline_symbols = 'fancy'

let g:lightline = {
      \ 'colorscheme': 'spacegray',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'filename', 'modified'], [ 'anzu' ] ],
      \   'right': [ ['percent', 'lineinfo'], [ 'relativepath', 'filetype', 'ftgliph'], ['gbranchicon', 'gbranch','rubyicon', 'rubyv', 'syntastic'] ]
      \ },
      \ 'inactive': {
      \   'left': [ [], [ 'filename', 'modified'],  [ ] ],
      \   'right': [ [], ['relativepath', 'filetype'] ]
      \ },
      \   'tabline': {
      \   'left': [ [ 'tabs' ] ],
      \   'right': [[]]
      \ },
      \ 'tab': {
      \   'active': [ 'tabnum', 'ftgliph', 'filename', 'modified' ],
      \   'inactive': [ 'tabnum', 'filename', 'modified' ]
      \ },
      \ 'component': {
      \   'modified': '%{"" != MyModified() ? MyModified() : ""}',
      \   'gbranch': '%{ShowBranch()?fugitive#head():""}',
      \   'gbranchicon': '%#LightLineLeft_active_0_tabsel#%{ShowBranch()?"":""}%#lightlineright_active_2#',
      \   'rubyv':    '%{ShowRubyV()?RubyVersion():""}',
      \   'rubyicon':    '%#LightLineLeft_normal_error_2#%{ShowRubyV()?"":""}%#lightlineright_active_2#',
      \   'anzu':     '%{ShowAnzu()?anzu#search_status():""}',
      \ },
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'relativepath': 'MyRelativePath',
      \   'rvm': 'RvmRubyV',
      \   'filename': 'MyFilename',
      \   'mode': 'MyMode',
      \ },
      \ 'tab_component_function': {
      \   'ftgliph': 'FtGliph'
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineCustom',
      \   'percent': 'MyPercent',
      \   'lineinfo': 'MyLineInfo',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \   'separator':    { 'left': '', 'right': '' },
      \   'subseparator': { 'left': '', 'right': '' },
      \   'tabline_separator':    { 'left': '', 'right': '' },
      \   'tabline_subseparator': { 'left': '⋮', 'right': '⋮' }
      \ }

fu! MyPercent()
  return  IsNotSpecialBuffer() ? '%3p%%' : ''
endfu
fu! MyPercent()
  return  IsNotSpecialBuffer() ? '•%3l◦%-2v' : ''
endfu

" \   'modified': '%#LightLineLeft_normal_error_1#%{"" != MyModified() ? MyModified() : ""}%#LightLineLeft_active_1#',
let g:lightline.enable = {
    \ 'statusline': 1,
    \ 'tabline': 1
    \ }


fu! IsNotSpecialBuffer()
  return expand('%:t') !~? '__Gundo\|NERD_tree\|__Tagbar__\|ControlP'
endfu
fu! ShowAnzu()
  return IsNotSpecialBuffer()
endfu
fu! ShowBranch()
  return IsNotSpecialBuffer() && exists("*fugitive#head") && ""!=fugitive#head()
endfu
fu! ShowRubyV()
  return IsNotSpecialBuffer() && (RailsDetect() || &ft ==# 'ruby')
endfu

let $GEM_HOME = system('env -i PATH="'.$PATH.'" ruby -rubygems -e "print Gem.dir"')
function! RubyVersion()
  return substitute(matchstr($GEM_HOME,'[^/]*$'),'^\[\]$','','')
endfunction

function! MyMode()
  return !IsNotSpecialBuffer() ? '' : lightline#mode()
endfunction

function! MyModified()
  let fname = expand('%:t')
  return &ft =~ 'help' || fname =~ '__Gundo\|NERD_tree\|__Tagbar__\|ControlP'  ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyFugitive()
  try
    if IsNotSpecialBuffer() && &ft !~? 'vimfiler' && exists('*fugitive#head')
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
" substitute(expand("%"),  getcwd(). "/" , "", "")
  let fname = expand('%:t')
  return &ft =~ 'help' || !IsNotSpecialBuffer()  ? '' : expand('%f')
endfu

function! MyReadonly()
  return &ft !~? 'help' && &readonly ? '' : ''
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
  return winwidth(0) > 70 && IsNotSpecialBuffer() ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfu
