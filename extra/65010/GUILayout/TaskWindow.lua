TaskWindow = {}
function TaskWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1800000030,-5,33)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TaskWndHead",1808000015,-14,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,242, 34)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HideWndBtn",1808000003,180,5)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TaskWindow.OnHideWndBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"TaskText",15,43,190,190)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent, "TaskWndTitle", 1808000001, 65, 0)

	local _OtherInfoHandle = GUI:WndCreateWnd(_Parent,"OtherInfo",0,0,225)
	
	_GUIHandle = GUI:ImageCreate(_OtherInfoHandle,"lineImage",1800600004, -5,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
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
		--GUI:WndSetTextColorM(_GUIHandle, 4292527901)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"BOSS",100,20,30,15)
	if _GUIHandle ~= 0 then
		--GUI:WndSetTextColorM(_GUIHandle, 4292527901)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"tanbao",130,20,50,15)
	if _GUIHandle ~= 0 then
		--GUI:WndSetTextColorM(_GUIHandle, 4292527901)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"recyleEquip",70,45,30,15)
	if _GUIHandle ~= 0 then
		--GUI:WndSetTextColorM(_GUIHandle, 4292527901)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"guaji",100,45,30,15)
	if _GUIHandle ~= 0 then
		--GUI:WndSetTextColorM(_GUIHandle, 4292527901)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
    
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"dailyTask",130,45,30,15)
	if _GUIHandle ~= 0 then
		--GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		--GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_OtherInfoHandle,"exploitTask",160,45,30,15)
	if _GUIHandle ~= 0 then
		--GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255, 0, 204, 51))
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		--GUI:WndSetEnableM(_GUIHandle, false)
	end

    TaskWindow.UIInit(_Parent)
end

--UI Logic Code Start
local _GUIHandle = GUI:RichEditCreate(0,"tempRE",0,0,16,16)
if _GUIHandle ~= 0 then
	CL:SetSystemColor(2, "#00FF00")	--设定richedit控件选中模式下的颜色（没有创建过控件此接口无效）
	GUI:WndClose(_GUIHandle)
end

TaskWindow._wnd = 0
TaskWindow._hideWnd = 0
function TaskWindow.UIInit(h)
	TaskWindow._wnd = h
    GUI:WndSetCanRevMsg(TaskWindow._wnd, true)
    GUI:WndSetSizeM(TaskWindow._wnd, 300, 150)

    LuaGlobal["TaskWindow_MixTask"] = true
	TaskWindow.DelayTaskId = CL:AddDelayTask("TaskWindow.AutoPos()", 100, 3)
	
	local _wnd = GUI:WndCreateWnd(0, "TaskWindowHideUI", 1808000002, 0, 256)
	if _wnd ~= 0 then
		TaskWindow._hideWnd = _wnd
		GUI:WndSetVisible(_wnd, false)
		local btn = GUI:ButtonCreate(_wnd, "ShowWndBtn", 1808000007, -1, -24)
		if btn ~= 0 then
			GUI:WndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "TaskWindow.OnShowWndBtn")
		end
	end

	local _WndBackImgHandle = GUI:WndFindChildM(TaskWindow._wnd, "BackImage")
	if _WndBackImgHandle ~= 0 then
		GUI:ImageSetAroundImage(_WndBackImgHandle, 1808000016,1808000018,1808000022,1808000024,1808000020,1808000017,1808000023,1808000019,1808000021 )
		GUI:WndSetSizeM(_WndBackImgHandle, 209, 260);
	end
	CL:AddDelayTask("TaskWindow.AddExtraFun()", 500, 1)
end

