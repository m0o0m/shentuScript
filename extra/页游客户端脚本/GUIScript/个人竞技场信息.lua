LuaUI["个人竞技场信息"].OnInit = function(handle)
	WndCalSize(handle)
	CenterWnd(handle)
	WndSetFlags(handle, nil, flg_wndBase_autoTop)
	WndSetMoveWithLB(handle, nil, true)
	WndSetEscClose(handle, nil, true)
	WndSetCanRevMsg(handle, "GUI_2", false)
	WndSetCanRevMsg(handle, "GUI_3", false)
	WndSetCanRevMsg(handle, "Image", false)

	local name = ""
	local info = ""
	local desc = ""
	if as3.tolua(UI:Lua_GetPlayerSelfPropBase(ROLE_PROP_ROLENAME)) then name = as3.tolua(LuaRet) end
	if as3.tolua(UI:Lua_GetPlayerSelfProperty32(ROLE_PROP32_LEVEL)) then info = info.."LV."..as3.tolua(LuaRet) end
	if as3.tolua(UI:Lua_GetPlayerSelfPropBase(ROLE_PROP_JOB)) then info = info.." "..RDJOBName[as3.tolua(LuaRet)] end
	desc = "#COLORCOLOR_GOLD#对手：#COLORCOLOR_BROWN#系统匹配中#COLOREND#"
	
	local width, height = WndGetSize(handle, "Edit")
	local x, y = math.floor((width - GetStrWidth(name)) / 2), 4
	local str = "#COLORCOLOR_GOLD##POS<X:"..x..",Y:"..y..">#"..name.."#COLOREND#"
	x, y = math.floor((width - GetStrWidth(info)) / 2), 22
	str = str.."#COLORCOLOR_BROWN##POS<X:"..x..",Y:"..y..">#"..info.."#COLOREND#"
	RichEditSetProp(handle, "Edit", nil, nil, false, "system", nil, str)
	RichEditSetProp(handle, "EditDesc", nil, nil, false, "system", nil, desc)
end

LuaUI["个人竞技场信息"]["Close"].OnLButtonUp = function(handle, param, x, y)
	if WndPtInWindow(handle, nil, x, y) then WndClose(handle, "parent") end
end

LuaUI["个人竞技场信息"]["Ok"].OnLButtonUp = function(handle, param, x, y)
	if WndPtInWindow(handle, nil, x, y) then
		UI:Lua_SubmitForm("个人竞技场表单", "leitairuchang1", "")
		WndClose(handle, "parent")
	end
end