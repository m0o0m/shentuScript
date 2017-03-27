djhc = 
{
	page = 1,
	select_page = 1,
	select_pos = -1,
	ex_show = false,
	data = {},
	current = 1,
}

LuaUI["道具合成"].OnInit = function(this)
	djhc.data = {}
	local func = loadstring("djhc.data[1]="..LuaParam[2])
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

	WndSetText(this, "Page1", "鉴定")
	WndSetTextColor(this, "Page1", 4294417725)
	WndSetText(this, "Page2", "辨识")
	WndSetTextColor(this, "Page2", 4294417725)
	WndSetText(this, "Page3", "其它1")
	WndSetTextColor(this, "Page3", 4294417725)
    WndSetText(this, "Page4", "其它2")
	WndSetTextColor(this, "Page4", 4294417725)
	WndSetCanRevMsg(this, "EditPage", false)
	WndSetEnable(this, "EditPage", false)
	
	RegisterUIEvent(LUA_EVENT_ITEMWNDMOVEITEMIN, "道具合成道具窗口", LuaUI["道具合成"].ItemMoveIn)
	RegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "道具合成表单反馈", LuaUI["道具合成"].OnResult)

	djhc.page = 1
	djhc.select_pos = -1
	djhc.ex_show = false
	djhc.current = 1
	WndCalSize(this)
	LuaUI["道具合成"].Update()
	CenterWnd(this)
	WndSetFlags(this, nil, flg_wndBase_autoTop)
	WndSetMoveWithLB(this, nil, true)
	WndSetEscClose(this, nil, true)
end

LuaUI["道具合成"].OnActive = function(this, param, x, y)
	if djhc.ex_show then
		WndActiveItemWindow(this, nil, ITEMWINDOW_DAOJUHECHENG)
	end
end

LuaUI["道具合成"].OnClose = function(this, param, x, y)
	WndCloseItemWindow(this, nil, ITEMWINDOW_DAOJUHECHENG)
	UnRegisterUIEvent(LUA_EVENT_ITEMWNDMOVEITEMIN, "道具合成道具窗口")
	UnRegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "道具合成表单反馈")
end

LuaUI["道具合成"]["Close"].OnLButtonUp = function(this, param, x, y)
	if WndPtInWindow(this, nil, x, y) then
		djhc.data = {}
		WndClose(this, "parent")
	end
end

LuaUI["道具合成"]["CloseEx"].OnLButtonUp = function(this, param, x, y)
	if WndPtInWindow(this, nil, x, y) then
		djhc.ex_show = false
		WndCloseItemWindow(this, nil, ITEMWINDOW_DAOJUHECHENG)
		LuaUI["道具合成"].Update()
	end
end

LuaUI["道具合成"]["Ok"].OnLButtonUp = function(this, param, x, y)
	if not WndPtInWindow(this, nil, x, y) then return end
	this = GetWindow(this, "parent")
	if djhc.select_pos <= 0 then
		MessageBox(MESSAGE_STYLE_OK, "请选择要合成的道具")
	return end
	djhc.page = djhc.select_page
	djhc.current = 1
	local sel = djhc.select_pos
	while sel > 20 do
		djhc.current = djhc.current + 1
		sel = sel - 20
	end
	if false == djhc.ex_show then
		djhc.ex_show = true
		WndOpenItemWindow(this, nil, ITEMWINDOW_DAOJUHECHENG, "LuaUI[\"道具合成\"].GetItemGUIDList")
	end
	LuaUI["道具合成"].Update()
	local key_name = nil
	for k, v in pairs(djhc.data[djhc.page]) do
		if v[1] == djhc.select_pos then
			key_name = v[4]
		break end
	end
	local t = {}
	for i = 1, 10 do
		if not WndGetVisible(this, "ItemEx"..i) then break end
		local guid = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..i, ITEMGUIDATA_ITEMGUID)
		if 0 == guid or "0" == guid then
			MessageBox(MESSAGE_STYLE_OK, "#COLORCOLOR_BROWN#请放满合成#COLORCOLOR_YELLOW#【"..key_name.."】#COLORCOLOR_BROWN#所需要的材料道具")
		return end
		t[i] = guid
	end
	local bind = false
	local data = {}
	for k, v in pairs(t) do
		if UI:Lua_GetItemEntityPropByGUID(v, ITEM_PROP_ENTITY_SITE) then
			data[k] = LuaRet
		else
			log("获取道具SITE属性失败!")
		return end
		if not bind then
			if UI:Lua_GetItemEntityPropByGUID(v, ITEM_PROP_ENTITY_IS_BOUND) and true == LuaRet then
				bind = true
			end
		end
	end
	local info = serialize(data)
	info = string.gsub(info, "\r", "")
	info = string.gsub(info, "\n", "")
	local script_text = "UI:Lua_SubmitForm(\"道具合成表单\",\"querenhecheng\",\""..djhc.page.."#"..key_name.."#"..info.."\")"
	local text
	if bind then
		text = "#COLORCOLOR_BROWN#你的合成材料中有绑定物品，合成结果将为绑定，是否确定合成道具#COLORCOLOR_YELLOW#【"..key_name.."】(绑定) #COLORCOLOR_BROWN#吗？"
	else
		text = "#COLORCOLOR_BROWN#是否确定合成道具#COLORCOLOR_YELLOW#【"..key_name.."】#COLORCOLOR_BROWN#吗？"
	end
	MessageBox(MESSAGE_STYLE_OKCANCEL, text, script_text)
