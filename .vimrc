call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'wincent/terminus'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier'
Plug 'Yggdroot/indentLine'
Plug 'galooshi/vim-import-js'
Plug 'tpope/vim-commentary'
Plug 'Valloric/MatchTagAlways'
Plug 'markonm/traces.vim' 
call plug#end()

set laststatus=2

set title

" MathchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascriptreact' : 1,
    \}

" IndentLine plugin
let g:indentLine_enabled = 1
let g:indentLine_faster = 1
"let g:indentLine_char = '⎸'
let g:indentLine_char = '┆'

let NERDTreeMinimalUI = 1
let g:NERDTreeNodeDelimiter="\u00a0"
nnoremap <silent> <Leader>t :NERDTreeToggle<CR>

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.json,*.scss,*.css,*.html PrettierAsync

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

