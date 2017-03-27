SystemTeach = {}
SystemTeach._wnd = 0
SystemTeach._hideWnd = 0

function SystemTeach.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"SystemTeach",0,-8,550)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,220, 100)
	end
	
	

	_GUIHandle = GUI:ImageCreate(_Parent,"BackImage",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle,1800000030,1800000031,1800000032,1800000033,1800000038,1800000034,1800000035,1800000036,1800000037)
		GUI:WndSetSizeM(_GUIHandle,220, 100)

	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"HideWndBtn",1800000112,178,-30)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "SystemTeach.OnHideWndBtn")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,32, 34)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TaskWndHead",1800600011,-17,-36)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,187, 45)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit1",8, 10, 60, 15)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4292527901)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit1",10,27,200,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4292527901)
		GUI:WndSetParam(_GUIHandle,1)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "SystemTeach.OpenWindow")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit2",8, 52, 60, 15)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4292527901)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"richedit2",10,69,200,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle,2)
		GUI:WndSetTextColorM(_GUIHandle, 4292527901)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "SystemTeach.OpenWindow")
	end
	SystemTeach.UIInit(_Parent)
end

function SystemTeach.UIInit(h)
	SystemTeach._wnd = h
    local sX = CL:GetScreenWidth()
	local tw = GUI:WndFindWindow(0, "SystemTeach")
    if tw ~= 0 then
        GUI:WndSetPosM(tw, sX-208, 550)
    end
	
	local _wnd = GUI:WndCreateWnd(0, "SystemTeachHideUI", 1800600012, 0, 551)
	if _wnd ~= 0 then
		SystemTeach._hideWnd = _wnd
		GUI:WndSetVisible(_wnd, false)
		local btn = GUI:ButtonCreate(_wnd, "ShowWndBtn", 1800000116, 0, -31)
		if btn ~= 0 then
			GUI:WndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "SystemTeach.OnShowWndBtn")
		end
	end
	UI:Lua_SubmitForm("奖励引导表单","SystemReward","")
	
end

function SystemTeach.info(tab)
	local _GUIHandle = 0
	for i  = 1 , 2 do 
		_GUIHandle = GUI:WndFindWindow(SystemTeach._wnd, "edit"..i)
		if _GUIHandle ~=0 then
			GUI:EditSetTextM(_GUIHandle,"")	
		end		
		_GUIHandle = GUI:WndFindWindow(SystemTeach._wnd, "richedit"..i)
		if _GUIHandle ~=0 then
			GUI:RichEditClear(_GUIHandle)
		end	
	end	
	if #tab > 0 then
		for i = 1 , #tab do 
			_GUIHandle = GUI:WndFindWindow(SystemTeach._wnd, "edit"..i)
			if _GUIHandle ~=0 then
				GUI:EditSetTextM(_GUIHandle,""..tab[i][1])	
			end		
			_GUIHandle = GUI:WndFindWindow(SystemTeach._wnd, "richedit"..i)
			if _GUIHandle ~=0 then
				GUI:RichEditAppendString(_GUIHandle,"#COLORCOLOR_DGREENG##SELECT#".. tab[i][2] .."#SELECTEND##COLOREND#")	 
			end
			if i == 2 then
				break
			end
		end	
	end	
	

	
end	

function SystemTeach.OpenWindow(h)
	local param = tonumber(GUI:WndGetParam(h))
	local handle = GetWindow(SystemTeach._wnd,"edit"..param)
	if handle ~= 0 then
		local str =  GUI:EditGetTextM(handle)
		if str == "成就奖励" then	
			CL:OnAchieveWindow()
		else
			UI:Lua_OpenWindow(0, "Reward_hall.lua")
		end	
	end	
end

function SystemTeach.OnHideWndBtn(h)
	local sX = CL:GetScreenWidth()
	GUI:WndGetPosM(SystemTeach._wnd)
	GUI:WndSetPosM(SystemTeach._wnd, sX, LuaRet[2])
	SystemTeach.HideTweenEnd()
end

function SystemTeach.HideTweenEnd()
	local sX = CL:GetScreenWidth()
	GUI:WndSetPosM(SystemTeach._hideWnd, sX-31, 551)
	GUI:WndSetVisible(SystemTeach._wnd, false)
	GUI:WndSetVisible(SystemTeach._hideWnd, true)
end

function SystemTeach.OnShowWndBtn(h)
	GUI:WndSetVisible(SystemTeach._wnd, true)
	GUI:WndSetVisible(SystemTeach._hideWnd, false)
	
	local tweenX = CL:GetScreenWidth()- 208
	GUI:WndGetPosM(SystemTeach._wnd)
	GUI:WndSetPosM(SystemTeach._wnd, tweenX, LuaRet[2])	
end

SystemTeach.main()