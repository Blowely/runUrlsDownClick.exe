#Include mouseNew.ahkCoordMode, Mouse, Screen, Pixel, MouseGetPos, MouseX, MouseYEsc::ExitAppNumpad2::Loop, 3 {    SendMouse_AbsoluteMove(1581, 243)    SendMouse_LeftClick()    reloads_count := 0    Start:    Sleep, 1000    old_color1 := 0    i := 0    btnXpos := 1815    btnYpos := 785    if (reloads_count > 2) {        btnXpos := 1857        btnYpos := 180    }    SendMouse_AbsoluteMove(btnXpos, btnYpos)    MouseGetPos, MouseX, MouseY    PixelGetColor, btnColor, MouseX, MouseY, Fast RGB    StringLeft, checkvarColor, btnColor, 3    while (checkvarColor != "0x3") {        i := i + 1        Sleep, 100        SendMouse_AbsoluteMove(btnXpos, btnYpos)        PixelGetColor, btnColor, MouseX, MouseY, Fast RGB        StringLeft, checkvarColor, btnColor, 3        if (i > 100 and checkvarColor == "0x2") { ;close modal            MsgBox HERE close modal            SendMouse_AbsoluteMove(1887, 302)            SendMouse_LeftClick()            Sleep, 100            SendMouse_AbsoluteMove(1867, 162)            break        }        if (i > 100 and checkvarColor != "0x2") { ;reload page            reloads_count++            Loop, 7 {                Send {WheelUp}                Sleep, 100            }            Goto, Start        }    }    reloads_count := 0    SendMouse_LeftClick()    Sleep, 300    SendMouse_AbsoluteMove(1810, 548)    SendMouse_LeftClick()    SendMouse_LeftClick()    Sleep, 1000    SendMouse_AbsoluteMove(1810, 845)    MouseGetPos, MouseX, MouseY    PixelGetColor, btnColor, MouseX, MouseY, Fast RGB    StringLeft, checkvarColor, btnColor, 3    stack := 0    while (checkvarColor != "0x3") {        stack++        SendMouse_AbsoluteMove(1810, 845)        MouseGetPos, MouseX, MouseY        PixelGetColor, btnColor, MouseX, MouseY, Fast RGB        StringLeft, checkvarColor, btnColor, 3        Sleep, 100        if (stack > 70) { ; close modal            SendMouse_AbsoluteMove(1887, 302)            SendMouse_LeftClick()            Sleep, 100            SendMouse_AbsoluteMove(1867, 162)            Goto, Start        }    }    SendMouse_AbsoluteMove(1800, 125)    MouseGetPos, MouseX, MouseY    PixelGetColor, color12, %MouseX%, %MouseY%    old_out_color := color12    while(color12 == old_out_color) ; While the pixel Color is the same    {        SendMouse_AbsoluteMove(1810, 845)        SendMouse_LeftClick()        Sleep, 1000        SendMouse_AbsoluteMove(1800, 125)        MouseGetPos, MouseX, MouseY        PixelGetColor, newColor, %MouseX%, %MouseY%        old_out_color := newColor    }    Sleep, 500    SendMouse_AbsoluteMove(1600, 865)    MouseGetPos, MouseX, MouseY    PixelGetColor, color, %MouseX%, %MouseY%    old_out_color := color    StringLeft, checkvarСolor, color, 3    StringLeft, checkvarOldColor, old_out_color, 3    StringRight, checkvarEndСolor, color, 3    StringRight, checkvarEndOldColor, old_out_color, 3    isOpenImage := false    height := 753    ;MsgBox color %color%    while (checkvarOldColor != "0xF") {        SendMouse_AbsoluteMove(1614, height -= 10)        Sleep, 50        SendMouse_LeftClick()        Sleep, 50        SendMouse_AbsoluteMove(1600, 865)        Sleep, 50        PixelGetColor, newColorHere, %MouseX%, %MouseY%        old_out_color := newColorHere        StringLeft, checkvarOldColor, newColorHere, 3        StringRight, checkvarEndOldColor, newColorHere, 3        MsgBox checkvarOldColor %checkvarOldColor%        if (checkvarOldColor == "0x1") {            isOpenImage := true            break        }        ;MsgBox newColorHere %newColorHere%    }    if (isOpenImage == false) {        Sleep, 500        SendMouse_AbsoluteMove(1893, 123)        SendMouse_LeftClick()    } else {        Goto, OpenedImage    }    MouseGetPos, MouseX, MouseY    PixelGetColor, color, %MouseX%, %MouseY%    old_out_color := color    StringLeft, checkvarСolor, color, 3    StringLeft, checkvarOldColor, old_out_color, 3    StringRight, checkvarEndСolor, color, 3    StringRight, checkvarEndOldColor, old_out_color, 3    Sleep, 500    ;MsgBox color %color%    while (checkvarOldColor != "0x1") {        SendMouse_AbsoluteMove(1614, height -= 50)        Sleep, 50        SendMouse_LeftClick()        Sleep, 50        SendMouse_AbsoluteMove(1600, 900)        Sleep, 50        PixelGetColor, newColorHere, %MouseX%, %MouseY%        old_out_color := newColorHere        StringLeft, checkvarOldColor, newColorHere, 3        StringRight, checkvarEndOldColor, newColorHere, 3        if (checkvarOldColor == "0x1") {            isOpenImage := true            break        }        ;MsgBox newColorHere %newColorHere%    }    OpenedImage:    Sleep, 400    SendMouse_AbsoluteMove(1795, 863)    Loop, 6 {        SendMouse_LeftClick()        Sleep, 200    }    SendMouse_AbsoluteMove(1550, 87) ; close images    SendMouse_LeftClick()    Sleep, 1100    SendMouse_AbsoluteMove(1550, 87) ;Goto browser    SendMouse_LeftClick()    Sleep, 400    SendMouse_AbsoluteMove(1803, 863)    SendMouse_LeftClick()    Sleep, 600    SendMouse_AbsoluteMove(1892, 180) ;close page    SendMouse_LeftClick()    Sleep, 600    SendMouse_AbsoluteMove(1631, 240) ;open page    SendMouse_LeftClick()    Sleep, 2000}Return