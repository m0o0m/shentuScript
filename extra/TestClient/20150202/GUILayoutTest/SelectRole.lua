SelectRole = {}
function SelectRole.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackPic",1932500051,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 768)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Back",1932300059,953,728)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,53, 24)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImage0",1900010010,-344,-160)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 1024)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImage1",1900010011,-1,-160)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 1024)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImage2",1900010010,342,-160)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 1024)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleEffect0",0,-344,-160)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 1024)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleEffect1",0,-1,-160)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 1024)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleEffect2",0,342,-160)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 1024)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Effect0",0,-2,-1)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,193, 353)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Effect1",0,-2,-1)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,193, 353)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Effect2",0,-2,-1)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,193, 353)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"EnterGame",1900000026,446,709)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,147, 55)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"DeleteRole",1932500065,663,719)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,112, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ResetRole",1932500057,276,719)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,112, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player0Name",129,564,122,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player1Name",470,562,102,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player2Name",808,561,102,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player0Level",129,596,121,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player1Level",470,594,102,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player2Level",808,593,102,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player0Job",129,628,121,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player1Job",470,626,102,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Player2Job",808,625,102,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CreateRole",1932500061,122,719)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,112, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"QuiteGame",1932500069,793,719)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,112, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    SelectRole.UIInit(_Parent)
end

--UI Logic Code Start
function SelectRole.UIInit(_Handle)
	SelectRole.WndHandle = _Handle
	local _GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, "BackPic")
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		UI:Lua_GetScreenSize()
		local Width = LuaRet[1]
		local Height = LuaRet[2]
		GUI:WndSetSizeM(_GUIHandle, Width, Height)
	end

	for i = 0, 2 do
		_GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, "Player"..i.."Name")
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
			GUI:EditSetTextColor(_GUIHandle, 4290092669)
		end
		_GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, "Player"..i.."Level")
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
			GUI:EditSetTextColor(_GUIHandle, 4290092669)
		end
		_GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, "Player"..i.."Job")
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
			GUI:EditSetTextColor(_GUIHandle, 4290092669)
		end
		_GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, "RoleImage"..i)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
			GUI:ImageSetCheckPoint(_GUIHandle, 2)
			GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
			GUI:WndSetParam(_GUIHandle, i)
		end
		_GUIHandle = GUI:WndFindChildM(SelectRole.WndHandle, "RoleEffect"..i)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
			GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
			GUI:ImageSetCheckPoint(_GUIHandle, 0)
			GUI:ImageSetRenderState(_GUIHandle, 1)
			GUI:WndSetCanRevMsg(_GUIHandle, false)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
	end
end
SelectRole.main()




