local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local summon_times = 500
local die_times = 60000
local servant_var = "servant_var_num"
local master_var = "master_var_guid"
local skill_id = 10106

function on_create(monster)
    lualib:AddTimer(monster, 1, summon_times, -1, "on_timer")
    lualib:AddTimer(monster, 2, die_times, 1, "on_timer_die")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_post_die(actor, killer)
    lualib:DisableTimer(actor, 1)
    lualib:ClearTrigger(actor)

    local master = lualib:Monster_GetCustomVarStr(actor, master_var)
    if master == "" then return end

    local monster_num = lualib:Monster_GetCustomVarInt(master, servant_var)
    if monster_num == 0 then return end

    lualib:Monster_SetCustomVarInt(master, servant_var, monster_num - 1)
    lualib:Print("清除主怪变量！")
end

function on_timer(monster, timer_id)
    local x = lualib:Monster_GetPosX(monster)
    local y = lualib:Monster_GetPosY(monster)
    local map = lualib:Monster_GetMap(monster)
    if x == -1 or y == -1 or map == "" then return end

    local players = lualib:Map_GetRegionPlayers(map, x, y, 1, true)
    if players ~= nil then
        if table.getn(players) > 0 then
            lualib:Monster_SpellTarget(monster, skill_id, players[1])
            lualib:Monster_Kill(monster)
            return
        end
    end

    local monsters = lualib:Map_GetRegionMonsters(map, "", x, y, 1, true, false)
    if monsters ~= nil then
        for i = 1, table.getn(monsters) do
			local master = lualib:Monster_GetMaster(monsters[i])
            if master ~= "" then
				local player = lualib:Player_GetGuid(master)
				if player == "" then return end

                lualib:Monster_SpellTarget(monster, skill_id, player)
                lualib:Monster_Kill(monster)
                return
            end
        end
    end
end

function on_timer_die(monster, timer_id)
    lualib:Monster_Kill(monster)
end
