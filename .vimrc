syntax on
set number relativenumber
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent

set wrap
set linebreak

set wildmenu
set showcmd

set nostartofline
set magic
set wrap linebreak nolist
set hlsearch
hi Search ctermbg=blue ctermfg=grey

execute pathogen#infect()
au BufRead,BufNewFile *.ks set filetype=kerboscript
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" vim macros
let @q = 'F<vf>y$pT<i/' " encloses html tags
let @b = 'a{}ko    '

" Status Line {
set laststatus=2                             " always show statusbar
set statusline=
set statusline+=%-10.3n\                     " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position
hi StatusLine ctermfg=gray
"}
