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

" タブ
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" インデントのスタイル
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
" 文字の可視化
set list
set listchars=tab:\ \ ,eol:↲
highlight ZenkakuSpace cterm=underline ctermbg=red guibg=#666666
autocmd BufWinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')
autocmd WinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')


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

NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1
if !has('gui_starting')
	let g:indent_guides_auto_colors=0
	autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=236
	autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=237
endif
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-surround'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'mattn/emmet-vim'
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
\	'variables': {
\		'lang': "ja"
\	}
\}

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
nnoremap j gj
nnoremap k gk

inoremap <C-c> <Esc>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Del>
inoremap <C-h> <Bs>

vnoremap , <
vnoremap < ,
vnoremap . >
vnoremap > .
