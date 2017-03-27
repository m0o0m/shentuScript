ShenLu_tip ={}
--[[local ui = "<form> <dialog OnInit='ShenLu_tip.UIInit' id='ShenLu_tip' image='' x='20' y='140' w='224' h='86' revmsg='false'>"

	.."	<image id='TestWndChild_6' image='05655' x='-98' y='-73' w='381' h='375' revmsg='true'/>"  
	.."	<image id='TestWndChild_1' image='1800900018' x='0' y='224' w='154' h='38' revmsg='true'/>"
	.."	<image id='img' image='0' x='37' y='233' w='12' h='21' check_point='0' revmsg='true'/>"
	.."	<edit id='TestWndChild_7' x='51' y='232' w='81' h='24' revmsg='true' text_color='#C2B6A0' text='级后开启熔炉 ' font='system'/>"
	.."	<button id='HideBtn' image='1800000125' x='-20' y='0' w='26' h='27' OnLButtonUp='ShenLu_tip.OnHideWndBtn' revmsg='true'/>"
	
	.." </dialog>"
	.."</form>"--]]

function ShenLu_tip.main()
	--[[if GetWindow(nil,"ShenLu_tip") ~= 0 then
		ShenLu_tip.Closed()
	end
	GenFormByString(ui)--]]
	
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"ShenLu_tip",0,20,140)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
		GUI:WndSetCanRevMsg(_Parent, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_6",1892321000, 83,117)--5655
	if _GUIHandle ~= 0 then
	
		--[[GUI:WndSetParam(_GUIHandle, 0)
		--GUI:WndSetSizeM(_GUIHandle,381, 375)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		--GUIImageSetDrawCenter(_GUIHandle, true)--]]
		
		GUI:ImageSetAnimateEnable(_GUIHandle, true, 150)
		--[[GUIImageSetTransfrom(_GUIHandle, 10000, 10000,0)
		--]]	
		
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1800900018,0,164)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,154, 38)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img",0,37,173)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,12, 21)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_7",51,172,81,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"级后开启熔炉 ")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"HideBtn",1800000125,-20,0)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "ShenLu_tip.OnHideWndBtn")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,20, 36)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	ShenLu_tip.UIInit(_Parent)
end 
	ShenLu_tip.Wnd = 0
--UI Logic Code Start
function ShenLu_tip.UIInit(_Handle)
	ShenLu_tip.Wnd = _Handle
	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		local level = tonumber(as3.tolua(LuaRet))
		local index = 62-level
		ImageSetImageID(_Handle, "img", tonumber(1804600045+index))
		if index == 0 then 
			ShenLu_tip.Closed() 
		end
	end
	local _wnd = GUIWndCreateWnd(0, "HideUI", 0, 0, 140)
	if _wnd ~= 0 then
		ShenLu_tip._hideWnd = _wnd
		GUIWndSetVisible(_wnd, false)
		local btn = GUIButtonCreate(_wnd, "ShowBtn", 1800000121, 0, 0)
		if btn ~= 0 then
			GUIWndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "ShenLu_tip.OnShowWndBtn")
		end
	end
--[[	local _GUIHandle = GetWindow(_Handle,"TestWndChild_6") 
	if _GUIHandle ~= 0 then 
		--GUIImageSetDrawCenter(_GUIHandle, true)
		GUIImageSetAnimateEnable(_GUIHandle, true, 150)
		GUIImageSetTransfrom(_GUIHandle, 7800, 8000,0)	
		
	end--]]
end

function ShenLu_tip.openWnd()
	GenFormByString(ui)
end

function ShenLu_tip.Closed()
	local hand = GetWindow(nil,"ShenLu_tip")
	if hand ~= 0 then 
		GUIWndClose(hand)
	end
end

function ShenLu_tip.OnHideWndBtn()  
	GUIWndTween(ShenLu_tip.Wnd, "<Tween><Frame time='0.5' x='-224' /></Tween>", "ShenLu_tip.HideTweenEnd()")
end

function ShenLu_tip.HideTweenEnd()
	GUIWndSetVisible(ShenLu_tip.Wnd, false)
	GUIWndSetVisible(ShenLu_tip._hideWnd, true)
end

function ShenLu_tip.OnShowWndBtn()
	GUIWndSetVisible(ShenLu_tip.Wnd, true)
	GUIWndSetVisible(ShenLu_tip._hideWnd, false)
	GUIWndTween(ShenLu_tip.Wnd, "<Tween><Frame time='0.5' x='20' /></Tween>", "")
end

ShenLu_tip.main()