PKNotic = {}
function PKNotic.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1804300042,0,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,524, 159)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Btn",1804300043,348,149)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,72, 28)
        GUI:WndSetTextColorM(_GUIHandle, 4290884516)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckBox",1804300007,"同意自由对战",212,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"同意自由对战")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,98, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4294967295)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"Edit",96,62,385,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "本游戏区为自由对战模式，遵守游戏规则可以获得更多的游戏体验")
		GUI:RichEditSetEditEnable(_GUIHandle, false)
    end
    
    
    
    PKNotic.UIInit(_Parent)
end

--UI Logic Code Start
function PKNotic.UIInit(_Handle)
end
PKNotic.main()