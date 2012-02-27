syntax enable
filetype on
filetype plugin on
filetype indent on

" Disable mouse
set mouse=

" Explicitly set backspace, gVim in Windows has different defaults
set backspace=indent,eol,start

" Show line numbers
set number

" Set color scheme
colorscheme ir_black
set background=dark

" Searching
set incsearch
set hlsearch

" Set formatting options
set formatoptions=tcql
set expandtab
set smarttab
set sw=2

" Search enhancements
set ignorecase
set smartcase

" Enable menubar
set wildmenu

" Automatically write files on buffer changes etc.
set autowrite

" Close all folds upon opening a buffer.
set foldmethod=indent
set foldlevelstart=0
set foldcolumn=0

" Highlight trailing spaces
:highlight RedundantSpaces ctermbg=red guibg=red
:match RedundantSpaces /\s\+$\| \+\ze\t/

" Disable tabbar in debug mode
let g:debuggerDedicatedTab = 0

" Show quickfix window with full with
botright cwindow

" Enable python omni completion
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Handy for PHP development
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
let php_sql_query=1
let php_htmlInStrings=1

" Use ack for grep
set grepprg=ack-grep\ -a\ --nopager\ --nocolor\ --smart-case\ --column
set grepformat=%f:%l:%c:%m

" Required for vim-latex
let g:tex_flavor='latex'
" Default to PDF
let g:Tex_DefaultTargetFormat='pdf'

" Deal with customized Javascript ctags output
" http://stackoverflow.com/questions/1790623/how-can-i-make-vims-taglist-plugin-show-useful-information-for-javascript
let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function'

map <F8> :TlistToggle<cr>
map <F9> :NERDTreeToggle<cr>

" Configure tag list
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Show_One_File = 1

" Set font in gVim
set guifont=Lucida_Console:h10:cANSI
