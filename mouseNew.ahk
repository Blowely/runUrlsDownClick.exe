;---------------------------------------------------------------------------
SendMouse_LeftClick() { ; send fast left mouse clicks
;---------------------------------------------------------------------------
    DllCall("mouse_event", "UInt", 0x02) ; left button down
    DllCall("mouse_event", "UInt", 0x04) ; left button up
}


;---------------------------------------------------------------------------
SendMouse_RightClick() { ; send fast right mouse clicks
;---------------------------------------------------------------------------
    DllCall("mouse_event", "UInt", 0x08) ; right button down
    DllCall("mouse_event", "UInt", 0x10) ; right button up
}


;---------------------------------------------------------------------------
SendMouse_MiddleClick() { ; send fast middle mouse clicks
;---------------------------------------------------------------------------
    DllCall("mouse_event", "UInt", 0x20) ; middle button down
    DllCall("mouse_event", "UInt", 0x40) ; middle button up
}


;---------------------------------------------------------------------------
SendMouse_RelativeMove(x, y) { ; send fast relative mouse moves
;---------------------------------------------------------------------------
    DllCall("mouse_event", "UInt", 0x01, "UInt", x, "UInt", y) ; move
}


;---------------------------------------------------------------------------
SendMouse_AbsoluteMove(x, y) { ; send fast absolute mouse moves
;---------------------------------------------------------------------------
    ; Absolute coords go from 0..65535 so we have to change to pixel coords
    ;-----------------------------------------------------------------------
    static SysX, SysY
    If (SysX = "")
        SysX := 65535//A_ScreenWidth, SysY := 65535//A_ScreenHeight
    DllCall("mouse_event", "UInt", 0x8001, "UInt", x*SysX, "UInt", y*SysY)
}


;---------------------------------------------------------------------------
SendMouse_Wheel(w) { ; send mouse wheel movement, pos=forwards neg=backwards
;---------------------------------------------------------------------------
    DllCall("mouse_event", "UInt", 0x800, "UInt", 0, "UInt", 0, "UInt", w)
}

#Persistent ; Keep the script running
SetBatchLines -1 ; Use maximum processing power

SmoothMouseMove(TargetX, TargetY, Duration) {
    CoordMode, Mouse, Screen
    DllCall("SystemParametersInfo", UInt, 113, UInt, 0, UIntP, OriginalMouseMoveSpeed, UInt, 0)

    StartX := A_CursorX
    StartY := A_CursorY
    Steps := Duration / 10

    Loop % Steps {
        Progress := A_Index / Steps
        CurX := StartX + (TargetX - StartX) * Progress
        CurY := StartY + (TargetY - StartY) * Progress
        DllCall("mouse_event", UInt, 0x01, UInt, CurX, UInt, CurY, UInt, 0, Ptr, 0)
        Sleep, 10
    }

    DllCall("mouse_event", UInt, 0x01, UInt, TargetX, UInt, TargetY, UInt, 0, Ptr, 0) ; Ensure the final position is reached
    DllCall("SystemParametersInfo", UInt, 113, UInt, 0, UInt, OriginalMouseMoveSpeed, UInt, 0) ; Restore original mouse speed
}