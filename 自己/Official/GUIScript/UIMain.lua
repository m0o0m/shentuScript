function GetCurWindow()
	local _NewWindow = Temporary
	return _NewWindow;
end

function SetCurWindow(_Window)
	Temporary = _Window
end

function SaveWnd()
	TempWndCurrentSaving = nil
	if Temporary == nil then return end
	TempWndCurrentSaving = Temporary
end

function RestoreWnd()
	if TempWndCurrentSaving == nil then return end
	Temporary = TempWndCurrentSaving
end

--设置窗口位置,(X轴上空白占上下总空白比例,Y轴左空白占左右总空白比例)
function SetWindowPosAt(XPerct,YPerct)
	UI:Lua_GetScreenSize()
	local _SW = LuaRet[1]
	local _SH = LuaRet[2]
	UI:Lua_WndGetSizeM()
	local _W = LuaRet[1]
	local _H = LuaRet[2]
	local _X = XPerct*(_SW-_W)
	local _Y = YPerct*(_SH-_H)
	UI:Lua_WndSetPosM(_X,_Y)
end

--设置窗口位置,(X轴上空白占上下总空白比例,Y轴左空白占左右总空白比例)
function WndSetPosAt(_Handle, _Info, XPerct, YPerct)
	if not WndAttach(_Handle, _Info) then return false end
	UI:Lua_GetScreenSize()
	local _SW = LuaRet[1]
	local _SH = LuaRet[2]
	UI:Lua_WndGetSizeM()
	local _W = LuaRet[1]
	local _H = LuaRet[2]
	local _X = XPerct*(_SW-_W)
	local _Y = YPerct*(_SH-_H)
	UI:Lua_WndSetPosM(_X,_Y)
	return true
end

--将窗口居中
function CenterWnd(_Handle, _Info)
	WndSetPosAt(_Handle, _Info, 0.5, 0.5)
end

--获取Tip指向的物品格的属性
function GetTipItemGUIDataPropByType(Type)
	local handle = GetTipParam("GUIDATA")
	if nil == handle then return false end
	handle = tonumber(handle)
	if handle == 0 then return false end
	return UI:Lua_GetItemGUIDataPropByType(handle,Type)
end

--获取物品格属性
function GetWndItemGUIDataPropByType(Type)
	if UI:Lua_WndGetItemGUIDataHandle() then
		return UI:Lua_GetItemGUIDataPropByType(LuaRet,Type)
	end
	return false
end

--设置物品格属性
function SetWndItemGUIDataPropByType(Type,Value)
	if UI:Lua_WndGetItemGUIDataHandle() then
		LuaArg = Value
		return UI:Lua_SetItemGUIDataPropByType(LuaRet,Type)
	end
	return false
end

--以物品KeyName填充物品格
function SetWndItemGUIDataPropByKeyName(Value,count,_IsShowBind)
	if not UI:Lua_GetItemTemplateHandleByKeyName(Value) then return false end
	local _ItemTemplateHandle = LuaRet
	if not UI:Lua_GetItemTemplatePropByHandle(_ItemTemplateHandle,ITEM_PROP_ID) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMID,LuaRet) then return false end
	if not UI:Lua_GetItemTemplatePropByHandle(_ItemTemplateHandle,ITEM_PROP_ICON) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_IMAGEID,LuaRet) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMCOUNT,count) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND,_IsShowBind) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE,true) then return false end
	return true
end

--以物品ID填充物品格
function SetWndItemGUIDataPropByItemID(Value,count,_IsShowBind)
	if not UI:Lua_GetItemTemplateHandleByID(Value) then return false end
	local _ItemTemplateHandle = LuaRet
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMID,Value) then return false end
	if not UI:Lua_GetItemTemplatePropByHandle(_ItemTemplateHandle,ITEM_PROP_ICON) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_IMAGEID,LuaRet) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMCOUNT,count) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND,_IsShowBind) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE,true) then return false end
	return true
end

--清除物品格内容
function ClearWndItemGUIData()
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMID,0) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_IMAGEID,0) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMCOUNT,0) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND,false) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE,true) then return false end
end

--清除物品格内容
function RDItemClearGUIData(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMGUID,"0") then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMID,0) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_IMAGEID,0) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMCOUNT,0) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND,false) then return false end
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE,true) then return false end
end

