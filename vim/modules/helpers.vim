fu! s:extend_makers()
  let g:neomake_ruby_mri_maker = neomake#makers#ft#ruby#mri()
  call extend(g:neomake_ruby_mri_maker, {'postprocess': function('PostMake')})
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

fu! Cleanup()
  retab
  while 1
    redraw
    let choice = nr2char(getchar())
    if tolower(choice) == 'q'
      break
    elseif choice == 'r'
      %s/\n\{3,}/\r\r/e
      echo 'Remove repeated lines'
    elseif choice == 'e'
      %s/\s\+$//e
      echo 'Remove empty lines'
    elseif choice == 'c'
      g/\v^\s*#/d
      echo 'Remove comments'
    endif
  endwhile
endfu

fu! TrimWhiteSpace()
  %s/\s\+$//e
  %s/\n\{3,}/\r\r/e
  retab
endf

fu! Quit()
  try
    silent q
  catch /^Vim(quit):/
    echohl ErrorMsg | echo 'Save changes before closing?(Y/n)' | echohl None
    let choice = tolower(nr2char(getchar()))
    redraw
    if choice == 'y' || choice == "\<CR>"
      wq
    elseif choice == 'n' || choice == "\<S-q>"
      q!
    else
      echo 'Cancelled'
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

if has('nvim')
  fu! CheckSyntax()
    exe 'Neomake'
    " if exists('w:s_err_count')
    "   unlet w:s_err_count
    " endif
    " if exists('w:s_err_count')
    "   unlet w:s_warn_count
    " endif
  endfu
  fu! PostMake(...)
    " let loclist = extend(neomake#statusline#LoclistCounts(), {'E':0, 'W':0})
    " let w:s_err_count  = l:loclist.E
    " let w:s_warn_count = l:loclist.W
    let loclist = neomake#statusline#LoclistCounts()
    let w:s_err_count  = get(l:loclist, 'E', 0)
    let w:s_warn_count = get(l:loclist, 'W', 0)
    call lightline#update()
  endfu
  " call s:extend_makers()
else
  fu! CheckSyntax()
    exe 'SyntasticCheck'
    let loclist = g:SyntasticLoclist.current()
    let w:s_errors     = loclist.errors()
    let w:s_warnings   = loclist.warnings()
    let w:s_err_count  = len(w:s_errors)
    let w:s_warn_count = len(w:s_warnings)
  endfu
endif

fu! RmSwp()
  let swp_path = &directory . substitute(expand('%:p'), '\/', '%', 'g') . '.swp'
  if filereadable(swp_path)
    let rm_cmd = 'rm '.shellescape(swp_path)
    call system(rm_cmd)
    echo rm_cmd
  else
    echo '.swp file not found'
  endif
endfu

fu! RemoveFugitiveIndexFiles(l1, l2)
  for l in range(a:l1, a:l2)
    let filename = matchstr(getline(l),'^#\t\zs.\+\ze$')
    " let filename = matchstr(getline(l),'^#\t\zs.\{-\}\ze\%( ([^()[:digit:]]\+)\)\=$')
    if empty(filename) | continue | endif

    let choice = input('Remove file "' . filename . '"? (y/N) ')
    if choice[0] == 'y'
      call delete(filename)
      edit
    end
  endfor
  return 'redraw!'
endfu
