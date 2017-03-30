local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_create(monster)
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_died")
    local map = lualib:Monster_GetMap(monster)
    
    local npc_table = {{"城门阻挡7", 295, 151}}
    for i = 1, table.getn(npc_table) do
        if lualib:Map_GenNpc(map, npc_table[i][1], npc_table[i][2],npc_table[i][3], 0, 3) == "" then
            lualib:Print("神歌城刷NPC"..npc_table[i][1].."出错！")
        end
    end
end

function on_died(actor, killer)
    local x = lualib:Monster_GetPosX(actor)
    local y = lualib:Monster_GetPosY(actor)
    if x == -1 or y == -1 then return end

    local map = lualib:Monster_GetMap(actor)
    if not lualib:Map_ClearNpc(map, x, y, 5, "*") then
        lualib:Print("清除城门阻挡NPC失败！")
    end
    lualib:Print("清除城门阻挡NPC成功！")
end
