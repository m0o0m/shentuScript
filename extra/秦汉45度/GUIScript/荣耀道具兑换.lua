rongyaoitem = 
{
	page = 1,
	select_page = 1,
	select_pos = -1,
	ex_show = false,
	data = {},
	current = 1,
}

LuaUI["��ҫ���߶һ�"].OnInit = function(this)
	rongyaoitem.data = {}
	local func = loadstring("rongyaoitem.data[1]="..LuaParam[2])
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

	WndSetText(this, "Page1", "����")
	WndSetTextColor(this, "Page1", 4294417725)
	WndSetText(this, "Page2", "ǿ��")
	WndSetTextColor(this, "Page2", 4294417725)
	WndSetText(this, "Page3", "����")
	WndSetTextColor(this, "Page3", 4294417725)
	WndSetCanRevMsg(this, "EditPage", false)
	WndSetEnable(this, "EditPage", false)
	
	RegisterUIEvent(LUA_EVENT_ITEMWNDMOVEITEMIN, "��ҫ���߶һ����ߴ���", LuaUI["��ҫ���߶һ�"].ItemMoveIn)
	RegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "��ҫ���߶һ�������", LuaUI["��ҫ���߶һ�"].OnResult)

	rongyaoitem.page = 1
	rongyaoitem.select_pos = -1
	rongyaoitem.ex_show = false
	rongyaoitem.current = 1
	WndCalSize(this)
	LuaUI["��ҫ���߶һ�"].Update()
	CenterWnd(this)
	WndSetFlags(this, nil, flg_wndBase_autoTop)
	WndSetMoveWithLB(this, nil, true)
	WndSetEscClose(this, nil, true)
end

LuaUI["��ҫ���߶һ�"].OnActive = function(this, param, x, y)
	if rongyaoitem.ex_show then
		WndActiveItemWindow(this, nil, ITEMWINDOW_RONGYAOITEM)
	end
end

LuaUI["��ҫ���߶һ�"].OnClose = function(this, param, x, y)
	WndCloseItemWindow(this, nil, ITEMWINDOW_RONGYAOITEM)
	UnRegisterUIEvent(LUA_EVENT_ITEMWNDMOVEITEMIN, "��ҫ���߶һ����ߴ���")
	UnRegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "��ҫ���߶һ�������")
end

LuaUI["��ҫ���߶һ�"]["Close"].OnLButtonUp = function(this, param, x, y)
	if WndPtInWindow(this, nil, x, y) then
		rongyaoitem.data = {}
		WndClose(this, "parent")
	end
end

LuaUI["��ҫ���߶һ�"]["CloseEx"].OnLButtonUp = function(this, param, x, y)
	if WndPtInWindow(this, nil, x, y) then
		rongyaoitem.ex_show = false
		WndCloseItemWindow(this, nil, ITEMWINDOW_RONGYAOITEM)
		LuaUI["��ҫ���߶һ�"].Update()
	end
end

LuaUI["��ҫ���߶һ�"]["Ok"].OnLButtonUp = function(this, param, x, y)
	if not WndPtInWindow(this, nil, x, y) then return end
	this = GetWindow(this, "parent")
	if rongyaoitem.select_pos <= 0 then
		MessageBox(MESSAGE_STYLE_OK, "��ѡ��Ҫ�һ��ĵ���")
	return end
	rongyaoitem.page = rongyaoitem.select_page
	rongyaoitem.current = 1
	local sel = rongyaoitem.select_pos
	while sel > 20 do
		rongyaoitem.current = rongyaoitem.current + 1
		sel = sel - 20
	end
	if false == rongyaoitem.ex_show then
		rongyaoitem.ex_show = true
		WndOpenItemWindow(this, nil, ITEMWINDOW_RONGYAOITEM, "LuaUI[\"��ҫ���߶һ�\"].GetItemGUIDList")
	end
	LuaUI["��ҫ���߶һ�"].Update()
	local key_name = nil
	for k, v in pairs(rongyaoitem.data[rongyaoitem.page]) do
		if v[1] == rongyaoitem.select_pos then
			key_name = v[4]
		break end
	end
	local t = {}
	for i = 1, 10 do
		if not WndGetVisible(this, "ItemEx"..i) then break end
		local guid = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..i, ITEMGUIDATA_ITEMGUID)
		if 0 == guid or "0" == guid then
			MessageBox(MESSAGE_STYLE_OK, "#COLORCOLOR_BROWN#������һ�#COLORCOLOR_YELLOW#��"..key_name.."��#COLORCOLOR_BROWN#����Ҫ�Ĳ���")
		return end
		t[i] = guid
	end
	local bind = false
	local data = {}
	for k, v in pairs(t) do
		if UI:Lua_GetItemEntityPropByGUID(v, ITEM_PROP_ENTITY_SITE) then
			data[k] = LuaRet
		else
			log("��ȡ����SITE����ʧ��!")
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
	local script_text = "UI:Lua_SubmitForm(\"��ҫ���߶һ���\",\"querenitem\",\""..rongyaoitem.page.."#"..key_name.."#"..info.."\")"
	local text = "#COLORCOLOR_BROWN#�Ƿ�ȷ���һ���ҫ����#COLORCOLOR_YELLOW#��"..key_name.."��#COLORCOLOR_BROWN#��"
	MessageBox(MESSAGE_STYLE_OKCANCEL, text, script_text)
