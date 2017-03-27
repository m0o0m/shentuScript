SceneCreate = {}

function SceneCreate.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = _Parent
	
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	
	--底图
	local _GUIHandle = GUI:ImageCreate(_Parent, "CreateBackImage", 1804700001, _DeviceSizeX/2 -960, -267)
	if _GUIHandle ~= 0 then
	end
    
    --战士职业  男
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn_zs_man",1804800000, _DeviceSizeX/2 + 200,60)
    if _GUIHandle ~= 0 then  
    end

     --战士职业  女
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn_zs_women",1804800012,_DeviceSizeX/2 + 344,60)
    if _GUIHandle ~= 0 then  
    end

    --法师职业  男
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn_fs_man",1804800004,_DeviceSizeX/2 + 200,200)
    if _GUIHandle ~= 0 then  
    end

     --法师职业  女
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn_fs_women",1804800016,_DeviceSizeX/2 + 344,200)
    if _GUIHandle ~= 0 then  
    end

    --道士职业  男
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn_ds_man",1804800008,_DeviceSizeX/2 + 200,340)
    if _GUIHandle ~= 0 then  
    end

     --道士职业  女
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn_ds_women",1804800020,_DeviceSizeX/2 + 344,340)
    if _GUIHandle ~= 0 then  
    end

    --返回按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_Back",1830400001,10,10)
	if _GUIHandle ~= 0 then
	end

    _GUIHandle = GUI:ImageCreate(_Parent,"RoleImg",0,_DeviceSizeX/2 -177,130)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"RoleInfoImg",0,_DeviceSizeX/2 - 450,10)
    if _GUIHandle ~= 0 then
    end

	--随机名字按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_RandName",1804400015,_DeviceSizeX/2 + 120,502)
	if _GUIHandle ~= 0 then
	end

	--创建角色按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_CreateRole",1804400019,_DeviceSizeX/2 -140,546)
	if _GUIHandle ~= 0 then
	end
	

	--名字编辑框背景图
	local _GUIHandle = GUI:ImageCreate(_Parent, "NameEditBg", 1804400014, _DeviceSizeX/2 -218, 496)
	if _GUIHandle ~= 0 then
	end

	--名字编辑框
	_GUIHandle = GUI:EditCreate(_Parent,"NameEdit", _DeviceSizeX/2 - 100, 508, 170, 47) 
	if _GUIHandle ~= 0 then
		GUI:EditSetFontM(_GUIHandle, "SIMLI18")
		GUI:EditSetMaxCharNum(_GUIHandle, 9)
	end

end






SceneCreate.main()

