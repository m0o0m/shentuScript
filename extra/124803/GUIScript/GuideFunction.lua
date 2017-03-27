--ENBEG--
local this_file = "GuideFunction.lua:"
GuideFunc = {}
local f = GuideFunc
local d

local reg = function(event, func)
	RegisterUIEvent(event, "新手引导", func)
end
reg(LUA_EVENT_ONLOGIN, "GuideFunc.OnLogin")                --登录
reg(LUA_EVENT_GETNEWQUEST, "GuideFunc.GetNewQuest")        --接取任务
reg(LUA_EVENT_FINISHQUEST, "GuideFunc.FinishQuest")        --完成任务
reg(LUA_EVENT_READYQUEST, "GuideFunc.ReadyQuest")          --激活任务
reg(LUA_EVENT_DROPQUEST, "GuideFunc.DropQuest")            --放弃任务
reg(LUA_EVENT_CLICKTASKNPCLINK, "GuideFunc.TaskClick")     --追踪点击
reg(LUA_EVENT_CLICKTASKMAPLINK, "GuideFunc.TaskClick")     --追踪点击
reg(LUA_EVENT_OPENNPCTALK, "GuideFunc.OpenNpc")            --打开NPC
reg(LUA_EVENT_WNDLOADLAYOUT, "GuideFunc.OnOpenDlg")        --打开面板
reg(LUA_EVENT_CLICKNPCTALKITEM, "GuideFunc.ClickNpcText")  --点击NPC文字
reg(LUA_EVENT_ONADDSKILL, "GuideFunc.AddSkill")            --学习技能

local GuideValue = 
{
	["接取任务"]         = 1,
	["接取任务事件"]     = 2,
	["完成任务"]         = 1,
	["完成任务事件"]     = 2,
	["激活任务"]         = 1,
	["激活任务事件"]     = 2,
	["放弃任务事件"]     = 2,
	["追踪点击事件"]     = 2,
	["打开引导"]         = 1,
	["打开引导事件"]     = 2,
	["关闭引导事件"]     = 2,
	["打开NPC事件"]      = 2,
	["打开面板事件"]     = 2,
	["点击NPC文字事件"]  = 2,
	["点击控件事件"]     = 2,
	["学习技能事件"]     = 2,
}

f.value = function(value)
	if nil == GuideValue[value] then
		return false
	end
	return true
end

f.status = function(value)
	local val = GuideValue[value]
	if nil == val or val == 2 then
		return false
	end
	return true
end

f.event = function(value)
	local val = GuideValue[value]
	if nil == val or val == 1 then
		return false
	end
	return true
end



--[[
	system Guide table analyze for assist:
	Guide = 
	{
		con1 = --the trigger of the event to open a guide
		{
			[event] = 
			{
				[id] =
				{
					{[1] = tok, [2] = idx,}...
				},...
			},...
		},
		con2 = --the condition of a guide to close
		...
		con3 = --the condition of a guide to complete
		...
	}

	Guide.list = --the do status of a guide : will open , opening , finish
	{
		[name] = 0,   --will open
		[name] = 1,   --opening
		[name] = nil, --finish
	}
]]

f.reg_click = function(file)
	local event = "点击控件事件"
	local tbl = { d.con1, d.con2, d.con3 }
	for i = 1, 3 do
		local t = tbl[i][event]
		if type(t) == "table" then
			for id, data in pairs(t) do
				for idx = 1, #data do
					local u = d[id][i + 1][data[idx][1]][data[idx][2]]
					local str = u[2]
					if "" ~= str and string.find(str, file) ~= nil then
						local ctrl = GetWindow(nil, str)
						if 0 ~= ctrl then
							WndAddProperty(ctrl, nil, "GuideClickRegist", str)
							WndRegistScript(ctrl, nil, RDWndBaseCL_mouse_lbClick, "GuideFunc.on_click_ctrl_event")
						end
					end
				end
			end
		end
	end
end

f.on_click_ctrl_event = function(this)
	local value = WndGetProperty(this, nil, "GuideClickRegist")
	if "" ~= value then
		f.trigger("点击控件事件", value)
	end
end

f.set_willopen = function(id)
	d.list[id] = 0
end

