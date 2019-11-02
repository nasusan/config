"display & information
set lines=25
set columns=90
set cmdheight=1
set guioptions=c
set guifont=MS_Gothic:h10

"no way to use a mouse
set mouse=
set nomousefocus
set noswapfile
set mousehide

"colorscheme
syntax enable
"set background=light
"colorscheme molokai
set background=dark
"colorscheme solarized
colorscheme desert

"最大化で起動
au GUIEnter * simalt ~x
