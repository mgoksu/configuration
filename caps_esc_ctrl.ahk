#Requires AutoHotkey v2.0
#SingleInstance Force

; Remap Caps Lock to Escape when tapped, Control when held
*CapsLock::
{
    KeyWait "CapsLock"
    
    ; If caps lock was held down with another key, it acts as Control
    ; If tapped alone, it acts as Escape
    if (A_PriorKey = "CapsLock")
        Send "{Esc}"
}

*CapsLock Up::
{
    return
}

; Make Caps Lock act as Control modifier for combinations
#HotIf GetKeyState("CapsLock", "P")
*a::Send "^a"
*b::Send "^b"
*c::Send "^c"
*d::Send "^d"
*e::Send "^e"
*f::Send "^f"
*g::Send "^g"
*h::Send "^h"
*i::Send "^i"
*j::Send "^j"
*k::Send "^k"
*l::Send "^l"
*m::Send "^m"
*n::Send "^n"
*o::Send "^o"
*p::Send "^p"
*q::Send "^q"
*r::Send "^r"
*s::Send "^s"
*t::Send "^t"
*u::Send "^u"
*v::Send "^v"
*w::Send "^w"
*x::Send "^x"
*y::Send "^y"
*z::Send "^z"
*1::Send "^1"
*2::Send "^2"
*3::Send "^3"
*4::Send "^4"
*5::Send "^5"
*6::Send "^6"
*7::Send "^7"
*8::Send "^8"
*9::Send "^9"
*0::Send "^0"
*Left::Send "^{Left}"
*Right::Send "^{Right}"
*Up::Send "^{Up}"
*Down::Send "^{Down}"
*Home::Send "^{Home}"
*End::Send "^{End}"
*PgUp::Send "^{PgUp}"
*PgDn::Send "^{PgDn}"
#HotIf

; Optional: Shift+Caps Lock to toggle actual Caps Lock
+CapsLock::CapsLock
