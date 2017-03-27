LuaUI["装备附魔"].OnInit = function(handle, param, x, y)
	WndCalSize(handle)
	CenterWnd(handle)
	WndSetFlags(handle, nil, flg_wndBase_autoTop)
	WndSetMoveWithLB(handle, nil, true)
	WndSetEscClose(handle, nil, true)
	for i = 2,12 do
		WndSetCanRevMsg(handle, "GUI_"..i, false)
	end
	ImageSetAroundImage(handle, "GUI_2", 1904400001, 1904400002, 1904400003, 1904400004, 1904400006, 1904400005, 1904400007, 1904400008, 1904400009)
	ImageSetAroundImage(handle, "GUI_6", 1903700005, 1903700007, 1903700011, 1903700009, 1903700013, 1903700006, 1903700010, 1903700012, 1903700008)
	ImageSetAroundImage(handle, "GUI_7", 1903700005, 1903700007, 1903700011, 1903700009, 1903700013, 1903700006, 1903700010, 1903700012, 1903700008)
	ImageSetAroundImage(handle, "GUI_8", 1903700005, 1903700007, 1903700011, 1903700009, 1903700013, 1903700006, 1903700010, 1903700012, 1903700008)
	local description = "1.放入附魔石和装备\n2.如装备已附魔,原属性会被替换"
	RichEditSetProp(handle, "Description", nil, false, false, "system", MakeARGB(255, 156, 150, 33), description)
	EditSetProp(handle, "GUI_9", nil, nil, false, true, MakeARGB(255, 215, 170, 117), false, "装备")
	EditSetProp(handle, "GUI_10", nil, nil, false, true, MakeARGB(255, 215, 170, 117), false, "附魔石")
	EditSetProp(handle, "GUI_11", nil, nil, false, false, MakeARGB(255, 215, 170, 117), false, "所需：")
	RDItemCtrlSetProp(handle, "Item0", nil, nil, nil, true, false, true)
	RDItemCtrlSetProp(handle, "Item1", nil, nil, nil, true, false, true)
	WndOpenItemWindow(handle, nil, ITEMWINDOW_ZHUANGBEIFUMO, "LuaUI[\"装备附魔\"].GetItemGUIDList")
	RegisterUIEvent(LUA_EVENT_ITEMWNDMOVEITEMIN, "装备附魔物品窗口", LuaUI["装备附魔"].ItemMoveIn)
	RegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "装备附魔表单反馈", LuaUI["装备附魔"].OnResult)

	--显示金币
	local color = MakeARGB(255, 215, 0, 0)
	if as3.tolua(UI:Lua_GetPlayerSelfProperty64(ROLE_PROP64_GOLD)) then
		if string.len(as3.tolua(LuaRet)) > 4 or (string.len(as3.tolua(LuaRet)) == 4 and as3.tolua(LuaRet) >= "5000") then color = MakeARGB(255, 0, 215, 0) end
	end
	EditSetProp(handle, "EditCost", nil, nil, false, false, color, false, "5,000")
end

LuaUI["装备附魔"].OnActive = function(handle, param, x, y)
	WndActiveItemWindow(handle, nil, ITEMWINDOW_ZHUANGBEIFUMO)
end

LuaUI["装备附魔"].OnClose = function(handle, param, x, y)
	WndCloseItemWindow(handle, nil, ITEMWINDOW_ZHUANGBEIFUMO)
	UnRegisterUIEvent(LUA_EVENT_ITEMWNDMOVEITEMIN, "装备附魔物品窗口")
	UnRegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "装备附魔表单反馈")
end

LuaUI["装备附魔"]["Close"].OnLButtonUp = function(handle, param, x, y)
	if WndPtInWindow(handle, nil, x, y) then WndClose(handle, "parent") end
end

LuaUI["装备附魔"]["Cancel"].OnLButtonUp = function(handle, param, x, y)
	if WndPtInWindow(handle, nil, x, y) then WndClose(handle, "parent") end
end

LuaUI["装备附魔"]["Ok"].OnLButtonUp = function(handle, param, x, y)
	if WndPtInWindow(handle, nil, x, y) then
		local guid1 = RDItemCtrlGetGUIDataPropByType(handle, "parent,Item0", ITEMGUIDATA_ITEMGUID)
		local guid2 = RDItemCtrlGetGUIDataPropByType(handle, "parent,Item1", ITEMGUIDATA_ITEMGUID)
		if guid1 == "0" then
			MessageBox(MESSAGE_STYLE_OK, "请放入装备！")
		return end
		if guid2 == "0" then
			if not LuaUI["装备附魔"].IsHaveFumoshi() then
				UI:Lua_GenForm("快捷购买#附魔石")
			return end
			MessageBox(MESSAGE_STYLE_OK, "请放入附魔石！")
		return end
		local site1, site2
		if as3.tolua(UI:Lua_GetItemEntityPropByGUID(guid1, ITEM_PROP_ENTITY_SITE)) then site1 = as3.tolua(LuaRet) end
		if as3.tolua(UI:Lua_GetItemEntityPropByGUID(guid2, ITEM_PROP_ENTITY_SITE)) then site2 = as3.tolua(LuaRet) end
		if site1 ~= nil and site2 ~= nil then UI:Lua_SubmitForm("装备附魔表单", "main", site1.."#"..site2)
		else msg("未知错误") end
	end
