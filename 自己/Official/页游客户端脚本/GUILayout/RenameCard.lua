RenameCard = {}
function RenameCard.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"mainWindow",1804600011,303,150)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,256, 192)
		GUIWndSetMoveWithLBM(_Parent)
		CenterWnd(_Parent,nil)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_5",0,0,33)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,256, 159)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RenameCard.Check")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"txtBack",1802000008,52,91)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,146, 33)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeButton",1804600007,228,6)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,24, 23)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RenameCard.Close")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"windowTitle",108,2,56,29)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 204, 153, 0))
		GUI:EditSetTextM(_GUIHandle,"改名卡")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_6",26,62,250,18)
	if _GUIHandle ~= 0 then
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 255, 0, 0))
		GUI:EditSetTextM(_GUIHandle," 温馨提示：改名成功重新登陆后生效")
		GUIWndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"scanner",50,95,146,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"请输入名字")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetCanEdit(_GUIHandle, true)
		GUI:EditSetMaxCharNum(_GUIHandle, 7)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RenameCard.Clean")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_4",1800000081,99,152)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"确定")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,63, 26)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RenameCard.Confirm")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	

	RenameCard.UIInit(_Parent)
end

--UI Logic Code Start
function RenameCard.UIInit(_Handle)
	RenameCard.Wnd=_Handle
	GUIWndSetMoveWithLBM(_Handle)
end

function RenameCard.Check()
	local handle = GetWindow(RenameCard.Wnd, "scanner")
	if handle ~= 0 then
		local txt = GUIEditGetTextM(handle)
		if txt == "" then 
			GUIEditSetTextM(handle, "请输入名字")
		end
	end
end

function RenameCard.Clean(handle)
	local txt = GUIEditGetTextM(handle)
	if txt == "请输入名字" then 
		GUIEditSetTextM(handle, "")
	end
end

function RenameCard.Confirm()
	local handle = GetWindow(RenameCard.Wnd,"scanner")
	local str = EditGetTextM(handle)
	if str == "" then
		msg("请输入名字")
		return
	end
	UI:Lua_SubmitForm("PlayerNameChange", "main", ""..str)
end

function RenameCard.Close()
	if RenameCard.Wnd ~= 0 then
		GUIWndClose(RenameCard.Wnd)
	end
end

RenameCard.main()