function TaskWindow.AddExtraFun()	
	local h = TaskWindow._wnd
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		local level = tonumber(LuaRet)
		if level < 50 then
			local handle = GUI:WndFindWindow(h, "OtherInfo")
			if handle ~= 0 then
				GUI:WndSetVisible(handle, false)	
			end
			local handle = GUI:WndFindWindow(h, "BackImage")
			if handle ~= 0 then
				GUI:WndSetSizeM(handle,209, 190)
			end
		else
			local handle = GUI:WndFindWindow(h, "OtherInfo")
			if handle ~= 0 then
				GUI:WndSetVisible(handle, true)	
			end
			local handle = GUI:WndFindWindow(h, "BackImage")
			if handle ~= 0 then
				GUI:WndSetSizeM(handle,209, 260)
			end
			local _GUIHandle = 0
			_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,baitan")
			if _GUIHandle ~=0 then
				GUI:RichEditClear(_GUIHandle)
				GUI:RichEditAppendString(_GUIHandle,"#SELECT#摆摊#SELECTEND##COLOREND#")	 --摆摊
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.TransmitSafeArea")
			end
			_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,BOSS")
			if _GUIHandle ~=0 then
				GUI:RichEditClear(_GUIHandle)
				GUI:RichEditAppendString(_GUIHandle,"#SELECT#BOSS#SELECTEND##COLOREND#")	 --BOSS
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.OpenChallengeBOSS")
			end
			_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,tanbao")
			if _GUIHandle ~=0 then
				GUI:RichEditClear(_GUIHandle)
				GUI:RichEditAppendString(_GUIHandle,"#SELECT#探宝链接#SELECTEND##COLOREND#")	 --探宝链接
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.OpenTbWindow")
			end
			_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,recyleEquip")
			if _GUIHandle ~=0 then
				GUI:RichEditClear(_GUIHandle)
				GUI:RichEditAppendString(_GUIHandle,"#SELECT#回收#SELECTEND##COLOREND#")	 --回收
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.OpenRecycleUI")
			end
			_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,guaji")
			if _GUIHandle ~=0 then
				GUI:RichEditClear(_GUIHandle)
				GUI:RichEditAppendString(_GUIHandle,"#SELECT#挂机#SELECTEND##COLOREND#")	 --挂机
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.TransmitCSnpc")
			end
			_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,dailyTask")
			if _GUIHandle ~=0 then
				GUI:RichEditClear(_GUIHandle)
				GUI:RichEditAppendString(_GUIHandle,"#SELECT#副本#SELECTEND#")	 --每日副本
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.FindDailyTaskNpc")
			end
			_GUIHandle = GUI:WndFindWindow(h, "OtherInfo,exploitTask")
			if _GUIHandle ~=0 then
				GUI:RichEditClear(_GUIHandle)
				GUI:RichEditAppendString(_GUIHandle,"#SELECT#功勋#SELECTEND#")	 --功勋除魔
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "TaskWindow.FindExploitTaskNpc")
			end
		end
	end
end

function TaskWindow.AutoPos()
    local sX = CL:GetScreenWidth()
	local sY = CL:GetScreenHeight()
	local tw = GUI:WndFindWindow(0, "GameMainInterface,TaskWindow")
    if tw ~= 0 then
        GUI:WndSetPosM(tw, sX-204, 214)
    end
	CL:DelDelayTask(TaskWindow.DelayTaskId)
end

function TaskWindow.OnHideWndBtn(h)
	local sX = CL:GetScreenWidth()
    if GUI:WndGetPosM(TaskWindow._wnd) then
        GUI:WndSetPosM(TaskWindow._wnd, tonumber(sX), tonumber(LuaRet[2]) )
        TaskWindow.HideTweenEnd()
    end
end

function TaskWindow.HideTweenEnd()
	local sX = CL:GetScreenWidth()
	GUI:WndSetPosM(TaskWindow._hideWnd, sX-26, 246)
	GUI:WndSetVisible(TaskWindow._wnd, false)
	GUI:WndSetVisible(TaskWindow._hideWnd, true)
end

function TaskWindow.OnShowWndBtn(h)
	GUI:WndSetVisible(TaskWindow._wnd, true)
	GUI:WndSetVisible(TaskWindow._hideWnd, false)
	
	local tweenX = CL:GetScreenWidth()- 204
    if GUI:WndGetPosM(TaskWindow._wnd) then
        GUI:WndSetPosM(TaskWindow._wnd, tonumber(tweenX), tonumber(LuaRet[2]))
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