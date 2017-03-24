local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player_guid, item_guid)

	local RMB = math.random(1, 3);
	if not lualib:AddBindIngot(player_guid, RMB, "红包：加绑定元宝", player_guid) then 
		return false
	end
	return true
end
