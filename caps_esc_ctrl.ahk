#Requires AutoHotkey v2.0
#SingleInstance Force

; ==============================================================================
; 1. CAPS LOCK: ESCAPE ON TAP / CONTROL ON HOLD
; ==============================================================================
*CapsLock::
{
    KeyWait "CapsLock"
    if (A_PriorKey = "CapsLock")
        Send "{Esc}"
}
*CapsLock Up:: return

; Caps Lock + Key = Control + Key
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

; ==============================================================================
; 2. SPACEBAR: SPACE ON TAP / TURKISH MODIFIER ON HOLD
; ==============================================================================
$Space::
{
    KeyWait "Space"
    if (A_PriorKey = "Space")
        Send "{Space}"
}

#HotIf GetKeyState("Space", "P")
; Lowercase mappings
c::Send "ç"
g::Send "ğ"
i::Send "ı"
o::Send "ö"
s::Send "ş"
u::Send "ü"

; Uppercase mappings (Space + Left Shift + Key)
+c::Send "Ç"
+g::Send "Ğ"
+i::Send "İ"
+o::Send "Ö"
+s::Send "Ş"
+u::Send "Ü"
#HotIf

; ==============================================================================
; 3. RIGHT SHIFT: REMAP TO BACKSPACE (Turn off sticky keys at Windows accessibility)
; ==============================================================================
RShift::Backspace

; ==============================================================================
; 4. EXTRA UTILITIES
; ==============================================================================
; Shift + Caps Lock to toggle actual Caps Lock
+CapsLock::CapsLock
