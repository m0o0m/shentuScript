TimerGift = {}

-- 新版时间礼包 2013年3月6日 13:14:36
function AddCEIcon(line, pos, name, image, func, param, tips)
	TimerGift.AddIcon(line, pos, name, image, nil, func, nil, param, tips)
end

function AddSEIcon(line, pos, name, image, file, func, param, tips)
	TimerGift.AddIcon(line, pos, name, image, file, func, nil, param, tips)
end

function AddCETimeIcon(line, pos, name, image, func, time, param, tips)
	TimerGift.AddIcon(line, pos, name, image, nil, func, time, param, tips)
end

function AddSETimeIcon(line, pos, name, image, file, func, time, param, tips)
	TimerGift.AddIcon(line, pos, name, image, file, func, time, param, tips)
end

function AddIconMagic(name, image, x, y, elapse)
	TimerGift.AddIconMagic(name, image, x, y, elapse)
end

function DelIconMagic(name)
	TimerGift.DelIconMagic(name)
end

function DelIcon(name)
	local t = timer_gift
	if t.get(name) ~= nil then
		t.remove(name)
		TimerGift.UpdateIcon()
	end
end

function SetIconID(name, icon_id)
	local t = timer_gift
	local tbl = t.get(name)
	if tbl ~= nil then
		tbl.image = tonumber(icon_id)
		TimerGift.UpdateIcon()
	end
end

function SetIconShine(name, is_shine)
	ButtonSetShine(nil, "TimerGift,"..name, is_shine)
end

RegisterUIEvent(LUA_EVENT_INITRESCOMPLETE,"TimerGift","TimerGift.InitResComplete")
RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE,"TimerGift","TimerGift.UpdateScreenSize")
RegisterUIEvent(LUA_EVENT_ONQUITEGAME,"TimerGift","TimerGift.QuitGame")


function OnClickCEIconCampaign(param, this, tbl)
	--TODO: AddCEIcon的本地回调函数
end

local this_file = "时间礼包.lua:"
local t = timer_gift
--[[
	the table format as follow:
	{
		[line] = 
		{
			[pos] = {name, line, pos, image, file, func, time, param, tips, magic = { imageid, x, y, elapse } },
		},
	}
]]


local Initialize = function()
	if t ~= nil then return end
	timer_gift = {}
	t = timer_gift
	t.show = true

	t.insert = function(line, pos, tbl)
		if line <= 0 then
			CL:Log(this_file.."添加Icon图标行数不正确")
		return end

		if type(tbl) ~= "table" then
			CL:Log(this_file.."添加Icon数据格式不正确")
		return end

		if tbl.name == nil then
			CL:Log(this_file.."添加Icon数据中不包含name字段")
		return end

		if t.get(tbl.name) ~= nil then
			CL:Log(this_file.."添加Icon数据中的name已存在")
		return end
		tbl.line = line
		tbl.pos = pos

		if t[line] == nil then
			t[line] = {}
		end

		t[line][pos] = tbl
	end

	t.remove = function(name)
		for k, v in pairs(t) do
			if type(k) == "number" then
				for m, n in pairs(v) do
					if type(m) == "number" and n.name == name then
						v[m] = nil
					return end
				end
			end
		end
	end

	t.get = function(name)
		for k, v in pairs(t) do
			if type(k) == "number" then
				for m, n in pairs(v) do
					if type(m) == "number" then
						if n.name == name then
							return n
						end
					end
				end
			end
		end
	end

	t.clear = function()
		for k, v in pairs(t) do
			if type(k) == "number" then
				t[k] = nil
			end
		end
	end

	t.has_data = function()
		for k, v in pairs(t) do
			if type(k) == "number" and k > 0 then
				return true
			end
		end
		return false
	end
end

Initialize()

TimerGift.RectifyLayerPos = function()
	local sX = CL:GetScreenWidth()
	WndSetPos(nil, "TimerGift", sX-240, 10)
end

