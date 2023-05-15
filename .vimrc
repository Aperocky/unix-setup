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
autocmd FileType make setlocal noexpandtab

let g:airline_theme='luna'
set background=dark
colorscheme onedark

" next line bugs out on MacOS 13 Ventura
" set termguicolors

" Remove compiled js files from typescript project nerdtrees
let g:js_visible = 1

function ToggleJs()
  if g:js_visible == 1
    let g:js_visible = 0
    let g:NERDTreeIgnore = ['\.js$']
  else
    let g:js_visible = 1
    let g:NERDTreeIgnore = []
  end
endfunction

" vim macros
let @q = 'F<vf>y$pT<i/' " encloses html tags
let @b = 'a{}ko    ' " auto bracket

" Open nerdtree in file location
noremap <C-o> :NERDTreeToggle %<CR>
" Open clipboard in new tab
noremap <C-c> :tabe ~/clipboard<CR>
" Search for currently yanked text, nobody uses page-down anyway.
noremap <C-f> /<C-r>"<CR>
nnoremap <C-j> :call ToggleJs()<CR>
