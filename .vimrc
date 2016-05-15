filetype plugin indent on

" matchit {{{
" if や for などの文字にも%で移動できるようになる
source $VIMRUNTIME/macros/matchit.vim
let b:match_ignorecase = 1
" }}}

" usability {{{
" set
" t_Co=256は256色対応のターミナルソフトでのみ作用するので、
" Winのコマンドプロンプトを使っている人などはダブルクォーテーション
set t_Co=256
" 色付けを on にする
syntax on
" カラースキーマを設定する。jellybeansは最初はないカラースキーマだが、次回説明するプラグインにて説明する。
" colorscheme jellybeans
" 今のところ好きなカラースキーマを使っていて大丈夫
colorscheme desert
" ターミナルの右端で文字を折り返さない
set nowrap

" tempファイルを作らない
set noswapfile

" ハイライトサーチを有効にする
set hlsearch
" 大文字小文字を区別しない(検索時)
set ignorecase
" ただし大文字を含んでいた場合は大文字小文字を区別する
set smartcase

" カーソル位置が右下に表示される
set ruler
" 行番号を付ける
set number

" タブ文字の表示^Iで表示
set list
" コマンドライン補完が強力になる
set wildmenu
" コマンドを画面の最下部に表示する
set showcmd
" クリップボードを共有する
set clipboard=unnamed

" 改行時にインデントを引き継いで改行する
set autoindent
" インデントに使われる空白の数
set shiftwidth=4
" <TAB>押下時に<TAB>ではなく、ホワイトスペースを挿入する
set expandtab
" <TAB>が対応する空白の数
set tabstop=4

set smarttab
set softtabstop=4

" インクリメント、デクリメントを16進数にする(0x0とかにしなければ16進数※デフォが8進数)
set nf=hex
" マウス使える
set mouse=a

" インサートモードの時にC-jでノーマルモードに戻る
imap <C-j> <esc>
imap [ []<left>
imap ( ()<left>
imap { {}<left>

" 2回escを押したら検索のハイライトやめる
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
" バックアップを作成しない
set nobackup
" }}}
