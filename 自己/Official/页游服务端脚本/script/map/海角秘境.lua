local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local CMap = {
	["怪物"]={
		{["索引名"] = "海妖将军",["坐标"]={{52,71},},},
	},
	["范围"] = 0,		--怪物刷新范围
	["数量"] = 1,		--怪物刷新数量
	["是否重生"] = false, 		--怪物是否重生
}

function on_map_create(map)
	if not CMap:gen_monster(map) then return end
lualib:AddTimer(map,1,1000,-1,"on_ai")
end

function CMap:gen_monster(map)
	for _,v in pairs(CMap["怪物"])do
		for _,v_ in pairs(v["坐标"])do
			if not lualib:Map_GenMonster(map,v_[1],v_[2],CMap["范围"],lualib:GenRandom(1,8), v["索引名"],CMap["数量"],CMap["是否重生"])then
			return false
			end
		end
	end
lualib:Map_GenMonster(map,35,65,9,lualib:GenRandom(1,8),"海妖追兵1",10,CMap["是否重生"])
lualib:Map_GenMonster(map,35,65,9,lualib:GenRandom(1,8),"海妖追兵2",10,CMap["是否重生"])
	return true
end


function on_ai(map,timeid)
if lualib:Map_GetMonsterCount(map,"",true,true)==0 then
lualib:AddTimer(map,10,10000,1,"mvout")
lualib:SysMsg_SendMapMsg(map,"你已经打败所有追兵,10秒后你会被自动传送到海角秘境！")
lualib:DisableTimer(map,1)
end
end

function mvout(map,timeid)
local map_width = lualib:Map_GetWidth(map)
	local map_height = lualib:Map_GetHeight(map)
	if map_width < map_height then map_width = map_height end
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, map_width, true)
	if players == nil then return end
lualib:Player_MapMoveXY(players[1],"海底3野外",34,102,2)
end