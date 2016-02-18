"viとの互換性をとらない)
set nocompatible
" 自動認識させる改行コードを指定する
set fileformats=unix,dos
" バックアップをとる
" 逆は [ set nobackup ]
set backup
" バックアップを作るディレクトリを指定する
set backupdir=~/backup
" 検索履歴を50個残す
set history=50
" 検索時に大文字小文字を区別しない
set ignorecase
" 検索語に大文字を混ぜると検索時に大文字を区別する
set smartcase
" 検索語にマッチした単語をハイライトする
" 逆は [ set nohlsearch ]
set hlsearch
" インクリメンタルサーチを使う ( 検索語を入れている途中から随時マッチする文字列の検索を開始)
" 逆は [ set noincsearch ]
set incsearch
" 行番号を表示する
" 逆は [ set nonumber ]
set number
" 改行 ( $ ) やタブ ( ^I ) を可視化する
set list
" 括弧入力時に対応する括弧を強調する
set showmatch
" 構文ごとに色分け表示する
" 逆は [ syntax off ]
syntax on
" [ syntax on ] の場合のコメント文の色を変更する
highlight Comment ctermfg=LightCyan
" ウィンドウ幅で行を折り返す
" 逆は [ set nowrap ]
set wrap

set showmatch
set matchtime=1

set number
set title
set ambiwidth=double
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu
