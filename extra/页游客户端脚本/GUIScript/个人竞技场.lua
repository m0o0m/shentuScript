--[[
#当前页#总页#是否已加入队伍#我在本页中的位置
#是否战斗中#是否可加入#昵称,等级,职业#昵称,等级,职业#昵称,等级,职业
]]
Lts_swnd = 
{
	cur_page = nil,
	max_page = nil,
	state = nil,
}

LuaUI["个人竞技场"].OnInit = function(handle)
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
	RegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "个人竞技场表单观战反馈", LuaUI["个人竞技场"].OnResult)

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

	--创建窗口菜单
	local hMenu = MenuCreate(handle, nil, "Lts_swnd_wnd_menu")
	if hMenu ~= 0 then
		MenuAddItem(hMenu, nil, 1, "查看资料", 0, -1, 1901300008)
		MenuAddItem(hMenu, nil, 2, "发送密语", 0, -1, 1901300008)
		MenuAddItem(hMenu, nil, 3, "添加好友", 0, -1, 1901300008)
		WndRegistScript(hMenu, nil, RDWnd2DPopupMenuCL_click, "Lts_swnd_wnd_menu_click")
	end

	Lts_swnd_do_init(handle)
end

LuaUI["个人竞技场"].OnClose = function(handle)
	UnRegisterUIEvent(LUA_EVENT_SUBMITFORMACK, "个人竞技场表单观战反馈")
	MenuDeleteMenu(handle, nil)
end

LuaUI["个人竞技场"]["Close"].OnLButtonUp = function(handle, param, x, y)
	if WndPtInWindow(handle, nil, x, y) then WndClose(handle, "parent") end
end

LuaUI["个人竞技场"]["PrevPage"].OnLButtonUp = function(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	--回调服务器脚本
	if not Lts_swnd.power then msg("您的请求过于频繁") return end
	local cur_page = Lts_swnd.cur_page
	if cur_page == nil or cur_page <= 1 then return end
	cur_page = cur_page - 1
	--msg("请求页数："..cur_page)
	UI:Lua_SubmitForm("个人竞技场表单", "fanye", tostring(cur_page))
	Lts_swnd.power = false
end

LuaUI["个人竞技场"]["NextPage"].OnLButtonUp = function(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	--回调服务器脚本
	if not Lts_swnd.power then return msg("您的请求过于频繁") end
	local cur_page = Lts_swnd.cur_page
	if cur_page == nil or cur_page > Lts_swnd.max_page then return end
	cur_page = cur_page + 1
	--msg("请求页数："..cur_page)
	UI:Lua_SubmitForm("个人竞技场表单", "fanye", tostring(cur_page))
	Lts_swnd.power = false
end

LuaUI["个人竞技场"]["Ok"].OnLButtonUp = function(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	--回调服务器脚本
	local state = Lts_swnd.state
	if state == nil or true == state then return end
	--msg("个人竞技场表单.lua gerenbaoming("..guid..")")
	UI:Lua_SubmitForm("个人竞技场表单", "gerenbaoming", "")
end

LuaUI["个人竞技场"]["Cancel"].OnLButtonUp = function(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	--回调服务器脚本
	local state = Lts_swnd.state
	if state == nil or false == state then return end
	--msg("个人竞技场表单.lua gerenquxiao("..guid..")")
	UI:Lua_SubmitForm("个人竞技场表单", "gerenquxiao", "")
end

function Lts_swnd_wnd_timer()
	Lts_swnd.power = true
end

function Lts_swnd_wnd_info_mouse_in(handle)
	WndSetVisible(nil, "个人竞技场,"..WndGetID(handle).."On", true)
end

function Lts_swnd_wnd_info_mouse_out(handle)
	WndSetVisible(nil, "个人竞技场,"..WndGetID(handle).."On", false)
end

function Lts_swnd_wnd_info_menu_show(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	local name = Lts_swnd[WndGetParam(handle)].name
	if name == nil then return end
	Lts_swnd.cur_name = name
	local hMenu = MenuGetMenu(nil, "个人竞技场")
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
	--回调服务器脚本
	local name = Lts_swnd[WndGetParam(handle)].name
	if name == nil then return end
	--msg("观看玩家："..name)
	UI:Lua_SubmitForm("个人竞技场表单", "guanzhan", name)
end


-----------------------------------------------------------------------------------------
LuaUI["个人竞技场"].OnResult = function()
	if as3.tolua(LuaParam[1]) ~= "个人竞技场表单" then return end
	if as3.tolua(LuaParam[2]) == "" then WndClose(nil, "个人竞技场") end
end

function Lts_swnd_data_init()
	--msg(as3.tolua(LuaParam[2]))
	--#当前页#总页数#是否报名#昵称，等级，职业，是否战斗中
	local str = string.gsub(as3.tolua(LuaParam[2]), "^#", "") --去掉第一个#字符
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
	local handle = GetWindow(nil, "个人竞技场")
	if handle == 0 then return end
	for i = 1,10 do
		WndSetCanRevMsg(handle, "Info"..i, false)
		RichEditClear(handle, "Edit"..i)
		WndSetVisible(handle, "Info"..i.."On", false)
		WndSetEnable(handle, "Look"..i, false)
	end
end

function Lts_swnd_do_init(handle)
	--初始化页码和翻页按钮
	local cur_page = Lts_swnd.cur_page
	local max_page = Lts_swnd.max_page
	EditSetTextM(handle, "EditPage", string.format("%3d/%-3d", cur_page, max_page))
	if cur_page <= 1 then WndSetEnable(handle, "PrevPage", false) else WndSetEnable(handle, "PrevPage", true) end
	if cur_page >= max_page then WndSetEnable(handle, "NextPage", false) else WndSetEnable(handle, "NextPage", true) end
	--初始化内容
	for i = 1,10 do
		local t = Lts_swnd[i]
		if t ~= nil and t.name ~= nil and t.level ~= nil and t.job ~= nil and t.state ~= nil then
			local name = t.name
			local job = {[0] = "未知", [1] = "战士", [2] = "法师", [3] = "道士"}
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
	--初始化最后两个按钮
	if Lts_swnd.state then
		WndSetEnable(handle, "Ok", false)
		WndSetEnable(handle, "Cancel", true)
	else
		WndSetEnable(handle, "Ok", true)
		WndSetEnable(handle, "Cancel", false)
	end
end