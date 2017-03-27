new1 = {}
function new1.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:ImageCreate(_Parent,"test0",1801800003,401,144)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,135, 206)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"test11111111",0,435,204,63,68)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,63, 68)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
		
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"TestWndChild_1",374,293,211,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "RichEdit01")
		
	end
	
	
	new1.UIInit(_Parent)
end

--UI Logic Code Start
function new1.UIInit(_Parent)
	msg("new1.UIInit1111")
	WndSetFlags(_Parent, "TestWndChild_1", richEdit_flg_textInCenter)
	-- local _handle = GetWindow(_Parent, "TestWndChild_1")
	-- if _handle ~= 0 then 
		-- GUI:WndSetFlagsM(_handle, richEdit_flg_textInCenter)
	-- end
	
	-- MessageBox( 1, "		开启#COLORCOLOR_GREENG#".."３#COLOREND#".."号镶嵌孔需要消耗")
	-- RDItemCtrlSetGUIDataPropByKeyName(_Parent, "test11111111", "霸业神剑", 10, true);
	-- RDItemCtrlSetGUIDataPropByItemID(_Parent, "test11111111", 121, 65535, true);
end
new1.main()




