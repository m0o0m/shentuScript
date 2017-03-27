zbhc = 
{
	type = 0,
	page = 1,
	select_page = 1,
	select_pos = -1,
	ex_show = false,
	data = {},
	current = 1,
}

LuaUI["装备合成"].OnInit = function(this)
	zbhc.data = {}
	zbhc.type = as3.tolua(LuaParam[3])
	local func = loadstring("zbhc.data[1]="..as3.tolua(LuaParam[2]))
	func()

	WndSetCanRevMsg(this, "GUI_2", false)
	WndSetCanRevMsg(this, "Title", false)
	WndSetCanRevMsg(this, "Split", false)
	WndSetCanRevMsg(this, "Select", false)
	for i = 1, 20 do
		WndSetCanRevMsg(this, "Back"..i, false)
		WndSetCanRevMsg(this, "Fore"..i, false)
		WndSetParam(this, "Item"..i, i)
		RDItemCtrlSetProp(this, "Item"..i, true, true, true, true, false, true)
	end
	
	WndSetCanRevMsg(this, "GUI_3", false)
	WndSetCanRevMsg(this, "TitleEx", false)
	for i = 1, 10 do
		WndSetCanRevMsg(this, "BackEx"..i, false)
		WndSetCanRevMsg(this, "ForeEx"..i, false)
		WndSetCanRevMsg(this, "CountEx"..i, false)
		WndSetCanRevMsg(this, "DescEx"..i, false)
		RDItemCtrlSetProp(this, "ItemEx"..i, true, true, true, true, false, true)
	end
	WndSetCanRevMsg(this, "ImgBackEx1", false)
	WndSetCanRevMsg(this, "ImgBackEx2", false)
	WndSetCanRevMsg(this, "EditEx1", false)
	WndSetCanRevMsg(this, "EditEx2", false)

	WndSetText(this, "Page1", "极")
	WndSetTextColor(this, "Page1", 4294417725)
	WndSetText(this, "Page2", "珍")
	WndSetTextColor(this, "Page2", 4294417725)
	WndSetText(this, "Page3", "绝")
	WndSetTextColor(this, "Page3", 4294417725)
	WndSetText(this, "Page4", "神")
	WndSetTextColor(this, "Page4", 4294417725)
	WndSetCanRevMsg(this, "EditPage", false)
	WndSetEnable(this, "EditPage", false)
	
	RegisterUIEvent(LUA_EVENT_ITEMWNDMOVEITEMIN, "装备合成物品窗口", LuaUI["装备合成"].ItemMoveIn)
	RegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "装备合成表单反馈", LuaUI["装备合成"].OnResult)

	zbhc.page = 1
	zbhc.select_pos = -1
	zbhc.ex_show = false
	zbhc.current = 1
	WndCalSize(this)
	LuaUI["装备合成"].Update()
	CenterWnd(this)
	WndSetFlags(this, nil, flg_wndBase_autoTop)
	WndSetMoveWithLB(this, nil, true)
	WndSetEscClose(this, nil, true)
end

LuaUI["装备合成"].OnActive = function(this, param, x, y)
	if zbhc.ex_show then
		WndActiveItemWindow(this, nil, ITEMWINDOW_ZHUANGBEIHECHENG)
	end
end

LuaUI["装备合成"].OnClose = function(this, param, x, y)
	WndCloseItemWindow(this, nil, ITEMWINDOW_ZHUANGBEIHECHENG)
	UnRegisterUIEvent(LUA_EVENT_ITEMWNDMOVEITEMIN, "装备合成物品窗口")
	UnRegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "装备合成表单反馈")
end

LuaUI["装备合成"]["Close"].OnLButtonUp = function(this, param, x, y)
	if WndPtInWindow(this, nil, x, y) then
		zbhc.data = {}
		WndClose(this, "parent")
	end
end

LuaUI["装备合成"]["CloseEx"].OnLButtonUp = function(this, param, x, y)
	if WndPtInWindow(this, nil, x, y) then
		zbhc.ex_show = false
		WndCloseItemWindow(this, nil, ITEMWINDOW_ZHUANGBEIHECHENG)
		LuaUI["装备合成"].Update()
	end
end

