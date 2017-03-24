tst = {}
function tst.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TestWndChild_0",1800200002,390,189)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,539, 170)
				GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
		GUI:WndSetMagicUI(_Parent,1)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1800000138,209,41)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
		GUI:ImageSetDrawCenter(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"TestWndChild_2",0,213,45,56,56)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,56, 56)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_3",1890000001,373,62)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,64, 64)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "tst._btn")
	end
	
	
	
	tst.UIInit(_Parent)
end

--UI Logic Code Start
function tst.UIInit(_Handle)


end

function tst._btn()
	dbg("=============================")
	UI:Lua_SubmitForm("ChallengeBOSS", "tst", "")
	-- win_msg_up("#COLORCOLOR_MAGENTA#翅膀触发#COLORCOLOR_YELLOW#吸血特效，#COLORCOLOR_RED#血量+1000#COLOREND#");
end
tst.main()




