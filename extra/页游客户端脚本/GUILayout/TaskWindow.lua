TaskWindow = {}
TaskWindow._wnd = 0
TaskWindow._hideWnd = 0

function TaskWindow.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUIWndCreateWnd(_Parent,"TaskWindow",0,0,260)
	if _Parent ~= 0 then
		GUIWndSetSizeM(_Parent,16, 16)
	end

	_GUIHandle = GUIImageCreate(_Parent,"BackImage",0,-3,-3)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,210, 260)
		GUIImageSetAroundImage(_GUIHandle,1808000016,1808000018,1808000022,1808000024,1808000017,1808000023,1808000019,1808000021,1808000020)
		
	end
	
	_Parent1 = GUIWndCreateWnd(_Parent,"TaskWndContentRE",0,5,5)
	if _Parent1 ~= 0 then
		GUIWndSetSizeM(_Parent1,190, 190)
	end
	
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TaskWndHead",1808000015,-9,-36)
	if _GUIHandle ~= 0 then
	
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,207, 45)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUIButtonCreate(_Parent,"HideWndBtn",1808000003,181,-31)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "TaskWindow.OnHideWndBtn")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,26, 26)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TaskWndTitle",1808000001,65,-36)
	if _GUIHandle ~= 0 then
	
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,187, 45)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	local _OtherInfoHandle = GUIWndCreateWnd(_Parent,"OtherInfo",0,0,190)
	
	_GUIHandle = GUIImageCreate(_OtherInfoHandle,"lineImage",1800600004, -5,0)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_OtherInfoHandle,"Equip",5, 20, 80, 15)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 204, 153, 0))
		GUI:EditSetTextM(_GUIHandle,"[我要装备]")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_OtherInfoHandle,"level_up",5, 45, 80, 15)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 204, 153, 0))
		GUI:EditSetTextM(_GUIHandle,"[我要升级]")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"baitan",70,20,30,15)
	if _GUIHandle ~= 0 then
		--GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		--GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"BOSS",100,20,30,15)
	if _GUIHandle ~= 0 then
		--GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		--GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"tanbao",130,20,30,15)
	if _GUIHandle ~= 0 then
		--GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		--GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"recyleEquip",70,45,30,15)
	if _GUIHandle ~= 0 then
		--GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		--GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"guaji",100,45,30,15)
	if _GUIHandle ~= 0 then
		--GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		--GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"dailyTask",130,45,30,15)
	if _GUIHandle ~= 0 then
		--GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		--GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"exploitTask",160,45,30,15)
	if _GUIHandle ~= 0 then
		--GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		--GUI:WndSetEnableM(_GUIHandle, false)
	end

	TaskWindow.UIInit(_Parent)
end

function TaskWindow.UIInit(h)
	TaskWindow._wnd = h
	local _GUIHandle = 0
    local sX = CLGetScreenWidth()
    GUIWndSetPosM(h, sX-208, 250)
	--[[local tw = GUIWndFindWindow(0, "TaskWindow")
    if tw ~= 0 then
        GUIWndSetPosM(tw, sX-750, 250)
    end--]]
	
	local _wnd = GUIWndCreateWnd(0, "TaskWindowHideUI", 1808000002, 0, 251)
	if _wnd ~= 0 then
		TaskWindow._hideWnd = _wnd
		GUIWndSetVisible(_wnd, false)
		local btn = GUIButtonCreate(_wnd, "ShowWndBtn", 1808000007, -1, -25)
		if btn ~= 0 then
			GUIWndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "TaskWindow.OnShowWndBtn")
		end
	end
	--CLAddDelayTask("TaskWindow.AddExtraFun()", 500, 1)
	
end

