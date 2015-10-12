fu! s:alias(to, from)
  exe 'nmap '.a:from.' '.a:to
  exe 'nnoremap '.a:to.' <Nop>'
endfu
function! s:incsearch_fuzzy(...) abort
  return extend(copy({
  \   'converters': [
  \     incsearch#config#fuzzy#converter(),
  \     incsearch#config#fuzzyspell#converter()
  \   ],
  \ }), get(a:, 1, {}))
endfunction

if has('nvim')
  call s:alias('[shftf2]', '<S-F2>')
  call s:alias('[shftf3]', '<S-F3>')
else
  call s:alias('[shftf2]', '<Esc>[1;2Q')
  call s:alias('[shftf3]', '<Esc>[1;2R')
endif

let g:mapleader = ','
let g:user_emmet_leader_key = '<Leader>'

" #Completion
cmap     <C-P> <Plug>CmdlineCompletionForward
cmap     <C-N> <Plug>CmdlineCompletionBackward
cmap     <c-o> <Plug>(unite_cmdmatch_complete)
imap     <C-k>  <Plug>(neocomplete_start_unite_complete)

" #Navigation
  " ,tree
  let NERDTreeMapJumpNextSibling = "\<C-w>j"
  let NERDTreeMapJumpPrevSibling = "\<C-w>k"
  nnoremap <silent> <Leader>t  :NERDTreeTabsToggle<CR>
  nnoremap <silent> <Leader>nf :NERDTreeFind<CR>
  nnoremap <C-r>      :Unite -buffer-name=outline -start-insert outline<CR>
  nnoremap <F2>       :TagbarToggle<CR>
  nnoremap <Leader>fb :CtrlPLine<CR>
  nnoremap <Leader>e  :call RailsCommands(g:rails_commands, g:rails_edit_mappings, 'CtrlP %s')<CR>

  " ,search
  call   easysearch#map('<C-f><C-f>','<Plug>(easysearch)')
  call   easysearch#map('<C-f>f',    '<Plug>(easysearch)')
  call   easysearch#map('<Leader>ff','<Plug>(easysearch)')
  nnoremap               <Leader>fl   :Unite -buffer-name=search\ line -start-insert line<CR>
  nnoremap               <C-f>l       :Unite -buffer-name=search\ line -start-insert line<CR>
  map                    /            <Plug>(incsearch-forward)
  map                    ?            <Plug>(incsearch-backward)
  map                    g/           <Plug>(incsearch-stay)
  map     <silent>       #            <Plug>(incsearch-nohl0)<Plug>(asterisk-z#)<Plug>(anzu-echo-search-status)
  map     <silent>       *            <Plug>(incsearch-nohl0)<Plug>(asterisk-z*)<Plug>(anzu-echo-search-status)
  map     <silent>       g*           <Plug>(incsearch-nohl0)<Plug>(asterisk-gz*)<Plug>(anzu-echo-search-status)
  map     <silent>       g#           <Plug>(incsearch-nohl0)<Plug>(asterisk-gz#)<Plug>(anzu-echo-search-status)
  map                    N            <Plug>(incsearch-nohl)<Plug>(anzu-N)zz
  map                    n            <Plug>(incsearch-nohl)<Plug>(anzu-n)zz
  nnoremap               <CR>         :nohl<Bar>AnzuClearSearchStatus<CR>:echo ''<CR>
  noremap <silent><expr> z/           incsearch#go(<SID>incsearch_fuzzy())
  noremap <silent><expr> z?           incsearch#go(<SID>incsearch_fuzzy({'command': '?'}))
  noremap <silent><expr> zg?          incsearch#go(<SID>incsearch_fuzzy({'is_stay': 1}))
  " nnoremap               /            :<C-U>if get(v:, 'hlsearch', 0)<Bar>call feedkeys("/\<C-R>/")<Bar>else<Bar>call feedkeys('/')<CR>
  vmap                   /            *
  augroup IncsearchAu
    au!
    au User IncSearchLeave  AnzuUpdateSearchStatus
    au VimEnter * exe 'IncSearchNoreMap <C-p> <Over>(buffer-complete)' | exe 'IncSearchNoreMap <C-n> <Over>(buffer-complete-prev)'
  augroup END
  nmap  [shftf3] <S-n>
  nnoremap <F3> n

  " ,motion
  nnoremap <C-t> :tabnew<CR>
  nnoremap <silent> <C-i> <C-i>zz
  nnoremap <silent> <C-o> <C-o>zz
  map <C-g> <Plug>(easymotion-prefix)
  nmap <C-g>/ <Plug>(easymotion-sn)
  nmap <C-g>l <Plug>(easymotion-iskeyword-w)
  nmap <C-g>h <Plug>(easymotion-iskeyword-b)
  nmap <C-g><C-l> <Plug>(easymotion-iskeyword-w)
  nmap <C-g><C-h> <Plug>(easymotion-iskeyword-b)
  nmap gh <Plug>(easymotion-iskeyword-b)
  nmap gl <Plug>(easymotion-iskeyword-w)
  nmap gj <Plug>(easymotion-j)
  nmap gk <Plug>(easymotion-k)

  map <Plug>(smartword-basic-w)  <Plug>CamelCaseMotion_w
  map <Plug>(smartword-basic-b)  <Plug>CamelCaseMotion_b
  map <Plug>(smartword-basic-e)  <Plug>CamelCaseMotion_e
  nmap w  <Plug>(smartword-w)
  nmap b  <Plug>(smartword-b)
  nmap e  <Plug>(smartword-e)
  nmap ge  <Plug>(smartword-ge)
  xmap w  <Plug>(smartword-w)
  xmap b  <Plug>(smartword-b)
  xmap e  <Plug>(smartword-e)
  xmap ge  <Plug>(smartword-ge)
  map <S-W> <Plug>CamelCaseMotion_w
  map <S-B> <Plug>CamelCaseMotion_b
  map <S-E> <Plug>CamelCaseMotion_e

  nnoremap <Tab>    gt
  nnoremap <S-Tab>  gT
  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l

  " ,MRU
  nnoremap <C-f> <Nop>
  nnoremap <C-f>m     :Unite -winheight=10 -buffer-name=recent buffer file_mru<CR>
  nnoremap <C-f><C-m> :Unite -winheight=10 -buffer-name=recent buffer file_mru<CR>

  " ,Bookmarks
  nmap <Space><Space> <Plug>BookmarkToggle
  nmap <Space>i <Plug>BookmarkAnnotate
  nmap <Space>a <Plug>BookmarkShowAll
  nmap <Space>j <Plug>BookmarkNext
  nmap <Space>k <Plug>BookmarkPrev