end

LuaUI["道具合成"]["BtnPrev"].OnLButtonUp = function(this, param, x, y)
	if not WndPtInWindow(this, nil, x, y) then return end
	djhc.current = djhc.current - 1
	LuaUI["道具合成"].Update()
end

LuaUI["道具合成"]["BtnNext"].OnLButtonUp = function(this, param, x, y)
	if not WndPtInWindow(this, nil, x, y) then return end
	djhc.current = djhc.current + 1
	LuaUI["道具合成"].Update()
end

LuaUI["道具合成"].RegisterEvents = function()
	for i = 1, 4 do
		LuaUI["道具合成"]["Page"..i].OnLButtonUp = function(this, param, x, y)
			if WndPtInWindow(this, nil, x, y) then
				djhc.page = i
				djhc.current = 1
				LuaUI["道具合成"].Update()
			end
		end
	end

	for i = 1, 20 do
		LuaUI["道具合成"]["Item"..i].OnLButtonUp = function(this, param, x, y)
			if WndPtInWindow(this, nil, x, y) then
				djhc.select_page = djhc.page
				djhc.select_pos = (djhc.current - 1) * 20 + WndGetParam(this, nil)
				djhc.ex_show = true
				WndOpenItemWindow(this, nil, ITEMWINDOW_DAOJUHECHENG, "LuaUI[\"道具合成\"].GetItemGUIDList")
				LuaUI["道具合成"].Update()
			end
		end
	end

	for i = 1, 10 do
		LuaUI["道具合成"]["ItemEx"..i].OnLButtonDown = function(this, param, x, y)
			if UI:Lua_GetMouseGUIItemData() then
				local _GUIDataHandle = LuaRet
				if UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID) then
					local item_id = LuaRet
					
					if not UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMGUID) then return end
					local item_guid = LuaRet --获取物品GUID
					if not UI:Lua_GetItemEntityPropByGUID(item_guid, ITEM_PROP_ENTITY_SITE) then return end
					local item_pos = LuaRet --获取物品所在位置
					if GetItemPosType(item_pos) ~= PACKAGE_POS then
						MessageBox(MESSAGE_STYLE_OK, "请将物品移动到包裹后放入")
					return end

					local need_id = RDItemCtrlGetGUIDataPropByType(this, nil, ITEMGUIDATA_ITEMID)
					if need_id == item_id then
						RDItemCtrlFillGUIData(this, nil, _GUIDataHandle)
						UI:Lua_ClearMouseGUIItemData()
						LuaUI["道具合成"].Update()
					else
						UI:Lua_GetItemTemplatePropByID(need_id, ITEM_PROP_KEYNAME)
						MessageBox(MESSAGE_STYLE_OK, "#COLORCOLOR_BROWN#放入的道具不合法，请放入#COLORCOLOR_YELLOW#【"..LuaRet.."】")
					end
				end
			else
				RDItemCtrlClearGUIData(this, nil)
				LuaUI["道具合成"].Update()
			end
		end
		LuaUI["道具合成"]["ItemEx"..i].OnRButtonUp = function(this, param, x, y)
			if WndPtInWindow(this, nil, x, y) then
				RDItemCtrlClearGUIData(this, nil)
				LuaUI["道具合成"].Update()
			end
		end
	end
end
LuaUI["道具合成"].RegisterEvents()



