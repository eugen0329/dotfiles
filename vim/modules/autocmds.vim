
if &t_Co > 2 || has("gui_running") | syntax on | endif

augroup FiletypeAutocommands
  au!
  au FileType eruby setlocal iskeyword+=-
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
  au Filetype eruby let b:delimitMate_matchpairs = '(:),[:],{:},<:>'
  au BufNewFile,BufRead *.slim set iskeyword-=. foldmethod=indent
  au BufRead,BufNewFile *.scss set filetype=scss.css
  au FileType qf setlocal nolist
  au FileType notes setlocal foldmethod=indent
  au BufEnter * let b:url_hl = matchadd('UrlBody', '\m\c\%(\%(h\?ttps\?\|ftp\|file\|ssh\|git\):\/\/\|[a-z]\+@[a-z]\+.[a-z]\+:\)
          \\%(\%([&:#*@~%_\-=?!+;/.0-9A-Za-z]*\%(\%([.,][&:#*@~%_\-=?!+;/0-9A-Za-z]\+\)\+\|\%(:\d\+\)\?\)\)\?
          \\%(([&:#*@~%_\-=?!+;/.0-9A-Za-z]*)\)\?
          \\%({\%([&:#*@~%_\-=?!+;/.0-9A-Za-z]*\|{[&:#*@~%_\-=?!+;/.0-9A-Za-z]*}\)}\)\?
          \\%(\[[&:#*@~%_\-=?!+;/.0-9A-Za-z]*\]\)\?\)*[-/0-9A-Za-z]*')
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
  au WinEnter     * if &buftype == 'quickfix' && winheight(0) < 10 | resize 10 | endif
  au BufWinEnter * let &numberwidth=(float2nr(log10(line('$'))) + 3)
  " au BufNewFile,BufRead fugitive://* set bufhidden=delete
  " Restore cursor position
  au BufWritePost * if line('$') < max_autocheck_lines |
        \ call CheckSyntax() |
        \ call lightline#update() |
        \ endif
  au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  " \ exe 'SyntasticCheck' |

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
