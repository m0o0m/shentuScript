RoleStatus = {}
function RoleStatus.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_3",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,240, 326)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false);
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",100,34,79,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false);
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit4",265,238,73,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false);
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit5",265,267,50,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false);
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit6",265,297,51,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false);
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit7",265,209,50,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false);
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit8",100,239,51,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false);
    end
    
    RoleStatus.UIInit(_Parent)
end

--UI Logic Code Start
function RoleStatus.UIInit(_Handle)
end
RoleStatus.main()