f.set_opening = function(id)
	d.list[id] = 1
end

f.set_finish = function(id)
	d.list[id] = nil
end

f.is_willopen = function(id)
	return (d.list[id] ~= nil and d.list[id] == 0)
end

f.is_opening = function(id)
	return (d.list[id] ~= nil and d.list[id] == 1)
end

f.is_finish = function(id)
	return (d.list[id] == nil)
end

f.OnLogin = function()
	d = Guide
	d.list = {}
	d.con1 = {}
	d.con2 = {}
	d.con3 = {}
	
	if true ~= GuideSwitch then
		return
	end
	
	--整理引导
	for k, v in pairs(d) do
		if type(v) == "table" and type(v[1]) == "table" then
			if not f.done(k) then
				f.set_willopen(k)
			end
		end
	end
	
	--整理事件
	local tbl = {d.con1, d.con2, d.con3}
	for id, _ in pairs(d.list) do
		local t = d[id]
		for i = 1, 3 do
			local condition = tbl[i]
			for tok, v in pairs(t[i + 1]) do
				for idx, u in pairs(v) do
					local e = u[1]
					if condition[e] == nil then
						condition[e] = {}
					end
					local con = condition[e]
					if con[id] == nil then
						con[id] = {}
					end
					table.insert(con[id], {tok, idx})
					u.status = false
				end
			end
		end
	end
end

f.trigger = function(event, value)
	f.trigger_unknow(event, value, true)
end

f.untrigger = function(event, value)
	f.trigger_unknow(event, value, false)
end

f.trigger_unknow = function(event, value, status)
	if nil == d then
		return
	end
	if d.con3[event] ~= nil then --判断完成条件
		for id, data in pairs(d.con3[event]) do
			if not f.is_finish(id) then
				for _, v in pairs(data) do
					if d[id][4][v[1]][v[2]][2] == value then
						f.trigger_set(id, 3, v[1], v[2], status)				
					end
				end
			end
		end
	end
	if d.con1[event] ~= nil then --判断触发条件
		for id, data in pairs(d.con1[event]) do
			if f.is_willopen(id) or (not f.is_finish(id) and not status) then
				for _, v in pairs(data) do
					if d[id][2][v[1]][v[2]][2] == value then
						f.trigger_set(id, 1, v[1], v[2], status)
					end
				end
			end
		end
	end
	if d.con2[event] ~= nil then --判断关闭条件
		for id, data in pairs(d.con2[event]) do
			if f.is_opening(id) then
				for _, v in pairs(data) do
					if d[id][3][v[1]][v[2]][2] == value then
						f.trigger_set(id, 2, v[1], v[2], status)
					end
				end
			end
		end
	end
end

f.trigger_set = function(id, tbl_idx, tok, idx, value)
	local u = d[id][tbl_idx + 1][tok][idx]
	local tocken = false
	if f.event(u[1]) then
		if f.trigger_check(id, tbl_idx, tok, idx) then
			tocken = true
		end
	else
		u.status = value
		if true == value and f.trigger_check(id, tbl_idx, tok, idx) then
			tocken = true
		end
	end
	if true == tocken then
		f.trigger_do(id, tbl_idx)
	end
end

f.trigger_do = function(id, tbl_idx)
	if tbl_idx == 1 then --触发
		f.open(id)
	elseif tbl_idx == 2 then --关闭
		f.close(id)
	elseif tbl_idx == 3 then --完成
		if f.is_willopen(id) then
			f.set_finish(id)
		end
		f.Do(id)
	end
end

f.trigger_check = function(id, tbl_idx, tok, idx)
	local t = d[id][tbl_idx + 1][tok]
	for col, u in pairs(t) do
		if f.event(u[1]) then
			if col ~= idx then
				return false
			end
		elseif u.status == false then
			return false
		end
	end
	return true
end

f.GetNewQuest = function()
	local id = LuaParam[1]
	f.trigger("接取任务", id)
	f.trigger("接取任务事件", id)
end

f.FinishQuest = function()
	local id = LuaParam[1]
	f.trigger("完成任务", id)
	f.trigger("完成任务事件", id)
end

f.ReadyQuest = function()
	local id = LuaParam[1]
	f.trigger("激活任务", id)
	f.trigger("激活任务事件", id)
