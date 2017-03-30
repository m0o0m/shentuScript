local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


function on_trigger_post_die(actor, killer)
	local map_guid = lualib:MapGuid(actor)
	local monster_num = lualib:GetInt(map_guid, "guoqing_monster_num")
	lualib:SetInt(map_guid, "guoqing_monster_num", monster_num - 1)
end