--将格子填充为传过来的Item属性
function RDItemFillGUIData(_Handle, _Info, _GUIDataHandle)
	if not WndAttach(_Handle, _Info) then return false end
	if UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMGUID) then
		if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMGUID, LuaRet) then return false end
	end
	if UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID) then
		if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMID, LuaRet) then return false end
	end
	if UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_IMAGEID) then
		if not SetWndItemGUIDataPropByType(ITEMGUIDATA_IMAGEID, LuaRet) then return false end
	end
	if UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMCOUNT) then
		if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMCOUNT, LuaRet) then return false end
	end
	if UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ISSHOWBIND) then
		if not SetWndItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND, LuaRet) then return false end
	end
	if UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_INVALIDATE) then
		if not SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE, LuaRet) then return false end
	end
	return true
end

--设置物品格不可用
function SetWndItemGUIDataEnable(_Enable)
	if not SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE,_Enable) then return false end
end

function CHECK_BUTTON_UP(X,Y)
	return UI:Lua_WndPtInWindowM(X,Y)
end

--通用关闭按钮处理
function GeneralCloseBtnClick(_Handle,Param,X,Y)
	if not CHECK_BUTTON_UP(X,Y) then return end
	if UI:Lua_WndGetParentM() then
		UI:Lua_WndCloseM()
	end
end

--通用关闭Wnd函数
function GeneralCloseWnd(_Handle, Param, X, Y)
	UI:Lua_WndCloseM()
end

--创建一个窗口从ID对应的Layout文件
function CreateWindow(_ID,_IsCanDrag,_IsEscClose,_ParentHandle)
	return CreateWindowFromLayOut(_ID,_ID,_IsCanDrag,_IsEscClose,_ParentHandle)
end

--创建一个窗口从指定的的Layout名字
function CreateWindowFromLayOut(_ID,_LayOutName,_IsCanDrag,_IsEscClose,_ParentHandle)
	if _ParentHandle == nil then _ParentHandle = 0 end
	UI:Lua_CreateWnd(_ID,_ParentHandle)
	local _Wnd = GetCurWindow()
	UI:Lua_WndLoadLayOut(_LayOutName)
	UI:Lua_WndCalSize()
	if _IsCanDrag then
		UI:Lua_WndSetMoveWithLBM()
	end
	if _IsEscClose then
		UI:Lua_WndSetIsESCClose(true)
	end
	if UI:Lua_FindChildM("GUI_2") then
		UI:Lua_WndSetCanRevMsg(false)
		SetCurWindow(_Wnd)
	end
	return _Wnd
end

--创建一个窗口从Layout字符串
function CreateWindowFromLayStr(_ID,_LayStr,_IsCanDrag,_IsEscClose,_ParentHandle)
	if _ParentHandle == nil then _ParentHandle = 0 end
	UI:Lua_CreateWnd(_ID,_ParentHandle)
	local _Wnd = GetCurWindow()
	UI:Lua_WndLoadLayOutString(_LayStr)
	UI:Lua_WndCalSize()
	if _IsCanDrag then
		UI:Lua_WndSetMoveWithLBM()
	end
	if _IsEscClose then
		UI:Lua_WndSetIsESCClose(true)
	end
	if UI:Lua_FindChildM("GUI_2") then
		UI:Lua_WndSetCanRevMsg(false)
		SetCurWindow(_Wnd)
	end
	return _Wnd
end

