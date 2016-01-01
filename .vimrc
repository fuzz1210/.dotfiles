"--------------------------------------------------
" basic
"--------------------------------------------------
" 文字コード
set encoding=utf-8
" 保存されていないファイルがあるときでも別のファイルを開くことができる
set hidden
" 外部でファイルが変更された場合は読み直す
set autoread
"ファイル保存時にバックアップファイルを作成しない
set nobackup
" コマンドラインの履歴数
set history=100


"--------------------------------------------------
" cursor
"--------------------------------------------------
" 行頭行末移動ができるキー
set whichwrap=b,s,h,l
" バックスペースで消すことができる文字
set backspace=start,eol,indent


"--------------------------------------------------
" appearance
"--------------------------------------------------
" カラースキーム
syntax on
set t_Co=256
set background=dark
"colorscheme jellybeans
colorscheme hybrid

" フォント
set guifont=Ricty:10h
set guifontwide=Ricty:10h

" 行番号
set number
" カーソル行の強調
set cursorline
" 行間
set linespace=4
" 文章を画面幅で折り返し
set wrap
" 単語の途中で折り返さない
set linebreak
" 折り返しに文字数制限しない
set textwidth=0
" 折り返した２行目以降の文章もインデント
set breakindent
" 対応する括弧の強調
set showmatch

set tabstop=4
set softtabstop=4
set shiftwidth=4
" ソフトタブの無効
set noexpandtab
" インデントスタイル
set cindent

" コマンドモードのタブ補完
set wildmenu
set wildmode=list:full
" コマンドラインの高さ
set cmdheight=2
" ステータスラインの常時表示
set laststatus=2
" ステータスラインに表示する内容
set statusline=%F%<\ %m\ %r%=%l\ /\ %L
"autocmd ColorScheme * hi link TwoByteSpace Error
"autocmd VimEnter,WinEnter * let w:m_tbs = matchadd('TwoByteSpace', '　')

"--------------------------------------------------
" search/replacement
"--------------------------------------------------
" インクリメンタル検索
set incsearch
" 検索文字列の強調
set hlsearch
" 繰返し検索
set wrapscan
" 検索パターンにおいて大文字と小文字を区別しない
set ignorecase
" 検索パターンに大文字を含んでいたら大文字小文字を区別する
set smartcase
" 置換においてgを指定しなくても同一行で複数回置換
set gdefault



"--------------------------------------------------
" plugins
"--------------------------------------------------
" NeoBundle
if has('vim_starting')
	if &compatible
		set nocompatible
	endif

	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" unite.vim
NeoBundle 'Shougo/unite.vim'
" nerd tree
NeoBundle 'scrooloose/nerdtree'
" git gutter
NeoBundle 'airblade/vim-gitgutter'
" indent guide
NeoBundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1
if !has('gui_starting')
	let g:indent_guides_auto_colors=0
	autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=236
	autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=237
endif
" airline
NeoBundle 'bling/vim-airline'
" surround
NeoBundle 'tpope/vim-surround'
" trailing whitespace
NeoBundle 'bronson/vim-trailing-whitespace'
" multi cursors
NeoBundle 'terryma/vim-multiple-cursors'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck



"--------------------------------------------------
" keybind
"--------------------------------------------------
command Q q!
command NT NERDTree
" trailing whitespace
command FW FixWhitespace


nnoremap ; :
nnoremap : ;
nnoremap j  gj
nnoremap k  gk
nnoremap <Space>h ^
nnoremap <Space>j 10j^
nnoremap <Space>k 10k^
nnoremap <Space>l $

inoremap <C-c> <Esc>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-o> <Esc>o
inoremap <C-x> <Del>
inoremap <C-d> <Bs>
inoremap <C-u> <Esc>u

vnoremap j  gj
vnoremap k  gk
vnoremap <Space>h ^
vnoremap <Space>j 10j^
vnoremap <Space>k 10k^
vnoremap <Space>l $
vnoremap , <
vnoremap < ,
vnoremap . >
vnoremap > .



