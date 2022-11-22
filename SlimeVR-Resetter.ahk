#include auto_oculus_touch.ahk
InitOculus()
isHandTriggerPressed = false
; Main polling loop.
Loop {
    Poll()
    ; Use Left Joystick Click as CTRL+ALT+SHIFT+Y
    if IsPressed(1024)
            Send {Ctrl Down}{Alt Down}{Shift Down}{Y Down}{Y Up}{Shift Up}{Alt Up}{Ctrl Up}
            
    ; Use Right Joystick Click as CTRL+ALT+SHIFT+U
    if IsReleased(4)
               Send {Ctrl Down}{Alt Down}{Shift Down}{U Down}{U Up}{Shift Up}{Alt Up}{Ctrl Up}
    Sleep, 10
}