LuaUI["装备合成"]["Ok"].OnLButtonUp = function(this, param, x, y)
	if not WndPtInWindow(this, nil, x, y) then return end
	this = GetWindow(this, "parent")
	if zbhc.select_pos <= 0 then
		MessageBox(MESSAGE_STYLE_OK, "请选择要合成的装备")
	return end
	zbhc.page = zbhc.select_page
	zbhc.current = 1
	local sel = zbhc.select_pos
	while sel > 20 do
		zbhc.current = zbhc.current + 1
		sel = sel - 20
	end
	if false == zbhc.ex_show then
		zbhc.ex_show = true
		WndOpenItemWindow(this, nil, ITEMWINDOW_ZHUANGBEIHECHENG, "LuaUI[\"装备合成\"].GetItemGUIDList")
	end
	LuaUI["装备合成"].Update()
	local key_name = nil
	for k, v in pairs(zbhc.data[zbhc.page]) do
		if v[1] == zbhc.select_pos then
			key_name = v[4]
		break end
	end
	local t = {}
	for i = 1, 10 do
		if not WndGetVisible(this, "ItemEx"..i) then break end
		local guid = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..i, ITEMGUIDATA_ITEMGUID)
		if 0 == guid or "0" == guid then
			MessageBox(MESSAGE_STYLE_OK, "#COLORCOLOR_BROWN#请放满合成#COLORCOLOR_YELLOW#【"..key_name.."】#COLORCOLOR_BROWN#所需要的材料装备")
		return end
		t[i] = guid
	end
	local data = {}
	for k, v in pairs(t) do
		if as3.tolua(UI:Lua_GetItemEntityPropByGUID(v, ITEM_PROP_ENTITY_SITE)) then
			data[k] = as3.tolua(LuaRet)
		else
			log("获取物品SITE属性失败!")
		end
	end
	local info = serialize(data)
	info = string.gsub(info, "\r", "")
	info = string.gsub(info, "\n", "")
	local script_text = "UI:Lua_SubmitForm(\"装备合成表单\",\"querenhecheng\",\""..zbhc.type.."#"..zbhc.page.."#"..key_name.."#"..info.."\")"

	--精炼等级以及属性
	local refine = 0
	local index = 1
	for i = 1, #t do
		if as3.tolua(UI:Lua_GetItemEntityPropByGUID(t[i],ITEM_PROP_EQUIP_REFINELEVEL)) then
			local level = as3.tolua(LuaRet)
			if level > refine then
				refine = level
				index = i
			end
		end
	end

	local str = ""
	local str1 = ""
	if refine > 0 then
		str = " +"..refine
		if as3.tolua(UI:Lua_GetItemEntityPropByGUID(t[index], ITEM_PROP_EQUIP_REFINEDATA)) then
			local __refine = as3.tolua(LuaRet)
			local _refine_attr_table = {}
			_refine_attr_table[ROLE_PROP32_MAX_HP_PCT] = "HP上限"
			_refine_attr_table[ROLE_PROP32_MAX_MP_PCT] = "MP上限"
			_refine_attr_table[ROLE_PROP32_MAX_PHY_DEF_PCT] = "物防上限"
			_refine_attr_table[ROLE_PROP32_MAX_MAG_DEF_PCT] = "魔防上限"
			_refine_attr_table[ROLE_PROP32_MAX_PHY_ATK_PCT] = "物攻上限"
			_refine_attr_table[ROLE_PROP32_MAX_MAG_ATK_PCT] = "魔攻上限"
			_refine_attr_table[ROLE_PROP32_MAX_TAO_ATK_PCT] = "道术上限"
			if __refine ~= nil and __refine[1][PROPERTY_ATTR_NAME] ~= 0 and __refine[1][PROPERTY_ATTR_VALUE] ~= 0 then
				local r_name = _refine_attr_table[__refine[1][PROPERTY_ATTR_NAME]]
				local r_value = __refine[1][PROPERTY_ATTR_VALUE]
				if r_name ~= nil then
					str1 = str1.."#COLORCOLOR_GRAY#属性："..r_name.." +"..r_value.."% "
				end
			end
		end
		str1 = str1.."#COLORCOLOR_BROWN#"
	end

	MessageBox(MESSAGE_STYLE_OKCANCEL, "#COLORCOLOR_BROWN#是否确认合成装备#COLORCOLOR_YELLOW#【"..key_name..str.."】#COLORCOLOR_BROWN#"..str1.."吗？\n\n#COLORCOLOR_RED#合成后的装备的精炼等级和属性与当前放入的最大精炼等级的装备相同！", script_text)
