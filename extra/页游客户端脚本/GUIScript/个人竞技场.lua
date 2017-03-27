--[[
#��ǰҳ#��ҳ#�Ƿ��Ѽ������#���ڱ�ҳ�е�λ��
#�Ƿ�ս����#�Ƿ�ɼ���#�ǳ�,�ȼ�,ְҵ#�ǳ�,�ȼ�,ְҵ#�ǳ�,�ȼ�,ְҵ
]]
Lts_swnd = 
{
	cur_page = nil,
	max_page = nil,
	state = nil,
}

LuaUI["���˾�����"].OnInit = function(handle)
	Lts_swnd_data_init()
	WndCalSize(handle)
	CenterWnd(handle)
	WndSetFlags(handle, nil, flg_wndBase_autoTop)
	WndSetMoveWithLB(handle, nil, true)
	WndSetEscClose(handle, nil, true)
	WndSetCanRevMsg(handle, "GUI_2", false)
	WndSetCanRevMsg(handle, "GUI_3", false)
	WndSetCanRevMsg(handle, "EditPage", false)
	WndAddTimer(handle, nil, 1, 1000, "Lts_swnd_wnd_timer")
	RegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "���˾���������ս����", LuaUI["���˾�����"].OnResult)

	for i = 1,10 do
		WndSetParam(handle, "Info"..i, i)
		WndRegistScript(handle, "Info"..i, RDWndBaseCL_mouse_in, "Lts_swnd_wnd_info_mouse_in")
		WndRegistScript(handle, "Info"..i, RDWndBaseCL_mouse_out, "Lts_swnd_wnd_info_mouse_out")
		WndRegistScript(handle, "Info"..i, RDWndBaseCL_mouse_lbUp, "Lts_swnd_wnd_info_menu_show")
		WndRegistScript(handle, "Info"..i, RDWndBaseCL_mouse_rbUp, "Lts_swnd_wnd_info_menu_show")
		WndSetCanRevMsg(handle, "Info"..i, false)
		WndSetCanRevMsg(handle, "Info"..i.."On", false)
		WndSetVisible(handle, "Info"..i.."On", false)
		WndSetCanRevMsg(handle, "Edit"..i, false)
		WndSetParam(handle, "Look"..i, i)
		WndSetEnable(handle, "Look"..i, false)
		WndRegistScript(handle, "Look"..i, RDWndBaseCL_mouse_lbUp, "Lts_swnd_wnd_look_button_up")
	end

	--�������ڲ˵�
	local hMenu = MenuCreate(handle, nil, "Lts_swnd_wnd_menu")
	if hMenu ~= 0 then
		MenuAddItem(hMenu, nil, 1, "�鿴����", 0, -1, 1901300008)
		MenuAddItem(hMenu, nil, 2, "��������", 0, -1, 1901300008)
		MenuAddItem(hMenu, nil, 3, "��Ӻ���", 0, -1, 1901300008)
		WndRegistScript(hMenu, nil, RDWnd2DPopupMenuCL_click, "Lts_swnd_wnd_menu_click")
	end

	Lts_swnd_do_init(handle)
end

LuaUI["���˾�����"].OnClose = function(handle)
	UnRegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "���˾���������ս����")
	MenuDeleteMenu(handle, nil)
end

LuaUI["���˾�����"]["Close"].OnLButtonUp = function(handle, param, x, y)
	if WndPtInWindow(handle, nil, x, y) then WndClose(handle, "parent") end
end

