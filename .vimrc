""""""vim-plug""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/unite.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'lambdalisue/vim-pyenv'

call plug#end()

""""""""common setting""""""""""""""""""""""
syntax enable

set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set incsearch
set hlsearch
set wrap
set showmatch
set whichwrap=h,l
set nowrapscan
set ignorecase
set smartcase
set hidden
set history=2000
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set helplang=en

colorscheme desert

"save and close short cut
nnoremap <Space>w  :<C-u>w<CR>
nnoremap <Space>q  :<C-u>q<CR>
nnoremap <Space>Q  :<C-u>q!<CR>

"move to head of line and end of line
nnoremap <Space>h  ^
nnoremap <Space>l  $

"move display lines
nnoremap k   gk

vnoremap j   gj
nnoremap gk  k
nnoremap gj  j
vnoremap gk  k
vnoremap gj  j

"exit / hilight
nnoremap <ESC><ESC>  :noh<CR>

"tab
nnoremap <silent> tt  :<C-u>tabe<CR>
nnoremap <silent> tn  :tabnext<CR>
nnoremap <silent> tp  :tabprevious<CR>
nnoremap <silent> tc  :tabclose<CR>

"disable denger
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>

"jk to esc very good cool XD
inoremap jk  <Esc>

"use clipboard
set clipboard=unnamedplus

"""""""end common setting""""""""""""""
"""""""Unite setting"""""""""""""""""""
" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <Space>u [unite]

" unite.vim keymap
let g:unite_source_history_yank_enable =1
nnoremap <silent> [unite]f :<C-u>Unite<Space>file<CR>
nnoremap <silent> [unite]g :<C-u>Unite<Space>grep<CR>
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>

"""""""end Unte setting""""""""""""""

""python setting""
autocmd BufNewFile,BufRead *.py nnoremap <C-b> :!python %<CR>

""""""""jedi-vim Setting""""""""""""""""
"
"autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first =0
"let g:redi#show_call_signatures=2
"let grjedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
"
" docstringは表示しない
autocmd FileType python setlocal completeopt-=preview
"""""""end jedi-vim setting""""""""""""""
