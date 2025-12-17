#Requires AutoHotKey v2.0

; terminal
#Enter::
{
    Run("C:\Program Files\Alacritty\alacritty.EXE")
    ;Sleep 500
    ;Send "!{Escape}"
}

; close with win-w
#w::
{
    ;Send "!{F4}"
    ;Send "!{Space}{Up}{Enter}"
    Send "!+{q}"  ; alt-shift-q in glazeWM
}


#j::
{
    Send "^#{left}"
}


#k::
{
    Send "^#{right}"
}


; win-tab
#Tab::
{
    Send "!{Escape}" ; alt tab
}

; vim save
#`::
{
    Send ":w{Enter}"
}

; disable windows key
~Lwin::
{
    Send "{Blind}{vkE8}"
}


; ctrl shift j to view virtual desktops
^+j::
{
    Send "#{Tab}"
}

; ctrl shift k to open ctrl panel (like ctrl esc)
^+k::
{
    Send "^{Escape}"
}
