ServerLogin = {}

function ServerLogin.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = _Parent

	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	GUI:WndGetSizeM(_Parent)
	_PosX = LuaRet[1]
	_PosY = LuaRet[2]
	UI:Lua_Log("父位置 X ".._PosX.." Y ".._PosY) 

	--主背景
	local _GUIHandle = GUI:ImageCreate(_Parent, "BackImage0", 1804300001, _DeviceSizeX / 2 - 930, -207)
	if _GUIHandle ~= 0 then
		UI:Lua_Log("创建图片成功了") 
	end

	--返回按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_Back",1830400001,10,10)
	if _GUIHandle ~= 0 then
	end

	--账号密码背景图
	 _GUIHandle = GUI:ImageCreate(_Parent, "AccoutBg", 1804300002, _DeviceSizeX / 2 - 90, 276)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 178, 119)
	end 

	_GUIHandle = GUI:EditCreate(_Parent,"AccoutEdit", _DeviceSizeX / 2 - 64, 303, 134, 26) 
	if _GUIHandle ~= 0 then
		--GUI:EditSetFontCenter(_GUIHandle)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"PwdEdit", _DeviceSizeX / 2 - 64, 355, 134, 26) 
	if _GUIHandle ~= 0 then
		--GUI:EditSetFontCenter(_GUIHandle)
	end

	--注册按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_Register",1804300038, _DeviceSizeX / 2 - 90 , 400)
	if _GUIHandle ~= 0 then
	end

	--修改密码按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_ReSetPwd",1804300034, _DeviceSizeX / 2 + 6 ,400)
	if _GUIHandle ~= 0 then
	end

	--登录按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_Login",1804300009, _DeviceSizeX / 2 - 100 ,486)
	if _GUIHandle ~= 0 then
	end
end

ServerLogin.main()
