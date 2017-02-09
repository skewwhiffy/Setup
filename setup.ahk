#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!NumpadSub::
    MsgBox,4096,Reload,AutoHotkey script reloaded,1
    Reload
return
^!NumpadAdd::
    Suspend,Toggle
    if (A_IsSuspended)
        MsgBox,4096,Toggle,AutoHotkey suspended,1
    else  
        MsgBox,4096,Toggle,AutoHotkey active,1
return


; Numbers to punctuation
1::!
2::" ;"
3::£
4::$
5::Send `%
6::^
7::&
8::*
9::(
0::)


; Tarmak. See here (https://forum.colemak.com/topic/1858-learn-colemak-in-steps-with-the-tarmak-layouts/) for definition.
; Tarmak 1
e::j
j::n
n::k
k::e