--创建一个通用对话框
function CreateCommonWnd(id, width, height, title_image_id)
	if id == nil or id == "" or width == nil or width == 0 or height == nil or height == 0 then return 0 end
	if width % 1 ~= 0 then width = width + 1 end
	if height % 1 ~= 0 then height = height + 1 end
	if not UI:Lua_GetWindow("") then return 0 end
	CreateSimpleCtrl(1, 0, 0, 0, 0, 0, id, 0, "")
	UI:Lua_ImageSetCheckPoint(0)
	SaveWnd()
	AddImage(0, 0, 0, width, height, "GUI_2", 0, "")
	UI:Lua_WndSetCanRevMsg(false)
	UI:Lua_ImageSetAroundImage(1904400001, 1904400002, 1904400003, 1904400004, 1904400006, 1904400005, 1904400007, 1904400008, 1904400009)
	RestoreWnd()
	UI:Lua_WndCalSize()
	UI:Lua_WndSetMoveWithLBM()
	UI:Lua_WndSetIsESCClose(true)
	UI:Lua_WndSetFlagsM(flg_wndBase_autoTop)
	SetWindowPosAt(0.5, 0.5)
	AddButton(1900111000, width - 33, 8, 28, 27, "Close", 0, "")
	UI:Lua_WndRegistScript(RDWndBaseCL_mouse_lbUp, "GeneralCloseBtnClick")
	if height > 225 then
		local posy = 49 + math.floor((height - 209) / 2)
		RestoreWnd()
		AddImage(1904400010, 0, posy, 10, 160, "FrameLeft", 0, "")
		UI:Lua_WndSetCanRevMsg(false)
		RestoreWnd()
		AddImage(1904400011, width - 10, posy, 10, 160, "FrameRight", 0, "")
		UI:Lua_WndSetCanRevMsg(false)
	end
	if title_image_id ~= nil and title_image_id ~= 0 then
		local imgw, imgh
		if UI:Lua_GetTextureWidthHeight(title_image_id) then
			imgw = LuaRet[1]; imgh = LuaRet[2]
		else
			imgw = 184; imgh = 49
		end
		local x = math.floor((width - imgw) / 2)
		local y = math.floor((49 - imgh) / 2)
		RestoreWnd()
		AddImage(title_image_id, x, y, imgw, imgh, "Title", 0, "")
		UI:Lua_WndSetCanRevMsg(false)
	end
	RestoreWnd()
	return Temporary
end

--为对话框创建通用背景
function CreateCommonBack(id, handle, info, title, desc_str, desc_height)
	if id == nil or id == "" then return 0 end
	local this = GetWindow(handle, info)
	if 0 == this then return 0 end
	local cx, cy
	local ctrl = GetWindow(this, id)
	if 0 ~= ctrl then
		cx, cy = WndGetSize(ctrl, nil)
		WndClose(ctrl)
	else
		cx, cy = WndGetSize(this, nil)
	end
	ctrl = CreateImage(this, nil, 0, 0, 0, cx, cy, id, 0, "")
	WndSetCanRevMsg(ctrl, nil, false)
	WndMoveToParentBottom(ctrl, nil)
	ImageSetAroundImage(ctrl, nil, 1904400001, 1904400002, 1904400003, 1904400004, 1904400006, 1904400005, 1904400007, 1904400008, 1904400009)
	if title ~= nil and title ~= "" and UI:Lua_GetFontStrWidth("SIMLI18", title) then
		local text_width = LuaRet
		local edit = CreateRichEdit(ctrl, nil, 0, 0, 0, text_width, 20, "Title", 0, "")
		WndSetPos(edit, nil, math.floor((cx - text_width) / 2), 13)
		RichEditSetProp(edit, nil, true, false, false, "SIMLI18", MakeARGB(255, 218, 190, 130), title)
	end
	if desc_str ~= nil and desc_str ~= "" and cx > 70 and cy > 50 then
		if desc_height == nil then
			desc_height = 0
		end
		local edit_h = math.max(40, desc_height)
		local back_x = 15
		local back_y = 55
		local back_w = cx - back_x * 2
		local back_h = edit_h + 15
		local edit_x = back_x + 10
		local edit_y = back_y + 10
		local edit_w = back_w - 15
		local back = CreateImage(ctrl, nil, 0, back_x, back_y, back_w, back_h, "BackDesc", 0, "")
		WndSetCanRevMsg(back, nil, false)
		ImageSetAroundImage(back, nil, 1903700005, 1903700007, 1903700011, 1903700009, 1903700013, 1903700006, 1903700010, 1903700012, 1903700008)
		local edit = CreateRichEdit(ctrl, nil, 0, edit_x, edit_y, edit_w, edit_h, "Description", 0, "")
		RichEditSetProp(edit, nil, true, false, false, "system", MakeARGB(255, 192, 139, 99), desc_str)
	end
	return ctrl
end

--MessageBox弹框
function MessageBoxOkScript_(this, param, x, y)
	local str = WndGetProperty(this, nil, "ok_script")
	local func = loadstring(str)
	return func()
end
function MessageBoxCloseScript_(this, param, x, y)
	local str = WndGetProperty(this, nil, "close_script")
	local func = loadstring(str)
	return func()
