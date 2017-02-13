﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance

^!F9::
    MsgBox,4096,Reload,AutoHotkey script reloaded,0.5
    Reload
return
CapsLock::
    Suspend,Toggle
    if (A_IsSuspended)
        MsgBox,4112,AutoHotkey,SUSPENDED,0.5
    else
        MsgBox,4160,AutoHotkey,ACTIVE,0.5
return

; Numbers to punctuation
$1::Send {!}
$2::Send {"}
$3::Send {£}
$4::Send {$}
$5::Send {`%}
$6::Send {^}
$7::Send {&}
$8::Send {*}
$9::Send {(}
$0::Send {)}
$!::Send 1
$"::Send 2
$£::Send 3
$$::Send 4
$%::Send 5
$^::Send 6
$&::Send 7
$*::Send 8
$(::Send 9
$)::Send 0

; Tarmak. See here (https://forum.colemak.com/topic/1858-learn-colemak-in-steps-with-the-tarmak-layouts/) for definition.
; Tarmak 1
/*
e::j
j::n
n::k
k::e
*/
; Tarmak 2
/*
e::f
f::t
t::g
g::j
j::n
n::k
k::e
*/
; Tarmak 3
e::f
f::t
t::g
g::d
d::s
s::r
r::j
j::n
n::k
k::e

