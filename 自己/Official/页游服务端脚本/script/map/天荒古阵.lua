local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map_guid)
    lualib:Print("天荒古阵地图建创回调！")

lualib:AddTrigger(map_guid,  lua_trigger_post_die, "On_Trigger_Role_Die")
    lualib:AddTrigger(map_guid,  lua_trigger_pre_process_pk, "On_Trigger_Role_PK")

    if not lualib:AddTimer(map_guid, 1, 1000, 1, "On_Timer_Monster_born") then
        lualib:Print("天荒古阵刷怪定时器添加失败@1！")
        return ""
    end

    return ""
end

function on_map_destroy()
    return ""
end

function On_Timer_Monster_born(map_guid, timer_id)
    local monster_table = {
	                        {{"古阵护卫1", 20}, {"古阵护卫2", 20}, {"古阵护卫3", 20}},
                           	{{"古阵护卫1", 20}, {"古阵护卫2", 20}, {"古阵护卫3", 20}},
	                        {{"古阵护卫4", 20}, {"古阵护卫4", 20}, {"古阵护卫5", 20}},
	                        {{"古阵护卫6", 20}, {"古阵护卫6", 20}, {"古阵护卫7", 20}},
	                        {{"古阵护卫6", 20}, {"古阵护卫6", 20}, {"古阵魔王", 1}, {"古阵护卫7", 20}}
                          }

    local pos_table = {
                        {{28, 35, 8}, {28, 95, 8}, {80, 95, 8}, {75, 35, 8}},
                        {{52, 64, 8}}
                      }

    if not lualib:Map_IsDgnExist(map_guid) then
        lualib:Print("天荒古阵地图不存在！")
        return ""
    end

    --清除副本里所有的怪
    if not lualib:Map_ClearDgnMonster(map_guid) then
        lualib:Print("天荒古阵:清理副本所有的怪物失败！")
        return ""
    end

    --开始在副本里刷怪
    for i = 1, table.getn(monster_table[timer_id]) do
        if timer_id == 5 then
            lualib:Map_GenMonster(map_guid, pos_table[2][1][1],
                                            pos_table[2][1][2],
                                            pos_table[2][1][3],
                                            lualib:GenRandom(0, 7),
                                            monster_table[timer_id][i][1],
                                            monster_table[timer_id][i][2], false)
        else
            lualib:Map_GenMonster(map_guid, pos_table[1][lualib:GenRandom(1, 4)][1],
                                            pos_table[1][lualib:GenRandom(1, 4)][2],
                                            pos_table[1][lualib:GenRandom(1, 4)][3],
                                            lualib:GenRandom(0, 7),
                                            monster_table[timer_id][i][1],
                                            monster_table[timer_id][i][2], false)
        end
    end

    --添加下一批怪物刷新的定时器
    if timer_id == 5 then return "" end
    if not lualib:AddTimer(map_guid, timer_id + 1, 15 * 60 * 1000, 1, "On_Timer_Monster_born") then
        lualib:Print("天荒古阵刷怪定时器添加失败@2！")
        return ""
    end

    return ""
end

--地图上有角色死亡时触发
function On_Trigger_Role_Die(actor_guid, killer_guid)
    --如果杀手是玩家，则给玩家添加行会贡献度
    if lualib:Player_IsPlayer(killer_guid) then
        if not lualib:Player_ReCalGuildCtrb(killer_guid, 1) then
            lualib:Print("给角色添加行会贡献度失败！")
            return ""
        end
    end
    return ""
end

--PK不涨PK值
function trigger_pre_process_pk(killer_guid, victim_guid)
    return false
end
