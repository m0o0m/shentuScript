HeroOther = {}
function HeroOther.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_3",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,150, 241)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"TEXT0",15,13,56,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EditBK0",1900800397,74,11)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,110, 26)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",82,15,91,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"TEXT1",15,43,56,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EditBK1",1900800397,74,41)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,110, 26)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",82,45,91,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    HeroOther.UIInit(_Parent)
end

--UI Logic Code Start
function HeroOther.UIInit(_Handle)
end
HeroOther.main()