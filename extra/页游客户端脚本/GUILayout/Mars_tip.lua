Mars_tip = {}
function Mars_tip.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"Mars_tip",0,20,140)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,224, 86)
		GUI:WndSetCanRevMsg(_Parent, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_6",1893120000,-166,-76)--1800200011
	if _GUIHandle ~= 0 then
		GUI:ImageSetTransfrom(_GUIHandle,10000,10000,0)
		GUI:WndSetEnableM(_GUIHandle,true)
		GUI:ImageSetAnimateEnable(_GUIHandle, true, 150)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1800900018,0,282)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,154, 38)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img",-6,37,291)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,12, 21)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_7",51,290,81,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"级后开启神将")
		GUI:WndSetEnableM(_GUIHandle,false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"HideBtn",1805000017,-20,0)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Mars_tip.OnHideWndBtn")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 27)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	
	Mars_tip.UIInit(_Parent)
end

--UI Logic Code Start
function Mars_tip.UIInit(_Handle)
	Mars_tip.Wnd = _Handle
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		local level = tonumber(LuaRet)
		local index = 55-level  
		ImageSetImageID(_Handle, "img", tonumber(1804600045+index))
	end
	
	local _wnd = GUI:WndCreateWnd(0, "HideUI", 0, 0, 140)
	if _wnd ~= 0 then
		Mars_tip._hideWnd = _wnd
		GUI:WndSetVisible(_wnd, false)
		local btn = GUI:ButtonCreate(_wnd, "ShowBtn", 1805000003, 0, 0)
		if btn ~= 0 then
			GUI:WndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "Mars_tip.OnShowWndBtn")
		end
	end

end

function Mars_tip.OnHideWndBtn()  
	GUI:WndTween(Mars_tip.Wnd, "<Tween><Frame time='0.5' x='-224' /></Tween>", "Mars_tip.HideTweenEnd()")
end

function Mars_tip.HideTweenEnd()
	GUI:WndSetVisible(Mars_tip.Wnd, false)
	GUI:WndSetVisible(Mars_tip._hideWnd, true)
end

function Mars_tip.OnShowWndBtn()
	GUI:WndSetVisible(Mars_tip.Wnd, true)
	GUI:WndSetVisible(Mars_tip._hideWnd, false)
	GUI:WndTween(Mars_tip.Wnd, "<Tween><Frame time='0.5' x='20' /></Tween>", "")
end


function Mars_tip.Closed()

	local hand = GetWindow(nil,"Mars_tip")
	if hand ~= 0 then 
		GUI:WndClose(hand)
	end
end

Mars_tip.main()