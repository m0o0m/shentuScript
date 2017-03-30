--[[第二层：追逐奖励怪物
怪物只会跑，不会攻击，会定时召唤怪物（召唤的怪物会放一些干扰技能），杀死追逐奖励怪物可以直接领取副本奖励(或者获得大量奖励)
如果规定时间内打不死，则奖励怪消失，出现小头目怪，杀死小头目怪后进入下一层

脚本功能:
1.奖励怪物在发现视野中有玩家时,开始按照固定线路移动
2.奖励怪物开始移动后,15分种后如果奖励怪物依然没有死亡,则该怪物消失,在怪物消失的点生成另一只指定的头目怪物
3.杀死奖励怪物或者头目怪物后,角色可以通过NPC进入下一层地图
4.奖励怪物开始移动后,每隔15秒召唤一次怪物(怪物数量和怪物种类可以自由调整)
5.召唤怪物每隔10秒施放一次指定的技能]]

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local def_table = 
{
    gen_monster = 
    {
        {"深渊信使", 1},
    }
}

function on_map_create(map)
    lualib:Debug("烈焰深渊2副本开启！")

    for i = 1, #def_table.gen_monster do
        if not lualib:Map_GenMonster(map, 40, 40, 6, lualib:GenRandom(0, 7), def_table.gen_monster[i][1], def_table.gen_monster[i][2], false) then
            lualib:Error("烈焰深渊2副本刷信使失败！")
        end
    end

    lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map")
end

function on_map_destroy(map)
    lualib:ClearTrigger(map)
    lualib:Debug("烈焰深渊2副本销毁！")
end

function on_enter_map(player)
    lualib:SysMsg_SendTriggerMsg(player, "欢迎来到烈焰深渊二层，这个副本将在"..lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime()).." 23:59:59后重置！")
end
