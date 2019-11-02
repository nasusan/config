#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
#UseHook

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;従来のアサインと左右の手の分担を変えない
;右手→カーソルキー
;左手→CtrlやShiftなどの移動補助に専念
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;無変換;;;;;;;;;
; vimと同配置
sc07B & h::Send,{Blind}{Left}		;	無変換＋h=←
sc07B & j::Send,{Blind}{Down}		;	無変換＋j=↓
sc07B & k::Send,{Blind}{Up}			;	無変換＋k=↑
sc07B & l::Send,{Blind}{Right}		;	無変換＋l=→
sc07B & `;::Send,{Blind}{Enter}		;	無変換＋;=Enter
sc07B & o::Send,{Blind}{BS}			;	無変換＋o=BackSpace
sc07B & c::Send, ^{F4}				;	無変換＋c=Ctrl+F4

;;;;;;;;変換;;;;;;;;

;＋右手にHomeなどのキー。並びはキー配列のままで覚えやすく。
sc079 & o::Send,{Blind}{PgUp}		;	変換＋o=PageUp
sc079 & l::Send,{Blind}{PgDn}		;	変換＋l=PageDown
sc079 & i::Send,{Blind}{Home}		;	変換＋i=Home
sc079 & k::Send,{Blind}{End}		;	変換＋k=End

;変換キーはAltにひもづけるイメージ
sc079 & c::Send, !{F4}				;	変換＋c=Alt+F4
sc079 & a::Send,{AppsKey}			;	AppsKey(右クリックのメニュー)
sc079 & e::Send,{Esc}				;	Escape
sc07B & sc079::Send,{sc029}			;	無変換＋変換=IME切り替え


sc079 Up::Send {Space}
sc07B Up::Send {Space}