end

f.DropQuest = function()
	local id = LuaParam[1]
	f.trigger("放弃任务事件", id)
	f.untrigger("接取任务", id)
end

f.TaskClick = function()
	local text = LuaParam[1]
	f.trigger("追踪点击事件", text)
end

f.OpenNpc = function()
	local npc_name = LuaParam[1]
	f.trigger("打开NPC事件", npc_name)
end

f.OnOpenGuide = function(id)
	f.trigger("打开引导", id)
	f.trigger("打开引导事件", id)
end

f.OnCloseGuide = function(id)
	f.trigger("关闭引导事件", id)
	--f.untrigger("打开引导", id)
end

f.OnOpenDlg = function()
	if d == nil then
		return
	end
	local path = LuaParam[1]
	local file, count = string.gsub(path, "^.*\\([^\\]+)\.laye?$", "%1")
	if count == 1 then
		f.trigger("打开面板事件", file)
		f.reg_click(file)
	end
end

f.ClickNpcText = function()
	local text = LuaParam[2]
	f.trigger("点击NPC文字事件", text)
end

f.AddSkill = function()
	f.trigger("学习技能事件", nil)
end

f.remove = function(tbl, val)
	for k, v in pairs(tbl) do
		if v == val then
			tbl[k] = nil
			break
		end
	end
end

f.done = function(id)
	--do return false end
	if d == nil then
		log(this_file.."done函数失败，Guide表为空")
		return true
	end
	
	if d[id] == nil then
		log(this_file.."done函数失败，Guide表中不存在["..id.."]项")
		return true
	end
	
	local t = d[id]
	local tbl = t[1]
	if tbl.flag == nil then
		return false
	end
	
	local flag = tonumber(tbl.flag)
	if flag == nil then
		log(this_file.."done函数调用失败，["..id.."]flag标记异常")
		return true
	end
	
	if not UI:Lua_GetGameEventFlag(flag) then
		log(this_file.."done函数调用失败，Lua_GetGameEventFlag函数失败")
		return true
	end
	
	return (LuaRet == 1)
end

f.Do = function(id)
	--do return end
	if d == nil then
		log(this_file.."do函数失败，Guide表为空")
		return true
	end
	
	if d[id] == nil then
		log(this_file.."do函数失败，Guide表中不存在["..id.."]项")
		return true
	end
	
	local t = d[id]
	local tbl = t[1]
	if type(tbl.flag) == "number" then
		UI:Lua_SetGameEventFlag(tbl.flag, 1)
	end
end

f.open = function(id)
	if d == nil then
		log(this_file.."Open函数失败，Guide表为空")
		return
	end
	
	if d[id] == nil then
		log(this_file.."Open函数失败，Guide表中不存在["..id.."]项")
		return
	end
	
	local t = d[id]
	if type(t) ~= "table" then
		log(this_file.."Open函数失败，Guide表中对应的["..id.."]项不是table类型")
		return
	end
	
	if t[1] == nil then
		log(this_file.."Open函数失败， Guide表中对应的["..id.."]项不包含显示布局信息")
		return
	end
	
	local tbl = t[1]
	if tbl.type == nil then
		log(this_file.."Open函数失败， Guide表中对应的["..id.."]项布局信息无确定类型")
		return
	end
	
	if tbl.data == nil then
		log(this_file.."Open函数失败， Guide表中对应的["..id.."]项布局无数据信息")
		return
	end
	
	if tbl.delay ~= nil and tbl.delay > 0 then
		local script = "GuideFunc.do_open("..string.format("%q", id)..","..tbl.type..")"
		UI:Lua_AddDelayTask(script, tbl.delay, 1)
	else
		f.do_open(id, tbl.type)
	end
end

f.do_open = function(id, type)
	local rslt = false
	local t = 
	{
		[1] = f.open1,
		[2] = f.open2,
		[3] = f.open3,
	}
	if t[type] ~= nil then
		f.run_open_pre_script(id)
		rslt = t[type](id)
	end
	
	if rslt then
		f.set_opening(id)
	end
	
	f.OnOpenGuide(id)
end

