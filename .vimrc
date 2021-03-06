"syntax enable
"set background=dark
"colorscheme torte
"let g:solarized_termcolors=256
"
"
set path+=/Cube/01Program/Program/App/
set path+=/Cube/01Program/Program/Debug/
set path+=/Cube/01Program/Program/Sys/

filetype plugin indent on

set number
set hidden
set ruler
set autoread
set nobackup
set nowrap
set hlsearch
set iminsert=0
set imsearch=-1

set list
"set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮,nbsp:-
set listchars=tab:>\ ,trail:-,nbsp:%
set ignorecase
set smartcase
set wildmenu
set showcmd
set scrolloff=8
set clipboard=unnamed
set history=10000
set shellslash
set cursorline
set wildignore=*.pdb,*.idb,*.obj,*.db,*.opendb,*.opensdf,*.sdf,*.exe,*.ilk,*.bsc,*.blc2,*.fld,*.bak,*~,

" タブ/インデントの設定 
set smarttab
set noexpandtab		" スペースをタブに変換
set tabstop=4		"画面上でタブ文字が占める幅
set shiftwidth=4	"自動インデントでずれる幅
set softtabstop=4	"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent		"改行時に前の行のインデントを継続する
set smartindent		"改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set cinoptions=g0,N-s "スコープ宣言をインデントしない, ネームスペースをインデントしない
"ステータスバーの設定
set laststatus=2
" ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encodingとbom
"set statusline+=[ENC=%{&fileencoding}]
set statusline+=[ENC=%{(&fileencoding).(&bomb?':bom':'')}]
" 現在行数/全行数
set statusline+=[LOW=%l/%L]
" インクリメント[^a]やデクリメント[^x]のときに、0始まりの連番を10進数として解釈する
set nrformats=""
" インクリメント[^a]やデクリメント[^x]のときに、0始まりの連番を16進数として解釈する
"set nrformats="hex"

" key map
noremap <C-j> <esc>
noremap! <C-j> <esc>
noremap Y y$

"encoding

if has('win32')
	if has('gui_running')
		let &termencoding = &encoding
		set encoding=utf-8
	else
		set encoding=cp932
	endif
endif

"yank

if has('gui') || has('xterm_clipboard')
set clipboard=unnamed
endif