TimerGift.UpdateIcon = function()
	WndClose(nil, "TimerGift")
	local parent = GUI:ImageCreate(0, "TimerGift", 0, 0, 0)
	TimerGift.RectifyLayerPos()
	if t.has_data() then
		local TButtonImage = { [true] = 1800000121, [false] = 1800000125}
		local TButtonTips = { [true] = "隐藏", [false] = "显示" }
		local mbtn = GUI:ButtonCreate(parent, "mini", TButtonImage[t.show], 50, -5)
		GUI:WndSetHint(mbtn, TButtonTips[t.show])
		
		----显示/隐藏  战神新手指引
		local handle = GetWindow(nil, "GuideDlg_mars")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, t.show)
		end
		
		WndRegistScript(mbtn, nil, RDWndBaseCL_mouse_lbClick, "TimerGift.MiniLButtonClick")

		for k, v in pairs(t) do
			if type(k) == "number" and k > 0 then
				local Y = math.floor(70 * (k - 1))
				for m, n in pairs(v) do
					if type(m) == "number" then
						local tbl = n
						local offset = math.floor(70 * m - 10)
						local this = GUI:ButtonCreate(parent, tbl.name, tbl.image, offset, Y)
						GUI:WndSetHint(this, tbl.tips)
						if tbl.time ~= nil and tbl.time > 0 then
							WndAddProperty(this, nil, "line", tostring(tbl.line))
							WndAddProperty(this, nil, "pos", tostring(tbl.pos))
							TimerGift.UpdateTimer(this, tbl.time)
							WndAddTimer(this, nil, 1, 1000, "TimerGift.OnTimer")
						end
						if tbl.name == "收藏游戏" then
							WndRegistScript(this, nil, RDWndBaseCL_mouse_lbClick, "TimerGift.SaveWebGameClick")
						else
							WndRegistScript(this, nil, RDWndBaseCL_mouse_lbClick, "TimerGift.IconLButtonClick")
						end
						if type(tbl.magic) == "table" then
							WndAddEffect(this, nil, tbl.magic[1], tbl.magic[2], tbl.magic[3], tbl.magic[4])
						end
						if not t.show or tbl.name == "防沉迷" then
							WndSetVisible(this, nil, false)
						end
						if tbl.name == "首充大礼" then
							local handle = GUI:ImageCreate(parent, "FirstRechargeTipsImg", 1805300094, offset-191, Y+59)
							if handle ~= 0 then
								TimerGift.uih = handle
								GUI:WndSetCanRevMsg(handle, false)
								GUI:WndSetEnableM(handle, false)
								WndSetVisible(handle, nil, false)
							end
							WndRegistScript(this, nil, RDWndBaseCL_mouse_in, "TimerGift.ShowFirstRechargeImg")
							WndRegistScript(this, nil, RDWndBaseCL_mouse_out, "TimerGift.HideFirstRechargeImg")
						end
					end
				end
			end
		end
	end
end

function TimerGift.ShowFirstRechargeImg()
	if TimerGift.uih ~= 0 then
		WndSetVisible(TimerGift.uih, nil, true)
		--msg("on mouse in")
	end
end

function TimerGift.HideFirstRechargeImg()
	WndSetVisible(TimerGift.uih, nil, false)
end

TimerGift.OnTimer = function(this, timer_id)
	local line = tonumber(WndGetProperty(this, nil, "line"))
	local pos = tonumber(WndGetProperty(this, nil, "pos"))
	local time = 0
	if t[line] ~= nil and t[line][pos] ~= nil then
		local tbl = t[line][pos]
		if tbl.time ~= nil then
			tbl.time = tbl.time - 1
			time = tbl.time
		end
	end
	TimerGift.UpdateTimer(this, time)
	if time <= 0 then
		WndDelTimer(this, nil, timer_id)
	end
end

