CreateRole = {}
function CreateRole.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_6",1932500052,0,1)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 768)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImage",1900010010,201,-56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 1024)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleEffect",0,202,-56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,1024, 1024)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
		GUI:ImageSetRenderState(_GUIHandle, 1)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"RoleName",180,212,181,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetActiveM(_GUIHandle, true)
		GUI:EditSetMaxCharNum(_GUIHandle, 14)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Create",1932500093,211,568)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,112, 42)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Back",1932500022,390,134)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,17, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HairRight",1900010037,327,465)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 41)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HairLeft",1900010032,186,465)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 41)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleZhanshi",1932500073,175,277)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"战士")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 52)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:ButtonSetShowDisable(_GUIHandle, true)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleDaoshi",1932500081,310,277)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"道士")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 52)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:ButtonSetShowDisable(_GUIHandle, true)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleFashi",1932500077,243,277)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"法师")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 52)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:ButtonSetShowDisable(_GUIHandle, true)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"HairFaceImage0",0,220,431)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,93, 89)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"HairFaceImage1",0,220,430)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,95, 89)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ButtonMale",1932500085,192,362)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 52)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:ButtonSetShowDisable(_GUIHandle, true)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ButtonFemale",1932500089,291,363)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 52)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:ButtonSetShowDisable(_GUIHandle, true)
		GUI:WndSetPosByDeviceSize(_GUIHandle, true, false)
    end
    
    CreateRole.UIInit(_Parent)
end

--UI Logic Code Start
function CreateRole.UIInit(_Handle)
	CreateRole.WndHandle = _Handle
	local _GUIHandle = GUI:WndFindChildM(CreateRole.WndHandle, "GUI_6")
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		UI:Lua_GetScreenSize()
		local Width = LuaRet[1]
		local Height = LuaRet[2]
		GUI:WndSetSizeM(_GUIHandle, Width, Height)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
end
CreateRole.main()