end

LuaUI["装备合成"]["BtnPrev"].OnLButtonUp = function(this, param, x, y)
	if not WndPtInWindow(this, nil, x, y) then return end
	zbhc.current = zbhc.current - 1
	LuaUI["装备合成"].Update()
end

LuaUI["装备合成"]["BtnNext"].OnLButtonUp = function(this, param, x, y)
	if not WndPtInWindow(this, nil, x, y) then return end
	zbhc.current = zbhc.current + 1
	LuaUI["装备合成"].Update()
end

LuaUI["装备合成"].RegisterEvents = function()
	for i = 1, 4 do
		LuaUI["装备合成"]["Page"..i].OnLButtonUp = function(this, param, x, y)
			if WndPtInWindow(this, nil, x, y) then
				zbhc.page = i
				zbhc.current = 1
				LuaUI["装备合成"].Update()
			end
		end
	end

	for i = 1, 20 do
		LuaUI["装备合成"]["Item"..i].OnLButtonUp = function(this, param, x, y)
			if WndPtInWindow(this, nil, x, y) then
				zbhc.select_page = zbhc.page
				zbhc.select_pos = (zbhc.current - 1) * 20 + WndGetParam(this, nil)
				zbhc.ex_show = true
				WndOpenItemWindow(this, nil, ITEMWINDOW_ZHUANGBEIHECHENG, "LuaUI[\"装备合成\"].GetItemGUIDList")
				LuaUI["装备合成"].Update()
			end
		end
	end

	for i = 1, 10 do
		LuaUI["装备合成"]["ItemEx"..i].OnLButtonDown = function(this, param, x, y)
			if as3.tolua(UI:Lua_GetMouseGUIItemData()) then
				local _GUIDataHandle = as3.tolua(LuaRet)
				if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID)) then
					local item_id = as3.tolua(LuaRet)
					
					if not as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMGUID)) then return end
					local item_guid = as3.tolua(LuaRet) --获取物品GUID
					if not as3.tolua(UI:Lua_GetItemEntityPropByGUID(item_guid, ITEM_PROP_ENTITY_SITE)) then return end
					local item_pos = as3.tolua(LuaRet) --获取物品所在位置
					if GetItemPosType(item_pos) ~= PACKAGE_POS then
						MessageBox(MESSAGE_STYLE_OK, "请将物品移动到包裹后放入")
					return end

					local need_id = RDItemCtrlGetGUIDataPropByType(this, nil, ITEMGUIDATA_ITEMID)
					if need_id == item_id then
						RDItemCtrlFillGUIData(this, nil, _GUIDataHandle)
						UI:Lua_ClearMouseGUIItemData()
						LuaUI["装备合成"].Update()
					else
						UI:Lua_GetItemTemplatePropByID(need_id, ITEM_PROP_KEYNAME)
						MessageBox(MESSAGE_STYLE_OK, "#COLORCOLOR_BROWN#放入的装备不合法，请放入#COLORCOLOR_YELLOW#【"..as3.tolua(LuaRet).."】")
					end
				end
			else
				RDItemCtrlClearGUIData(this, nil)
				LuaUI["装备合成"].Update()
			end
		end
		LuaUI["装备合成"]["ItemEx"..i].OnRButtonUp = function(this, param, x, y)
			if WndPtInWindow(this, nil, x, y) then
				RDItemCtrlClearGUIData(this, nil)
				LuaUI["装备合成"].Update()
			end
		end
	end
end
LuaUI["装备合成"].RegisterEvents()



