local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("form/MarsWnd_s")

local lhzr_item_pro = {
						{"元宝50", 200, 999999, 50, 3},
						{"绑定元宝200", 200, 9999999, 200, 4},
						{"元宝100", 100, 9999999, 100, 3},
						{"绑定元宝500", 200, 9999999, 500, 4},
						{"绑定金币1万", 6000, 9999999, 10000, 5},
						{"boss_points", 1500, 999999, 2000, 2},--BOSS积分
						{"ach_score", 1500, 999999, 2000, 2},--功勋
						{"Ach_jifen", 1500, 999999, 2000, 2},--成就
						{"经验", 6000, 999999, 60000, 6},
					} 
--[1]物品keyname，[2]权重，[3]活动给的总数量，[4]单次给的物品数量，[5]物品类型1是道具，2是变量，3是元宝，4绑定元宝，5绑定金币，6经验

local int_to_name = {
						["boss_points"] = "BOSS积分",
						["ach_score"] = "功勋",
						["Ach_jifen"] = "成就",
					}


function on_map_create(strMap)
	lualib:AddTrigger(strMap, lua_trigger_leave_map, "on_leave_map" )
	lualib:Map_GenNpc(strMap, "龙魂之刃场内", 96, 101, 0, 3) 
	lualib:SetDBStrEx("lhzr_item_t", serialize(lhzr_item_pro), 0)	
	lualib:AddTrigger(strMap, lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTimer(strMap, lualib:GenTimerId(strMap), 5000, -1, "longcheng_time")	
	
	--lualib:AddTrigger(strMap, lua_trigger_player_relive, "on_trigger_player_relive")
end

local relive_xy = {
					{75, 125},
					{115, 125},
					{115, 85},
					{75, 85},
				}

function on_trigger_player_relive(player)
	local map = lualib:MapGuid(player)
	if "" == map then return end
	local rand = lualib:GenRandom(1, #relive_xy)
	lualib:Player_Relive(player, "", relive_xy[rand][1], relive_xy[rand][2], 12, 99)
	return true
end


local xy_list = {
					{96, 100, 100002840},
					{97, 100, 100002840},
					{97, 101, 100002840},
					{97, 102, 100002840},
					{96, 102, 100002840},
					{95, 102, 100002840},
					{95, 101, 100002840},
					{95, 100, 100002840},
				} --3020090000


function longcheng_time(map)
	for k, v in pairs(xy_list) do
		local p = lualib:Map_GetRegionPlayers(map, v[1], v[2], 0, true)
		if #p > 0 then
			award_func(p[1])
		end
	end
end

function award_func(player)
	local lhzr_item_t = lualib:GetDBStr("lhzr_item_t")
	--
	if lhzr_item_t ~= "" then
		lhzr_item_t = deserialize(lhzr_item_t)
	end
	
	local t = {}
	local t_rate = {}
	for i = 1, #lhzr_item_t do
		t[i] = lhzr_item_t[i][1]
		t_rate[i] = lhzr_item_t[i][2]
	end
	--1是道具，2是变量，3是元宝，4绑定元宝，5绑定金币，6经验
	local item, key = get_table_key(t, t_rate)
	if lhzr_item_t[key][5] == 1 then
		if lualib:AddItem(player, item, lhzr_item_t[key][4], false, "", "") then

		end
	elseif lhzr_item_t[key][5] == 2 then
		lualib:SetInt(player, item, lualib:GetInt(player, item) + lhzr_item_t[key][4])
		if int_to_name[item] ~= nil then
			local str = "\"".."获得"..int_to_name[item]..lhzr_item_t[key][4].."点！" .."\""
			lualib:ShowFormWithContent(player, "脚本表单", "LongHunZL.ItemAwardPrompt("..str..");")
		end
	elseif lhzr_item_t[key][5] == 3 then
		if lualib:Player_AddIngot(player, lhzr_item_t[key][4], false, "城主", player) then
			local str = "\"".."获得元宝"..lhzr_item_t[key][4].."\""
			lualib:ShowFormWithContent(player, "脚本表单", "LongHunZL.ItemAwardPrompt("..str..");")
		end
	elseif lhzr_item_t[key][5] == 4 then
		if lualib:Player_AddIngot(player, lhzr_item_t[key][4], true, "城主", player) then
			local str = "\"".."获得绑定元宝"..lhzr_item_t[key][4].."\""
			lualib:ShowFormWithContent(player, "脚本表单", "LongHunZL.ItemAwardPrompt("..str..");")
		end
	elseif lhzr_item_t[key][5] == 5 then
		if lualib:Player_AddGold(player, lhzr_item_t[key][4], true, "城主", player) then
			local str = "\"".."获得绑定金币"..lhzr_item_t[key][4].."\""
			lualib:ShowFormWithContent(player, "脚本表单", "LongHunZL.ItemAwardPrompt("..str..");")
		end
	elseif lhzr_item_t[key][5] == 6 then
		if lualib:Player_AddExp(player, lhzr_item_t[key][4], "城主", player) then
			local str = "\"".."获得经验"..lhzr_item_t[key][4].."\""
			lualib:ShowFormWithContent(player, "脚本表单", "LongHunZL.ItemAwardPrompt("..str..");")
		end
	end
	lhzr_item_t[key][3] = lhzr_item_t[key][3] - 1
	if lhzr_item_t[key][3] <= 0 then
		lhzr_item_t[key][2] = 0
	end
	lualib:SetDBStrEx("lhzr_item_t", serialize(lhzr_item_t), 0)
end

--获取权重选项
function get_table_key(t, t_rate)
	local maxs = 0
	local rate_t = {}
	for i = 1, #t_rate do
		maxs = maxs + t_rate[i]
		rate_t[i] = maxs
	end
	
	local key = 1
	local rand = lualib:GenRandom(1, maxs)
	for i = 1, #rate_t do
		if rand < rate_t[i] then
			key = i
			break
		end
	end
	
	return t[key], key
end


function on_trigger_enter_map(player)
	lualib:ShowFormWithContent(player, "脚本表单", "GameMainBar.Taskitem(5)")
	local hero = lualib:GetCurrentHero(player)
	if "" ~= hero then
		if lualib:DestroyDummy(hero) then
			lualib:SetInt(player, "HeroRelive", 1)
		end
	end
	
	local map = lualib:GetStr(lualib:Map_GetMapGuid("巫山城"), "active_lhzr_map")
	--if lualib:GetInt(map, "active_jqpd_flag") == 0 then
		--[[for k, v in pairs(xy_list) do
			lualib:RunClientScript(player, "ItemEffect", "texiao", v[3].."#"..v[1].."#"..v[2].."#0#99999000")
		end--]]
		--lualib:SetInt(map, "active_jqpd_flag", 11)
	--end
	local v = {96, 101, 200001466}
	lualib:RunClientScript(player, "ItemEffect", "texiao", v[3].."#"..v[1].."#"..v[2].."#0#99999000")
	return ""
end


function on_leave_map(player)
	if not lualib:Player_IsPlayer(player) then
		return ""
	end
	if lualib:GetInt(player, "HeroRelive") ~= 0 then       
		lualib:DelayCall(player, 300, "DelayFunc", "")  --离开地图触发  人居然还在地图内 orz..
	end
	lualib:SetInt(player, "HeroRelive", 0)
	local str = "" 
	str =str.. "local Handle = GetWindow(nil, \"LongHunZL_inside\")\n"
	str =str.."if Handle ~= 0 then\n"
	str =str.."GUI:WndClose(Handle)\n"
	str = str .."end\n"
	lualib:ShowFormWithContent(player, "脚本表单", "LongHunZL.CloseDlg();"..str..";CL:DelMagicFromPoint(200001466,96,101)")
	return ""
end

function DelayFunc(player)
	HeroRelive(player)
end