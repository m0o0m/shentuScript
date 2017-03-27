GUITipBase = {}

GUITipBase.ClipWndHandle = 0
GUITipBase.WndHandle = 0
function GUITipBase.main()
    local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0

   	local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _GUIHandle = GUI:ImageCreate(_Parent, "BackImage", 1850600070, 150, 100);
    if _GUIHandle then
    	GUI:ImageSetAroundImage(_GUIHandle, 1850600070, 1850600072, 1850600076, 1850600078, 1850600074, 1850600071, 1850600077, 1850600073, 1850600075)
    	GUI:WndSetSizeM(_GUIHandle, 430, 438)
    end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"ClipWnd",0, 150, 110)
	if _GUIHandle then
		GUITipBase.ClipWndHandle = _GUIHandle
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(_GUIHandle,430, 330)
		GUI:WndSetTipsContent(_GUIHandle, true)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Drop",  1850000307,  215, 466)
	if _GUIHandle then
		GUI:WndSetTextM(_GUIHandle, "丢  弃")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GUITipBase.OnDrop")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Use",  1850000307,  400, 466)
	if _GUIHandle then
		GUI:WndSetTextM(_GUIHandle, "使  用")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GUITipBase.OnUse")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "UnEquip",  1850000307,  307, 466)
	if _GUIHandle then
		GUI:WndSetTextM(_GUIHandle, "卸  下")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GUITipBase.OnUnEquip")
	end

	GUITipBase.UIInit(_Parent)
end

GUITipBase.WndHandle = 0
GUITipBase.ClipWndHandle = 0

function GUITipBase.UIInit(_Handle)
	GUITipBase.WndHandle = _Handle
	local _Parent = GUITipBase.WndHandle
	local _Handle = 0
	local _CurItemWindowType = WndGetCurItemWindow()

	if _CurItemWindowType == ITEMWINDOW_PACK then
		_Handle = GUI:WndFindChildM(_Parent, "Drop")
		if _Handle then
			GUI:WndSetVisible(_Handle, true)
		end
		_Handle = GUI:WndFindChildM(_Parent, "Use")
		if _Handle then
			GUI:WndSetVisible(_Handle, true)
		end
	end
 
 	if _CurItemWindowType == ITEMWINDOW_ROLEEQUIPMENT then
		_Handle = GUI:WndFindChildM(_Parent, "UnEquip")
		if _Handle then
			GUI:WndSetVisible(_Handle, true)
		end
	end
 
end

function GUITipBase.OnUse(_Handle)
	GUI:WndClose(GUITipBase.WndHandle)
end

function GUITipBase.OnDrop(_Handle)
	GUI:WndClose(GUITipBase.WndHandle)
end

function GUITipBase.OnUnEquip(_Handle)
	GUI:WndClose(GUITipBase.WndHandle)
end

GUITipBase.main()