#include auto_oculus_touch.ahk
InitOculus()
isHandTriggerPressed = false
; Main polling loop.
Loop {
    Poll()
    ; Use Left Joystick Click as CTRL+ALT+SHIFT+Y
    if IsReleased(1024) {
        Send {Ctrl Down}{Alt Down}{Shift Down}{Y Down}{Y Up}{Shift Up}{Alt Up}{Ctrl Up}
        OutputDebug, "Left pressed"
    }

    ; Use Right Joystick Click as CTRL+ALT+SHIFT+U
    if IsLongPressed(4)
    {
        Send {Ctrl Down}{Alt Down}{Shift Down}{U Down}{U Up}{Shift Up}{Alt Up}{Ctrl Up}
        OutputDebug, "right pressed"
        ;Vibrate(controller, frequency, amplitude, length)
        Poll()
        Vibrate(1, 1, 255, 0.02)
        OutputDebug, "right pressed Vibrate"
    }
    ; OutputDebug, "poll"
    Sleep, 10
}
