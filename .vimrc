call plug#begin('~/.vim/plugged')
Plug 'prettier/vim-prettier', {'do': 'npm i', 'tag': '*'}
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'Valloric/MatchTagAlways'
Plug 'markonm/traces.vim' 
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'galooshi/vim-import-js'
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord
let g:indentLine_color_term = 8

" Block in normal, line in insert, underline in replace
let &t_SI="\e[5 q" | let &t_EI="\e[1 q" | let &t_SR="\e[3 q"

set laststatus=2 title hlsearch number relativenumber showcmd

" MathchTagAlways
let g:mta_filetypes = {'html' : 1,'javascriptreact' : 1}

" IndentLine plugin
let g:indentLine_faster = 1
let g:indentLine_char = '┆'
" let g:indentLine_char = '⎸'

let NERDTreeMinimalUI = 1
" let g:NERDTreeNodeDelimiter="\u00a0"
nnoremap <silent> <leader>t :NERDTreeToggle<CR>

let g:pretteir#exec_cmd_path = "/home/linux/.vim/plugged/vim-prettier/node_modules/.bin/prettier"
autocmd BufWritePre *.js,*.jsx,*.json,*.scss,*.css,*.html PrettierAsync

" Indentation
set tabstop=2 shiftwidth=2 expandtab

" Directory to store swap files
set dir=~/.vim/swap

" Set working directory to current file.
" This autocmd changes the window-local current directory to
" be the same as the directory of the current file 
autocmd BufEnter * silent! lcd %:p:h

set mouse=n ttymouse=xterm2
