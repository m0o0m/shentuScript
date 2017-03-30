local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_create(monster)
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_die")
    end

function on_die(actor, killer)
	local map = lualib:MapGuid(actor)
    local X = lualib:X(actor)
    local Y = lualib:Y(actor)
    local npc = lualib:Map_GenNpc(map, "ÑªÊÖ", X, Y, 5, 4)
end

