" let s:blue1 = 4
let s:norm = 0
let s:blue3 = 7
let s:blue2 = 8
let s:blue1 = 12
let s:blue0 = 4
let s:cyan1 = 6
let s:cyan0 = 14
let s:white = 'none'
let s:yellow1 = 11

exe 'hi NonText         term=bold ctermfg='.s:white.' ctermbg='.s:norm.' gui=bold guifg=#2a2e34 guibg=#2a2e34'

exe 'hi Directory       term=bold ctermfg='.s:blue0.' guifg=#8fa1b3'
exe 'hi Question        term=standout ctermfg='.s:blue0.' gui=bold guifg=#8fa1b3'
exe 'hi Title           term=bold ctermfg='.s:blue0.' guifg=#8fa1b3'


" hi clear Special
exe 'au ColorScheme  * hi Special         term=bold ctermfg='.s:cyan0.' guifg=#96b5b4'
exe 'hi link SpecialComment  Special'
exe 'hi SpecialChar     ctermfg=14 guifg=#ab7967'
exe 'hi SpecialKey      term=bold ctermfg='.s:white.' guifg=#65737e'

" #Completion popup

exe 'hi Pmenu           ctermfg='.s:blue0.' ctermbg='.s:blue3.' guifg=#a7adba guibg=#31353c'
" Slider bg
exe 'hi PmenuSbar       ctermfg='.s:blue2.' ctermbg='.s:blue2.' guifg=#31353c guibg=#31353c'
" Slider
exe 'hi PmenuThumb      ctermfg='.s:blue0.' ctermbg='.s:blue0.' guifg=#2a2e34 guibg=#a7adba'

exe 'hi PmenuSel        ctermfg='.s:blue3.' ctermbg=3 guifg=#2a2e34 guibg=#ebcb8b'

exe 'hi link WildMenu   PmenuSel'

exe 'hi StatusLine      cterm=none ctermfg='.s:blue1.' ctermbg='.s:blue3.' guifg=#a7adba guibg=#31353c'
exe 'hi StatusLineNC    cterm=none ctermfg='.s:yellow1.' ctermbg='.s:blue3.' guifg=#65737e guibg=#31353c'


exe 'hi VertSplit       cterm=none ctermfg='.s:blue3.' ctermbg='.s:blue3.' guifg=#31353c guibg=#31353c'
exe 'hi clear SignColumn'
exe 'hi link SignColumn LineNr'
exe 'hi LineNr          term=underline cterm=none ctermfg='.s:blue2.' ctermbg='.s:blue3.'  guifg=#4f5b66 guibg=#31353c'

exe 'hi CursorLineNr    term=bold cterm=bold ctermfg='.s:blue0.' ctermbg='.s:blue3.'  gui=bold guifg=#65737e guibg=#31353c'
exe 'hi CursorLine      term=underline cterm=none ctermbg='.s:blue3.' guibg=#31353c'
exe 'hi link CursorColumn  CursorLine'

exe 'hi FoldColumn      term=standout ctermfg='.s:cyan1.' ctermbg='.s:blue3.' guifg=Cyan guibg=#31353c'
exe 'hi Folded          term=standout ctermfg='.s:blue1.' ctermbg='.s:blue3' guifg=#65737e guibg=#31353c'


exe 'hi ErrorMsg        term=standout ctermfg=1 ctermbg='.s:norm.' guifg=#bf616a guibg=#2a2e34'
exe 'hi clear Search'
exe 'hi clear IncSearch'
exe 'hi Search          term=reverse ctermfg='.237.' ctermbg=3 guifg=#31353c guibg=#ebcb8b'
exe 'hi IncSearch       term=reverse ctermfg='.237.' ctermbg=1 guifg=#31353c guibg=#ebcb8b'

exe 'hi MoreMsg         term=bold ctermfg=2 gui=bold guifg=#a3be8c'
exe 'hi ModeMsg         term=bold cterm=bold ctermfg=2 gui=bold guifg=#a3be8c'






exe 'hi Visual          term=reverse ctermbg=25 guibg=#4f5b66'
exe 'hi WarningMsg      term=standout ctermfg=1 guifg=#bf616a'



exe 'hi clear MatchParen'
" exe 'hi MatchParen       ctermfg='.s:cyan0.' ctermbg='.s:blue2.' guifg=#2a2e34 guibg=#65737e'
exe 'hi MatchParen       ctermfg='.s:cyan0.' guifg=#2a2e34 guibg=#65737e'

