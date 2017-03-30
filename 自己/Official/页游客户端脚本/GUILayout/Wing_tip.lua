Wing_tip = {}
function Wing_tip.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"Wing_tip",0,20,190)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
		GUI:WndSetCanRevMsg(_Parent, false)
	end
	
	
	--[[_GUIHandle = GUI:ImageCreate(_Parent,"magic",2147483647,-117,-70)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,381, 375)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end--]]
	
	_GUIHandle = GUI:ImageCreate(_Parent,"wingDisplay",1893320000,-89,-135)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAnimateEnable(_GUIHandle, true, 150)
		GUI:WndSetEnableM(_GUIHandle, false)
		--[[GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,300, 300)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)--]]
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1800900018,75,194)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,154, 38)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img",0,108,203)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,12, 21)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_7",126,202,81,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"¼¶ºó¿ªÆô³á°ò ")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"HideBtn",1800000125,-20,80)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Wing_tip.OnHideWndBtn")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,20, 36)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	
	Wing_tip.UIInit(_Parent)
end

--UI Logic Code Start
function Wing_tip.UIInit(_Handle)
	Wing_tip.Wnd = _Handle
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		local level = tonumber(LuaRet)
		local index = 61-level
		ImageSetImageID(_Handle, "img", tonumber(1804600045+index))
		if index == 0 then 
			Wing_tip.Closed() 
		end
	end
	local _GUIHandle = GetWindow(_Handle,"wingDisplay") 
	if _GUIHandle ~= 0 then 
		GUI:ImageSetTransfrom(_GUIHandle,8000,8000,0)
		--GUI:ImageSetDrawCenter(_GUIHandle, true)
		--GUI:ImageSetAnimateEnable(_GUIHandle, true, 150)
		--GUI:ImageSetTransfrom(_GUIHandle, 7800, 8000,0)	
		
	end
	local _wnd = GUI:WndCreateWnd(0, "HideUI121", 0, 0, 270)
	if _wnd ~= 0 then
		Wing_tip._hideWnd = _wnd
		GUI:WndSetVisible(_wnd, false)
		local btn = GUI:ButtonCreate(_wnd, "ShowBtn", 1800000121, 0, 0)
		if btn ~= 0 then
			GUI:WndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "Wing_tip.OnShowWndBtn")
		end
	end
	
end

function Wing_tip.openWnd()
	GenFormByString(ui)
end

function Wing_tip.Closed()
	local hand = GetWindow(nil,"Wing_tip")
	if hand ~= 0 then 
		GUI:WndClose(hand)
	end
end

function Wing_tip.OnHideWndBtn()  
	GUI:WndTween(Wing_tip.Wnd, "<Tween><Frame time='0.5' x='-424' /></Tween>", "Wing_tip.HideTweenEnd()")
end

function Wing_tip.HideTweenEnd()
	GUI:WndSetVisible(Wing_tip.Wnd, false)
	GUI:WndSetVisible(Wing_tip._hideWnd, true)
end

function Wing_tip.OnShowWndBtn()
	GUI:WndSetVisible(Wing_tip.Wnd, true)
	GUI:WndSetVisible(Wing_tip._hideWnd, false)
	GUI:WndTween(Wing_tip.Wnd, "<Tween><Frame time='0.5' x='20' /></Tween>", "")
end

Wing_tip.main()