LuaUI["道具合成"].Update = function()
	local this = GetWindow(nil, "道具合成")
	if 0 == this then return end

	if djhc.page < 1 or djhc.page > 4 then
		djhc.page = 1
		djhc.current = 1
	end

	-- Update page buttons
	for i = 1, 4 do
		ButtonSetIsActivePageBtn(this, "Page"..i, false)
	end
	ButtonSetIsActivePageBtn(this, "Page"..djhc.page, true)
	
	-- Update the select picture
	local is_show = false
	if djhc.page == djhc.select_page and djhc.select_pos >= 1 then
		is_show = true
	end

	WndSetVisible(this, "Select", false)
	if is_show then
		local pos = djhc.select_pos - (djhc.current - 1) * 20
		if pos >= 1 and pos <= 20 then
			local x, y = WndGetPos(this, "Back"..pos)
			WndSetPos(this, "Select", x, y)
			WndSetVisible(this, "Select", true)
		end
	end

	-- Update the next page controls
	is_show = djhc.ex_show
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

	if djhc.data[djhc.page] == nil then
		UI:Lua_SubmitForm("道具合成表单", "daoju_hecheng", djhc.page.."#djhc.data["..djhc.page.."]=")
	else
		--更新主面板内容
		local max_pos = 0
		for k, v in pairs(djhc.data[djhc.page]) do
			local pos = v[1] - (djhc.current - 1) * 20
			if pos >= 1 and pos <= 20 then
				WndSetVisible(this, "Fore"..pos, true)
				WndSetVisible(this, "Item"..pos, true)
				RDItemCtrlSetGUIDataPropByKeyName(this, "Item"..pos, v[4], 1, false)
			end
			max_pos = math.max(v[1], max_pos)
		end

		--更新翻页按钮
		WndSetEnable(this, "BtnPrev", (djhc.current > 1))
		local cur = 1
		while max_pos > 20 do
			cur = cur + 1
			max_pos = max_pos - 20
		end
		WndSetEnable(this, "BtnNext", (djhc.current < cur))
		EditSetText(this, "EditPage", djhc.current.." / "..cur)

		local check = (djhc.select_page >= 1 and djhc.select_page <= 4)
		if true == djhc.ex_show and check and djhc.data[djhc.select_page] ~= nil then
			local t = nil
			for k, v in pairs(djhc.data[djhc.select_page]) do
				if v[1] == djhc.select_pos then
					t = v
				break end
			end
			if t ~= nil then
				--显示其它内容
				local index = 0
				local __color = { [true] = MakeARGB(255, 0, 255, 0), [false] = MakeARGB(255, 255, 0, 0) }
				for i = 5, #t do
					index = index + 1
					local need_clear = true
					local guid = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..index, ITEMGUIDATA_ITEMGUID)
					if 0 ~= guid and "0" ~= guid then
						if UI:Lua_GetItemEntityPropByGUID(guid, ITEM_PROP_KEYNAME) and LuaRet == t[i][1] then
							need_clear = false
						end
					end
					if need_clear then
						RDItemCtrlClearGUIData(this, "ItemEx"..index)
						RDItemCtrlSetGUIDataPropByKeyName(this, "ItemEx"..index, t[i][1], 0, false)
						EditSetText(this, "DescEx"..index, "0/"..t[i][2])
						EditSetTextColor(this, "DescEx"..index, __color[false])
					else
						local count = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..index, ITEMGUIDATA_ITEMCOUNT)
						EditSetText(this, "DescEx"..index, count.."/"..t[i][2])
						EditSetTextColor(this, "DescEx"..index, __color[t[i][2] <= count])
					end
					WndSetVisible(this, "ForeEx"..index, true)
					WndSetVisible(this, "ItemEx"..index, true)
				end

				local base = 1
				if t[2] > 0 then
					local cur_gold = 0           --玩家当前金币数量
					if UI:Lua_GetPlayerSelfProperty64(ROLE_PROP64_GOLD) then
						cur_gold = tonumber(LuaRet)
					end
					WndSetVisible(this, "ImgBackEx"..base, true)
					EditSetProp(this, "EditBackEx"..base, true, false, false, false, MakeARGB(255, 215, 170, 113), false, "需要金币")
					EditSetProp(this, "EditEx"..base, true, true, false, false, __color[cur_gold >= t[2]], false, GetGoldString(t[2]))
					base = base + 1
				end
				if t[3] > 0 then
					local cur_yuan = 0           --玩家当前元宝数量
					if UI:Lua_GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then
						cur_yuan = tonumber(LuaRet)
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

LuaUI["道具合成"].GetItemGUIDList = function()
	local t = {}
	local this = GetWindow(nil, "道具合成")
	if 0 ~= this and true == djhc.ex_show then
		for i = 1, 10 do
			local guid = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..i, ITEMGUIDATA_ITEMGUID)
			if guid ~= 0 and guid ~= "0" then
				table.insert(t, guid)
			end
		end
	end
	return t
end

LuaUI["道具合成"].ItemMoveIn = function()
	local _ItemWindowId = LuaParam[1]
	local _GUIDataHandle = LuaParam[2]
	if _ItemWindowId ~= ITEMWINDOW_DAOJUHECHENG then return end
	local this = GetWindow(nil, "道具合成")
	if 0 == this or not djhc.ex_show then return end
	if UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID) then
		local item_id = LuaRet
		if not UI:Lua_GetItemTemplatePropByID(item_id, ITEM_PROP_KEYNAME) then return end
		local key_name = LuaRet

		local moved = false
		for i = 1, 10 do
			local guid = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..i, ITEMGUIDATA_ITEMGUID)
			if "0" == guid then
				if RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..i, ITEMGUIDATA_ITEMID) == item_id then
					RDItemCtrlFillGUIData(this, "ItemEx"..i, _GUIDataHandle)
					LuaUI["道具合成"].Update()
					moved = true
				break end
			end
		end

		if false == moved then
			MessageBox(MESSAGE_STYLE_OK, "1.请放入合成道具所需道具\n2.确保道具道具格子有空余")
		end
	end
end

LuaUI["道具合成"].OnResult = function()
	if LuaParam[1] ~= "道具合成表单" then return end
	if LuaParam[2] ~= "[道具合成成功！]" then return end
	for i = 1, 10 do
		RDItemCtrlClearGUIData(nil, "道具合成,ItemEx"..i)
	end
	LuaUI["道具合成"].Update()
end