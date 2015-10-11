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
let g:unite_data_directory='~/.vim/tmp/cache/unite'
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

augroup UniteSettings
  au!
  au FileType unite call s:unite_settings()
augroup END

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



let my_tabopen = {
\ 'is_selectable' : 1,
\ }
function! my_tabopen.func(candidates)
  call unite#take_action('tabopen', a:candidates)

  let dir = isdirectory(a:candidate.word) ?
  \    a:candidate.word : fnamemodify(a:candidate.word, ':p:h')
  execute g:unite_kind_openable_lcd_command fnameescape(dir)
endfunction
call unite#custom#action('file,buffer', 'tabopen', my_tabopen)
unlet my_tabopen

let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.conf = {
    \ 'description' : 'Config modules'
    \}
let g:unite_source_menu_menus.conf.command_candidates = [
      \ [ 'unite', 'split ~/.vim/modules/unite.vim' ],
      \ [ 'colors', 'split ~/.vim/modules/colors.vim' ],
      \ [ 'helpers', 'split ~/.vim/modules/helpers.vim' ],
      \ [ 'complete', 'split ~/.vim/modules/complete.vim' ],
      \ [ 'optins', 'split ~/.vim/modules/options.vim' ],
      \ [ 'plugins', 'split ~/.vim/modules/plugins.vim' ],
      \ [ 'statusline', 'split ~/.vim/modules/statusline.vim' ],
      \ [ 'mappings', 'split ~/.vim/modules/mappings.vim' ],
      \ [ 'ninit', 'split ~/.vim/modules/ninit.vim' ],
      \ ]