end

LuaUI["��ҫ���߶һ�"]["BtnPrev"].OnLButtonUp = function(this, param, x, y)
	if not WndPtInWindow(this, nil, x, y) then return end
	rongyaoitem.current = rongyaoitem.current - 1
	LuaUI["��ҫ���߶һ�"].Update()
end

LuaUI["��ҫ���߶һ�"]["BtnNext"].OnLButtonUp = function(this, param, x, y)
	if not WndPtInWindow(this, nil, x, y) then return end
	rongyaoitem.current = rongyaoitem.current + 1
	LuaUI["��ҫ���߶һ�"].Update()
end

LuaUI["��ҫ���߶һ�"].RegisterEvents = function()
	for i = 1, 3 do
		LuaUI["��ҫ���߶һ�"]["Page"..i].OnLButtonUp = function(this, param, x, y)
			if WndPtInWindow(this, nil, x, y) then
				rongyaoitem.page = i
				rongyaoitem.current = 1
				LuaUI["��ҫ���߶һ�"].Update()
			end
		end
	end

	for i = 1, 20 do
		LuaUI["��ҫ���߶һ�"]["Item"..i].OnLButtonUp = function(this, param, x, y)
			if WndPtInWindow(this, nil, x, y) then
				rongyaoitem.select_page = rongyaoitem.page
				rongyaoitem.select_pos = (rongyaoitem.current - 1) * 20 + WndGetParam(this, nil)
				rongyaoitem.ex_show = true
				WndOpenItemWindow(this, nil, ITEMWINDOW_RONGYAOITEM, "LuaUI[\"��ҫ���߶һ�\"].GetItemGUIDList")
				LuaUI["��ҫ���߶һ�"].Update()
			end
		end
	end

	for i = 1, 10 do
		LuaUI["��ҫ���߶һ�"]["ItemEx"..i].OnLButtonDown = function(this, param, x, y)
			if UI:Lua_GetMouseGUIItemData() then
				local _GUIDataHandle = LuaRet
				if UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID) then
					local item_id = LuaRet
					
					if not UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMGUID) then return end
					local item_guid = LuaRet --��ȡ��ƷGUID
					if not UI:Lua_GetItemEntityPropByGUID(item_guid, ITEM_PROP_ENTITY_SITE) then return end
					local item_pos = LuaRet --��ȡ��Ʒ����λ��
					if GetItemPosType(item_pos) ~= PACKAGE_POS then
						MessageBox(MESSAGE_STYLE_OK, "�뽫��Ʒ�ƶ������������")
					return end

					local need_id = RDItemCtrlGetGUIDataPropByType(this, nil, ITEMGUIDATA_ITEMID)
					if need_id == item_id then
						RDItemCtrlFillGUIData(this, nil, _GUIDataHandle)
						UI:Lua_ClearMouseGUIItemData()
						LuaUI["��ҫ���߶һ�"].Update()
					else
						UI:Lua_GetItemTemplatePropByID(need_id, ITEM_PROP_KEYNAME)
						MessageBox(MESSAGE_STYLE_OK, "#COLORCOLOR_BROWN#����ĵ��߲��Ϸ��������#COLORCOLOR_YELLOW#��"..LuaRet.."��")
					end
				end
			else
				RDItemCtrlClearGUIData(this, nil)
				LuaUI["��ҫ���߶һ�"].Update()
			end
		end
		LuaUI["��ҫ���߶һ�"]["ItemEx"..i].OnRButtonUp = function(this, param, x, y)
			if WndPtInWindow(this, nil, x, y) then
				RDItemCtrlClearGUIData(this, nil)
				LuaUI["��ҫ���߶һ�"].Update()
			end
		end
	end
end
LuaUI["��ҫ���߶һ�"].RegisterEvents()



