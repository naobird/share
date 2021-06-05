" タブ，インデント
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=4 "画面上でタブ文字が占める幅
set softtabstop=4 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=4 "smartindentで増減する幅

" 文字列検索
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set nowrapscan " 検索の最後の語句の次が，最初の語句にならない
set hlsearch " 検索結果をハイライト
" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

" カーソル，括弧
set cursorline " カーソルラインをハイライト
set ruler "カーソルの位置表示
set showmatch " 対応括弧を表示する
set matchtime=1 " 対応括弧を表示するまでの時間を設定する

" 色
syntax on " 構文ごとに色分けをする
colorscheme darkblue " カラースキーム
hi MatchParen ctermbg=129 ctermfg=255 " 対応する括弧のハイライト色
hi Comment ctermfg=160 " コメントの文字色
hi Pmenu ctermbg=white ctermfg=8 cterm=reverse " 補完機能を使用時の文字色
hi PmenuSel ctermbg=black ctermfg=252 cterm=reverse " 補完機能を使用時の背景色

" その他
set number " 行番号の表示

" コマンドモードの補完機能
set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数

" mac の クリップボード
set clipboard=unnamed,autoselect " clipboardをon
set backspace=indent,eol,start " backspaceが効かなくなるのを防ぐ

" マップ
" insert mode
inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <><left>
" gfコマンドを便利にする
noremap gf <C-w>gf
" normal mode
noremap <Space>h ^
noremap <Space>l $
" タブ間の移動
nnoremap <C-n> gt
nnoremap <C-p> gT

" C, C++
inoremap {{ {<cr>}<esc>ko 