f.close = function(id)
	if d == nil then
		log(this_file.."Open函数失败，Guide表为空")
		return
	end
	
	if d[id] == nil then
		log(this_file.."Open函数失败，Guide表中不存在["..id.."]项")
		return
	end
	
	local t = d[id]
	if type(t) ~= "table" then
		log(this_file.."Open函数失败，Guide表中对应的["..id.."]项不是table类型")
		return
	end
	
	if t[1] == nil then
		log(this_file.."Open函数失败， Guide表中对应的["..id.."]项不包含显示布局信息")
		return
	end
	
	local tbl = t[1]
	if tbl.type == nil then
		log(this_file.."Open函数失败， Guide表中对应的["..id.."]项布局信息无确定类型")
		return
	end
	
	if tbl.data == nil then
		log(this_file.."Open函数失败， Guide表中对应的["..id.."]项布局无数据信息")
		return
	end
	
	if tbl.type == 1 then
		f.close1(id)
	elseif tbl.type == 2 then
		f.close2(id)
	elseif tbl.type == 3 then
		f.close3(id)
	else
	end
	
	if f.done(id) then
		f.set_finish(id)
	else
		f.set_willopen(id)
	end
	
	f.OnCloseGuide(id)
end

f.open1 = function(id)
	local tbl = d[id][1].data
	local init = d[id][1].init
	local parent = GetWindow(nil, tbl[1])
	if 0 == parent then
		log(this_file.."open1函数失败，找不到父窗口")
		return false
	end
	
	if 0 ~= GetWindow(parent, id) then
		log(this_file.."open1函数失败，指定id引导已存在")
		return false
	end
	
	local this = CreateImage(parent, nil, 0, 0, 0, 0, 0, id, 0, "")
	if 0 == this then
		return false
	end
	
	local x = 0 --X坐标
	if nil ~= tbl[2] then
		x = tbl[2]
	end
	local y = 0 --Y坐标
	if nil ~= tbl[3] then
		y = tbl[3]
	end
	local cx = 0 --宽度
	if nil ~= tbl[4] then
		cx = tbl[4]
	end
	local cy = 0 --高度
	if nil ~= tbl[5] then
		cy = tbl[5]
	end
	local use_girl_picture = false --美女图片
	if nil ~= tbl[6] and true == tbl[6] then
		tbl[6] = 1904100071
	end
	if nil ~= tbl[6] and 0 ~= tbl[6] and UI:Lua_IsTextureExists(tbl[6]) then
		use_girl_picture = true
	end
	local can_mouse_through = false --是否可点穿
	if nil ~= tbl[7] and true == tbl[7] then
		can_mouse_through = true
	end
	local use_close_button = true --是否使用关闭按钮
	if false == tbl[11] then
		use_close_button = false
	end
	local arrow_direction = 0 --箭头方向
	if nil ~= tbl[8] and tbl[8] >= 1 and tbl[8] <= 4 then
		arrow_direction = tbl[8]
	end
	local live_time = 0 --存留时间
	if nil ~= tbl[9] and 0 ~= tbl[9] then
		live_time = tbl[9] * 1000
	end
	local text = "" --显示文本
	if nil ~= tbl[10] then
		text = tbl[10]
	end
	WndSetPos(this, nil, x, y)
	if live_time > 0 then
		WndAddTimerBrief(this, nil, live_time, "GuideFunc.GuideCloseTimer")
	end

	local girl_width = 0
	local girl_height = 0
	if tbl[6] ~= 0 then
		if UI:Lua_GetTextureWidth(tbl[6]) then
			girl_width = LuaRet
		end
		if UI:Lua_GetTextureHeight(tbl[6]) then 
			girl_height = LuaRet
		end
		if tbl[6] == 1904100102 then
			girl_width = 180
		end
	end
	local margin = 10
	
	local panel_width = cx + margin * 2 --底部面板控件
	if use_girl_picture then
		panel_width = panel_width + girl_width
	end
	local panel_height = cy + margin * 2
	local panel = CreateImage(this, nil, 0, 0, 0, panel_width, panel_height, "Panel", 0, "")
	ImageSetAroundImage(panel, nil, 1904100001, 1904100002, 1904100003, 1904100004, 1904100005, 1904100006, 1904100007, 1904100008, 1904100009)
	if can_mouse_through then
		WndSetCanRevMsg(panel, nil, false)
	end

	if use_girl_picture then --美女图片控件
		local girl_posx = 0
		local girl_posy = cy + margin * 2 - girl_height
		local girl = CreateImage(this, nil, tbl[6], girl_posx, girl_posy, girl_width, girl_height, "Girl", 0, "")
		if can_mouse_through then
			WndSetCanRevMsg(girl, nil, false)
		end
	end
	if use_close_button then
		local button = CreateButton(this, nil, 1906300005, panel_width - 16, -10, 0, 0, "Close", 0, "")
		WndRegistScript(button, nil, RDWndBaseCL_mouse_lbClick, "GuideFunc.ClickCloseButton")
	end

	if text ~= "" then --编辑框控件
		local edit_posx = margin
		if use_girl_picture then
			edit_posx = edit_posx + girl_width
		end
		local edit_posy = margin
		local edit = CreateRichEdit(this, nil, 0, edit_posx, edit_posy, cx, cy, "Edit", 0, "")
		RichEditSetEnable(edit, nil, false)
		WndSetCanRevMsg(edit, nil, false)
		RichEditAppendString(edit, nil, text)
	end

	if 0 ~= arrow_direction then --箭头控件
		local arrow_offset = 10
		local arrow_image = 0
		local arrow_posx = 0
		local arrow_posy = 0
		local arrow_width = 0
		local arrow_height = 0
		local arrow_next_posx = 0
		local arrow_next_posy = 0
		if arrow_direction == 1 then --向上↑
			arrow_image = 1904100100
			arrow_width = 57
			arrow_height = 57
			arrow_posx = (panel_width - arrow_width) / 2
			arrow_posy = -arrow_height + 8
			arrow_next_posx = arrow_posx
			arrow_next_posy = arrow_posy - arrow_offset
		elseif arrow_direction == 2 then --向下↓
			arrow_image = 1904100016
			arrow_width = 37
			arrow_height = 57
			arrow_posx = (panel_width - arrow_width) / 2
			arrow_posy = panel_height - 5
			arrow_next_posx = arrow_posx
			arrow_next_posy = arrow_posy + arrow_offset
		elseif arrow_direction == 3 then --向左←
			arrow_image = 1904100101
			arrow_width = 57
			arrow_height = 57
			arrow_posx = -arrow_width + 5
			arrow_posy = (panel_height - arrow_height) / 2
			arrow_next_posx = arrow_posx - arrow_offset
			arrow_next_posy = arrow_posy
		else --向右→
			arrow_image = 1904100099
			arrow_width = 57
			arrow_height = 57
			arrow_posx = panel_width - 5
			arrow_posy = (panel_height - arrow_height) / 2
			arrow_next_posx = arrow_posx + arrow_offset
			arrow_next_posy = arrow_posy
		end
		local arrow = CreateImage(this, nil, arrow_image, arrow_posx, arrow_posy, arrow_width, arrow_height, "Arrow", 0, "")
		WndSetCanRevMsg(arrow, nil, false)
		WndAddTimerBrief(arrow, nil, 300, "GuideFunc.GuideArrowTimer")
		WndAddProperty(arrow, nil, "x", tostring(arrow_posx))
		WndAddProperty(arrow, nil, "y", tostring(arrow_posy))
		WndAddProperty(arrow, nil, "next_x", tostring(arrow_next_posx))
		WndAddProperty(arrow, nil, "next_y", tostring(arrow_next_posy))
		WndAddProperty(arrow, nil, "use_next", "1")
	end
	
	if init ~= nil and init ~= "" then
		local param = d[id][1].param
		local script = ""
		if type(param) == "string" then
			script = init.."("..this..","..string.format("%q", param)..")"
		else
			script = init.."("..this..")"
		end
		loadstring(script)()
	end
	f.run_open_script(id)
	
	WndRegistScript(this, nil, RDWndBaseCL_wnd_destroy, "GuideFunc.GuideWndDestroy")
	
	return true