LuaUI["��ҫ���߶һ�"].Update = function()
	local this = GetWindow(nil, "��ҫ���߶һ�")
	if 0 == this then return end

	if rongyaoitem.page < 1 or rongyaoitem.page > 4 then
		rongyaoitem.page = 1
		rongyaoitem.current = 1
	end

	-- Update page buttons
	for i = 1, 4 do
		ButtonSetIsActivePageBtn(this, "Page"..i, false)
	end
	ButtonSetIsActivePageBtn(this, "Page"..rongyaoitem.page, true)
	
	-- Update the select picture
	local is_show = false
	if rongyaoitem.page == rongyaoitem.select_page and rongyaoitem.select_pos >= 1 then
		is_show = true
	end

	WndSetVisible(this, "Select", false)
	if is_show then
		local pos = rongyaoitem.select_pos - (rongyaoitem.current - 1) * 20
		if pos >= 1 and pos <= 20 then
			local x, y = WndGetPos(this, "Back"..pos)
			WndSetPos(this, "Select", x, y)
			WndSetVisible(this, "Select", true)
		end
	end

	-- Update the next page controls
	is_show = rongyaoitem.ex_show
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

	if rongyaoitem.data[rongyaoitem.page] == nil then
		UI:Lua_SubmitForm("��ҫ���߶һ���", "rongyaoitem", rongyaoitem.page.."#rongyaoitem.data["..rongyaoitem.page.."]=")
	else
		--�������������
		local max_pos = 0
		for k, v in pairs(rongyaoitem.data[rongyaoitem.page]) do
			local pos = v[1] - (rongyaoitem.current - 1) * 20
			if pos >= 1 and pos <= 20 then
				WndSetVisible(this, "Fore"..pos, true)
				WndSetVisible(this, "Item"..pos, true)
				RDItemCtrlSetGUIDataPropByKeyName(this, "Item"..pos, v[4], 1, false)
			end
			max_pos = math.max(v[1], max_pos)
		end

		--���·�ҳ��ť
		WndSetEnable(this, "BtnPrev", (rongyaoitem.current > 1))
		local cur = 1
		while max_pos > 20 do
			cur = cur + 1
			max_pos = max_pos - 20
		end
		WndSetEnable(this, "BtnNext", (rongyaoitem.current < cur))
		EditSetText(this, "EditPage", rongyaoitem.current.." / "..cur)

		local check = (rongyaoitem.select_page >= 1 and rongyaoitem.select_page <= 4)
		if true == rongyaoitem.ex_show and check and rongyaoitem.data[rongyaoitem.select_page] ~= nil then
			local t = nil
			for k, v in pairs(rongyaoitem.data[rongyaoitem.select_page]) do
				if v[1] == rongyaoitem.select_pos then
					t = v
				break end
			end
			if t ~= nil then
				--��ʾ��������
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
					local cur_gold = 0           --��ҵ�ǰ�������
					if UI:Lua_GetPlayerSelfProperty64(ROLE_PROP64_GOLD) then
						cur_gold = tonumber(LuaRet)
					end
					WndSetVisible(this, "ImgBackEx"..base, true)
					EditSetProp(this, "EditBackEx"..base, true, false, false, false, MakeARGB(255, 215, 170, 113), false, "������")
					EditSetProp(this, "EditEx"..base, true, true, false, false, __color[cur_gold >= t[2]], false, GetGoldString(t[2]))
					base = base + 1
				end
				if t[3] > 0 then
					local cur_rongyao = 0           --��ҵ�ǰ��ҫֵ
					if server_rongyao ~= nil then
						cur_rongyao = server_rongyao
					end
					WndSetVisible(this, "ImgBackEx"..base, true)
					EditSetProp(this, "EditBackEx"..base, true, false, false, false, MakeARGB(255, 215, 170, 113), false, "������ҫֵ")
					EditSetProp(this, "EditEx"..base, true, true, false, false, __color[cur_rongyao >= t[3]], false, GetGoldString(t[3]))
					base = base + 1
				end
			end
		end
	end
end

LuaUI["��ҫ���߶һ�"].GetItemGUIDList = function()
	local t = {}
	local this = GetWindow(nil, "��ҫ���߶һ�")
	if 0 ~= this and true == rongyaoitem.ex_show then
		for i = 1, 10 do
			local guid = RDItemCtrlGetGUIDataPropByType(this, "ItemEx"..i, ITEMGUIDATA_ITEMGUID)
			if guid ~= 0 and guid ~= "0" then
				table.insert(t, guid)
			end
		end
	end
	return t
end

LuaUI["��ҫ���߶һ�"].ItemMoveIn = function()
	local _ItemWindowId = LuaParam[1]
	local _GUIDataHandle = LuaParam[2]
	if _ItemWindowId ~= ITEMWINDOW_RONGYAOITEM then return end
	local this = GetWindow(nil, "��ҫ���߶һ�")
	if 0 == this or not rongyaoitem.ex_show then return end
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
					LuaUI["��ҫ���߶һ�"].Update()
					moved = true
				break end
			end
		end

		if false == moved then
			MessageBox(MESSAGE_STYLE_OK, "1.�����һ���ҫ�����������\n2.ȷ�����߸����п���")
		end
	end
end

LuaUI["��ҫ���߶һ�"].OnResult = function()
	if LuaParam[1] ~= "��ҫ���߶һ���" then return end
	if LuaParam[2] ~= "[�һ���ҫ���߳ɹ���]" then return end
	for i = 1, 10 do
		RDItemCtrlClearGUIData(nil, "��ҫ���߶һ�,ItemEx"..i)
	end
	LuaUI["��ҫ���߶һ�"].Update()
end