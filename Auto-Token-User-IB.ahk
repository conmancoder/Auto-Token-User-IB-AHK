#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetDefaultMouseSPeed, 3
CoordMode, Mouse

msgbox, 48,, Make sure to change resolution to 1080p before starting
msgbox, ctr + f to start, ctr + d to close program, ctr + s to toggle pause, ctr 
; ctr + g for auto-dismantle    Not implemented yet


^f::	; press ctr&f to begin
#Persistent
SetTimer, PressF, 50
return

; PressF:   ; old code,
sleep 30000
MouseClick,, 1330, 250
sleep 900
MouseClick,, 1330, 250
sleep 900
MouseClick,, 1786, 115
sleep 900
return

PressF:
sleep 1300
MouseMove, 1330, 250
sleep 5
Click
sleep 950
MouseMove, 1330, 250
sleep 5
Click
sleep 950
MouseMove, 1786, 115
sleep 5
Click
sleep 1000
return

; ^g::	; press ctr&g for auto-dismantle
msgbox, 48,, Make sure your last 3 spots in every slot is empty, this will dismantal items and will not give mercy to your exotics or god rolls. 

PressG:


^d:: ExitApp	; press ctr&d to close ahk

^s::
Pause
return