" #Git
nnoremap          <Leader>gg :Git<space>
nnoremap <silent> <Leader>gs :Gtabedit :<CR>
nnoremap <silent> <Leader>gd :call GdiffInTab()<CR>
nnoremap <silent> <Leader>gc :Gcommit<CR>
nnoremap <silent> <Leader>gl :Glog<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gb :NERDTreeClose<Bar>Gblame<CR>
nnoremap <silent> <Leader>gv :Gitv<CR>

" #Editing
vnoremap <Leader>ree :Rextract<space>
vmap v      <Plug>(expand_region_expand)
vmap <C-v>  <Plug>(expand_region_shrink)
call expand_region#custom_text_objects('ruby', { 'im' :0, 'am' :0, })
call expand_region#custom_text_objects({'iv':0, 'av':0, })
vnoremap <Leader>t, :Tabularize/,\zs<CR>
vnoremap <Leader>t: :Tabularize/:\zs<CR>
vnoremap <Leader>t= :Tabularize/=<CR>
nnoremap > >>
nnoremap < <<
vnoremap < <gv
vnoremap > >gv
vnoremap = =gv
nnoremap = ==
vnoremap <S-y> ygv

nmap <M-k> <Plug>(textmanip-move-up)
nmap <M-j> <Plug>(textmanip-move-down)
nmap <M-h> <Plug>(textmanip-move-left)
nmap <M-l> <Plug>(textmanip-move-right)
vmap <M-k> <Plug>(textmanip-move-up)
vmap <M-j> <Plug>(textmanip-move-down)
vmap <M-h> <Plug>(textmanip-move-left)
vmap <M-l> <Plug>(textmanip-move-right)

