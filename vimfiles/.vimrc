"--------------------------------------------------
" file
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
"colorscheme wombat256mod
colorscheme jellybeans
"colorscheme freya
"colorscheme gardener

set number
set cursorline
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
set list
"set listchars=tab:\|-,trail:-,eol:¬
set listchars=tab:\|-,trail:-
set wildmenu wildmode=list:full
set cmdheight=2
set laststatus=2
set statusline=%F%<\ %m\ %r%=%l\ /\ %L


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
nnoremap ; :
nnoremap : ;
nnoremap k  gk
nnoremap j  gj
nnoremap gk k
nnoremap gj j
nnoremap <Space>h ^
nnoremap <Space>l $

inoremap <C-j> <esc>
inoremap ' "
inoremap " '
