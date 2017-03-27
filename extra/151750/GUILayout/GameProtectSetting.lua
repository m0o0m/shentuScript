GameProtectSetting = {}
function GameProtectSetting.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
	

	--@zhuhangmin 20170309 接口测试用例
	-- if CL:GetBasicSetting(2001) then
	-- 	dbg("aaa = "..tostring(LuaRet))
	-- end
	-- CL:ChangeBasicSetting(2001, false)
	-- if CL:GetBasicSetting(2001) then
	-- 	dbg("bbb = "..tostring(LuaRet))
	-- end
	-- if CL:GetProtectArr(2004) then
	-- 	GameProtectSetting.hp = getTable(LuaRet)
	-- 	for i = 1, #GameProtectSetting.hp do
	-- 		dbg("2004"..tostring(i).." = "..tostring(GameProtectSetting.hp[i]))	
	-- 	end
	-- end
	
	
	-- if CL:GetProtectArr(2006) then --
	-- 	GameProtectSetting.check1 = getTable(LuaRet)	
	-- 	for i = 1, #GameProtectSetting.check1 do
	-- 		dbg(tostring(i).." check = "..tostring(GameProtectSetting.check1[i]))	
	-- 	end
	-- end
	

	-- if CL:GetProtectArr(2002) then
	-- 	GameProtectSetting.item = getTable(LuaRet)
	-- 	for i = 1 , #GameProtectSetting.item do 
	-- 		local tab = getTable(GameProtectSetting.item[i])
	-- 		for j = 1, #tab do
	-- 			dbg(tostring(i)..tostring(j).." item = "..tostring(tab[j]))
	-- 		end
	-- 	end
	-- end

	
	-- if CL:SetProtectIndex(2004,188,tostring(66)) then
	-- 	if CL:GetProtectArr(2004) then
	-- 		GameProtectSetting.hp = getTable(LuaRet)
	-- 		for i = 1, #GameProtectSetting.hp do
	-- 			dbg("2004"..tostring(i).." = "..tostring(GameProtectSetting.hp[i]))	
	-- 		end
	-- 	end
	-- end
	
	


	
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",0,170,120)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,583, 262)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",1850300025,101,140)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX - 194, _DeviceSizeY - 440)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
    end
    
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",1850300025,101,391)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX - 194, _DeviceSizeY - 540)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
    end
	
	_GUIHandle = GUI:EditCreate(_Parent,"EditInfo0",101,112,400,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"回血设置(向下滑动可进行更多设置)")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 240, 199, 150))
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        --GUI:EditSetFontCenter(_GUIHandle)
    end
	
	_GUIHandle = GUI:EditCreate(_Parent,"EditInfo1",101,362,200,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"瞬回设置")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 240, 199, 150))
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        --GUI:EditSetFontCenter(_GUIHandle)
    end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit1",172,174,100,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"HP低于50%")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 240, 199, 150))
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        --GUI:EditSetFontCenter(_GUIHandle)
    end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit2",172,265,100,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"MP低于50%")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 240, 199, 150))
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        --GUI:EditSetFontCenter(_GUIHandle)
    end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit3",172,418,100,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"HP低于50%")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 240, 199, 150))
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        --GUI:EditSetFontCenter(_GUIHandle)
    end
	
	_GUIHandle = GUI:EditCreate(_Parent,"EditInfo5",845,112,40,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"关闭")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 240, 199, 150))
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        --GUI:EditSetFontCenter(_GUIHandle)
    end
	
	_GUIHandle = GUI:EditCreate(_Parent,"EditInfo6",975,112,40,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"开启")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 240, 199, 150))
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        --GUI:EditSetFontCenter(_GUIHandle)
    end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Button1",1850800004,890,170)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "GameProtectSetting.ItemCheck")
        GUI:WndSetParam(_GUIHandle, 1)
		--GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
       -- GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Button2",1850800004,890,255)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "GameProtectSetting.ItemCheck")
        GUI:WndSetParam(_GUIHandle, 2)
		--GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
       -- GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Button3",1850800004,890,408)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "GameProtectSetting.ItemCheck")
        GUI:WndSetParam(_GUIHandle, 3)
		--GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
       -- GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1850800008,"",890,100)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
		GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "GameProtectSetting.StartProtect")
       -- GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
	
	 _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check2",1850800008,"",890,351)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
		GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "GameProtectSetting.StartProtect")
    end
	
	_GUIHandle = GUI:EditCreate(_Parent,"EditInfo7",845,362,40,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"关闭")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 240, 199, 150))
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        --GUI:EditSetFontCenter(_GUIHandle)
    end
	_GUIHandle = GUI:EditCreate(_Parent,"EditInfo8",975,362,40,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"开启")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 240, 199, 150))
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        --GUI:EditSetFontCenter(_GUIHandle)
    end
	--参数： Parent, 				ID, 	背景ID，    进度条ID   指针ID    PosX PosY SizeX SizeY 
	local _GUIHandle = GUI:SlideCreate(_Parent, "SlideHp", 1850800033, 1850800034, 1850800036, 174, 205, 683, 21)
	if _GUIHandle then
		GUI:SlideSetPercent(_GUIHandle, 50) -- 0 ~ 100 
		GUI:WndSetParam(_GUIHandle,1)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameProtectSetting.SlideEvent") -- trigger
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_move, "GameProtectSetting.SlideEvent") -- trigger
	end
	
	local _GUIHandle = GUI:SlideCreate(_Parent, "SlideMp", 1850800033, 1850800035, 1850800036, 174, 300, 683, 21)
	if _GUIHandle then
		GUI:SlideSetPercent(_GUIHandle, 50) 
		GUI:WndSetParam(_GUIHandle,2)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameProtectSetting.SlideEvent") -- trigger
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_move, "GameProtectSetting.SlideEvent") -- trigger
	end
	
	local _GUIHandle = GUI:SlideCreate(_Parent, "SlideHp1", 1850800033, 1850800034, 1850800036, 174, 455, 683, 21)
	if _GUIHandle then
		GUI:SlideSetPercent(_GUIHandle, 50) 
		GUI:WndSetParam(_GUIHandle,3)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameProtectSetting.SlideEvent") -- trigger
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_move, "GameProtectSetting.SlideEvent") -- trigger
	end
	
	--物品选择窗口
	--[[_GUIHandle = GUI:WndCreateWnd(_Parent,"ItemCheckWnd",1900000003,517,83)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle,true)
	
	end--]]
	
    GameProtectSetting.UIInit(_Parent)
