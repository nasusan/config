"gvimのみに適用される設定ファイルで、主にGUIの設定を書く
"vimrc適用後に反映される
"display & information
set lines=25
set columns=90
set cmdheight=1
set guioptions=c

"no way to use a mouse
set mouse=
set nomousefocus
set mousehide

colorscheme desert

au GUIEnter * simalt ~x	"起動時に最大化