TimerGift.UpdateTimer = function(this, time)
	local back = GetWindow(this, "back")
	if 0 == back then
		back = CreateImage(this, nil, 1903800014, -1, 55, 0, 0, "back", 0, "")
		WndSetCanRevMsg(back, nil, false)
	end
	if time == nil or time <= 0 then
		WndClose(this, "edit")
		local re = GetWindow(this, "re")
		if 0 == re then
			re = CreateRichEdit(this, nil, 0, 4, 54, 60, 16, "re", 0, "")
			WndSetCanRevMsg(re, nil, false)
			RichEditSetCurFont(re, nil, "SIMLI")
			RichEditAppendString(re, nil, "#COLORCOLOR_GOLD#可领取#COLOREND#")
		end
	else
		WndClose(this, "re")
		local edit = GetWindow(this, "edit")
		if 0 == edit then
			edit = CreateEdit(this, nil, 0, -1, 54, 60, 16, "edit", 0, "")
			WndSetCanRevMsg(edit, nil, false)
			WndSetFlagsM(edit, nil, flg_dlgEdit_textInMid+flg_dlgEdit_textInCenter)
			EditSetTextColor(edit, nil, mkcolor("#FED9AA"))
		end
		EditSetTextM(edit, nil, GetLeaveTimeString2(time))
	end
end

TimerGift.SaveWebGameClick = function(this)
	local name = WndGetID(this, nil)
	local tbl = t.get(name)
	if tbl ~= nil then
		CL:SaveWebGame("lingqu");
	end
end

--对应服务端图标点击的函数名
function lingqu()
	UI:Lua_SubmitForm("收藏游戏","store_aaa", "")
end

TimerGift.IconLButtonClick = function(this)
	local name = WndGetID(this, nil)
	local tbl = t.get(name)
	if tbl ~= nil then
		if tbl.file ~= nil and tbl.file ~= "" then
			UI:Lua_SubmitForm(tostring(tbl.file), tostring(tbl.func), tostring(tbl.param))
		else
			local run_error = true
			if tbl.func ~= nil and type(tbl.func) == "string" and tbl.func ~= "" then
				local script = "return "..tbl.func
				local tfunc = loadstring(script)
				if tfunc ~= nil then
					local func = tfunc()
					if func ~= nil and type(func) == "function" then
						func(tbl.param, this, tbl)
						run_error = false
					end
				end
			end

			if run_error then
				CL:Log(this_file..tbl.func.."函数不存在或格式不正确")
			end
		end
	end
end

TimerGift.MiniLButtonClick = function(this)
	t.show = not t.show
	TimerGift.UpdateIcon()

end

TimerGift.AddIcon = function(line, pos, name, image, file, func, time, param, tips)
	if name == nil or name == "" then
		CL:Log(this_file.."添加图标函数调用image参数错误")
	return end

	if image == nil or image == "" or image == 0 then
		CL:Log(this_file.."添加图标函数调用image参数错误")
	return end

	if func == nil or func == "" then
		CL:Log(this_file.."添加图标函数调用func参数错误")
	return end
	
	if tips == nil or type(tips) ~= "string" then
		tips = ""
	end

	image = tonumber(image)
	time = tonumber(time)
	if file == nil then file = "" end
	if param == nil then param = "" end

	local tbl = t.get(name)
	if tbl ~= nil then
		tbl.image = image
		tbl.file = file
		tbl.func = func
		tbl.time = time
		tbl.param = param
		tbl.tips = tips
		TimerGift.UpdateIcon()
	else
		local tbl = {}
		tbl.name = name
		tbl.image = image
		tbl.file = file
		tbl.func = func
		tbl.time = time
		tbl.tips = tips
		tbl.param = param
		t.insert(line, pos, tbl)
		TimerGift.UpdateIcon()
	end
end

TimerGift.AddIconMagic = function(name, image, x, y, elapse)
	local tbl = t.get(name)
	if tbl == nil then
		return
	end
	
	if image == nil then
		return
	end
	
	if x == nil then
		x = 0
	end
	
	if y == nil then
		y = 0
	end
	
	if elapse == nil then
		elapse = 50
	end
	
	tbl.magic = { tonumber(image), tonumber(x), tonumber(y), tonumber(elapse) }
	TimerGift.UpdateIcon()
end

TimerGift.DelIconMagic = function(name)
	local tbl = t.get(name)
	if tbl == nil then
		return
	end
	
	if tbl.magic ~= nil then
		tbl.magic = nil
	end
	TimerGift.UpdateIcon()
end

TimerGift.InitResComplete = function()
	TimerGift.UpdateIcon()
end

TimerGift.UpdateScreenSize = function()
	TimerGift.RectifyLayerPos()
end

TimerGift.QuitGame = function()
	t.clear()
	WndClose(nil, "TimerGift")
end