end

--UI Logic Code Start
GameProtectSetting.WndHandle = 0
function GameProtectSetting.UIInit(_Handle)
	GameProtectSetting.WndHandle = _Handle
	-- if CL:GetProtectArr(2006) then 
	-- 	GameProtectSetting.checkTab = getTable(LuaRet)	
	-- end
	-- if GameProtectSetting.checkTab[1] then
	-- 	CL:SetProtectIndex(2006, index, false) 
	-- 	CL:SetProtectIndex(2006, index + 1, false) 
	-- 	GUI:WndSetImageID(_Handle, 1850800012)

	-- else
	-- 	CL:SetProtectIndex(2006, index, true) 
	-- 	CL:SetProtectIndex(2006, index + 1, true)
	-- 	GUI:WndSetImageID(_Handle, 1850800012)
	-- end
	
end


function GameProtectSetting.SlideEvent(_Handle)
	local index = GUI:WndGetParam(_Handle)
	if _Handle then
		local percent = GUI:SlideGetPercent(_Handle)
		local _GUIHandle = GUI:WndFindChildM(GameProtectSetting.WndHandle, "Edit"..index)
		if _GUIHandle ~= 0 then	
			if index == 2 then
				GUI:EditSetTextM(_GUIHandle, "MP低于"..percent.."%")
			else
				GUI:EditSetTextM(_GUIHandle, "HP低于"..percent.."%")
			end	
		end
	end
	

end

--保护辅助

function GameProtectSetting.StartProtect(_Handle)
	local index = GUI:WndGetParam(_Handle)	
	--GUI:CheckBoxSetCheck(_Handle, true)	
	--[[if CL:GetProtectArr(2006) then 
		GameProtectSetting.checkTab = getTable(as3.tolua(LuaRet));	
	end
	if GameProtectSetting.checkTab[index] then
		CL:SetProtectIndex(2006, index, false) 
		CL:SetProtectIndex(2006, index + 1, false) 
		GUI:WndSetImageID(_Handle, 1850800012)

	else
		CL:SetProtectIndex(2006, ind
		..................0ex, true) 
		CL:SetProtectIndex(2006, index + 1, true)
		GUI:WndSetImageID(_Handle, 1850800012)
	end--]]
	
	
end
function GameProtectSetting.ItemCheck(_Handle)
	GameProtectSetting.itemCheckIndex = GUI:WndGetParam(_Handle)
	--UI:Lua_OpenWindow(0,"ItemCheckWnd.lua")
	
	
end

GameProtectSetting.main()





