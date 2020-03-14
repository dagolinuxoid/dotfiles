call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'wincent/terminus'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier'
Plug 'Yggdroot/indentLine'
Plug 'galooshi/vim-import-js'
call plug#end()

" IndentLine plugin
let g:indentLine_enabled = 1
let g:indentLine_faster = 1
"let g:indentLine_char = '⎸'
let g:indentLine_char = '┆'

" autocmd vimenter * NERDTree
" let g:NERDTreeDirArrowExpandable = '►'
" let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeMinimalUI = 1
let g:NERDTreeNodeDelimiter="\u00a0"
nnoremap <silent> <F3> :NERDTreeToggle<CR>

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.json,*.scss,*.css,*.html PrettierAsync

" folding
" set foldmethod=manual
" set foldcolumn=1

"set foldmethod=syntax
"let javaScript_fold=1
"set foldlevelstart=99

" set foldmethod=indent
" set nofoldenable

" set foldnestmax=10
" set foldlevel=2

syntax off

" highlight all matches upon search
set hlsearch

set number
set relativenumber

set showcmd

" Indentation
set tabstop=2 shiftwidth=2 expandtab

" Directory to store swap files
set dir=~/.vim/swap

" Set working directory to current file.
" This autocmd changes the window-local current directory to
" be the same as the directory of the current file 
autocmd BufEnter * silent! lcd %:p:h

