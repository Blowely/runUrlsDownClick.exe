#Include mouseNew.ahk
CoordMode, Mouse, Screen, Pixel, MouseGetPos, MouseX, MouseY

Esc::ExitApp

Numpad1::
    Loop, 2500 {
        SendMouse_AbsoluteMove(1765, 860)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, checkColor, %MouseX%, %MouseY%
        checked_old_out_color := checkColor

        SendMouse_AbsoluteMove(1616, 277) ; left product
        Sleep, 1500
        SendMouse_LeftClick()
        Sleep, 1000


        SendMouse_AbsoluteMove(1765, 860)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, cardCheckedColor, %MouseX%, %MouseY%

        if (checked_old_out_color == cardCheckedColor) {
            SendMouse_AbsoluteMove(1616, 277) ; left product
            Sleep, 1000
            SendMouse_LeftClick()
            Sleep, 1000

            SendMouse_AbsoluteMove(1765, 860)
            MouseGetPos, MouseX, MouseY
            PixelGetColor, checkColor, %MouseX%, %MouseY%
            checked_old_out_color := checkColor

            if (checked_old_out_color == cardCheckedColor) {
                SendMouse_AbsoluteMove(1616, 277) ; left product
                Sleep, 100
                SendMouse_LeftClick()
                Sleep, 1000
            }
        }


        SendMouse_AbsoluteMove(1800, 125)

        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        ;MsgBox The color at the current cursor position is %color%.

        SendMouse_AbsoluteMove(1855, 120)

        Sleep, 500

        while(color == old_out_color) ; While the pixel Color is the same
        {
            SendMouse_LeftClick()
            Sleep, 500

            SendMouse_AbsoluteMove(1800, 125)

            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            ; MsgBox WHILE The color at the current cursor position is %newColor%.

            SendMouse_AbsoluteMove(1855, 120)
        }

        Sleep, 1000

        SendMouse_AbsoluteMove(1800, 125)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        SendMouse_AbsoluteMove(1550, 818)

        while(color == old_out_color) ; While the pixel Color is the same
        {
            SendMouse_LeftClick()
            Sleep, 800

            SendMouse_AbsoluteMove(1800, 125)

            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            ; MsgBox WHILE The color at the current cursor position is %newColor%.

            SendMouse_AbsoluteMove(1550, 818)
        }


        ;Sleep, 800

        SendMouse_AbsoluteMove(1815, 860)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        while(color == old_out_color)
        {
            SendMouse_AbsoluteMove(1550, 120)
            SendMouse_LeftClick()
            Sleep, 300

            SendMouse_AbsoluteMove(1815, 860)
            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor
        }

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;        Sleep, 1000                          ; right product
;        SendMouse_AbsoluteMove(1830, 277)
;        SendMouse_LeftClick()
;        SendMouse_AbsoluteMove(1850, 125)
;        Sleep, 1000
;        SendMouse_LeftClick()
;        SendMouse_AbsoluteMove(1550, 818)
;        Sleep, 1000
;        SendMouse_LeftClick()
;        SendMouse_AbsoluteMove(1550, 120)
;        SendMouse_LeftClick()
;        Sleep, 4000
;        SendMouse_LeftClick()


;        SendMouse_AbsoluteMove(1765, 860)
;        MouseGetPos, MouseX, MouseY
;        PixelGetColor, newCheckColor, %MouseX%, %MouseY%
;        new_checked_old_out_color := newCheckColor


        Sleep, 1400

        SendMouse_AbsoluteMove(1765, 860)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, checkColor, %MouseX%, %MouseY%
        checked_old_out_color := checkColor

        Sleep, 100

        SendMouse_AbsoluteMove(1830, 277) ; right product
        Sleep, 1500

        SendMouse_LeftClick()
        Sleep, 1000

        SendMouse_AbsoluteMove(1765, 860)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, cardCheckedColor, %MouseX%, %MouseY%

        if (checked_old_out_color == cardCheckedColor) {
            SendMouse_AbsoluteMove(1830, 277) ; right product
            Sleep, 1000
            SendMouse_LeftClick()
            Sleep, 1000

            SendMouse_AbsoluteMove(1765, 860)
            MouseGetPos, MouseX, MouseY
            PixelGetColor, checkColor, %MouseX%, %MouseY%
            checked_old_out_color := checkColor

            if (checked_old_out_color == cardCheckedColor) {
                SendMouse_AbsoluteMove(1830, 277) ; right product
                Sleep, 100
                SendMouse_LeftClick()
                Sleep, 1000
            }
        }

        SendMouse_AbsoluteMove(1800, 125)

        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        ;MsgBox The color at the current cursor position is %color%.

        SendMouse_AbsoluteMove(1855, 120)

        Sleep, 500

        while(color == old_out_color) ; While the pixel Color is the same
        {
            SendMouse_LeftClick()
            Sleep, 300

            SendMouse_AbsoluteMove(1800, 125)

            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            ; MsgBox WHILE The color at the current cursor position is %newColor%.

            SendMouse_AbsoluteMove(1855, 120)
        }

        Sleep, 1000

        SendMouse_AbsoluteMove(1800, 125)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        SendMouse_AbsoluteMove(1550, 818)

        while(color == old_out_color) ; While the pixel Color is the same
        {
            SendMouse_LeftClick()
            Sleep, 800

            SendMouse_AbsoluteMove(1800, 125)

            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            ; MsgBox WHILE The color at the current cursor position is %newColor%.

            SendMouse_AbsoluteMove(1550, 818)
        }


        ;Sleep, 800

        SendMouse_AbsoluteMove(1815, 860)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        while(color == old_out_color)
        {
            SendMouse_AbsoluteMove(1550, 120)
            SendMouse_LeftClick()
            Sleep, 800

            SendMouse_AbsoluteMove(1815, 860)
            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor
        }



        Sleep, 1000
        SendMouse_AbsoluteMove(1616, 277) ; left product
        Loop, 3 {
            Send {WheelDown}
            Sleep, 100
        }
        Sleep, 1000
    }
Return