end

f.close1 = function(id)
	local tbl = d[id][1].data
	WndClose(nil, tbl[1]..","..id)
end

f.ClickCloseButton = function(this)
	f.close(WndGetID(this, "parent"))
end
f.GuideCloseTimer = function(this)
	f.close(WndGetID(this, nil))
end

f.GuideWndDestroy = function(this)
	if WndIsLive(this, nil) then
		f.close(WndGetID(this, nil))
	end
end

f.GuideArrowTimer = function(this)
	local use_next = tonumber(WndGetProperty(this, nil, "use_next"))
	local posx = 0
	local posy = 0
	if use_next == 0 then
		posx = tonumber(WndGetProperty(this, nil, "x"))
		posy = tonumber(WndGetProperty(this, nil, "y"))
		WndAddProperty(this, nil, "use_next", "1")
	else
		posx = tonumber(WndGetProperty(this, nil, "next_x"))
		posy = tonumber(WndGetProperty(this, nil, "next_y"))
		WndAddProperty(this, nil, "use_next", "0")
	end
	WndSetPos(this, nil, posx, posy)
end

f.run_open_init = function(id)
	local init = d[id][1].init
	if init ~= nil and init ~= "" then
		local param = d[id][1].param
		local script = init.."("..string.format("%q", id)
		if type(param) == "string" then
			script = script..","..string.format("%q", param)
		end
		script = script..")"
		loadstring(script)()
	end
