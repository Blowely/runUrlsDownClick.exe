#Include mouseNew.ahkCoordMode, Mouse, Screen, Pixel, MouseGetPos, MouseX, MouseYEsc::ExitAppCoordMode, Pixel, screenCoordMode, Mouse, screenNumpad2::    SendMouse_AbsoluteMove(1715, 160)    Sleep, 100    SendMouse_LeftClick()    Sleep, 4000    SendMouse_AbsoluteMove(1810, 872)    MouseGetPos, MouseX, MouseY    PixelGetColor, color2, %MouseX%, %MouseY%    old_color2 := color2    while (old_color2 != "0xD1B72D") {        SendMouse_AbsoluteMove(1810, 872)        MouseGetPos, MouseX, MouseY        PixelGetColor, color2, %MouseX%, %MouseY%        old_color2 := color2    }    SendMouse_AbsoluteMove(1550, 848)    MouseGetPos, MouseX, MouseY    PixelGetColor, color12, %MouseX%, %MouseY%    old_out_color := color12    while(color12 == old_out_color) ; While the pixel Color is the same    {        SendMouse_AbsoluteMove(1810, 872)        SendMouse_LeftClick()        Sleep, 1000        SendMouse_AbsoluteMove(1550, 848)        MouseGetPos, MouseX, MouseY        PixelGetColor, newColor, %MouseX%, %MouseY%        old_out_color := newColor    }    SendMouse_AbsoluteMove(1500, 240)    Sleep, 100    SendMouse_LeftClick()    Sleep, 200    SendMouse_AbsoluteMove(1600, 900)    MouseGetPos, MouseX, MouseY    PixelGetColor, color, %MouseX%, %MouseY%    old_out_color := color    StringLeft, checkvarСolor, color, 3    StringLeft, checkvarOldColor, old_out_color, 3    StringRight, checkvarEndСolor, color, 3    StringRight, checkvarEndOldColor, old_out_color, 3    isOpenImage := false    height := 753    ;MsgBox color %color%    while (checkvarOldColor == checkvarСolor or checkvarEndOldColor == checkvarEndСolor     or old_out_color == "0xFFFFFFFF"     or (old_out_color != "0xFAF5F8" and old_out_color != "0xF8F1F4" and old_out_color != "0x121011")) {        SendMouse_AbsoluteMove(1618, height -= 10)        Sleep, 50        SendMouse_LeftClick()        Sleep, 50        SendMouse_AbsoluteMove(1600, 900)        Sleep, 50        PixelGetColor, newColorHere, %MouseX%, %MouseY%        old_out_color := newColorHere        StringLeft, checkvarOldColor, newColorHere, 3        StringRight, checkvarEndOldColor, newColorHere, 3        if (old_out_color == "0x121011") {            isOpenImage := true        }        ;MsgBox newColorHere %newColorHere%    }    SendMouse_AbsoluteMove(1614, 945)    SendMouse_LeftClick()    if (isOpenImage == true) {        height += 100    }    amount := (834 - height) // 90    if (amount > 5) {        amount := 5    }    y := 795    Sleep, 100    Loop, % amount {        x := 1600        Loop, 4 {            SendMouse_AbsoluteMove(x, y)            SendMouse_LeftClick()            if (A_Index == 1) {                SendMouse_LeftClick()            }            Sleep, 400            SendMouse_AbsoluteMove(1725, 850)            PixelGetColor, midColor, MouseX + 125, MouseY, Fast RGB            Sleep, 100            SendMouse_AbsoluteMove(1926, 905)            PixelGetColor, rightColor, MouseX + 275, MouseY, Fast RGB            StringLeft, checkvarMidColor, midColor, 3            StringLeft, checkvarRightColor, rightColor, 3            if ((checkvarMidColor == "0xF" and checkvarRightColor == "0x3")            or (checkvarMidColor == "0x3" and checkvarRightColor != "0x3")) {                MsgBox %midColor% %rightColor%                SendMouse_AbsoluteMove(1500, 240)                Sleep, 30                SendMouse_LeftClick()                Sleep, 100            } else if (midColor == "0xFAF5F8" and rightColor == "0xFAF5F8") {                SendMouse_AbsoluteMove(1614, 945)                SendMouse_LeftClick()                break            }            x += 80        }        y -= 100    }Return