exe 'hi DiffAdd         term=bold ctermfg=2 ctermbg='.s:norm.' guifg=#eff1f5 guibg=#a3be8c'
exe 'hi DiffChange      term=bold ctermfg='.s:blue1.' ctermbg='.s:norm.' guifg=#8fa1b3 guibg=#2a2e34'
exe 'hi DiffDelete      term=bold ctermfg=1 ctermbg='.s:norm.' gui=bold guifg=#bf616a guibg=#bf616a'
exe 'hi DiffText        term=reverse cterm=bold ctermfg='.s:blue1.' ctermbg='.s:norm.' gui=bold guifg=#8fa1b3 guibg=#2a2e34'
exe 'hi Conceal         ctermfg='.s:blue1.' ctermbg='.s:norm.' guifg=#8fa1b3 guibg=#2a2e34'
exe 'hi SpellBad        term=reverse cterm=undercurl ctermbg='.s:norm.' gui=undercurl guibg=#2a2e34 guisp=Red'
exe 'hi SpellCap        term=reverse cterm=undercurl ctermbg='.s:norm.' gui=undercurl guibg=#2a2e34 guisp=blue0'
exe 'hi SpellRare       term=reverse cterm=undercurl ctermbg='.s:norm.' gui=undercurl guibg=#2a2e34 guisp=Magenta'
exe 'hi SpellLocal      term=underline cterm=undercurl ctermbg='.s:norm.' gui=undercurl guibg=#2a2e34 guisp=Cyan'
exe 'hi TabLine         term=underline ctermfg='.s:blue1.' ctermbg=10 guifg=#65737e guibg=#31353c'
" exe '" hi TabLineSel      term=bold ctermfg=12 ctermbg='.s:norm.' guifg=#a7adba guibg=#2a2e34'
exe 'hi TabLineSel      term=bold ctermfg=0 ctermbg='.s:norm.' guifg=#a7adba guibg=#2a2e34'
exe 'hi TabLineFill     term=reverse ctermfg='.s:blue1.' ctermbg=10 guifg=#65737e guibg=#31353c'
" exe '" hi CursorColumn    term=reverse ctermbg=10 guibg=#31353c'
" exe 'hi Cursor          ctermfg=0 ctermbg=7 guifg=#2a2e34 guibg=#c0c5ce'
" exe '" hi MatchParen      term=reverse cterm=none ctermfg='.s:blue1.' ctermbg=4 guifg=#2a2e34 guibg=#65737e'
exe 'hi Normal          ctermfg='.s:white.' ctermbg='.s:norm.' guifg=#c0c5ce guibg=#2a2e34'
exe 'hi Comment         term=bold ctermfg=246 guifg=#65737e'
exe 'hi Identifier      term=underline ctermfg=1 guifg=#bf616a'
exe 'hi Statement       term=bold cterm=bold ctermfg=1 gui=bold guifg=#bf616a'
exe 'hi PreProc         term=underline ctermfg=3 guifg=#ebcb8b'
exe 'hi Type            term=underline ctermfg=3 guifg=#d08770'
exe 'hi Constant        term=underline ctermfg=2 guifg=#d08770'
exe 'hi Underlined      term=underline cterm=underline ctermfg=1 gui=underline guifg=#bf616a'
exe 'hi Ignore          ctermfg=0 guifg=bg'
exe 'hi Error           term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red'
exe 'hi Todo            term=standout ctermfg=3 ctermbg=10 guifg=#ebcb8b guibg=#31353c'
exe 'hi Character       ctermfg=1 guifg=#bf616a'
exe 'hi Number          ctermfg=9 guifg=#d08770'
exe 'hi Boolean         ctermfg=9 guifg=#d08770'
exe 'hi Float           ctermfg=9 guifg=#d08770'
exe 'hi Function        ctermfg='.s:blue0.' guifg=#8fa1b3'
exe 'hi Conditional     ctermfg=5 guifg=#b48ead'
exe 'hi Repeat          ctermfg=3 guifg=#ebcb8b'
exe 'hi Label           ctermfg=3 guifg=#ebcb8b'
exe 'hi Operator        ctermfg='.s:white.' guifg=#c0c5ce'
exe 'hi Keyword         ctermfg=5 guifg=#b48ead'
exe 'hi Exception       ctermfg=1 guifg=#bf616a'
exe 'hi Include         ctermfg='.s:blue0.' guifg=#8fa1b3'
exe 'hi Define          ctermfg=5 guifg=#b48ead'
exe 'hi Macro           ctermfg=1 guifg=#bf616a'
exe 'hi link PreCondit       PreProc'
exe 'hi StorageClass    ctermfg=3 guifg=#ebcb8b'
exe 'hi Structure       ctermfg=5 guifg=#b48ead'
exe 'hi Typedef         ctermfg=3 guifg=#ebcb8b'
exe 'hi Tag             ctermfg=3 guifg=#ebcb8b'
exe 'hi Delimiter       ctermfg=2 guifg=#ab7967'
exe 'hi String          ctermfg=2 guifg=#a3be8c'
exe 'hi Debug           ctermfg=1 guifg=#bf616a'
exe 'hi clear YellowFG'
exe 'hi clear WarnMsg'
exe 'hi Bold            cterm=bold gui=bold'
exe 'hi clear Italic'
exe 'hi TooLong         ctermfg=1 guifg=#bf616a'
exe 'hi DiffChange cterm=none ctermbg=239 ctermfg=255'
exe 'hi DiffText   cterm=bold ctermbg=27 ctermfg=255'
exe 'hi DiffAdd      cterm=bold ctermbg=64  ctermfg=255'
exe 'hi DiffDelete   cterm=bold ctermbg=203   ctermfg=255'
exe 'hi CleverFChar     cterm=bold ctermfg=196'
exe 'hi link ColorColumn  Comment'
