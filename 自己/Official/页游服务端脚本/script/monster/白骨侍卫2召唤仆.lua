local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local die_times = 60000
local servant_var = "servant_var_num"
local master_var = "master_var_guid"
local npctalk_table = 
{
    "为你而战，我的主人！",
    "终于有机会试试我的獠牙了！",
    "打败你，太轻松了！！！",
    "像你这样的人类，实在太弱小了！",
    "吃你的肉，喝你的血！"
}

function on_create(monster)
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    lualib:AddTimer(monster, 2, die_times, 1, "on_timer_die")

    local index = lualib:GenRandom(1, table.getn(npctalk_table))
    lualib:SysMsg_SendRoleTalk(monster, npctalk_table[index])
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
