
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

filetype off

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
  \ }
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 't9md/vim-textmanip'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'tomasr/molokai'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

call neobundle#end()

filetype plugin indent on     " required!
filetype indent on
syntax on

NeoBundleCheck
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number		"　行番号を表示
set autoindent	"　改行後に前の行インデントを継続する
set autoread	"　外部でファイルが編集された場合は読み直す
set nobackup	"　ファイル保存時にバックアップファイルを作らない
set noswapfile	"　ファイル編集中にスワップファイルを作らない
set incsearch	"　インクリメンタルサーチを行う
set list		"　不可視文字を表示する
" listで表示される文字のフォーマットを指定する
" set listchars=eol:~,tab:>\ ,extends:<
" Tab、行末の半角スペースを明示的に表示する
" set listchars=tab:^\ ,trail:~
set listchars=tab:>\ ,trail:-
set showmatch	"　対応するカッコを強調表示
set ignorecase	"　大文字と小文字を区別しない
set smartcase	"　大文字と小文字が混在させて検索した時に限り大文字を区別する
set tabstop=4	"　文字入力後tabキーを押したとき文字数が4の倍数になるまで半角スペースを挿入する
set smarttab	"　行頭のtabにshiftwidth分のタブ文字を挿入する　
set smartindent	"	前の行に{などがあると、自動的にshiftwidthで指定した幅でインデントが入る
set shiftwidth=4"
set shellslash	"　windowsでもパスの区切り文字をスラッシュで扱えるようになる
set cursorline	"　カーソル行の背景色を変える
set hidden		"　ファイルを保存してなくても別のファイルを開けるようにする
set confirm		"　保存してないファイルが有るときは終了前に確認する
set showcmd		"　入力中のコマンドを表示する
set visualbell t_vb= "　ビープ音全て無効
set noerrorbells	"　エラーメッセージ表示時にビープ音を鳴らさない
set iminsert=2	"　INSERTモードを抜けると自動的にIMEをオフにする

"key mapping
imap <c-j> <esc>

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

