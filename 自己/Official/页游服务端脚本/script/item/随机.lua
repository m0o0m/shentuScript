local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


function main(player, item)
	local mapguid = lualib:MapGuid(player)
	local itemcount = lualib:Item_GetUsesCount(player, item)
	
	if itemcount ~= nil then
		local newitemcout =lualib:Item_SetUsesCount(player, item, itemcount - 1)
		lualib:Map_JumpRnd(mapguid, player)
	end
	
	if newitemcout == 0 then
	
		if not lualib:Item_Destroy(player, item, "使用随机删除道具", player) then
			return false
		end	

	end

	return true
end
