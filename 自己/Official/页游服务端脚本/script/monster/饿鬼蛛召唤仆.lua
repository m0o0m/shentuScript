local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local die_times = 60000
local servant_var = "servant_var_num"
local master_var = "master_var_guid"

function on_create(monster)
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    lualib:AddTimer(monster, 2, die_times, 1, "on_timer_die")
end

function on_trigger_post_die(actor, killer)
    lualib:DisableTimer(actor, 1)
    lualib:ClearTrigger(actor)

    local master = lualib:Monster_GetCustomVarStr(actor, master_var)
    if master == "" then return end

    local monster_num = lualib:Monster_GetCustomVarInt(master, servant_var)
    if monster_num == 0 then return end

    lualib:Monster_SetCustomVarInt(master, servant_var, monster_num - 1)
end

function on_timer_die(monster, timer_id)
    lualib:Monster_Kill(monster)
end
