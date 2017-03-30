local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


function main(player, item)
	local mapguid = lualib:MapGuid(player)
	local x = lualib:X(player)
	local y = lualib:Y(player)
	--local keyname = lualib:KeyName(item)  
	local shaizi_keyname = {"一", "二", "三", "四", "五", "六"}
	
	if lualib:Item_Destroy(player, item, "丢骰子", player) == true then
		lualib:Map_GenItemRnd(mapguid, x, y, 2, shaizi_keyname[lualib:GenRandom(1, 6)], 1, false, 3)
	else
		lualib:SysPromptMsg(player, "物品删除失败,导致骰子无法丢出来!")
	end
	


	return true
end
