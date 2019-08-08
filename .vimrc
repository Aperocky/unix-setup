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

let g:airline_theme='luna'
set background=dark
set termguicolors
colorscheme onedark

" pathogen packages:
" install pathogen first (JUST READ INSTRUCTIONS)
" git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
" git clone https://github.com/joshdick/onedark.vim.git ~/.vim/bundle/onedark.vim
" git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
" git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
" git clone https://github.com/bling/vim-bufferline ~/.vim/bundle/vim-bufferline

" vim macros
let @q = 'F<vf>y$pT<i/' " encloses html tags
let @b = 'a{}ko    '
