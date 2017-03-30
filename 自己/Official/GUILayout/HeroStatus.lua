HeroStatus = {}
function HeroStatus.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_3",1900800005,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,246, 350)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",102,18,96,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",102,39,95,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit2",102,59,132,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit4",102,81,95,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit5",102,102,95,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit6",102,123,94,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit7",102,144,94,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit8",102,164,96,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit9",51,229,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit10",51,250,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit11",51,271,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit12",51,292,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit13",51,313,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit14",171,228,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit15",171,249,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit16",171,270,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit17",171,291,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit18",171,312,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    HeroStatus.UIInit(_Parent)
end

--UI Logic Code Start
function HeroStatus.UIInit(_Handle)
end
HeroStatus.main()