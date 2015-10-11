let g:deoplete#enable_at_startup = 1


let g:deoplete#enable_ignore_case = 1
let g:deoplete#max_list = 8

let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.ruby = ['[^. *\t]\.\w*', '\h\w*::']


let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer', 'tag', 'file', 'syntax']
let g:necosyntax#min_keyword_length = 2

augroup OmniFunctions
  au!
  au FileType css setlocal omnifunc=csscomplete#CompleteCSS
  au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  au FileType python setlocal omnifunc=pythoncomplete#Complete
  au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  " au FileType ruby setlocal omnifunc=rubycomplete#Complete
augroup END