cabbrev Tab Tabularize
nnoremap <Leader>f<S-s> :%S/
vnoremap <Leader>f<S-s> :S/
nnoremap <silent> <Leader>fs :OverCommandLine<CR>%s/
vnoremap <silent> <Leader>fs :OverCommandLine<CR>s/

vnoremap " S"
vnoremap ' S'
nnoremap d" ds"
nnoremap dt dst
nnoremap d' ds'

nmap <Leader>mc  :Unite -start-insert menu:conf<CR>
nmap <Leader>rrc :source $MYVIMRC<CR>
cabbrev trw :call TrimWhiteSpace()
nmap <silent> [shftf2] :call feedkeys(':Rename '.expand('%:t'), 'n')<CR>
let g:vcoolor_map = '<F4>'
let g:vcool_ins_rgb_map = '<F4>'

" #insert mode motions
inoremap <C-d> <Delete>
inoremap <M-b> <S-Left>
inoremap <M-f> <S-Right>

" #Commandline
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
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
cnoreabbrev qq q!
cnoreabbrev qqq qa!
cnoreabbrev q Q
cnoreabbrev qq Q!
cnoreabbrev m Make
command! -bang -nargs=0 Q call ExitFugitive('q<bang>')
cnoreabbrev ga   Git add
cnoreabbrev gcm  Git commit -m
cnoreabbrev gcam Git commit --amend -m
cnoreabbrev gco  Git checkout
cnoreabbrev gcof Git checkout "%:p:h"


cabbrev plu NeoBundleUpdate
cabbrev pli NeoBundleCheck
cabbrev pls Unite neobundle/search

if has('gui_running')
  inoremap <C-v> <C-r><C-o>*
  cnoremap <C-v> <C-r><C-o>*
else
  inoremap <C-v> <C-r><C-o>0
  " cnoremap <C-v> <C-r><C-o>0
  augroup GuiPasteMappings
    au!
    au GUIEnter * inoremap <C-v> <C-r><C-o>* | cnoremap <C-v> <C-r><C-o>*
  augroup END
endif

nnoremap <silent> <Leader>rp :RainbowParenthesesToggle<CR>
nnoremap <silent> <Leader>fc :call ToggleFoldColumn()<CR>
nnoremap          <Leader>ig :IndentGuidesToggle<CR>
nnoremap          <Leader>sc :SyntasticCheck<CR>
nnoremap <Leader>l     :lopen<CR>
nnoremap <Leader>c     :copen<CR>
nnoremap <Leader><S-c> :Copen<CR>

" #Misc
nnoremap j gj
nnoremap k gk
nnoremap <C-y> 2<C-y>
nnoremap <C-e> 2<C-e>
nnoremap z<S-e> <nop>
nnoremap <silent><C-w>o     :res<CR>
nnoremap <silent><C-w><C-o> :res<CR>
inoremap <silent><C-c> <Esc>
nnoremap <C-c> <Esc>
nnoremap <C-s> :write<CR>
nnoremap <S-u> :redo<CR>
nnoremap ; :
nnoremap <silent> <S-q> :call Quit()<CR>
noremap  <silent>  <C-q> :call CloseSomething()<CR>
nnoremap <silent> z<S-m> :call g:FoldEverything()<CR>

map ё `| map й q| map ц w| map у e| map к r| map е t| map н y| map г u| map ш i| map щ o| map з p| map х [| map ъ ]
map ф a| map ы s| map в d| map а f| map п g| map р h| map о j| map л k| map д l| map ж ;| map э '| map я z| map ч x
map с c| map м v| map и b| map т n| map ь m| map б ,| map ю .| map Ё ~| map Й Q| map Ц W| map У E| map К R| map Е T
map Н Y| map Г U| map Ш I| map Щ O| map З P| map Х {| map Ъ }| map Ф A| map Ы S| map В D| map А F| map П G| map Р H
map О J| map Л K| map Д L| map Ж :| map Э "| map Я Z| map Ч X| map С C| map М V| map И B| map Т N| map Ь M| map Б <
map Ю >
