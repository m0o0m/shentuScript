local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local buff_key = "ÃØ¾³µôÑª"

function on_map_create(map)
    lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
    lualib:AddTrigger(map,  lua_trigger_leave_map, "on_trigger_leave_map")
end

function on_trigger_enter_map(player)
    lualib:Player_AddBuff(player, buff_key, -1)
end

function on_trigger_leave_map(player)
    lualib:Player_DelBuff(player, buff_key)
end