end
function MessageBox(flag, info, ok_script, close_script, is_esc_close)
	if nil == flag or info == nil or info == "" then return end
	if 0 ~= GetWindow(nil, "MessageBox") then
		WndClose(nil, "MessageBox")
	end
	UI:Lua_MessageBox("MessageBox", 0, flag, info)
	local msgbox = LuaRet
	if nil ~= ok_script and "" ~= ok_script then
		WndAddProperty(msgbox, nil, "ok_script", ok_script)
		WndRegistScript(msgbox, nil, messageBox_closeOk, "MessageBoxOkScript_")
	end
	if nil ~= close_script and "" ~= close_script then
		WndAddProperty(msgbox, nil, "close_script", close_script)
		WndRegistScript(msgbox, nil, messageBox_closeCancel, "MessageBoxCloseScript_")
	end
	if false == is_esc_close then
		WndSetEscClose(msgbox, nil, false)
	else
		WndSetEscClose(msgbox, nil, true)
	end
end
--------------------------------------------------------------------------------------------
msgboxGUID = 0
function MultiMessageBoxOkScript_(this)
	local status = CheckGetCheck(check, nil)
	local func_str = WndGetProperty(this, nil, "ok_script")
	local data = WndGetProperty(this, nil, "ok_data")
	loadstring(func_str.."("..string.format("%q", data)..")")()
end
function MultiMessageBoxCloseScript_(this)
	local status = CheckGetCheck(check, nil)
	local func_str = WndGetProperty(this, nil, "close_script")
	local data = WndGetProperty(this, nil, "cancle_data")
	loadstring(func_str.."("..string.format("%q", data)..")")()
end
function MessageBoxMulti(flag, info, ok_script, close_script, is_esc_close, ok_data, cancle_data)
	if nil == flag or info == nil or info == "" then return end
	if 0 ~= GetWindow(nil, "MessageBox"..msgboxGUID) then
		WndClose(nil, "MessageBox"..msgboxGUID)
	end
	UI:Lua_MessageBox("MessageBox"..msgboxGUID, 0, flag, info)
	msgboxGUID = msgboxGUID + 1
	local msgbox = LuaRet
	if nil ~= ok_script and "" ~= ok_script then
		WndAddProperty(msgbox, nil, "ok_script", ok_script)
		WndRegistScript(msgbox, nil, messageBox_closeOk, "MultiMessageBoxOkScript_")
		if type(ok_data) == "string" then
			WndAddProperty(msgbox, nil, "ok_data", ok_data)
		end
	end
	if nil ~= close_script and "" ~= close_script then
		WndAddProperty(msgbox, nil, "close_script", close_script)
		WndRegistScript(msgbox, nil, messageBox_closeCancel, "MultiMessageBoxCloseScript_")
		if type(cancle_data) == "string" then
			WndAddProperty(msgbox, nil, "cancle_data", cancle_data)
		end
	end
	if false == is_esc_close then
		WndSetEscClose(msgbox, nil, false)
	else
		WndSetEscClose(msgbox, nil, true)
	end
end
--------------------------------------------------------------------------------------------
function MessageBoxOkFunc_(this)
	local check = GetWindow(this, "GUICheck")
	if check ~= 0 then
		local status = CheckGetCheck(check, nil)
		local func_str = WndGetProperty(this, nil, "ok_func")
		local data = WndGetProperty(this, nil, "data")
		loadstring(func_str.."("..tostring(status)..","..string.format("%q", data)..")")()
	end
end
function MessageBox2(flag, info, ok_func, text, text_color, is_esc_close, data)
	if nil == flag or info == nil or info == "" then return end
	if 0 ~= GetWindow(nil, "MessageBox") then
		WndClose(nil, "MessageBox")
	end
	UI:Lua_MessageBox("MessageBox", 0, flag, info)
	local msgbox = LuaRet
	if nil ~= ok_func and "" ~= ok_func then
		WndAddProperty(msgbox, nil, "ok_func", ok_func)
		WndRegistScript(msgbox, nil, messageBox_closeOk, "MessageBoxOkFunc_")
		if type(data) == "string" then
			WndAddProperty(msgbox, nil, "data", data)
		end
	end
	local check = GetWindow(msgbox, "GUICheck")
	if 0 ~= check then
		local txt = "下次不再提示"
		if text ~= nil and text ~= "" then
			txt = text
		end
		WndSetVisible(check, nil, true)
		CheckSetText(check, nil, txt)
		if nil ~= text_color then
			WndSetTextColor(check, nil, mkcolor(text_color))
		end
	end
	if false == is_esc_close then
		WndSetEscClose(msgbox, nil, false)
	else
		WndSetEscClose(msgbox, nil, true)
	end
