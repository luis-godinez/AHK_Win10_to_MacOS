; An AutoHotKey script mapping most common OSX keyboard shortcuts to Windows 10
; Useful if you're used to using Apple Keyboard and switch between OSX and W10
; - clipboard (CMD+C, CMD+V, CMD+X, CMD+ALT+SHIFT+V)
; - app-switching (CMD+Tab)
; - text editor cursor manipulation - CMD+Arrow, CMD+SHIFT+Arrow, ALT+Arrow, ALT+SHIFT+Arrow
; - window management - CMD+Q, CMD+`
; - in-browser tabs - CMD+T, CMD+SHIFT+T, CMD+W, CMD+1...CMD+9, 
; - standard actions - CMD+N, CMD+SHIFT+N, CMD+O, CMD+SHIFT+O, CMD+P, CMD+S, CMD+SHIFT+S
; - undo/redo - CMD+Z, CMD+SHIFT+Z
; - spotlight search (CMD+Space)
; - task manager (CMD+ALT+ESC)
; - 1-password - CMD+\
; - magnet-like window snapping (halves, quarters, thirds, two-thirds, maximize, restore)
; - other

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; =====================
; Disable Left Windows Key
LWin::return


; =====================
; 1. clipboard
; - copy (CMD+C)
; - paste (CMD+V)
; - cut (CMD+X)
; - paste with dest formatting (CMD+ALT+SHIFT+V)
#c::Send ^c
#v::Send ^v
#x::Send ^x
#!+v::Send ^+v


; =====================
; 2. text editing - cursor manipulation
; - jump to beginning/end of line (CMD+Left/Right)
; - select to beginning/end of line (CMD+SHIFT+Arrow)
; - move between words (ALT+Arrow)
; - select by word (ALT+SHIFT+Arrow)
#+Left::Send +{Home}
#+Right::Send +{End}
#+Up::Send ^+{Home}
#+Down::Send ^+{End}
#Backspace::Send {Delete}
!Backspace::Send ^{Backspace}
!Left::Send ^{Left}
!+Left::Send ^+{Left}
!Right::Send ^{Right}
!+Right::Send ^+{Right}


; =====================
; 2b. text editor
; - select all (CMD+A)
; - find (CMD+F)
; - formatting (CMD+B, CMD+I, CMD+U)
; - change font size (CMD+SHIFT+>, CMD+SHIFT+<)
#a::Send ^a
#f::Send ^f
#b::Send ^b
#i::Send ^i
#u::Send ^u
#+>::Send ^+>
#+<::Send ^+<


; =====================
; 3. window management
; - quit app (CMD+Q)
; - switch between 
; - close window/ta (CMD+W), CMD+`
;    disclaimer: CMD+` requires Easy Window Switcher neosmart (https://neosmart.net/Download)
#q::Send !{F4}
#`::Send !~


; =====================
; 4. In-browser actions
; - new tab (CMD+T)
; - reopen recently closed tab (CMD+SHIFT+T)
; - close tab (CMD+W)
; - zoom (CMD+=, CMD+SHIFT+=)
; - switch between tabs (CMD+1...CMD+0)
#t::Send ^t
#+t::Send ^+t
#w::Send ^w{Esc}
#=::Send ^=
#-::Send ^-
#1::Send ^1
#2::Send ^2
#3::Send ^3
#4::Send ^4
#5::Send ^5
#6::Send ^6
#7::Send ^7
#8::Send ^8
#9::Send ^9
#0::Send ^0


; =====================
; 5. standard actions
; - new file (CMD+N)
; - new item, used in several apps - (CMD+SHIFT+N), 
; - open file (CMD+O)
; - print (CMD+P)
; - save (CMD+S)
; - save-as (CMD+SHIFT+S)
; - undo (CMD+Z)
; - redo (CMD+SHIFT+Z)
#n::Send ^n
#+n::Send ^+n
#o::Send ^o
#+o::Send ^+o
#p::Send ^p
#s::Send ^s
#+s::Send ^!s


; =====================
; 6. undo/redo (CMD+Z, CMD+SHIFT+Z)
#z::Send ^z
#+z::Send ^y


; =====================
; 7. additional in-app commands
; - CMD+R
; - CMD+D
; - CMD+\ (requires 1password)
; - CMD+], CMD+[, CMD+\ (Visual Studio Code)
#r::Send ^r
#d::Send ^d
#\::Send ^\
#]::Send ^]
#[::Send ^[
#/::Send ^/


; =====================
; 8. win10 capture screenshot (CMD+SHIFT+4)
#+4::Send #+s


; =====================
; 9. spotlight (CMD+SPACE), tasks (CMD+ALT+ESC)
#Space::Send ^{Esc}
#!Esc::Send ^+{Esc}


; =====================
; 10. App-Switcher (CMD+Tab, CMD+Paragraph)
; unfortunately CMD+SHIFT+Tab doesn't work (AutoHotKey has very limited support for this, so we use CMD+Paragraph (the key above Tab) to switch to previous app) 
<#Tab::AltTab
<#Sc056::ShiftAltTab


; =====================
; 11. MagnetApp-Like window snapping - CTRL+ALT+Arrow
; WinMove, WinTitle, WinText, X, Y , Width, Height, ExcludeTitle, ExcludeText
^!Left::WinMove,  A,, 0, 0, (A_ScreenWidth/2), (A_ScreenHeight)						; left half
^!Right::WinMove, A,, (A_ScreenWidth/2), 0, (A_ScreenWidth/2), (A_ScreenHeight)				; right half
^!Up::WinMove,    A,, 0, 0, (A_ScreenWidth), (A_ScreenHeight/2)						; top half
^!Down::WinMove,  A,, 0, (A_ScreenHeight/2), (A_ScreenWidth), (A_ScreenHeight/2)			; bottom half
^!u::WinMove,     A,, 0, 0, (A_ScreenWidth/2), (A_ScreenHeight/2)					; top-right quadrant
^!i::WinMove,     A,, (A_ScreenWidth/2), 0, (A_ScreenWidth/2), (A_ScreenHeight/2)			; top-left quadrant
^!j::WinMove,     A,, 0, (A_ScreenHeight/2), (A_ScreenWidth/2), (A_ScreenHeight/2)			; bottom-left quadrant
^!k::WinMove,     A,, (A_ScreenWidth/2), (A_ScreenHeight/2), (A_ScreenWidth/2), (A_ScreenHeight/2)	; bottom-right quadrant
^!d::WinMove,     A,, 0, 0, (A_ScreenWidth/3), (A_ScreenHeight)						; left one-third
^!f::WinMove,     A,, (A_ScreenWidth/3), 0, (A_ScreenWidth/3), (A_ScreenHeight)				; center one-third
^!g::WinMove,     A,, (2*A_ScreenWidth/3), 0, (A_ScreenWidth/3), (A_ScreenHeight)			; right one-third
^!e::WinMove,     A,, 0, 0, (2*A_ScreenWidth/3), (A_ScreenHeight)					; left two-thirds
^!t::WinMove,     A,, (A_ScreenWidth/3), 0, (2*A_ScreenWidth/3), (A_ScreenHeight)			; Right two-thirds

; MagnetApp-Like maximize/restore window - CTRL+ALT+Enter
^!Enter::
SysGet, VirtualScreenWidth, 78
WinGetPos, X, Y, Width, Height, A

If (Virtualscreenwidth = A_ScreenWidth) {
   If (Width < A_ScreenWidth) {
      WinMaximize, A
   } Else {
      WinRestore, A
   }
}
Return
