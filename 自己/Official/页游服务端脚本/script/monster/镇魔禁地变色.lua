local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function on_create(monster)
	lualib:AddBuff(monster,"¹ÖÎï±ä»ÒÉ«", 0)
end
