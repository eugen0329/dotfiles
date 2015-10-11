if empty(glob("~/.vim/bundle/neobundle.vim")) |
  exe '!curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh'
endif
if has('vim_starting') | set nocompatible | set runtimepath+=~/.vim/bundle/neobundle.vim/ | endif
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'ryanoasis/vim-webdevicons'

" #Completion
if has('nvim')
  NeoBundle 'Shougo/deoplete.nvim'
endif
" NeoBundle 'Shougo/neobundle.vim'
NeoBundleLazy 'Shougo/neocomplete.vim', {'autoload': {'commands':[]}}
NeoBundle 'Shougo/neoinclude.vim'
NeoBundle 'Shougo/neco-syntax'

NeoBundleLazy 'osyo-manga/vim-marching', {'autoload': {'filetypes':['c', 'cpp']}}
" NeoBundleLazy 'osyo-manga/vim-monster', {'autoload': {'filetypes':['ruby', 'eruby', 'slim', 'yaml']}}
NeoBundle 'cmdline-completion'
NeoBundle 'asins/vim-dict'
NeoBundle 'tracyone/dict'
NeoBundle 'guileen/vim-node-dict'

" #Navigation
  " ,tree
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'jistr/vim-nerdtree-tabs'
  NeoBundle 'eugen0329/vim-nerdtree-smart-open'
  NeoBundle 'voronkovich/ctrlp-nerdtree.vim'
  NeoBundle 'tyok/nerdtree-ack'

  NeoBundle 'chrisbra/NrrwRgn'              " Edit selection in a newly created separate buffer
  NeoBundle 'kana/vim-narrow'
  NeoBundle 'mhinz/vim-startify'
  NeoBundle 'bilalq/lite-dfm'
  NeoBundle 'dyng/ctrlsf.vim'
  " NeoBundle 'blueyed/vim-diminactive'

  " ,code
  NeoBundle 'majutsushi/tagbar' ", {'on':'TagbarToggle'}
  NeoBundle 'mtscout6/vim-tagbar-css'
  NeoBundle 'Shougo/unite-outline'
  NeoBundle 'tsukkee/unite-tag'
  NeoBundle 'ruby-matchit'
  NeoBundle 'tmhedberg/matchit'

  if !has('nvim')
    NeoBundle 'google/vim-maktaba'
    NeoBundle 'google/vim-coverage'
    NeoBundle 'google/vim-glaive'
  endif

  " ,search
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'haya14busa/incsearch.vim'          " Incrementally highlight all pattern matches
  NeoBundle 'haya14busa/incsearch-fuzzy.vim'    " Fuzzy search in 
  NeoBundle 'haya14busa/vim-asterisk'           " *-improved
  NeoBundle 'osyo-manga/vim-anzu'               " Search position info
  NeoBundle 'eugen0329/vim-easy-search'         " Project-wide search

  NeoBundle 'mhinz/vim-grepper'

  " ,motion
  NeoBundle 'Lokaltog/vim-easymotion'           " highlight jumb target
  NeoBundle 'rhysd/clever-f.vim'                " f{char} improved
  NeoBundle 'kana/vim-smartword'
  NeoBundle 'bkad/CamelCaseMotion'

  NeoBundle     'christoomey/vim-tmux-navigator'
  NeoBundle 't9md/vim-choosewin'            " easymotion-like choosing window
  NeoBundle     'kopischke/vim-fetch'           " gf with lnum:col included

  " ,Project management
  NeoBundle 'derekwyatt/vim-protodef'
  NeoBundle 'tpope/vim-rails'
  NeoBundle 'derekwyatt/vim-fswitch'

  " ,unused
  NeoBundle 'mileszs/ack.vim'
  NeoBundle 'thinca/vim-qfreplace'
  NeoBundle 'nelstrom/vim-qargs'


" #Git
NeoBundle     'tpope/vim-fugitive'
NeoBundle     'tommcdo/vim-fugitive-blame-ext'
NeoBundle 'gregsexton/gitv', { 'on': 'Gitv', 'depends' : 'fugitive.vim'}

