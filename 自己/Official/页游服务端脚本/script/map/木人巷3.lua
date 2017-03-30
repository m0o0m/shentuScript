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
			lualib:MsgBox(v1, "���ȵ�#COLORCOLOR_SKYBLUE#�ر����ػ���#COLOREND#����#COLORCOLOR_GREENG#[ ʱ֮ɳ�� ]#COLOREND#�һ�#COLORCOLOR_RED#�ر���ʱ��#COLOREND#��#COLORCOLOR_WHITE#�������ǲ�����������ģ�#COLOREND#")
			lualib:Player_MapMoveXY(v1, "����", 232, 223, 10);
		else
			for k2, v2 in pairs(TipTbl) do
				if lualib:Player_GetCustomVarInt(v1, "time") == v2 then
					lualib:SysMsg_SendPromptMsg(v1, "���Ĳر���ʱ��ֻʣ" .. v2/60 .. "�����ˣ�")
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
    lualib:SysMsg_SendPromptMsg(player, "���ѽ���ر���")
	lualib:SysMsg_SendPromptMsg(player, "ʣ��ر���ʱ�䣺" .. hour .. "Сʱ" .. minute .. "��" .. second .. "��")
    lualib:SysMsg_SendPromptMsg(player, "�߼�ľ�����ʱ�������ٶ������ľ����һ��Ϊ1�룬����ϧʱ�䣡^_^")
	
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.�ر������ܻ�ȡ������������������װ�������ߡ����\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.�ر����ڵ���Ʒ������Ҳ�������Զ����ر�����ٺͶ࣡\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.�߼�ľ�����ʱ�������ٶ������ľ����һ��Ϊ1�룬����ϧʱ�䣡^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)--]]
end

function on_trigger_leave_map(player)
--[[	local time = lualib:Player_GetCustomVarInt(player, "time")
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
    lualib:SysMsg_SendPromptMsg(player, "�����뿪�ر���")
	lualib:SysMsg_SendPromptMsg(player, "ʣ��ر���ʱ�䣺" .. hour .. "Сʱ" .. minute .. "��" .. second .. "��")--]]
end

function on_map_destroy(map)
 --[[   lualib:ClearTrigger(map)--]]
end
