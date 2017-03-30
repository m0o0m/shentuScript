local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
		local addbuff = "ÔÂ±ý"
		local num = lualib:Item_GetAmount(player, item)
		lualib:Item_SetAmount(player, item, num - 1)
        lualib:AddBuff(player, addbuff, 0)
		return true
end
