" Enable pathogen plugin
call pathogen#infect()

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
colorscheme solarized
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

" Show quickfix window with full width
botright cwindow

" Use ack for grep
set grepprg=ack-grep\ -a\ --nopager\ --nocolor\ --smart-case\ --column
set grepformat=%f:%l:%c:%m

" Required for vim-latex
let g:tex_flavor='latex'
" Default to PDF
let g:Tex_DefaultTargetFormat='pdf'

map <F8> :TlistToggle<cr>
map <F9> :NERDTreeToggle<cr>

" Configure tag list
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Show_One_File = 1

" Set font in gVim
set guifont=Lucida_Console:h10:cANSI

" Set statusline
set laststatus=2
set statusline=%<%f\ %h%w%m%r%y%{fugitive#statusline()}%{SyntasticStatuslineFlag()}%=L:%l/%L\ (%p%%)\ C:%c%V

" More convenient shortcut for omnicompletion.
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

let g:SuperTabCompletionContexts= 's:Context'

" Remove temporary fugitive buffers after they're closed
autocmd BufReadPost fugitive://* set bufhidden=delete

nnoremap <F7> :GundoToggle<CR>

" Some adjustments to the highlighting.
hi DiffAdd term=reverse ctermbg=green ctermfg=white
hi DiffChange term=reverse ctermbg=cyan ctermfg=black
hi DiffText term=reverse ctermbg=gray ctermfg=black
hi DiffDelete term=reverse ctermbg=red ctermfg=black

let g:indentLine_char = '│'