NeoBundle 'cohama/agit.vim'
NeoBundle     'kablamo/vim-git-log' " Interactive git log
NeoBundle 'airblade/vim-gitgutter'
" NeoBundle 'mhinz/vim-signify'

" #Ruby
NeoBundle     'tpope/vim-rvm'
NeoBundle     'tpope/vim-rbenv'
NeoBundle     'tpope/vim-rake'
NeoBundle     'thoughtbot/vim-rspec'
NeoBundle     'tpope/vim-bundler'
NeoBundle     'vim-ruby/vim-ruby'
NeoBundle     'ecomba/vim-ruby-refactoring'
NeoBundle     'p0deje/vim-ruby-interpolation'
NeoBundle     'rhysd/unite-ruby-require.vim'

" #Yaml
NeoBundle 'roalddevries/yaml.vim'
NeoBundle 'lmeijvogel/vim-yaml-helper'


" #Highlight
NeoBundle     'nathanaelkane/vim-indent-guides' " 'Yggdroot/indentLine'
NeoBundle 'kien/rainbow_parentheses.vim',  { 'on': ['RainbowParenthesesToggle'] }
NeoBundle 'gregsexton/MatchTag' , {'autoload':{'for':['html', 'eruby', 'slim', 'css', 'sass', 'scss']}}

" NeoBundle     'kshenoy/vim-signature'       " Set line marks
NeoBundle 'MattesGroeger/vim-bookmarks'

" #Snippets
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'mattn/emmet-vim', {'autoload': { 'for': ['html', 'eruby', 'slim', 'css', 'sass', 'scss'] } }

" #Webdev
NeoBundle     'jonathanfilip/vim-lucius'
NeoBundle     'Ioannis-Kapoulas/vim-autoprefixer'
NeoBundle     'KabbAmine/vCoolor.vim'
NeoBundle 'atweiden/vim-betterdigraphs'
NeoBundle     'plasticboy/vim-markdown', { 'depends' : 'godlygeek/tabular'}
NeoBundle     'suan/vim-instant-markdown'  " Markdown live preview
NeoBundle     'jaxbot/browserlink.vim'

" Command line wrappers
NeoBundle     'osyo-manga/vim-over'
NeoBundle     'osyo-manga/vital-over'
NeoBundle 'junegunn/vim-pseudocl'


" Textobjects
NeoBundle 'terryma/vim-expand-region'     " Easier way to select textobjects
NeoBundle 'kana/vim-textobj-user'         " User defined textobjects
NeoBundle 'whatyouhide/vim-textobj-xmlattr'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'textobj-rubyblock'
NeoBundle 'mattn/vim-textobj-url'
NeoBundle 'glts/vim-textobj-comment'

NeoBundle 'Julian/vim-textobj-variable-segment'

" #Editing
NeoBundle 'tpope/vim-abolish'             " Working with word cases
NeoBundle 'tpope/vim-commentary'          " Comment/uncomment code
NeoBundle 'tpope/vim-surround'            " Manage code surroundings(quotes, parenthesis, brackets, *ml-tags etc.)
NeoBundle 'tpope/vim-speeddating'         " CTRL-A/CTRL-X to increment dates, times, and more
NeoBundle 'sickill/vim-pasta'             " Smart paste
NeoBundle 't9md/vim-textmanip'            " Drag visual text blocks
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'AndrewRadev/switch.vim'        " Switch segments of text with predefined replacements
NeoBundle 'AndrewRadev/sideways.vim'      " Move an item in a delimiter-separated list left or right
NeoBundle 'tommcdo/vim-exchange'          " Swap two pieces of code
NeoBundle 'Tabular'                       " Text align by regexp
NeoBundle 'tpope/vim-endwise'             " Automatic closing code blocks
NeoBundle 'Raimondi/delimitMate'          " Automatic closing of quotes, parenthesis, brackets

