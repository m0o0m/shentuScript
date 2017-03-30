GameBattleSetting = {}
function GameBattleSetting.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931100016,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,583, 262)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1930001000,"",19,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4293320812)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1930001000,"",160,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4293320812)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check2",1930001000,"",17,107)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4293320812)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check3",1930001000,"",17,177)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4293320812)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check4",1930001000,"",145,177)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4293320812)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check5",1930001000,"",17,207)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4293320812)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check6",1930001000,"",440,45)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4293320812)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check7",1930001000,"",440,127)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4293320812)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox0",1930001014,441,75,126,19,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetListFillImage(_GUIHandle,1901900038)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100112,1900100108,0)
    end
    

    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",445,160,114,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check8",1930001000,"",281,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4293320812)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check9",1930001000,"自动红绿毒",145,207)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"自动红绿毒")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,86, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4293320812)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check10",1930001000,"自动太极玄清术",247,178)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"自动太极玄清术")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,110, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4293320812)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    GameBattleSetting.UIInit(_Parent)
end

--UI Logic Code Start
function GameBattleSetting.UIInit(_Handle)
end
GameBattleSetting.main()