end

--基于窗口创建特效
function AddMagicToWnd(wnd_id, posx, posy, magic_id, image_id, speed, timer_elapse, timer_func)
	if not UI:Lua_GetWindow(wnd_id) then return false end
	AddImage(image_id, posx, posy, 0, 0, magic_id, 0, "")
	UI:Lua_ImageSetAnimateEnable(true, speed)
	UI:Lua_WndSetCanRevMsg(false)
	if timer_elapse ~= nil and timer_func ~= nil then
		UI:Lua_WndAddTimer(2000, timer_elapse, timer_func)
	end
	return true
end

--基于桌面创建特效
function AddMagicToScreen(posx, posy, magic_id, image_id, speed, timer_elapse, timer_func)
	return AddMagicToWnd("", posx, posy, magic_id, image_id, speed, timer_elapse, timer_func)
end

--移动特效到父窗口底层
function MoveMagicToBottom(parent_id, magic_id)
	if not UI:Lua_GetWindow(parent_id) then return false end
	if not UI:Lua_FindChildM(magic_id) then return false end
	UI:Lua_WndMoveToParentBottom()
	return true
end

--移动特效到父窗口顶层
function MoveMagicToTop(parent_id, magic_id)
	if not UI:Lua_GetWindow(parent_id) then return false end
	if not UI:Lua_FindChildM(magic_id) then return false end
	UI:Lua_WndMoveToParentTop()
	return true
end

XMLDeclHeader = "<?xml version=\"1.0\" encoding=\"GB2312\" standalone=\"yes\" ?>"
function CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
	local _LayStr = ""
	_LayStr = _LayStr..XMLDeclHeader
	_LayStr = _LayStr.."<Property "
	_LayStr = _LayStr.."UIType=\""..UIType.."\" "
	_LayStr = _LayStr.."ImageID=\""..ImageID.."\" "
	_LayStr = _LayStr.."PosX=\""..PosX.."\" "
	_LayStr = _LayStr.."PosY=\""..PosY.."\" "
	_LayStr = _LayStr.."SizeX=\""..SizeX.."\" "
	_LayStr = _LayStr.."SizeY=\""..SizeY.."\" "
	_LayStr = _LayStr.."UIID=\""..UIID.."\" "
	_LayStr = _LayStr.."AlignType=\""..AlignType.."\" "
	_LayStr = _LayStr.."UIHint=\""..UIHint.."\" "
	_LayStr = _LayStr.."/>"
	if UI:Lua_WndCreateCtrl(UIType,_LayStr) then return LuaRet end
	return 0
end