end

LuaUI["装备附魔"]["Item0"].OnLButtonDown = function(handle, param, x, y)
	if as3.tolua(UI:Lua_GetMouseGUIItemData()) then
		local _GUIDataHandle = as3.tolua(LuaRet)
		if _GUIDataHandle ~= 0 and as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID)) then
			local itemid = as3.tolua(LuaRet)
			if not as3.tolua(UI:Lua_GetItemTemplatePropByID(itemid, ITEM_PROP_TYPE)) then return end
			local item_type = as3.tolua(LuaRet)
			if not as3.tolua(UI:Lua_GetItemTemplatePropByID(itemid, ITEM_PROP_SUBTYPE)) then return end
			local item_subtype = as3.tolua(LuaRet)
			if item_type ~= ITEM_TYPE_EQUIP or item_subtype == EQUIP_JUJU or item_subtype == EQUIP_MOUNT then
				MessageBox(MESSAGE_STYLE_OK, "请放入装备！")
			else
				RDItemCtrlFillGUIData(handle, nil, _GUIDataHandle)
			end
			UI:Lua_ClearMouseGUIItemData()
		end
	else
		RDItemCtrlClearGUIData(handle, nil)
	end
end

LuaUI["装备附魔"]["Item0"].OnRButtonUp = function(handle, param, x, y)
	RDItemCtrlClearGUIData(handle, nil)
end

LuaUI["装备附魔"]["Item1"].OnLButtonDown = function(handle, param, x, y)
	if as3.tolua(UI:Lua_GetMouseGUIItemData()) then
		local _GUIDataHandle = as3.tolua(LuaRet)
		if _GUIDataHandle ~= 0 and as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID)) then
			local itemid = as3.tolua(LuaRet)
			if not as3.tolua(UI:Lua_GetItemTemplatePropByID(itemid, ITEM_PROP_TYPE)) then return end
			local item_type = as3.tolua(LuaRet)
			if not as3.tolua(UI:Lua_GetItemTemplatePropByID(itemid, ITEM_PROP_SUBTYPE)) then return end
			local item_subtype = as3.tolua(LuaRet)
			if item_type ~= ITEM_TYPE_MATERIAL or item_subtype ~= 20 then
				MessageBox(MESSAGE_STYLE_OK, "请放入附魔石！")
			else
				RDItemCtrlFillGUIData(handle, nil, _GUIDataHandle)
			end
			UI:Lua_ClearMouseGUIItemData()
		end
	else
		RDItemCtrlClearGUIData(handle, nil)
	end
end

LuaUI["装备附魔"]["Item1"].OnRButtonUp = function(handle, param, x, y)
	RDItemCtrlClearGUIData(handle, nil)
end

LuaUI["装备附魔"].GetItemGUIDList = function()
	local ret = {}
	local handle = GetWindow(nil, "装备附魔")
	if handle ~= 0 then
		ret[1] = RDItemCtrlGetGUIDataPropByType(handle, "Item0", ITEMGUIDATA_ITEMGUID)
		ret[2] = RDItemCtrlGetGUIDataPropByType(handle, "Item1", ITEMGUIDATA_ITEMGUID)
	end
	return ret
end

LuaUI["装备附魔"].ItemMoveIn = function()
	local _ItemWindowId = as3.tolua(LuaParam[1])
	local _GUIDataHandle = as3.tolua(LuaParam[2])
	if _ItemWindowId ~= ITEMWINDOW_ZHUANGBEIFUMO then return end
	local handle = GetWindow(nil, "装备附魔")
	if handle ~= 0 and as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID)) then
		local itemid = as3.tolua(LuaRet)
		if not as3.tolua(UI:Lua_GetItemTemplatePropByID(itemid, ITEM_PROP_TYPE)) then return end
		local item_type = as3.tolua(LuaRet)
		if not as3.tolua(UI:Lua_GetItemTemplatePropByID(itemid, ITEM_PROP_SUBTYPE)) then return end
		local item_subtype = as3.tolua(LuaRet)
		if item_type == ITEM_TYPE_EQUIP and item_subtype ~= EQUIP_JUJU and item_subtype ~= EQUIP_MOUNT then
			RDItemCtrlFillGUIData(handle, "Item0", _GUIDataHandle)
		elseif item_type == ITEM_TYPE_MATERIAL and item_subtype == 20 then
			RDItemCtrlFillGUIData(handle, "Item1", _GUIDataHandle)
		else
			msg("请放入装备或附魔石！")
		end
	end
end

LuaUI["装备附魔"].OnResult = function()
	if as3.tolua(LuaParam[1]) ~= "装备附魔表单" then return end
	if as3.tolua(LuaParam[2]) ~= "" then return end
	RDItemCtrlClearGUIData(nil, "装备附魔,Item1")
end

LuaUI["装备附魔"].IsHaveFumoshi = function()
	if as3.tolua(UI:Lua_GetPackageItemGUIDList()) then
		local t = as3.tolua(LuaRet)
		for i = 1, #t do
			if as3.tolua(UI:Lua_GetItemEntityPropByGUID(t[i], ITEM_PROP_KEYNAME)) then
				if as3.tolua(LuaRet) == "附魔石" then
					return true
				end
			end
		end
	end
	return false
end