function TaskWindow.AddExtraFun(l)
	
	local h = TaskWindow._wnd
	local level = tonumber(l)
	if level < 50 then
		local handle = GUIWndFindWindow(h, "OtherInfo")
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
		
		local handle = GUIWndFindWindow(h, "TaskWndContentRE")
		if handle ~= 0 then
			GUIWndSetSizeM(handle,209, 1)
		end
	else
		local handle = GUIWndFindWindow(h, "OtherInfo")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		local handle = GUIWndFindWindow(h, "TaskWndContentRE")
		if handle ~= 0 then
			GUIWndSetSizeM(handle,209, 1)
		end
		local _GUIHandle = 0
		_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,baitan")
		if _GUIHandle ~=0 then
			GUI:RichEditAppendString(_GUIHandle,"#SELECT#摆摊#SELECTEND#")	 --摆摊
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.TransmitSafeArea")
		end
		_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,BOSS")
		if _GUIHandle ~=0 then
			GUI:RichEditAppendString(_GUIHandle,"#SELECT#BOSS#SELECTEND#")	 --BOSS
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.OpenChallengeBOSS")
		end
		_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,tanbao")
		if _GUIHandle ~=0 then
			GUI:RichEditAppendString(_GUIHandle,"#SELECT#探宝链接#SELECTEND#")	 --探宝链接
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.OpenTbWindow")
		end
		_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,recyleEquip")
		if _GUIHandle ~=0 then
			GUI:RichEditAppendString(_GUIHandle,"#SELECT#回收#SELECTEND#")	 --回收
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.OpenRecycleUI")
		end
		_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,guaji")
		if _GUIHandle ~=0 then
			GUI:RichEditAppendString(_GUIHandle,"#SELECT#挂机#SELECTEND#")	 --挂机
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.TransmitCSnpc")
		end
		_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,dailyTask")
		if _GUIHandle ~=0 then
			GUI:RichEditAppendString(_GUIHandle,"#SELECT#副本#SELECTEND#")	 --每日副本
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.FindDailyTaskNpc")
		end
		_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,exploitTask")
		if _GUIHandle ~=0 then
			GUI:RichEditAppendString(_GUIHandle,"#SELECT#功勋#SELECTEND#")	 --功勋除魔
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.FindExploitTaskNpc")
		end
		
	end

end



function TaskWindow.OnHideWndBtn(h)
	local sX = CLGetScreenWidth()
	local tXml = "<Tween><Frame time='0.3' x='"..sX.."' /></Tween>"
	GUIWndTween(TaskWindow._wnd, tXml, "TaskWindow.HideTweenEnd()")
	local handle = GetWindow(nil, "TransmitMagic")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
end

function TaskWindow.HideTweenEnd()
	local sX = CLGetScreenWidth()
	GUIWndSetPosM(TaskWindow._hideWnd, sX-26, 251)
	GUIWndSetVisible(TaskWindow._wnd, false)
	GUIWndSetVisible(TaskWindow._hideWnd, true)
end

function TaskWindow.OnShowWndBtn(h)
	GUIWndSetVisible(TaskWindow._wnd, true)
	GUIWndSetVisible(TaskWindow._hideWnd, false)
	
	local tweenX = CLGetScreenWidth()- 208
	local tXml = "<Tween><Frame time='0.3' x='"..tweenX.."' /></Tween>"
	GUIWndTween(TaskWindow._wnd, tXml, "")
	local handle = GetWindow(nil, "TransmitMagic")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
end

function TaskWindow.TransmitSafeArea() --go to safe area
	UI:Lua_SubmitForm("NPC_IsNotInScene","cs_SafeArea","")
end

function TaskWindow.OpenChallengeBOSS() --open challenge BOSS ui
	UI:Lua_SubmitForm("ChallengeBOSS","openChallengeBoss","")
end

function TaskWindow.OpenTbWindow() --open treasure house
	UI:Lua_SubmitForm("TreasureHouse_s","openTreasureHouse","")
end

function TaskWindow.OpenRecycleUI() --open recycle UI
	UI:Lua_SubmitForm("NPC_IsNotInScene","cs_RecycleNpc","")
end

function TaskWindow.TransmitCSnpc() --go to cs npc neighbour
	UI:Lua_SubmitForm("NPC_IsNotInScene","cs_csNpc","")
end

function TaskWindow.FindDailyTaskNpc()
	UI:Lua_SubmitForm("NPC_IsNotInScene","FindDailyTaskNpc","")
end

function TaskWindow.FindExploitTaskNpc()
	UI:Lua_SubmitForm("NPC_IsNotInScene","FindExploitTaskNpc","")
end

TaskWindow.main()