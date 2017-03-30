Boss_tip ={}
--[[local ui = "<form> <dialog OnInit='Boss_tip.UIInit' id='Boss_tip' image='1800500141' x='20' y='140' w='224' h='86' revmsg='false'>"
	.."	<image id='TestWndChild_6' image='1800200063' x='-23' y='-20' w='110' h='110' revmsg='true'/>"
	.."	<edit id='TestWndChild_7' x='100' y='34' w='45' h='24' revmsg='true' text_color='#C2B6A0' text='还差' font='system'/>"
	.."	<edit id='TestWndChild_8' x='163' y='34' w='40' h='24' revmsg='true' text_color='#C2B6A0' text='级开启' font='system'/>"
	.."	<image id='img' image='' x='139' y='35' w='12' h='21' revmsg='true'/>"
	.."	<button id='HideBtn' image='1800000125' x='-20' y='0' w='26' h='27' OnLButtonUp='Boss_tip.OnHideWndBtn' revmsg='true'/>"
	
	.." </dialog>"
	.."</form>"--]]

function Boss_tip.main()
	--[[if GetWindow(nil,"Boss_tip") ~= 0 then
		Boss_tip.Closed() 
		CLAddDelayTask("Boss_tip.openWnd()", 1000, 1)
	else
	end
	GenFormByString(ui)--]]
	
	
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUIWndCreateWnd(_Parent,"Boss_tip",0,20,140)
	if _Parent ~= 0 then
		GUIWndSetSizeM(_Parent,224, 86)
		GUIWndSetCanRevMsg(_Parent, false)
	end
	
	
	_GUIHandle = GUIImageCreate(_Parent,"TestWndChild_6",1800200087,25,10) --1800200063
	if _GUIHandle ~= 0 then
	
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,110, 110)
		GUIImageSetParam(_GUIHandle, 0)
		GUIImageSetCheckPoint(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1800900018,0,109)
	if _GUIHandle ~= 0 then 
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,154, 38)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
		_GUIHandle = GUI:ImageCreate(_Parent,"img",0,18,118)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,12, 21)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_7",34,117,100,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"级后开启挑战BOSS")
	end
	
	
	
	_GUIHandle = GUIButtonCreate(_Parent,"HideBtn",1800000125,-20,0)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "Boss_tip.OnHideWndBtn")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,20, 36)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	Boss_tip.UIInit(_Parent)
end 
	Boss_tip.Wnd = 0
--	Boss_tip.timeid = 0
--UI Logic Code Start
function Boss_tip.UIInit(_Handle)
	Boss_tip.Wnd = _Handle
	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		local level = tonumber(as3.tolua(LuaRet))
		local index = 60-level  
		ImageSetImageID(_Handle, "img", tonumber(1804600045+index))
		if index == 0 then 
			Boss_tip.Closed() 
		end
	end  
	
	local _wnd = GUIWndCreateWnd(0, "HideUI", 0, 0, 140)
	if _wnd ~= 0 then
		Boss_tip._hideWnd = _wnd
		GUIWndSetVisible(_wnd, false)
		local btn = GUIButtonCreate(_wnd, "ShowBtn", 1800000121, 0, 0)
		if btn ~= 0 then
			GUIWndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "Boss_tip.OnShowWndBtn")
		end
	end
	
	--Boss_tip.timeid = as3.tolua(GUIWndAddTimerBrief(_Handle, 6000, "Boss_tip.Closed"))
end

function Boss_tip.openWnd()
	GenFormByString(ui)
end

function Boss_tip.Closed() 
	--GUIWndDelTimer(Boss_tip.Wnd, Boss_tip.timeid)
	local hand = GetWindow(nil,"Boss_tip")
	if hand ~= 0 then 
		GUIWndClose(hand)
	end
end

function Boss_tip.OnHideWndBtn()  
	GUIWndTween(Boss_tip.Wnd, "<Tween><Frame time='0.5' x='-224' /></Tween>", "Boss_tip.HideTweenEnd()")
end

function Boss_tip.HideTweenEnd()
	GUIWndSetVisible(Boss_tip.Wnd, false)
	GUIWndSetVisible(Boss_tip._hideWnd, true)
end

function Boss_tip.OnShowWndBtn()
	GUIWndSetVisible(Boss_tip.Wnd, true)
	GUIWndSetVisible(Boss_tip._hideWnd, false)
	GUIWndTween(Boss_tip.Wnd, "<Tween><Frame time='0.5' x='20' /></Tween>", "")
end

Boss_tip.main()