local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_accept(player, quest_id)
	local map = lualib:MapGuid(player)
    local X = lualib:X(player)
    local Y = lualib:Y(player)
	lualib:Map_GenSingleMonster(map, X, Y, 5, 5, "高级木人1",false)
	lualib:Map_GenSingleMonster(map, X, Y, 5, 5, "高级木人2",false)
	lualib:Map_GenSingleMonster(map, X, Y, 5, 5, "高级木人3",false)
	return true
end
		