LuaUI["���˾�����"]["PrevPage"].OnLButtonUp = function(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	--�ص��������ű�
	if not Lts_swnd.power then msg("�����������Ƶ��") return end
	local cur_page = Lts_swnd.cur_page
	if cur_page == nil or cur_page <= 1 then return end
	cur_page = cur_page - 1
	--msg("����ҳ����"..cur_page)
	UI:Lua_SubmitForm("���˾�������", "fanye", tostring(cur_page))
	Lts_swnd.power = false
end

LuaUI["���˾�����"]["NextPage"].OnLButtonUp = function(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	--�ص��������ű�
	if not Lts_swnd.power then return msg("�����������Ƶ��") end
	local cur_page = Lts_swnd.cur_page
	if cur_page == nil or cur_page > Lts_swnd.max_page then return end
	cur_page = cur_page + 1
	--msg("����ҳ����"..cur_page)
	UI:Lua_SubmitForm("���˾�������", "fanye", tostring(cur_page))
	Lts_swnd.power = false
end

LuaUI["���˾�����"]["Ok"].OnLButtonUp = function(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	--�ص��������ű�
	local state = Lts_swnd.state
	if state == nil or true == state then return end
	--msg("���˾�������.lua gerenbaoming("..guid..")")
	UI:Lua_SubmitForm("���˾�������", "gerenbaoming", "")
end

LuaUI["���˾�����"]["Cancel"].OnLButtonUp = function(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	--�ص��������ű�
	local state = Lts_swnd.state
	if state == nil or false == state then return end
	--msg("���˾�������.lua gerenquxiao("..guid..")")
	UI:Lua_SubmitForm("���˾�������", "gerenquxiao", "")
end

function Lts_swnd_wnd_timer()
	Lts_swnd.power = true
end

function Lts_swnd_wnd_info_mouse_in(handle)
	WndSetVisible(nil, "���˾�����,"..WndGetID(handle).."On", true)
end

function Lts_swnd_wnd_info_mouse_out(handle)
	WndSetVisible(nil, "���˾�����,"..WndGetID(handle).."On", false)
end

function Lts_swnd_wnd_info_menu_show(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	local name = Lts_swnd[WndGetParam(handle)].name
	if name == nil then return end
	Lts_swnd.cur_name = name
	local hMenu = MenuGetMenu(nil, "���˾�����")
	MenuSetAllItemVisiable(hMenu, nil, true)
	MenuShowPopupMenu(hMenu, nil, true)
end

function Lts_swnd_wnd_menu_click(handle, param)
	if     param == 1 then UI:Lua_LogicLookInfo(Lts_swnd.cur_name)
	elseif param == 2 then UI:Lua_LogicSendPrivateTalk(Lts_swnd.cur_name)
	elseif param == 3 then UI:Lua_LogicAddFriend(Lts_swnd.cur_name) end
end

function Lts_swnd_wnd_look_button_up(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	--�ص��������ű�
	local name = Lts_swnd[WndGetParam(handle)].name
	if name == nil then return end
	--msg("�ۿ���ң�"..name)
	UI:Lua_SubmitForm("���˾�������", "guanzhan", name)
end


-----------------------------------------------------------------------------------------
LuaUI["���˾�����"].OnResult = function()
	if as3.tolua(LuaParam[1]) ~= "���˾�������" then return end
	if as3.tolua(LuaParam[2]) == "" then WndClose(nil, "���˾�����") end
end

function Lts_swnd_data_init()
	--msg(as3.tolua(LuaParam[2]))
	--#��ǰҳ#��ҳ��#�Ƿ���#�ǳƣ��ȼ���ְҵ���Ƿ�ս����
	local str = string.gsub(as3.tolua(LuaParam[2]), "^#", "") --ȥ����һ��#�ַ�
	local data = strsplit(str, "#")
	if #data < 3 then return false end
	Lts_swnd = {}
	Lts_swnd.cur_page = tonumber(data[1])
	Lts_swnd.max_page = tonumber(data[2])
	Lts_swnd.state = (tonumber(data[3]) == 1)
	for i = 1,10 do
		if data[i+3] ~= nil then
			local info = strsplit(data[i+3], ",")
			if #info == 4 then
				Lts_swnd[i] = {}
				Lts_swnd[i].name = info[1]
				Lts_swnd[i].level = tonumber(info[2])
				Lts_swnd[i].job = tonumber(info[3])
				Lts_swnd[i].state = (tonumber(info[4]) == 1)
			end
		end
	end
	return true
end

function Lts_swnd_wnd_init()
	local handle = GetWindow(nil, "���˾�����")
	if handle == 0 then return end
	for i = 1,10 do
		WndSetCanRevMsg(handle, "Info"..i, false)
		RichEditClear(handle, "Edit"..i)
		WndSetVisible(handle, "Info"..i.."On", false)
		WndSetEnable(handle, "Look"..i, false)
	end
end

function Lts_swnd_do_init(handle)
	--��ʼ��ҳ��ͷ�ҳ��ť
	local cur_page = Lts_swnd.cur_page
	local max_page = Lts_swnd.max_page
	EditSetTextM(handle, "EditPage", string.format("%3d/%-3d", cur_page, max_page))
	if cur_page <= 1 then WndSetEnable(handle, "PrevPage", false) else WndSetEnable(handle, "PrevPage", true) end
	if cur_page >= max_page then WndSetEnable(handle, "NextPage", false) else WndSetEnable(handle, "NextPage", true) end
	--��ʼ������
	for i = 1,10 do
		local t = Lts_swnd[i]
		if t ~= nil and t.name ~= nil and t.level ~= nil and t.job ~= nil and t.state ~= nil then
			local name = t.name
			local job = {[0] = "δ֪", [1] = "սʿ", [2] = "��ʦ", [3] = "��ʿ"}
			local desc = "LV."..t.level.." "..job[t.job]
			local color = { [true] = { [1] = "#COLORCOLOR_GREENG#", [2] = "#COLORCOLOR_BLUE#"}, [false] = { [1] = "#COLORCOLOR_YELLOW#", [2] = "#COLORCOLOR_BROWN#"} }
			local xoffset, yoffset, width, height, str, is_mine
			is_mine = (i == 1 and Lts_swnd.state and Lts_swnd.cur_page == 1)
			width, height = WndGetSizeM(handle, "Edit"..i)
			xoffset, yoffset = math.floor((width - GetStrWidth(name)) / 2), 6
			str = color[is_mine][1].."#POS<X:"..xoffset..",Y:"..yoffset..">#"..name.."#COLOREND#"
			xoffset, yoffset = math.floor((width - GetStrWidth(desc)) / 2), 25
			str = str..color[is_mine][2].."#POS<X:"..xoffset..",Y:"..yoffset..">#"..desc.."#COLOREND#"
			RichEditSetProp(handle, "Edit"..i, nil, nil, false, "system", nil, str)
			if false == is_mine then WndSetCanRevMsg(handle, "Info"..i, true) end
			if false == is_mine and false == Lts_swnd.state and t.state then WndSetEnable(handle, "Look"..i, true) end
		end
	end
	--��ʼ�����������ť
	if Lts_swnd.state then
		WndSetEnable(handle, "Ok", false)
		WndSetEnable(handle, "Cancel", true)
	else
		WndSetEnable(handle, "Ok", true)
		WndSetEnable(handle, "Cancel", false)
	end
end