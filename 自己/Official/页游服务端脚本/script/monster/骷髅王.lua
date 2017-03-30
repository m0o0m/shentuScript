local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_create(monster)
    lualib:Print("骷髅王出现！")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    end

function on_trigger_post_die(actor, killer)
    lualib:Print("骷髅王死亡！")

    local dgn_guid = lualib:Map_CreateDgn("将军冢密室", false, 15 * 60)
    if dgn_guid == "" then
        lualib:Print("副本：将军冢密室创建失败！")
        return
    end
    lualib:Print("副本：将军冢密室创建成功！")

    local map = lualib:Monster_GetMap(actor)
    if map == "" then
        lualib:Print("取得骷髅王所属地图失败！")
        return
    end

    local pos_x = lualib:Monster_GetPosX(actor)
    local pos_y = lualib:Monster_GetPosY(actor)
    if pos_x == -1 or pos_y == -1 then
        lualib:Print("取得骷髅王地图坐标失败！")
        return
    end

    local npc = lualib:Map_GenNpc(map, "骷髅殿传送使者", pos_x, pos_y, 5, 1)
    if npc == "" then
        lualib:Print("刷新NPC骷髅殿传送使者失败！")
        return
    end
    lualib:Print("刷新NPC骷髅殿传送使者成功！")

    if lualib:Npc_SetCustomVar(npc, "custom_var_dgn_guid", dgn_guid) == false then
        lualib:Print("给NPC骷髅殿传送使者添加自定义变量失败！")
        return
    end
end
