SkillBar = {}
function SkillBar.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    local _DeviceSizeX = CL:GetScreenWidth() 
    local _DeviceSizeY = CL:GetScreenHeight()

    _GUIHandle = GUI:ImageCreate(_Parent,"AutoFightImage",1850000025, _DeviceSizeX - 100 , 250)
    if _GUIHandle ~= 0 then
    end

    --普攻放在根父下
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillNormalbg",0, _DeviceSizeX - 146, _DeviceSizeY - 160)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"SkillNormal", 0,_DeviceSizeX - 134, _DeviceSizeY - 148,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 111, 111)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetDefaultImage(_GUIHandle,1850000131)
		GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
		GUI:ItemCtrlSetBigIconOffset(_GUIHandle, _DeviceSizeX - 134, _DeviceSizeY - 148)
		GUI:WndSetEnableM(_GUIHandle, true)
		GUI:WndSetVisible(_GUIHandle, true)
		GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"UpImg",1850000027,  _DeviceSizeX - 128, _DeviceSizeY - 175)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, true)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"DownImg",1850000028,  _DeviceSizeX - 162, _DeviceSizeY - 108)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
    end

    --旋转用的父句柄，其余围绕着这个旋转 技能图标偏移12,11
    _Parent = GUI:WndCreateWnd(_Parent,"SkillBarWnd",0,_DeviceSizeX - 80, _DeviceSizeY - 94)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,4, 4)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"bg0",1850000390,-79,-198)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill0", 0,  -58,-166,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 71, 70)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 1)
    end	
    
    _GUIHandle = GUI:ImageCreate(_Parent,"bg1",1850000391,-164,-146)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill1", 0,-143,-118,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 71, 70)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 2)
    end	
    
    _GUIHandle = GUI:ImageCreate(_Parent,"bg2",1850000392,-198,-52)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill2", 0 ,-167,-31,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 71, 70)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 3)
    end	
    
    _GUIHandle = GUI:ImageCreate(_Parent,"bg3",1850000393,-173,40)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill3", 0 ,-143,61,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 71, 70)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 4)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"bg4",1850000394,-75,86)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 5)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill4", 0 ,-54,99,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 71, 70)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 5)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"bg5",1850000395,18,73)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill5", 0 ,39,84,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 71, 70)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 6)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"bg6",1850000396,88,-10)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill6", 0 ,101,12,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 71, 70)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 7)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"bg7",1850000397,89,-105)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill7", 0 ,99,-83,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 71, 70)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 8)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"bg8",1850000398,21,-183)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill8", 0 ,38,-158,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 71, 70)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 9)
    end

    SkillBar.UIInit(_Parent)
end

--UI Logic Code Start
function SkillBar.UIInit(_Handle)
end
SkillBar.main()




