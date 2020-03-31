call plug#begin('~/.vim/plugged')
Plug 'prettier/vim-prettier', {'do': 'npm i', 'tag': '*'}
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'Valloric/MatchTagAlways'
Plug 'arcticicestudio/nord-vim'
Plug 'markonm/traces.vim' 
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'galooshi/vim-import-js'
call plug#end()

" set Vim-specific sequences for RGB colors | enable true colors
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

" vim-gitgutter
set updatetime=100
set signcolumn=yes
let g:gitgutter_sign_added='┃'
let g:gitgutter_sign_modified='┃'
let g:gitgutter_sign_removed='┃'

" airline
let g:airline#extensions#hunks#enabled = 0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.dirty='⚡'
let g:airline_symbols.dirty= ''
let g:airline_symbols.notexists = ''

" Get rid of the default mode indicator | vim-airline
set noshowmode

" Check automatically if the file has changed externally
set autoread
if ! exists("g:CheckUpdateStarted")
  let g:CheckUpdateStarted=1
  call timer_start(1,'CheckUpdate')
endif
function! CheckUpdate(timer)
  silent! checktime
  call timer_start(1000,'CheckUpdate')
endfunction
