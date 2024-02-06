#Include mouseNew.ahk
CoordMode, Mouse, Screen, Pixel, MouseGetPos, MouseX, MouseY

Esc::ExitApp



Numpad1::
    scroll_stack := 0
;    loop_val := 2500 - (scroll_stack / 3 * 2 - 2) // need to solve

    ;-----------------------------

    endLeftColorStack := 0
    prevLeftColor := 0

;    Sleep, 200
;    SendMouse_AbsoluteMove(1865, 205)
;    Sleep, 100
;    SendMouse_LeftClick()
;    Sleep, 500
;
;    Sleep, 200
;    SendMouse_AbsoluteMove(1860, 165)
;    Sleep, 400
;    SendMouse_LeftClick()
;    Sleep, 110
;    SendRaw 548
;
;    Sleep, 2000
;    SendMouse_AbsoluteMove(1707, 476)
;    Sleep, 100
;    MouseGetPos, MouseX, MouseY
;    PixelGetColor, colorNotify, %MouseX%, %MouseY%
;
;    if (colorNotify != "0xFAF5F8") {
;        MsgBox %colorNotify%
;    }
;
;    Sleep, 3000
;    return

    Loop, 4000 {
        ParseProduct(columnSide, scroll_stack)
        {
            StartParseProduct:
            Sleep, 1000
            SendMouse_AbsoluteMove(1810, 873)

            MouseGetPos, MouseX, MouseY
            PixelGetColor, color, %MouseX%, %MouseY%
            old_out_color := color

            SendMouse_AbsoluteMove(1858, 115)

            Sleep, 200

            while_stack := 0

            while(color == old_out_color) ; While the pixel Color is the same
            {
                Sleep, 600

                if (while_stack > 40)
                {
                    SendMouse_AbsoluteMove(1616, 277) ; left product
                    Sleep, 100

                    loop_i := 0

                    Loop, % scroll_stack {
                        Send {WheelDown}
                        Sleep, 300
                        loop_i++
                    }

                    if (columnSide == "left") {
                        return "GoToLeftProduct"
                    }

                    if (columnSide == "right") {
                        return "GoToRightProduct"
                    }
                }

                while_stack := while_stack + 1

                SendMouse_LeftClick()
                Sleep, 1000

                SendMouse_AbsoluteMove(1810, 873)

                MouseGetPos, MouseX, MouseY
                PixelGetColor, newColor, %MouseX%, %MouseY%
                old_out_color := newColor

                if (old_out_color != "0xFAF5F8" and old_out_color != "0xF2EFF0" and old_out_color != "0xCDCD3D") {
                    while (newColor == old_out_color) {
                        SendMouse_AbsoluteMove(1496, 503)
                        Sleep, 1500
                        SendMouse_LeftClick()
                        Sleep, 1500

                        SendMouse_AbsoluteMove(1810, 873)
                        MouseGetPos, MouseX, MouseY
                        PixelGetColor, newColor1, %MouseX%, %MouseY%
                        old_out_color := newColor1
                    }

                    Goto, StartParseProduct
                }

                ; MsgBox WHILE The color at the current cursor position is %newColor%.

                SendMouse_AbsoluteMove(1858, 115)
            }

            Sleep, 1000

            SendMouse_AbsoluteMove(1810, 873)
            MouseGetPos, MouseX, MouseY
            PixelGetColor, color, %MouseX%, %MouseY%
            old_out_color := color

            while_stack_back_to_products := 0

            while(color == old_out_color) ; While the pixel Color is the same
            {
                SendMouse_AbsoluteMove(1550, 530)

                if (while_stack_back_to_products > 35)
                {
                    SendMouse_AbsoluteMove(1556, 625)
                    Sleep, 100

                    Click down left
                    Sleep, 100
                    SmoothMouseMove(1716, 625, 2000)
                    Sleep, 10000
                    Click up left
                    Sleep, 5000
                    Goto, StartParseProduct
                }

                while_stack_back_to_products := while_stack_back_to_products + 1
                Sleep, 200
                SendMouse_LeftClick()
                Sleep, 800

                SendMouse_AbsoluteMove(1810, 873)

                MouseGetPos, MouseX, MouseY
                PixelGetColor, newColor, %MouseX%, %MouseY%
                old_out_color := newColor
            }

            ;Sleep, 800

            SendMouse_AbsoluteMove(1810, 873)
            MouseGetPos, MouseX, MouseY
            PixelGetColor, color3, %MouseX%, %MouseY%
            old_out_color3 := color3

            while (old_out_color3 == "0xCDCD3D")
            {
                Sleep, 1000
                SendMouse_AbsoluteMove(1496, 503)

                SendMouse_LeftClick()
                Sleep, 500

                SendMouse_AbsoluteMove(1810, 873)
                Sleep, 100
                MouseGetPos, MouseX, MouseY
                PixelGetColor, newColor3, %MouseX%, %MouseY%
                old_out_color3 := newColor3
            }
        }

        if (scroll_stack == -1) {
            SendMouse_AbsoluteMove(1810, 873)
            Sleep, 100
            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            while (old_out_color != "0xCDCD3D") {
                Sleep, 100
                SendMouse_AbsoluteMove(1616, 277) ; left product
                Sleep, 1000
                Click down right
                Sleep, 200
                SendMouse_AbsoluteMove(1626, 277)
                Click up right
                Sleep, 2000

                SendMouse_AbsoluteMove(1810, 873)
                Sleep, 100
                MouseGetPos, MouseX, MouseY
                PixelGetColor, color, %MouseX%, %MouseY%
                old_out_color := color
            }

            res := ParseProduct("left", scroll_stack)

            if (res == "GoToLeftProduct") {
                Goto, LeftProduct
            }

            ;-------

            SendMouse_AbsoluteMove(1810, 873)
            Sleep, 100
            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            while (old_out_color != "0xCDCD3D") {
                Sleep, 100
                SendMouse_AbsoluteMove(1616, 568) ; left product
                Sleep, 1000
                Click down right
                Sleep, 200
                SendMouse_AbsoluteMove(1626, 568)
                Click up right
                Sleep, 2000

                SendMouse_AbsoluteMove(1810, 873)
                Sleep, 100
                MouseGetPos, MouseX, MouseY
                PixelGetColor, color, %MouseX%, %MouseY%
                old_out_color := color
            }

            res := ParseProduct("left", scroll_stack)

            if (res == "GoToLeftProduct") {
                Goto, LeftProduct
            }

            ;------------------------

            SendMouse_AbsoluteMove(1810, 873)
            Sleep, 100
            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            while (old_out_color != "0xCDCD3D") {
                Sleep, 100
                SendMouse_AbsoluteMove(1840, 277)
                Sleep, 1000
                Click down left
                SendMouse_AbsoluteMove(1830, 277)
                Sleep, 200
                Click up left
                Sleep, 2000

                SendMouse_AbsoluteMove(1810, 873)
                Sleep, 100
                MouseGetPos, MouseX, MouseY
                PixelGetColor, color, %MouseX%, %MouseY%
                old_out_color := color
            }

            res := ParseProduct("right", scroll_stack)

            ;-------

            SendMouse_AbsoluteMove(1810, 873)
            Sleep, 100
            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor

            while (old_out_color != "0xCDCD3D") {
                Sleep, 100
                SendMouse_AbsoluteMove(1840, 568)
                Sleep, 1000
                Click down left
                SendMouse_AbsoluteMove(1830, 568)
                Sleep, 200
                Click up left
                Sleep, 2000

                SendMouse_AbsoluteMove(1810, 873)
                Sleep, 100
                MouseGetPos, MouseX, MouseY
                PixelGetColor, color, %MouseX%, %MouseY%
                old_out_color := color
            }

            res := ParseProduct("right", scroll_stack)
        }


        LeftProduct:

        ;-------

        SendMouse_AbsoluteMove(1810, 873)
        Sleep, 100
        MouseGetPos, MouseX, MouseY
        PixelGetColor, newColor, %MouseX%, %MouseY%
        old_out_color := newColor

        while (old_out_color != "0xCDCD3D" and old_out_color != "0xCFCC3E" and old_out_color != "0xCFCC3D"
            and old_out_color != "0xCССС3С" and old_out_color != "0xCECC3D") {
            Sleep, 100
            SendMouse_AbsoluteMove(1616, 860) ; left product

            MouseGetPos, MouseX, MouseY
            PixelGetColor, leftColor, %MouseX%, %MouseY%

            if (leftColor == prevLeftColor) {
                endLeftColorStack := endLeftColorStack + 1

                if (endLeftColorStack == 10) {
                    endLeftColorStack := 0
                }
            } else {
                endLeftColorStack := 0
            }

            prevLeftColor := leftColor

            Sleep, 1000
            Click down right
            Sleep, 100
            SendMouse_AbsoluteMove(1626, 860)
            Click up right
            Sleep, 2500

            SendMouse_AbsoluteMove(1875, 185)
            Sleep, 100
            MouseGetPos, MouseX, MouseY
            PixelGetColor, testColor, %MouseX%, %MouseY%

            if (testColor == "0xC5C33D" or testColor == "0xC5C43C" or testColor == "0xC5C43B" or testColor == "0xC3C43C" or testColor == "0xC3C43D") {
                Sleep, 100
                SendMouse_AbsoluteMove(1496, 503)
                Sleep, 100
                SendMouse_LeftClick()
                Sleep, 500
            }

            SendMouse_AbsoluteMove(1810, 873)
            Sleep, 100
            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor
            MsgBox newColor %newColor%

            if (newColor == "0xFAF5F8") {
                Sleep, 3000
                SendMouse_AbsoluteMove(1810, 873)
                Sleep, 100
                MouseGetPos, MouseX, MouseY
                PixelGetColor, newColor, %MouseX%, %MouseY%
                old_out_color := newColor
            }

            if (newColor == "0xC5C43C") {
                Sleep, 100
                SendMouse_AbsoluteMove(1496, 503)
                Sleep, 100
                SendMouse_LeftClick()
                Sleep, 500
            }
        }



        res := ParseProduct("left", scroll_stack)

        if (res == "GoToLeftProduct") {
            Goto, LeftProduct
        }

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

        RightProduct:

        ;-------

        SendMouse_AbsoluteMove(1810, 873)
        Sleep, 100
        MouseGetPos, MouseX, MouseY
        PixelGetColor, newColor, %MouseX%, %MouseY%
        old_out_color := newColor

        while (old_out_color != "0xCDCD3D" and old_out_color != "0xCFCC3E" and old_out_color != "0xCFCC3D"
            and old_out_color != "0xCССС3С" and old_out_color != "0xCECC3D") {
            Sleep, 100
            SendMouse_AbsoluteMove(1840, 860)

            MouseGetPos, MouseX, MouseY
            PixelGetColor, rightColor, %MouseX%, %MouseY%

            if (rightColor == "0xF7EEF0" or rightColor == "0xF0EEF7") {
                MsgBox end of list
            }

            Sleep, 1000
            Click down left
            Sleep, 100
            SendMouse_AbsoluteMove(1830, 860)
            Click up left
            Sleep, 2500

            SendMouse_AbsoluteMove(1875, 185)
            Sleep, 100
            MouseGetPos, MouseX, MouseY
            PixelGetColor, testColor, %MouseX%, %MouseY%

            if (testColor == "0xC5C33D" or testColor == "0xC5C43C" or testColor == "0xC5C43B" or testColor == "0xC3C43C" or testColor == "0xC3C43D") {
                Sleep, 100
                SendMouse_AbsoluteMove(1496, 503)
                Sleep, 100
                SendMouse_LeftClick()
                Sleep, 500
            }

            SendMouse_AbsoluteMove(1810, 873)
            Sleep, 100
            MouseGetPos, MouseX, MouseY
            PixelGetColor, newColor, %MouseX%, %MouseY%
            old_out_color := newColor
            MsgBox newColor2 %newColor%

            if (newColor == "0xFAF5F8") {
                Sleep, 3000
                SendMouse_AbsoluteMove(1810, 873)
                Sleep, 100
                MouseGetPos, MouseX, MouseY
                PixelGetColor, newColor, %MouseX%, %MouseY%
                old_out_color := newColor
            }
            if (newColor == "0xC5C43C") {
                Sleep, 100
                SendMouse_AbsoluteMove(1496, 503)
                Sleep, 100
                SendMouse_LeftClick()
                Sleep, 500
            }
        }


        res := ParseProduct("right", scroll_stack)

        if (res == "GoToRightProduct") {
            Goto, RightProduct
        }

        ;-------


        Sleep, 1000
        SendMouse_AbsoluteMove(1616, 860) ; left product
        Loop, 5 {
            Send {WheelDown}
            scroll_stack := scroll_stack + 1
            Sleep, 300
        }
        Sleep, 1000
    }
Return