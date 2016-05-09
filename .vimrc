"""""""""""""NeoBundle Setting""""""""""""""
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'
" hokan python
"NeoBundle 'davidhalter/jedi-vim'
"neocomplete auto complete
"NeoBundle 'Shougo/neocomplete.vim'
"systax errorr check
"NeoBundle 'scrooloose/syntastic'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"""""""end NeoBundle setting"""""""""""""""""""""""

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
set tabstop=2
set shiftwidth=2
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
set clipboard=unnamed,autoselect
set clipboard=unnamedplus

"gtags short cut
nnoremap <C-g> :Gtags 
nnoremap <C-h> :Gtags -f %<CR>
nnoremap <C-j> :GtagsCursor<CR>
nnoremap <C-k> :Gtags -r <C-r><C-w><CR>
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>
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
nnoremap <silent> [unite]u :<C-u>Unite<Space>
"nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<CR>
nnoremap <silent> [unite]h :<C-u>Unite<Space>history/yank<CR>
"nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
"nnoremap <silent> [unite]c :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"nnoremap <silent> ,vr :UniteResume<CR>

"vnoremap /g y:Unite grep::-iRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>


"""""""eend Unte setting""""""""""""""
""""""""jedi-vim Setting""""""""""""""""
"
"autocmd FileType python setlocal omnifunc=jedi#completions
"let g:jedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
"if !exists('g:neocomplete#force_omni_input_patterns')
"    let g:neocomplete#force_omni_input_patterns = {}
"endif
"
"g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
"
" docstringは表示しない
autocmd FileType python setlocal completeopt-=preview
"""""""end jedi-vim setting""""""""""""""