--图片控件
function AddImage(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
	local UIType = ENUM_UITYPE_BACKPIC
	return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
end

--按钮
function AddButton(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
	local UIType = ENUM_UITYPE_BUTTON
	return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
end

--复选框
function AddCheckBox(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint,Title)
	local UIType = ENUM_UITYPE_CHECKBOX
	local _LayStr = ""
	_LayStr = _LayStr..XMLDeclHeader
	_LayStr = _LayStr.."<Property "
	_LayStr = _LayStr.."UIType=\""..UIType.."\" "
	_LayStr = _LayStr.."ImageID=\""..ImageID.."\" "
	_LayStr = _LayStr.."PosX=\""..PosX.."\" "
	_LayStr = _LayStr.."PosY=\""..PosY.."\" "
	_LayStr = _LayStr.."SizeX=\""..SizeX.."\" "
	_LayStr = _LayStr.."SizeY=\""..SizeY.."\" "
	_LayStr = _LayStr.."UIID=\""..UIID.."\" "
	_LayStr = _LayStr.."AlignType=\""..AlignType.."\" "
	_LayStr = _LayStr.."UIHint=\""..UIHint.."\" "
	_LayStr = _LayStr.."Title=\""..Title.."\" "
	_LayStr = _LayStr.."/>"
	if UI:Lua_WndCreateCtrl(UIType,_LayStr) then return LuaRet end
	return 0
end

--编辑框
function AddEdit(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
	local UIType = ENUM_UITYPE_EDIT
	return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
end

--组合框
function AddComboBox(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint,Length)
	local UIType = ENUM_UITYPE_COMBOBOX
	local ButtonType = "combobox"
	local _LayStr = ""
	_LayStr = _LayStr..XMLDeclHeader
	_LayStr = _LayStr.."<Property "
	_LayStr = _LayStr.."UIType=\""..UIType.."\" "
	_LayStr = _LayStr.."ImageID=\""..ImageID.."\" "
	_LayStr = _LayStr.."PosX=\""..PosX.."\" "
	_LayStr = _LayStr.."PosY=\""..PosY.."\" "
	_LayStr = _LayStr.."SizeX=\""..SizeX.."\" "
	_LayStr = _LayStr.."SizeY=\""..SizeY.."\" "
	_LayStr = _LayStr.."UIID=\""..UIID.."\" "
	_LayStr = _LayStr.."AlignType=\""..AlignType.."\" "
	_LayStr = _LayStr.."UIHint=\""..UIHint.."\" "
	_LayStr = _LayStr.."Length=\""..Length.."\" "
	_LayStr = _LayStr.."ButtonType=\""..ButtonType.."\" "
	_LayStr = _LayStr.."/>"
	if UI:Lua_WndCreateCtrl(UIType,_LayStr) then return LuaRet end
	return 0
end

--列表框
function AddListBox(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
	local UIType = ENUM_UITYPE_LIST
	return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
end

--单选框
function AddRadio(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
	local UIType = ENUM_UITYPE_RADIO
	return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
end

--静态文本
function AddStatic(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
	local UIType = ENUM_UITYPE_STATIC
	return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
end

--水平滚动条
function AddHScrollBar(ImageID,PosX,PosY,SizeX,SizeY,Length,UIID,AlignType,UIHint)
	local UIType = ENUM_UITYPE_HSCROLLBAR
	local _LayStr = ""
	_LayStr = _LayStr..XMLDeclHeader
	_LayStr = _LayStr.."<Property "
	_LayStr = _LayStr.."UIType=\""..UIType.."\" "
	_LayStr = _LayStr.."ImageID=\""..ImageID.."\" "
	_LayStr = _LayStr.."ImageUp=\""..ImageUp.."\" "
	_LayStr = _LayStr.."ImageDown=\""..ImageDown.."\" "
	_LayStr = _LayStr.."ImageThumb=\""..ImageThumb.."\" "
	_LayStr = _LayStr.."PosX=\""..PosX.."\" "
	_LayStr = _LayStr.."PosY=\""..PosY.."\" "
	_LayStr = _LayStr.."Length=\""..Length.."\" "
	_LayStr = _LayStr.."UIID=\""..UIID.."\" "
	_LayStr = _LayStr.."AlignType=\""..AlignType.."\" "
	_LayStr = _LayStr.."UIHint=\""..UIHint.."\" "
	_LayStr = _LayStr.."/>"
	if UI:Lua_WndCreateCtrl(UIType,_LayStr) then return LuaRet end
	return 0
end

--垂直滚动条
function AddVScrollBar(ImageID,PosX,PosY,SizeX,SizeY,Length,UIID,AlignType,UIHint)
	local UIType = ENUM_UITYPE_VSCROLLBAR
	local _LayStr = ""
	_LayStr = _LayStr..XMLDeclHeader
	_LayStr = _LayStr.."<Property "
	_LayStr = _LayStr.."UIType=\""..UIType.."\" "
	_LayStr = _LayStr.."ImageID=\""..ImageID.."\" "
	_LayStr = _LayStr.."ImageUp=\""..ImageUp.."\" "
	_LayStr = _LayStr.."ImageDown=\""..ImageDown.."\" "
	_LayStr = _LayStr.."ImageThumb=\""..ImageThumb.."\" "
	_LayStr = _LayStr.."PosX=\""..PosX.."\" "
	_LayStr = _LayStr.."PosY=\""..PosY.."\" "
	_LayStr = _LayStr.."Length=\""..Length.."\" "
	_LayStr = _LayStr.."UIID=\""..UIID.."\" "
	_LayStr = _LayStr.."AlignType=\""..AlignType.."\" "
	_LayStr = _LayStr.."UIHint=\""..UIHint.."\" "
	_LayStr = _LayStr.."/>"
	if UI:Lua_WndCreateCtrl(UIType,_LayStr) then return LuaRet end
	return 0
end

--树状控件
function AddTreeCtrl(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
	local UIType = ENUM_UITYPE_TREECONTROL
	return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
end

--RichEdit控件
function AddRichEdit(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
	local UIType = ENUM_UITYPE_RICHEIDT
	return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
end

--物品控件
function AddItemCtrl(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
	local UIType = ENUM_UITYPE_ITEMCTRL
	return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
end

--物品控件系统辅助函数
local SysItemWindowIDAlloc = 100000
function Sys_GetUniqueItemWindowID()
	SysItemWindowIDAlloc = SysItemWindowIDAlloc - 1
	return SysItemWindowIDAlloc
end
local SysItemWindowList = {}
--[[{ [id] = { t = { {this, func} }, tocken = * } }]]
--func 原型： function func(this, GUIData, DragIn, GUID, ItemId, KeyName, ItemPos, IsBound, Count)
function Sys_PushBackItemWindow(this, func)
	if func == "" then return end
	local parent = WndGetParent(this, nil)
	if parent == 0 then return end
	local id = nil
	for k, v in pairs(SysItemWindowList) do
		if v.tocken == parent then
			id = k
		break end
	end
	if nil == id then
		id = Sys_GetUniqueItemWindowID()
		local t = {}
		t.t = {}
		table.insert(t.t, {this, func})
		t.tocken = parent
		SysItemWindowList[id] = t
		WndOpenItemWindow(parent, nil, id, "Sys_GetItemWindowGUIDList")
		WndRegistScript(parent, nil, RDWndBaseCL_wnd_destroy, "Sys_ItemWindowDestroy")
		WndRegistScript(parent, nil, RDWndBaseCL_wnd_active, "Sys_ItemWindowActive")
		RegisterUIEvent(LUA_EVENT_ITEMWNDMOVEITEMIN, "Sys_ItemWindowMoveIn", "Sys_ItemWindowMoveIn")
		WndActiveItemWindow(parent, nil, id)
	else
		local t = SysItemWindowList[id].t
		table.insert(t, {this, func})
	end
	WndAddProperty(this, nil, "SysItemWindowID", tostring(id))
	local ItemId = RDItemCtrlGetGUIDataPropByType(this, nil, ITEMGUIDATA_ITEMID)
	if ItemId ~= 0 then
		local Count = RDItemCtrlGetGUIDataPropByType(this, nil, ITEMGUIDATA_ITEMCOUNT)
		local IsBound = RDItemCtrlGetGUIDataPropByType(this, nil, ITEMGUIDATA_ISSHOWBIND)
		local script = "RDItemCtrlSetGUIDataPropByItemID("..this..",nil,"..ItemId..","..Count..","..tostring(IsBound)..")"
		WndAddProperty(this, nil, "SysItemInitScript", script)
	end
	WndRegistScript(this, nil, RDWndBaseCL_mouse_lbDown, "Sys_ItemCtrlLButtonDown")
end
function Sys_GetItemWindowGUIDList(id)
	local ret = {}
	if SysItemWindowList[id] ~= nil then
		local t = SysItemWindowList[id].t
		for k, v in pairs(t) do
			local guid = RDItemCtrlGetGUIDataPropByType(v[1], nil, ITEMGUIDATA_ITEMGUID)
			if 0 ~= guid then
				table.insert(ret, guid)
			end
		end
	end
	return ret
end
function Sys_ItemWindowDestroy(this)
	for k, v in pairs(SysItemWindowList) do
		if this == v.tocken then
			SysItemWindowList[k] = nil
			WndCloseItemWindow(this, nil, k)
		break end
	end
end
function Sys_ItemWindowActive(this, active)
	if active == 0 then return end
	for k, v in pairs(SysItemWindowList) do
		if this == v.tocken then
			WndActiveItemWindow(handle, nil, k)
		break end
	end
end
function Sys_ItemWindowMoveIn()
	local id = LuaParam[1]
	local GUIData = LuaParam[2]
	if SysItemWindowList[id] == nil then return end
	local t = SysItemWindowList[id].t
	if not UI:Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMGUID) then return end
	local GUID = LuaRet
	if not UI:Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMID) then return end
	local ItemId = LuaRet
	if not UI:Lua_GetItemTemplatePropByID(ItemId, ITEM_PROP_KEYNAME) then return end
	local KeyName = LuaRet
	local ItemPos = nil
	if GUID ~= 0 and GUID ~= "" then
		if not UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_SITE) then return end
		ItemPos = LuaRet
	end
	if not UI:Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ISSHOWBIND) then return end
	local IsBound = LuaRet
	if not UI:Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMCOUNT) then return end
	local Count = LuaRet
	for k, v in pairs(t) do
		if v[2] ~= nil and v[2] ~= "" and WndGetVisible(v[1], nil) then
			local str = "func_movein = "..v[2]
			local func = loadstring(str)
			if nil ~= func then
				func()
				if true == func_movein(v[1], GUIData, false, GUID, ItemId, KeyName, ItemPos, IsBound, Count) then
					RDItemCtrlFillGUIData(v[1], nil, GUIData)
				break end
			end
		end
	end
end
function Sys_ItemCtrlLButtonDown(this)
	local id = WndGetProperty(this, nil, "SysItemWindowID")
	if id == "" then return end
	id = tonumber(id)
	if SysItemWindowList[id] == nil then return end
	local t = SysItemWindowList[id].t

	local guid = RDItemCtrlGetGUIDataPropByType(this, nil, ITEMGUIDATA_ITEMGUID)
	if UI:Lua_GetMouseGUIItemData() then
		local GUIData = LuaRet
		for k, v in pairs(t) do
			if this == v[1] then
				if v[2] ~= nil and v[2] ~= "" then
					local str = "func_movein = "..v[2]
					local func = loadstring(str)
					if nil ~= func then
						if not UI:Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMGUID) then return end
						local GUID = LuaRet
						if not UI:Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMID) then return end
						local ItemId = LuaRet
						if not UI:Lua_GetItemTemplatePropByID(ItemId, ITEM_PROP_KEYNAME) then return end
						local KeyName = LuaRet
						local ItemPos = nil
						if GUID ~= 0 and GUID ~= "" then
							if not UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_SITE) then return end
							ItemPos = LuaRet
						end
						if not UI:Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ISSHOWBIND) then return end
						local IsBound = LuaRet
						if not UI:Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMCOUNT) then return end
						local Count = LuaRet

						func()
						if true == func_movein(this, GUIData, true, GUID, ItemId, KeyName, ItemPos, IsBound, Count) then
							RDItemCtrlFillGUIData(this, nil, GUIData)
							UI:Lua_ClearMouseGUIItemData()
						break end
					end
				end
			break end
		end
	else
		local ItemInitScript = WndGetProperty(this, nil, "SysItemInitScript")
		if ItemInitScript == "" then
			RDItemCtrlClearGUIData(this, nil)
		else
			local func = loadstring(ItemInitScript)
			if nil ~= func then
				func()
			end
		end
	end
