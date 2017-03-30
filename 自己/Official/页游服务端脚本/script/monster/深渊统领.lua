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

local CMonster = 
{ 
    on_post_die = "on_post_die",
    npc_name = "深渊二层传送人",
}

function CMonster:AddTrigger(monster)
    lualib:AddTrigger(monster, lua_trigger_post_die, self.on_post_die)
end

function CMonster:ClearTrigger(monster)
    lualib:ClearTrigger(monster)
end

function CMonster:OnDie(monster)
    local x, y, map, dir = lualib:X(monster), lualib:Y(monster), lualib:MapGuid(monster), lualib:Dir(monster)
    if x == nil or y == nil or map == nil or dir == nil then
        lualib:Error("深渊统领脚本错误，取得怪物坐标信息失败！")
        return true
    end

    if not lualib:Map_GenNpc(map, self.npc_name, x, y, 6, dir) then
         lualib:Error("深渊统领脚本错误，生成NPC"..self.npc_name.."失败！")
        return true
    end

    lualib:Debug("深渊奴仆脚本，生成NPC"..self.npc_name.."！")
end

function on_create(monster)
    lualib:Debug("深渊统领刷新成功！")
    CMonster:AddTrigger(monster)
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "深渊统领：啊哈，又来了一批送死的，好久没有吃到新鲜的肉了！")
    lualib:SysMsg_SendRoleTalk(monster, "啊哈，又来了一批送死的，好久没有吃到新鲜的肉了！")
end

function on_post_die(monster, killer)
    lualib:Debug("深渊统领on_post_die")
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "深渊统领：你们这也能叫攻击......好吧，也许你们是对的！")
    lualib:SysMsg_SendRoleTalk(monster, "你们这也能叫攻击......好吧，也许你们是对的！")
    CMonster:ClearTrigger(monster)
    CMonster:OnDie(monster)
end
