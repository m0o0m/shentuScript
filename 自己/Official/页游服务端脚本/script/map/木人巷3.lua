local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

TipTbl = {1800, 300, 240, 180, 120, 60}

function on_map_create(map)
--[[	timerdid = lualib:GenTimerId(map)
	lualib:AddTimer(map, timerdid, 1000, -1, "SubPlayerTime")
	lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map,  lua_trigger_leave_map, "on_trigger_leave_map")--]]
end

function SubPlayerTime(map, timer_id)
--[[	local range = 0
	local map_width = lualib:Map_GetWidth(map)
    local map_height = lualib:Map_GetHeight(map)
    if map_width < map_height then range = map_height else range = map_width end
	local playerList = lualib:Map_GetMapPlayers(map, true)
	if #playerList == 0 then return end
	for k1, v1 in pairs(playerList) do
		if lualib:Player_GetCustomVarInt(v1, "time") <= 0 then
			lualib:MsgBox(v1, "请先到#COLORCOLOR_SKYBLUE#藏宝阁守护者#COLOREND#处用#COLORCOLOR_GREENG#[ 时之沙砾 ]#COLOREND#兑换#COLORCOLOR_RED#藏宝阁时间#COLOREND#，#COLORCOLOR_WHITE#否则我是不会让你进来的！#COLOREND#")
			lualib:Player_MapMoveXY(v1, "龙城", 232, 223, 10);
		else
			for k2, v2 in pairs(TipTbl) do
				if lualib:Player_GetCustomVarInt(v1, "time") == v2 then
					lualib:SysMsg_SendPromptMsg(v1, "您的藏宝阁时间只剩" .. v2/60 .. "分钟了！")
					break
				end
			end
			lualib:Player_SetCustomVarInt(v1, "time", lualib:Player_GetCustomVarInt(v1, "time") - 1)
			if lualib:Player_GetCustomVarInt(v1, "time") <= 0 then
				lualib:Player_SetCustomVarInt(v1, "time", 0)
			end
		end
	end--]]
end

function on_trigger_enter_map(player)
--[[	local time = lualib:Player_GetCustomVarInt(player, "time")
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
    lualib:SysMsg_SendPromptMsg(player, "您已进入藏宝阁")
	lualib:SysMsg_SendPromptMsg(player, "剩余藏宝阁时间：" .. hour .. "小时" .. minute .. "分" .. second .. "秒")
    lualib:SysMsg_SendPromptMsg(player, "高级木人巷的时间流逝速度与初级木人巷一样为1秒，请珍惜时间！^_^")
	
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.藏宝阁内能获取到世界上所有最珍贵的装备、道具、坐骑！\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.藏宝阁内的物品在外面也会产，但远不如藏宝阁快速和多！\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.高级木人巷的时间流逝速度与初级木人巷一样为1秒，请珍惜时间！^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)--]]
end

function on_trigger_leave_map(player)
--[[	local time = lualib:Player_GetCustomVarInt(player, "time")
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
    lualib:SysMsg_SendPromptMsg(player, "您已离开藏宝阁")
	lualib:SysMsg_SendPromptMsg(player, "剩余藏宝阁时间：" .. hour .. "小时" .. minute .. "分" .. second .. "秒")--]]
end

function on_map_destroy(map)
 --[[   lualib:ClearTrigger(map)--]]
end
