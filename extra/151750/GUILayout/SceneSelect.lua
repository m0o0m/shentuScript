SceneSelect = {}

function SceneSelect.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = _Parent

	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	GUI:WndGetSizeM(_Parent)
	_PosX = LuaRet[1]
	_PosY = LuaRet[2]
	UI:Lua_Log("sssdddddSelect父位置 X ".._PosX.." Y ".._PosY) 

	--底图
	local _GUIHandle = GUI:ImageCreate(_Parent, "SelectBackImage", 1804400001, _DeviceSizeX / 2 - 960, -267)
	if _GUIHandle ~= 0 then
	end

	--返回按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_Back",1830400001,10,10)
	if _GUIHandle ~= 0 then
	end

	--角色和角色头上的编辑框的位置会自动算出 不必设置X坐标

	--角色图片1
	local _GUIHandle = GUI:ImageCreate(_Parent, "Role0", 0, 0, 160)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,356,374)
	end

	--角色信息编辑框1
 	local _GUIHandle = GUI:EditCreate(_Parent,"RoleInfo0", 0,130, 356,30) 
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,233,240,19))
		GUI:EditSetCanEdit(_GUIHandle, false) 
		GUI:EditSetFontCenter(_GUIHandle)  
	end

	--角色图片2
	local _GUIHandle = GUI:ImageCreate(_Parent, "Role1", 0, 0, 160)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,356,374)
	end

	--角色信息编辑框2
 	local _GUIHandle = GUI:EditCreate(_Parent,"RoleInfo1", 0,130, 356,30) 
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,233,240,19))
		GUI:EditSetCanEdit(_GUIHandle, false) 
		GUI:EditSetFontCenter(_GUIHandle)  
	end

	--角色图片3
	local _GUIHandle = GUI:ImageCreate(_Parent, "Role2", 0, 0, 160)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,356,374)
	end

	--角色信息编辑框3
 	local _GUIHandle = GUI:EditCreate(_Parent,"RoleInfo2", 0,130, 356,30) 
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,233,240,19))
		GUI:EditSetCanEdit(_GUIHandle, false) 
		GUI:EditSetFontCenter(_GUIHandle)  
	end

	--创建角色按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_Create",1804400027, _DeviceSizeX / 2 + 156, 540)
	if _GUIHandle ~= 0 then
	end

	--删除角色按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_Delete",1804400031, _DeviceSizeX / 2 + 156, 590)
	if _GUIHandle ~= 0 then
	end

	--恢复角色按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_Recover",1804400041, _DeviceSizeX / 2 + 310 ,540)
	if _GUIHandle ~= 0 then
	end

	--进入游戏按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_EnterGame",1804400019,_DeviceSizeX / 2 - 126,550)
	if _GUIHandle ~= 0 then
	end

 	SceneSelect.UIInit(_Parent)
end

--UI Logic Code Start
function SceneSelect.UIInit(_Handle)
end

SceneSelect.main()

