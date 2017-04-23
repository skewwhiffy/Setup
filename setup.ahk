#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
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
/*
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
*/
;Tarmak 4
/*
e::f
f::t
t::g
g::d
d::s
s::r
r::p
p::;
`;::o
o::y
y::j
j::n
n::k
k::e
*/
;Colemak : Tarmak 5
e::f
f::t
t::g
g::d
d::s
s::r
r::p
p::;
`;::o
o::y
y::j
j::n
n::k
k::e
u::l
l::i
i::u