" #Format
NeoBundle 'Chiel92/vim-autoformat', {'on': 'Autoformat'  }
NeoBundle 'rhysd/vim-clang-format', {'on': 'ClangFormat' }
NeoBundle     'maksimr/vim-jsbeautify'

" #Note taking
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-notes', { 'depends': 'xolox/vim-misc' }
" NeoBundle 'jceb/vim-orgmode'

" #Syntax
if has('nvim')
  NeoBundle     'https://github.com/benekastah/neomake.git'
endif
NeoBundle     'scrooloose/syntastic'

NeoBundle     'slim-template/vim-slim'
NeoBundle     'kchmck/vim-coffee-script'
NeoBundle     'cakebaker/scss-syntax.vim'
NeoBundle     'hail2u/vim-css3-syntax'
NeoBundle     'jelera/vim-javascript-syntax'
NeoBundleLazy 'justinmk/vim-syntax-extra', {'autoload': {'filetypes':['flex', 'lex', 'bison']}}

" #Operating plugins
NeoBundle     'kana/vim-submode'
NeoBundle     'Shougo/vimproc.vim', {'do': 'make'}
NeoBundle     'Shougo/unite.vim'
NeoBundle     'Shougo/neomru.vim'         " Most recently used files/buffers
NeoBundle 'majkinetor/unite-cmdmatch', { 'depends':  'Shougo/unite.vim', 'mappings' : [['c', '<Plug>(unite_cmdmatch_complete)']] }
NeoBundle     'mtth/scratch.vim'          " qf-like window
NeoBundle     'AndrewRadev/undoquit.vim'
" NeoBundle     'danro/rename.vim'          " Rename current file
NeoBundle 'tpope/vim-eunuch'                " *nix bash-like utils
NeoBundle     'vim-scripts/LargeFile'
NeoBundle     'tpope/vim-dispatch'
NeoBundle 'p0deje/vim-dispatch-vimshell'
NeoBundle     'tpope/vim-scriptease'
NeoBundle     'thinca/vim-quickrun'
NeoBundle 'vim-scripts/Hints-for-C-Library-Functions'
NeoBundle     'AndrewRadev/linediff.vim'
NeoBundle 'chrisbra/vim-diff-enhanced'

" #Unused plugins
NeoBundle 'taq/vim-git-branch-info'
NeoBundle 'thinca/vim-prettyprint'
" NeoBundle 'ervandew/supertab'
NeoBundle 'itchyny/thumbnail.vim'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/vimshell.vim', { 'on': 'VimShell' }
" NeoBundle 'milkypostman/vim-togglelist'
" NeoBundle 'wesQ3/vim-windowswap'
" NeoBundle     'skammer/vim-css-color' " 'gorodinskiy/vim-coloresque'
" NeoBundle     'ap/vim-css-color'
" NeoBundle     'chrisbra/unicode.vim'
NeoBundle     'greyblake/vim-preview'

" NeoBundle 'kassio/neoterm'

" #Colors
NeoBundle 'voronianski/oceanic-next-color-scheme'
NeoBundle 'vim-scripts/lilypink'
NeoBundle     'gmoe/vim-espresso'
NeoBundle 'zeis/vim-kolor'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'xterm-color-table.vim', { 'on': 'XtermColorTable' }
NeoBundle 'jordwalke/VimCleanColors'
NeoBundle 'cschlueter/vim-wombat'
NeoBundle 'vim-scripts/Mustang2'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'Railscasts-Theme-GUIand256color'
NeoBundle 'desertink.vim'
NeoBundle 'joedicastro/vim-molokai256'
NeoBundle 'jordwalke/flatlandia'
NeoBundle 'vivkin/flatland.vim'
NeoBundle 'abra/vim-abra'
NeoBundle 'ajh17/Spacegray.vim'
NeoBundle 'cdmedia/itg_flat_vim'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'desert-warm-256'
NeoBundle 'edkolev/tmuxline.vim'
NeoBundle 'gosukiwi/vim-atom-dark'
NeoBundle 'mbbill/desertEx'
NeoBundle 'trusktr/seti.vim'

call neobundle#end()
filetype plugin indent on