end

f.run_open_pre_script = function(id)
	local script = d[id][1].pre_script
	if script ~= nil and script ~= "" then
		loadstring(script)()
	end
end

f.run_open_script = function(id)
	local script = d[id][1].script
	if script ~= nil and script ~= "" then
		loadstring(script)()
	end
end

f.open2 = function(id)
	local tbl = d[id][1].data
	local init = d[id][1].init
	
	if tbl == nil or type(tbl) ~= "table" then
		return false
	end
	
	local magic = 0
	local x = 0
	local y = 0
	local speed = 0
	local time = 0
	if tbl[1] ~= nil and type(tbl[1]) == "number" then
		magic = tbl[1]
	end
	if tbl[2] ~= nil and type(tbl[2]) == "number" then
		x = tbl[2]
	end
	if tbl[3] ~= nil and type(tbl[3]) == "number" then
		y = tbl[3]
	end
	if tbl[4] ~= nil and type(tbl[4]) == "number" then
		speed = tbl[4]
	end
	if tbl[5] ~= nil and type(tbl[5]) == "number" then
		time = tbl[5]
	end
	
	if magic == 0 then
		return false
	end
	
	if not UI:Lua_AddMagicToPoint(magic, x, y, speed, time) then
		return false
	end
	
	f.run_open_init(id)
	f.run_open_script(id)
	
	return true
end

f.close2 = function(id)
	local tbl = d[id][1].data
	local magic = tbl[1]
	local x = tbl[2]
	local y = tbl[3]
	UI:Lua_DelMagicFromPoint(magic, x, y)
end

f.open3 = function(id)
	local tbl = d[id][1].data
	local init = d[id][1].init
	if type(tbl) ~= "table" then
		return false
	end
	
	if not ButtonSetShine(nil, tbl[1], true) then
		return false
	end
	
	f.run_open_init(id)
	f.run_open_script(id)
	
	return true
end

f.close3 = function(id)
	local tbl = d[id][1].data
	ButtonSetShine(nil, tbl[1], false)
end

f.PkgRectifyPos = function(this, item)
	local id = WndGetID(this, nil)
	
	local legal = false
	while true do
		if item == nil then
			break
		end
		
		local pkg = GetWindow(nil, "Package")
		if 0 == pkg then
			break
		end
		
		if not UI:Lua_GetItemTemplateHandleByKeyName(item) then
			break
		end
		
		local handle = LuaRet
		if not UI:Lua_GetItemTemplatePropByHandle(handle, ITEM_PROP_ID) then
			break
		end
		local itemid = LuaRet
		
		if not UI:Lua_PackageFindItemPosById(itemid) then
			break
		end
		local page = LuaRet[1]
		local pos = LuaRet[2]
		
		if not UI:Lua_PackageActivePage(page) then
			break
		end
		
		local ctrl = GetWindow(pkg, "Item"..pos)
		if 0 == ctrl then
			break
		end
		
		local x, y = WndGetPos(ctrl, nil)
		local ox, oy = WndGetPos(this, nil)
		WndSetPos(this, nil, x + ox, y + oy)
		
		WndAddProperty(ctrl, nil, "GuideID", id)
		WndRegistScript(ctrl, nil, RDWndBaseCL_mouse_lbClick, "GuideFunc.PkgRectifyClick")
		WndRegistScript(ctrl, nil, RDWndBaseCL_mouse_rbClick, "GuideFunc.PkgRectifyClick")
		
		ctrl = GetWindow(pkg, "SettlePackage")
		if 0 ~= ctrl then
			WndAddProperty(ctrl, nil, "GuideID", id)
			WndRegistScript(ctrl, nil, RDWndBaseCL_mouse_lbClick, "GuideFunc.PkgRectifyClick")
		end
		
		legal = true
		break
	end
	
	if not legal then
		f.close(id)
	end
