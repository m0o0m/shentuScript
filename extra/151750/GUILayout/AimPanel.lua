AimPanel = {}
function AimPanel.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
        MainBase_Parent = GUI:WndCreateWnd(_Parent,"MainBase",0,420,8)
    if MainBase_Parent ~= 0 then
        GUI:WndSetSizeM(MainBase_Parent,168, 59)
    end
    
    
    _GUIHandle = GUI:ImageCreate(MainBase_Parent,"HeaderBg",1833400002,-54,2)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,200, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(MainBase_Parent,"BgImage",1832400042,11,2)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,135, 53)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(MainBase_Parent,"CloseBtn",1832500014,138,-2)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(MainBase_Parent,"LevelText",19,7,21,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(MainBase_Parent,"NameText",47,15,88,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(MainBase_Parent,"HeaderImg",0,-40,10)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,100, 101)
    end
    
    
    AimPanel.UIInit(_Parent)
end

--UI Logic Code Start
function AimPanel.UIInit(_Handle)
end
AimPanel.main()




