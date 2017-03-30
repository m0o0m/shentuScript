local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
    lualib:Print("第三重天秘洞地图建创回调！")
    if not lualib:AddTimer(map, 10001, 30000, 1, "on_timer_monster_born") then
        lualib:Print("第三重天秘洞第一拨怪刷新定时器添加失败！")
        return
    end
    lualib:Print("第三重天秘洞第一拨怪刷新定时器添加成功！")

    lualib:AddTrigger(map,  lua_trigger_post_die, "on_trigger_monster_die")
end

function on_map_destroy()

end

function on_timer_monster_born(map, timer_id)

    local player_count = lualib:Map_GetPlayerCount(map, false)
    if player_count == -1 then
        lualib:Print("地图不存在，请联系统GM！" )
        return
    end

    local monster_num = math.ceil(player_count / 3)
    if monster_num == 0 then monster_num = 1 end
    lualib:Print("第三重天秘洞刷怪数量："..monster_num.."！")

    if not lualib:Map_GenMonster(map, 52, 65, 16, lualib:GenRandom(0, 7), "三重天妖盗", monster_num, false) then
        lualib:Print("第三重天秘洞刷怪失败！")
        return
    end
    lualib:Print("第三重天秘洞刷怪成功！")

    if timer_id == 10007 then
        lualib:SysMsg_SendTopMsg(1, "第三重天大妖魔发现了闯入者，何童天小妖极为害怕，将在3分钟后关闭秘洞！")
		lualib:SysMsg_SendBroadcastColor("第三重天大妖魔发现了闯入者，何童天小妖极为害怕，将在3分钟后关闭秘洞！", "", 1, 12)
    else
        timer_id = timer_id + 1
        if not lualib:AddTimer(map, timer_id, 180000, 1, "on_timer_monster_born") then
            lualib:Print("第三重天秘洞刷新定时器添加失败！")
            return
        end
        lualib:Print("第三重天秘洞刷新定时器添加成功！")
    end
end

function on_trigger_monster_die(actor, killer)
    if lualib:Monster_IsMonster(actor) and lualib:Monster_GetKeyName(actor) == "三重天妖盗" then
        local x = lualib:Monster_GetPosX(actor)
        local y = lualib:Monster_GetPosY(actor)
        local map = lualib:Monster_GetMap(actor)
        if x == -1 or y == -1 or map == "" then
            lualib:Print("取得怪物坐标失败！")
            return
        end

        if not lualib:Map_GenNpc(map, "三重天宝箱", x, y, 3, lualib:GenRandom(0, 7)) then
            lualib:Print("三重天宝箱刷新失败！")
        end
        lualib:Print("三重天宝箱刷新成功！")
    end
end
