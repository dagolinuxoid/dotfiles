call plug#begin('~/.vim/plugged')
Plug 'prettier/vim-prettier', {'do': 'npm i', 'tag': '*'}
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'Valloric/MatchTagAlways'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-commentary'
Plug 'galooshi/vim-import-js'
Plug 'markonm/traces.vim' 
call plug#end()

" set Vim-specific sequences for RGB colors | set true colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" customize indentline
let g:indentLine_color_gui = "#4c566a"
let g:indentLine_faster = 1
let g:indentLine_char = '┆'

" fix issue for .json files
let g:vim_json_conceal = 0

" current theme
colorscheme nord

" enable mouse in vim
set mouse=a ttymouse=xterm2

" Block in normal, line in insert, underline in replace
let &t_SI="\e[5 q" | let &t_EI="\e[1 q" | let &t_SR="\e[3 q"
set timeout timeoutlen=1000 ttimeoutlen=0

" obvious things
set laststatus=2 title hlsearch number relativenumber showcmd

" MathchTagAlways
let g:mta_filetypes = {'html' : 1,'javascriptreact' : 1, 'javascript': 1}

" Nerdtree settings
let NERDTreeMinimalUI = 1
let g:NERDTreeNodeDelimiter="\u00a0"
nnoremap <silent> <leader>t :NERDTreeToggle<CR>

" Prettier settings | vim-prettier
let g:pretteir#exec_cmd_path = "/home/linux/.vim/plugged/vim-prettier/node_modules/.bin/prettier"
autocmd BufWritePre *.js,*.jsx,*.json,*.scss,*.css,*.html PrettierAsync

" the tabs and spaces thing
set tabstop=2 shiftwidth=2 expandtab

" the storage path for swap files
set dir=~/.vim/swap

" Set working directory to current file.
" Changes the window-local current directory to be the same as the directory of the current file 
autocmd BufEnter * silent! lcd %:p:h