end
function Sys_ItemWindowGetAllItemGUIDList()
	local ret = {}
	for _, t in pairs(SysItemWindowList) do
		if type(t) == "table" and t.t ~= nil then
			for _, v in pairs(t.t) do
				local guid = RDItemCtrlGetGUIDataPropByType(v[1], nil, ITEMGUIDATA_ITEMGUID)
				if guid ~= "0" then
					table.insert(ret, {guid, v[1]})
				end
			end
		end
	end
	return ret
end
--注册物品更新和物品销毁事件
RegisterUIEvent(LUA_EVENT_ONITEMATTRCHANGE, "系统物品窗口属性改变", "Sys_ItemWindowOnItemAttrChange")
RegisterUIEvent(LUA_EVENT_ONITEMDESTROY, "系统物品窗口销毁", "Sys_ItemWindowOnItemDestory")

function Sys_ItemWindowOnItemAttrChange()
	local list = Sys_ItemWindowGetAllItemGUIDList()
	local guid = LuaParam[1]
	for _, v in pairs(list) do
		if guid == v[1] then
			RDItemCtrlSetGUIDataPropByGUID(v[2], nil, v[1])
		end
	end
end

function Sys_ItemWindowOnItemDestory()
	local list = Sys_ItemWindowGetAllItemGUIDList()
	local guid = LuaParam[1]
	for _, v in pairs(list) do
		if guid == v[1] then
			local this = v[2]
			local ItemInitScript = WndGetProperty(this, nil, "SysItemInitScript")
			if ItemInitScript == "" then
				RDItemCtrlClearGUIData(this, nil)
			else
				local func = loadstring(ItemInitScript)
				if nil ~= func then
					func()
				end
			end
		end
	end
end
