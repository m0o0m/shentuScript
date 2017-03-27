SystemTeach = {}
SystemTeach._wnd = 0
SystemTeach._hideWnd = 0

function SystemTeach.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUIWndCreateWnd(_Parent,"SystemTeach",0,-8,550)
	if _Parent ~= 0 then
		GUIWndSetSizeM(_Parent,220, 100)
	end
	
	

	_GUIHandle = GUIImageCreate(_Parent,"BackImage",0,0,0)
	if _GUIHandle ~= 0 then
		GUIImageSetAroundImage(_GUIHandle,1800000030,1800000031,1800000032,1800000033,1800000034,1800000035,1800000036,1800000037,1800000038)
		GUIWndSetSizeM(_GUIHandle,220, 100)

	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"HideWndBtn",1800000112,178,-30)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "SystemTeach.OnHideWndBtn")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,32, 34)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUIImageCreate(_Parent,"TaskWndHead",1800600011,-17,-36)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle,187, 45)
	end
	
	_GUIHandle = GUIEditCreate(_Parent,"edit1",8, 10, 100, 15)
	if _GUIHandle ~= 0 then
		GUIWndSetTextColorM(_GUIHandle, 4292527901)
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUIRichEditCreate(_Parent,"richedit1",10,27,200,15)
	if _GUIHandle ~= 0 then
		GUIWndSetTextColorM(_GUIHandle, 4292527901)
		GUIWndSetParam(_GUIHandle,1)

		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "SystemTeach.OpenWindow")
	end
	
	_GUIHandle = GUIEditCreate(_Parent,"edit2",8, 52, 100, 15)
	if _GUIHandle ~= 0 then
		GUIWndSetTextColorM(_GUIHandle, 4292527901)
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUIRichEditCreate(_Parent,"richedit2",10,69,200,15)
	if _GUIHandle ~= 0 then
		GUIWndSetParam(_GUIHandle,2)
		GUIWndSetTextColorM(_GUIHandle, 4292527901)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "SystemTeach.OpenWindow")
	end
	SystemTeach.UIInit(_Parent)
end

function SystemTeach.UIInit(h)
	SystemTeach._wnd = h
    local sX = CLGetScreenWidth()
	local tw = GUIWndFindWindow(0, "SystemTeach")
    if tw ~= 0 then
        GUIWndSetPosM(tw, sX-208, 550)
    end
	
	local _wnd = GUIWndCreateWnd(0, "SystemTeachHideUI", 1800600012, 0, 551)
	if _wnd ~= 0 then
		SystemTeach._hideWnd = _wnd
		GUIWndSetVisible(_wnd, false)
		local btn = GUIButtonCreate(_wnd, "ShowWndBtn", 1800000116, 0, -31)
		if btn ~= 0 then
			GUIWndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "SystemTeach.OnShowWndBtn")
		end
	end
	UI:Lua_SubmitForm("奖励引导表单","SystemReward","")
	
end

function SystemTeach.info(tab)
	local _GUIHandle = 0
	for i  = 1 , 2 do 
		_GUIHandle = GUIWndFindWindow(SystemTeach._wnd, "edit"..i)
		if _GUIHandle ~=0 then
			GUIEditSetTextM(_GUIHandle,"")	
		end		
		_GUIHandle = GUIWndFindWindow(SystemTeach._wnd, "richedit"..i)
		if _GUIHandle ~=0 then
			GUIRichEditClear(_GUIHandle)
		end	
	end	
	if #tab > 0 then
		for i = 1 , #tab do 
			_GUIHandle = GUIWndFindWindow(SystemTeach._wnd, "edit"..i)
			if _GUIHandle ~=0 then
				GUIEditSetTextM(_GUIHandle,""..tab[i][1])	
			end		
			_GUIHandle = GUIWndFindWindow(SystemTeach._wnd, "richedit"..i)
			if _GUIHandle ~=0 then
				GUIRichEditAppendString(_GUIHandle,"#COLORCOLOR_DGREENG##SELECT#".. tab[i][2] .."#SELECTEND##COLOREND#")	 
			end
			if i == 2 then
				break
			end
		end	
	end	
	

	
end	

function SystemTeach.OpenWindow(h)
	local param = tonumber(GUIWndGetParam(h))
	local handle = GetWindow(SystemTeach._wnd,"edit"..param)
	if handle ~= 0 then
		local str =  GUIEditGetTextM(handle)
		if str == "成就奖励" then	
			CLOnAchieveWindow()
		else
			UI:Lua_OpenWindow(0, "ShenLuWnd.lua")
		end	
	end	
end

function SystemTeach.OnHideWndBtn(h)
	local sX = CLGetScreenWidth()
	local tXml = "<Tween><Frame time='0.3' x='"..sX.."' /></Tween>"
	GUIWndTween(SystemTeach._wnd, tXml, "SystemTeach.HideTweenEnd()")
end

function SystemTeach.HideTweenEnd()
	local sX = CLGetScreenWidth()
	GUIWndSetPosM(SystemTeach._hideWnd, sX-31, 551)
	GUIWndSetVisible(SystemTeach._wnd, false)
	GUIWndSetVisible(SystemTeach._hideWnd, true)
end

function SystemTeach.OnShowWndBtn(h)
	GUIWndSetVisible(SystemTeach._wnd, true)
	GUIWndSetVisible(SystemTeach._hideWnd, false)
	
	local tweenX = CLGetScreenWidth()- 208
	local tXml = "<Tween><Frame time='0.3' x='"..tweenX.."' /></Tween>"
	GUIWndTween(SystemTeach._wnd, tXml, "")
	
end

SystemTeach.main()