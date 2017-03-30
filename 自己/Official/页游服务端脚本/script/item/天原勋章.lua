local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function main(player, item)		
	local msg = ""
	local player_name = lualib:Name(player)
	msg = player_name.."，这枚奇怪的勋章，似乎是这些天原战士生前之物，背后或许隐藏了什么秘密。据说，天荒邪庙二层内，似乎有个#COLORCOLOR_SKYBLUE#[落魄的战士]#COLOREND#知道勋章的秘密，赶紧找找吧。\n \n"
    msg = msg.."                                                   #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@likai *01*「返回」>"
    lualib:NPCTalk(player, msg)
	lualib:AddTimerEx(item, 250, 1000, -1, "npc_gen", "")
	return true
end

function likai(player, item)

	return ""
end

function npc_gen(item)
    
	local map = lualib:Map_GetMapGuid("邪庙2")
	local npc = lualib:Map_GetMapNpc(map, "落魄的战士")
	if not lualib:Npc_IsExist(npc) then lualib:Map_GenNpc(map, "落魄的战士", 263, 178, 2, 4) end
	lualib:DisableTimer(item, 250)
	return true
end