LuaUI["装备合成"].Update = function()
	local this = GetWindow(nil, "装备合成")
	if 0 == this then return end

	if zbhc.page < 1 or zbhc.page > 4 then
		zbhc.page = 1
		zbhc.current = 1
	end

	-- Update page buttons
	for i = 1, 4 do
		ButtonSetIsActivePageBtn(this, "Page"..i, false)
	end
	ButtonSetIsActivePageBtn(this, "Page"..zbhc.page, true)
	
	-- Update the select picture
	local is_show = false
	if zbhc.page == zbhc.select_page and zbhc.select_pos >= 1 then
		is_show = true
	end

	WndSetVisible(this, "Select", false)
	if is_show then
		local pos = zbhc.select_pos - (zbhc.current - 1) * 20
		if pos >= 1 and pos <= 20 then
			local x, y = WndGetPos(this, "Back"..pos)
			WndSetPos(this, "Select", x, y)
			WndSetVisible(this, "Select", true)
		end
	end

	-- Update the next page controls
	is_show = zbhc.ex_show
	WndSetVisible(this, "GUI_3", is_show)
	WndSetVisible(this, "TitleEx", is_show)
	WndSetVisible(this, "CloseEx", is_show)
	for i = 1, 10 do
		WndSetVisible(this, "BackEx"..i, is_show)
		WndSetVisible(this, "CountEx"..i, is_show)
		EditSetProp(this, "DescEx"..i, is_show, false, false, false, MakeARGB(255, 215, 170, 113), false, "--/--")
		WndSetVisible(this, "ForeEx"..i, false)
		WndSetVisible(this, "ItemEx"..i, false)
		if not is_show then
			RDItemCtrlClearGUIData(this, "ItemEx"..i)
		end
	end
	WndSetVisible(this, "EditBackEx1", false)
	WndSetVisible(this, "EditBackEx2", false)
	WndSetVisible(this, "ImgBackEx1", false)
	WndSetVisible(this, "ImgBackEx2", false)
	WndSetVisible(this, "EditEx1", false)
	WndSetVisible(this, "EditEx2", false)
	local cx, cy = WndGetSize(this, nil)
	if is_show then
		WndSetSize(this, nil, 528, cy)
	else
		WndSetSize(this, nil, 264, cy)
	end

	-- Update the data to be shown
	for i = 1, 20 do
		WndSetVisible(this, "Fore"..i, false)
		WndSetVisible(this, "Item"..i, false)
		RDItemCtrlClearGUIData(this, "Item"..i)
	end

	if zbhc.data[zbhc.page] == nil then
		UI:Lua_SubmitForm("装备合成表单", "zhuangbei_hecheng", zbhc.type.."#"..zbhc.page.."#zbhc.data["..zbhc.page.."]=")
	else
		--更新主面板内容
		local max_pos = 0
		for k, v in pairs(zbhc.data[zbhc.page]) do
			local pos = v[1] - (zbhc.current - 1) * 20
			if pos >= 1 and pos <= 20 then
				WndSetVisible(this, "Fore"..pos, true)
				WndSetVisible(this, "Item"..pos, true)
				RDItemCtrlSetGUIDataPropByKeyName(this, "Item"..pos, v[4], 1, false)
			end
			max_pos = math.max(v[1], max_pos)
		end

		--更新翻页按钮
		WndSetEnable(this, "BtnPrev", (zbhc.current > 1))
		local cur = 1
		while max_pos > 20 do
			cur = cur + 1
			max_pos = max_pos - 20
		end
		WndSetEnable(this, "BtnNext", (zbhc.current < cur))
		EditSetText(this, "EditPage", zbhc.current.." / "..cur)

		local check = (zbhc.select_page >= 1 and zbhc.select_page <= 4)
		if true == zbhc.ex_show and check and zbhc.data[zbhc.select_page] ~= nil then
			local t = nil
			for k, v in pairs(zbhc.data[zbhc.select_page]) do
				if v[1] == zbhc.select_pos then
					t = v
				break end
			end
			if t ~= nil then
				--显示其它内容
				local index = 0
				for i = 5, #t do
					index = index + 1
					local need_clear = true
					local guid = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..index, ITEMGUIDATA_ITEMGUID)
					if 0 ~= guid and "0" ~= guid then
						if as3.tolua(UI:Lua_GetItemEntityPropByGUID(guid, ITEM_PROP_KEYNAME)) and as3.tolua(LuaRet) == t[i] then
							need_clear = false
						end
					end
					if need_clear then
						RDItemCtrlClearGUIData(this, "ItemEx"..index)
						RDItemCtrlSetGUIDataPropByKeyName(this, "ItemEx"..index, t[i], 0, false)
						EditSetText(this, "DescEx"..index, "0 / 1")
						EditSetTextColor(this, "DescEx"..index, MakeARGB(255, 255, 0, 0))
					else
						local count = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..index, ITEMGUIDATA_ITEMCOUNT)
						EditSetText(this, "DescEx"..index, count.." / 1")
						EditSetTextColor(this, "DescEx"..index, MakeARGB(255, 0, 255, 0))
					end
					WndSetVisible(this, "ForeEx"..index, true)
					WndSetVisible(this, "ItemEx"..index, true)
				end

				local base = 1
				local __color = { [true] = MakeARGB(255, 0, 255, 0), [false] = MakeARGB(255, 255, 0, 0) }
				if t[2] > 0 then
					local cur_gold = 0           --玩家当前金币数量
					if as3.tolua(UI:Lua_GetPlayerSelfProperty64(ROLE_PROP64_GOLD)) then
						cur_gold = tonumber(as3.tolua(LuaRet))
					end
					WndSetVisible(this, "ImgBackEx"..base, true)
					EditSetProp(this, "EditBackEx"..base, true, false, false, false, MakeARGB(255, 215, 170, 113), false, "需要金币")
					EditSetProp(this, "EditEx"..base, true, true, false, false, __color[cur_gold >= t[2]], false, GetGoldString(t[2]))
					base = base + 1
				end
				if t[3] > 0 then
					local cur_yuan = 0           --玩家当前元宝数量
					if as3.tolua(UI:Lua_GetPlayerSelfProperty64(ROLE_PROP64_INGOT)) then
						cur_yuan = tonumber(as3.tolua(LuaRet))
					end
					WndSetVisible(this, "ImgBackEx"..base, true)
					EditSetProp(this, "EditBackEx"..base, true, false, false, false, MakeARGB(255, 215, 170, 113), false, "需要元宝")
					EditSetProp(this, "EditEx"..base, true, true, false, false, __color[cur_yuan >= t[3]], false, GetGoldString(t[3]))
					base = base + 1
				end
			end
		end
	end