end

f.PkgRectifyClick = function(this)
	local id = WndGetProperty(this, nil, "GuideID")
	f.close(id)
end

f.PkgRectifyPosForSkill = function(this)
	UI:Lua_GetPlayerSelfProperty32(ROLE_PROP32_JOB)
	local keyname
	if LuaRet == 1 then
		keyname = "剑术心法"
	elseif LuaRet == 2 then
		keyname = "炎球术"
	elseif LuaRet == 3 then
		keyname = "治疗咒"
	end
	
	f.PkgRectifyPos(this, keyname)
end

f.MainBarRectifyPosForSkill = function(this)
	local x, y = WndGetScreenPos(nil, "GameMainInterface,GameMainBar,Skill")
	local ox, oy = WndGetPos(this, nil)
	WndSetPos(this, nil, x + ox, y + oy)
end

f.Refine1 = function(this, param)
	f.PkgRectifyPos(this, param)
	WndAddTimerBrief(nil, "装备精炼2", 200, "GuideFunc.RefineTimer")
end

f.RefineTimer = function(this)
	local status = 0
	if f.is_opening("引导玩家进行精炼3") then
		if ComboBoxGetText(this, "精炼属性选择") ~= "精炼属性选择" then
			f.close("引导玩家进行精炼3")
			status = 3
		end
	elseif f.is_opening("引导玩家进行精炼") then
	elseif f.is_opening("引导玩家进行精炼2") then
	elseif f.is_opening("引导玩家进行精炼4") then
	else
		if "" ~= RDItemCtrlGetGUIDataKeyName(this, "装备") then
			status = 1
		elseif "" ~= RDItemCtrlGetGUIDataKeyName(this, "灵元珠") then
			status = 2
		end
	end
	
	if 0 ~= status then
		if status == 1 and "" ~= RDItemCtrlGetGUIDataKeyName(this, "灵元珠") then
			status = 2
		end
		
		if status == 2 and ComboBoxGetText(this, "精炼属性选择") ~= "精炼属性选择" then
			status = 3
		end
		
		local t = { "引导玩家进行精炼2", "引导玩家进行精炼3", "引导玩家进行精炼4" }
		if not f.done(t[status]) and f.is_willopen(t[status]) then
			f.open(t[status])
		end
	end
end

--两个对话框设置位置
f.rectify_open = function(dlg1, x1, y1, dlg2, x2, y2)
	if dlg1 ~= nil and dlg1 ~= "" then
		local this = GetWindow(nil, dlg1)
		if 0 ~= this then
			local x, y = WndGetPos(this, nil)
			if x1 ~= nil then
				x = x1
			end
			if y1 ~= nil then
				y = y1
			end
			WndSetPos(this, nil, x, y)
		end
	end
	if dlg2 ~= nil and dlg2 ~= "" then
		local this = GetWindow(nil, dlg2)
		if 0 ~= this then
			local x, y = WndGetPos(this, nil)
			if x2 ~= nil then
				x = x2
			end
			if y2 ~= nil then
				y = y2
			end
			WndSetPos(this, nil, x, y)
		end
	end
end
  --打开装备合成面板时自动放入神魔灵模具
  f.open_zbhc2 = function()
	local this = GetWindow(nil, "装备合成2,panel,i1")
	zbdh2.ClickItem(this)
end
--ENEND--