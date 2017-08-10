#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
#UseHook

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;HHKBのデフォルト配置と、Fnキーを極力使うようにする　
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                無変換
sc07B & c::Send, ^{F4}				;	無変換＋c=Ctrl+F4
;vim キーバインド
sc07B & h::Send,{Blind}{Left}
sc07B & l::Send,{Blind}{Right}
sc07B & k::Send,{Blind}{Up}
sc07B & j::Send,{Blind}{Down}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;				変換

;変換キーはAltにひもづけるイメージ
sc079 & c::Send, !{F4}				;	変換＋c=Alt+F4

sc079 & a::Send,{AppsKey}			;	AppsKey(右クリックのメニュー)
;sc07B & sc079::Send,{sc029}			;	無変換＋変換=IME切り替え

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;３つ同時押し
sc07B & m::
    If GetKeyState("Ctrl", "P")
		Send,{Blind}{Enter}		;	無変換＋Ctrl＋m=Enter
    Else
    Return