end

LuaUI["装备合成"].GetItemGUIDList = function()
	local t = {}
	local this = GetWindow(nil, "装备合成")
	if 0 ~= this and true == zbhc.ex_show then
		for i = 1, 10 do
			local guid = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..i, ITEMGUIDATA_ITEMGUID)
			if guid ~= 0 and guid ~= "0" then
				table.insert(t, guid)
			end
		end
	end
	return t
end

LuaUI["装备合成"].ItemMoveIn = function()
	local _ItemWindowId = as3.tolua(LuaParam[1])
	local _GUIDataHandle = as3.tolua(LuaParam[2])
	if _ItemWindowId ~= ITEMWINDOW_ZHUANGBEIHECHENG then return end
	local this = GetWindow(nil, "装备合成")
	if 0 == this or not zbhc.ex_show then return end
	if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID)) then
		local item_id = as3.tolua(LuaRet)
		if not as3.tolua(UI:Lua_GetItemTemplatePropByID(item_id, ITEM_PROP_KEYNAME)) then return end
		local key_name = as3.tolua(LuaRet)

		local moved = false
		for i = 1, 10 do
			local guid = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..i, ITEMGUIDATA_ITEMGUID)
			if "0" == guid then
				if RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..i, ITEMGUIDATA_ITEMID) == item_id then
					RDItemCtrlFillGUIData(this, "ItemEx"..i, _GUIDataHandle)
					LuaUI["装备合成"].Update()
					moved = true
				break end
			end
		end

		if false == moved then
			MessageBox(MESSAGE_STYLE_OK, "1.请放入合成装备所需物品\n2.确保物品装备格子有空余")
		end
	end
end

LuaUI["装备合成"].OnResult = function()
	if as3.tolua(LuaParam[1]) ~= "装备合成表单" then return end
	if as3.tolua(LuaParam[2]) ~= "[装备合成成功！]" then return end
	for i = 1, 10 do
		RDItemCtrlClearGUIData(nil, "装备合成,ItemEx"..i)
	end
	LuaUI["装备合成"].Update()
end