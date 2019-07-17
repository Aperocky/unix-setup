syntax on
set number
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent

set wildmenu
set showcmd

set cmdheight=2
set nostartofline
set magic
set wrap linebreak nolist
set hlsearch

au BufRead,BufNewFile *.ks set filetype=kerboscript

execute pathogen#infect()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
