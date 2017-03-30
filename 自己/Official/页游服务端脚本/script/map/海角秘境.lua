local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local CMap = {
	["����"]={
		{["������"] = "��������",["����"]={{52,71},},},
	},
	["��Χ"] = 0,		--����ˢ�·�Χ
	["����"] = 1,		--����ˢ������
	["�Ƿ�����"] = false, 		--�����Ƿ�����
}

function on_map_create(map)
	if not CMap:gen_monster(map) then return end
lualib:AddTimer(map,1,1000,-1,"on_ai")
end

function CMap:gen_monster(map)
	for _,v in pairs(CMap["����"])do
		for _,v_ in pairs(v["����"])do
			if not lualib:Map_GenMonster(map,v_[1],v_[2],CMap["��Χ"],lualib:GenRandom(1,8), v["������"],CMap["����"],CMap["�Ƿ�����"])then
			return false
			end
		end
	end
lualib:Map_GenMonster(map,35,65,9,lualib:GenRandom(1,8),"����׷��1",10,CMap["�Ƿ�����"])
lualib:Map_GenMonster(map,35,65,9,lualib:GenRandom(1,8),"����׷��2",10,CMap["�Ƿ�����"])
	return true
end


function on_ai(map,timeid)
if lualib:Map_GetMonsterCount(map,"",true,true)==0 then
lualib:AddTimer(map,10,10000,1,"mvout")
lualib:SysMsg_SendMapMsg(map,"���Ѿ��������׷��,10�����ᱻ�Զ����͵������ؾ���")
lualib:DisableTimer(map,1)
end
end

function mvout(map,timeid)
local map_width = lualib:Map_GetWidth(map)
	local map_height = lualib:Map_GetHeight(map)
	if map_width < map_height then map_width = map_height end
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, map_width, true)
	if players == nil then return end
lualib:Player_MapMoveXY(players[1],"����3Ұ��",34,102,2)
end