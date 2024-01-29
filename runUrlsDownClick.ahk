#Include mouseNew.ahk
CoordMode, Mouse, Screen, Pixel, MouseGetPos, MouseX, MouseY

Esc::ExitApp



Numpad1::
    scroll_stack := 0
;    loop_val := 2500 - (scroll_stack / 3 * 2 - 2) // need to solve

    Loop, 4000 {
        LeftProduct:
        ;msgbox Value of c = %scroll_stack%
;        SendMouse_AbsoluteMove(1765, 860)
;        MouseGetPos, MouseX, MouseY
;        PixelGetColor, checkColor, %MouseX%, %MouseY%
;        checked_old_out_color := checkColor

        Sleep, 100
        SendMouse_AbsoluteMove(1616, 277) ; left product
        Sleep, 1500
        Click down right
        Sleep, 200
        SendMouse_AbsoluteMove(1626, 277)
        Click up right
        Sleep, 1000


;        SendMouse_AbsoluteMove(1765, 860)
;        MouseGetPos, MouseX, MouseY
;        PixelGetColor, cardCheckedColor, %MouseX%, %MouseY%
;
;        if (checked_old_out_color == cardCheckedColor) {
;            SendMouse_AbsoluteMove(1616, 277) ; left product
;            Sleep, 1000
;            SendMouse_LeftClick()
;            Sleep, 1000
;
;            SendMouse_AbsoluteMove(1765, 860)
;            MouseGetPos, MouseX, MouseY
;            PixelGetColor, checkColor, %MouseX%, %MouseY%
;            checked_old_out_color := checkColor
;
;            if (checked_old_out_color == cardCheckedColor) {
;                SendMouse_AbsoluteMove(1616, 277) ; left product
;                Sleep, 100
;                SendMouse_LeftClick()
;                Sleep, 1000
;            }
;        }


        SendMouse_AbsoluteMove(1800, 125)

        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        ;MsgBox The color at the current cursor position is %color%.

        SendMouse_AbsoluteMove(1855, 118)

        Sleep, 500

        while_stack := 0

        while(color == old_out_color) ; While the pixel Color is the same
        {
            if (while_stack > 25)
            {
                SendMouse_AbsoluteMove(1616, 277) ; left product
                Sleep, 100

                loop_i := 0

                Loop, % scroll_stack {
                    Send {WheelDown}
;                    if (loop_i // 3 == 0 and loop_i != 0) {
;                        Sleep, 500
;                    } else {
;                        Sleep, 100
;                    }
                    Sleep, 300

                    loop_i++
                }

                Goto, LeftProduct
            }

            while_stack := while_stack + 1

            SendMouse_LeftClick()
            Sleep, 500

            SendMouse_AbsoluteMove(1800, 125)

            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            ; MsgBox WHILE The color at the current cursor position is %newColor%.

            SendMouse_AbsoluteMove(1855, 118)
        }

        Sleep, 1000

        SendMouse_AbsoluteMove(1800, 125)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        SendMouse_AbsoluteMove(1550, 530)

        while(color == old_out_color) ; While the pixel Color is the same
        {
            SendMouse_LeftClick()
            Sleep, 800

            SendMouse_AbsoluteMove(1800, 125)

            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            ; MsgBox WHILE The color at the current cursor position is %newColor%.

            SendMouse_AbsoluteMove(1550, 530)
        }


        ;Sleep, 800

        SendMouse_AbsoluteMove(1815, 860)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        while(color == old_out_color)
        {
            SendMouse_AbsoluteMove(1496, 503)
            Sleep, 100
            SendMouse_LeftClick()
            Sleep, 300

            SendMouse_AbsoluteMove(1815, 860)
            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor
        }

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;        SendMouse_AbsoluteMove(1765, 860)
;        MouseGetPos, MouseX, MouseY
;        PixelGetColor, newCheckColor, %MouseX%, %MouseY%
;        new_checked_old_out_color := newCheckColor
        RightProduct:

        Sleep, 1400

;        SendMouse_AbsoluteMove(1765, 860)
;        MouseGetPos, MouseX, MouseY
;        PixelGetColor, checkColor, %MouseX%, %MouseY%
;        checked_old_out_color := checkColor

        Sleep, 100

        ;SendMouse_AbsoluteMove(1830, 277) ; right product
        ;Sleep, 1500

        ;SendMouse_LeftClick()
        SendMouse_AbsoluteMove(1840, 277)
        Click down left
        SendMouse_AbsoluteMove(1830, 277)
        Sleep, 200
        Click up left

        Sleep, 1000

;        SendMouse_AbsoluteMove(1765, 860)
;        MouseGetPos, MouseX, MouseY
;        PixelGetColor, cardCheckedColor, %MouseX%, %MouseY%
;
;        if (checked_old_out_color == cardCheckedColor) {
;            SendMouse_AbsoluteMove(1830, 277) ; right product
;            Sleep, 1000
;            SendMouse_LeftClick()
;            Sleep, 1000
;
;            SendMouse_AbsoluteMove(1765, 860)
;            MouseGetPos, MouseX, MouseY
;            PixelGetColor, checkColor, %MouseX%, %MouseY%
;            checked_old_out_color := checkColor
;
;            if (checked_old_out_color == cardCheckedColor) {
;                SendMouse_AbsoluteMove(1830, 277) ; right product
;                Sleep, 100
;                SendMouse_LeftClick()
;                Sleep, 1000
;            }
;        }

        SendMouse_AbsoluteMove(1800, 125)

        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        ;MsgBox The color at the current cursor position is %color%.

        SendMouse_AbsoluteMove(1855, 118)

        Sleep, 500

        while_stack := 0

        while(color == old_out_color) ; While the pixel Color is the same
        {
            if (while_stack > 25)
            {
                SendMouse_AbsoluteMove(1616, 277) ; left product
                Sleep, 100

                loop_i := 0

                Loop, % scroll_stack {
                    Send {WheelDown}
;                    if (loop_i // 3 == 0 and loop_i != 0) {
;                        Sleep, 500
;                    } else {
;                        Sleep, 100
;                    }
                    Sleep, 300

                    loop_i++
                }

                Goto, RightProduct
            }

            while_stack := while_stack + 1

            SendMouse_LeftClick()
            Sleep, 500

            SendMouse_AbsoluteMove(1800, 125)

            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            ; MsgBox WHILE The color at the current cursor position is %newColor%.

            SendMouse_AbsoluteMove(1855, 118)
        }

        Sleep, 1000

        SendMouse_AbsoluteMove(1800, 125)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        SendMouse_AbsoluteMove(1550, 530)

        while(color == old_out_color) ; While the pixel Color is the same
        {
            SendMouse_LeftClick()
            Sleep, 800

            SendMouse_AbsoluteMove(1800, 125)

            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            ; MsgBox WHILE The color at the current cursor position is %newColor%.

            SendMouse_AbsoluteMove(1550, 530)
        }


        ;Sleep, 800

        SendMouse_AbsoluteMove(1815, 860)
        MouseGetPos, MouseX, MouseY
        PixelGetColor, color, %MouseX%, %MouseY%
        old_out_color := color

        while(color == old_out_color)
        {
            SendMouse_AbsoluteMove(1496, 503)
            Sleep, 100
            SendMouse_LeftClick()
            Sleep, 800

            SendMouse_AbsoluteMove(1815, 860)
            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor
        }



        Sleep, 1000
        SendMouse_AbsoluteMove(1616, 277) ; left product
        Loop, 5 {
            Send {WheelDown}
            scroll_stack := scroll_stack + 1
            Sleep, 300
        }
        Sleep, 1000
    }
Return