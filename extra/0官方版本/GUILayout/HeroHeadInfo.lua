HeroHeadInfo = {}
function HeroHeadInfo.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1930000112,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,198, 79)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"HeaderImage",0,27,9)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 45)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level",58,60,23,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleHP",1930000116,81,23)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,106, 9)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"RoleName",75,4,90,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff0",0,89,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,12, 12)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff1",0,111,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,12, 12)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff2",0,133,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,12, 12)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff3",0,155,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,12, 12)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff4",0,177,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,12, 12)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleMP",1930000117,83,35)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,103, 9)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleEXP",1930000118,74,47)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,111, 9)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"HeroType",1930000114,168,2)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 19)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HeroJob",9,-4,13,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"DummyImage",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,198, 79)
    end
    
    
    HeroHeadInfo.UIInit(_Parent)
end

--UI Logic Code Start
function HeroHeadInfo.UIInit(_Handle)
end
HeroHeadInfo.main()