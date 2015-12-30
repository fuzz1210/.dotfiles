"--------------------------------------------------
" basic
"--------------------------------------------------
set encoding=utf-8
set hidden
set autoread
set nobackup
set history=100


"--------------------------------------------------
" cursor
"--------------------------------------------------
set whichwrap=b,s,h,l
set backspace=start,eol,indent


"--------------------------------------------------
" appearance
"--------------------------------------------------
syntax on
set t_Co=256
set background=dark
"colorscheme wombat256mod
colorscheme jellybeans
"colorscheme freya
"colorscheme gardener
"colorscheme flatland
set guifont=Consolas:10h
"set guifontwide=
set number
set cursorline
set linespace=4
set wrap
set linebreak
set textwidth=0
"set breakindent
set showmatch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set cindent
"set list
"set listchars=nbsp:•,tab:\|\ ,trail:•
set wildmenu wildmode=list:full
set cmdheight=2
set laststatus=2
set statusline=%F%<\ %m\ %r%=%l\ /\ %L
"autocmd ColorScheme * hi link TwoByteSpace Error
"autocmd VimEnter,WinEnter * let w:m_tbs = matchadd('TwoByteSpace', '　')

"--------------------------------------------------
" search/replacement
"--------------------------------------------------
set incsearch
set hlsearch
set wrapscan
set ignorecase
set smartcase
set gdefault


"--------------------------------------------------
" keybind
"--------------------------------------------------
command Q q!

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
inoremap <C-o> <Esc>o
inoremap <C-e> <End>
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



"--------------------------------------------------
" plugin
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

NeoBundle 'Shougo/unite.vim'

NeoBundle 'scrooloose/nerdtree'
command NT NERDTree

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
command FW FixWhitespace

call neobundle#end()
filetype plugin indent on
NeoBundleCheck



