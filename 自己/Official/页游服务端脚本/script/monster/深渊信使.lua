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
    status = 
    {
        ["live"] = 1,               --怪物状态：活着
        ["die"] = 2,                --怪物状态：死亡或消失
    },
    summon_tm_id = 1,               --召唤定时器ID
    summon_tm_elapse = 15000,       --召唤定时器间隔
    disappear_tm_id = 2,            --逃跑定时器ID
    disappear_tm_elapse = 1000,     --逃路间隔
    pred_tm_id = 3,                 --判断定时器ID
    pred_tm_elapse = 1000,          --判断定时器
    summon_table = 
    {
        {                             --对应status的顺序，不要乱改
            {"深渊护卫1", 3},         --逃路时招小弟
            {"深渊护卫2", 3},         --逃路时招小弟
        },
        {
            {"深渊统领", 1},          --消失或死亡后召BOSS
        },
    },
    escape_path =                     --逃跑的路径
    {
        40, 40, 50, 57, 56, 72, 58, 80, 60, 84, 46, 102, 58, 119, 75, 101, 93, 80, 88, 64, 112, 41, 132, 61, 111, 90, 89, 111, 60, 144, 88, 174, 104, 156, 129, 135
    },
    end_point = 
    {
        129, 135
    },
    on_post_die = "on_post_die",
    on_summon = "on_summon",
    on_disappear = "on_disappear",
    on_pred = "on_pred",
    talk_table = 
    {
        "我身上的装备都是统领大人的，别想抢走！",
        "别追我了，不会是看上我身上的装备了吧，赶紧藏好！",
        "看来，不给你们点厉害的，你们是不会放过我的！",
        "我跟你们拼了！小的们，给我狠狠的揍他们！",
    },
    talk_boss =
    {
        "哼哼，你们现在轮到你们逃跑了！主人一定会撕碎你们的！"
    }
}

function CMonster:AddTrigger(monster)
    lualib:AddTrigger(monster, lua_trigger_post_die, self.on_post_die)
end

function CMonster:AddTimer(monster, init)
    if init == true then
        if not lualib:AddTimerEx(monster, self.disappear_tm_id, self.disappear_tm_elapse, -1, self.on_disappear, "") then
            lualib:Error("深渊信使脚本错误，怪物添加消失定时器失败！")
            return false
        end
    else
        if not lualib:AddTimerEx(monster, self.summon_tm_id, self.summon_tm_elapse, -1, self.on_summon, "") then
            lualib:Error("深渊信使脚本错误，怪物添加召唤定时器失败！")
            return false
        end

        if not lualib:AddTimerEx(monster, self.pred_tm_id, self.pred_tm_elapse, -1, self.on_pred, "") then
            lualib:Error("深渊信使脚本错误，添加怪物位置判断定时器失败！")
            return false
        end
    end
    return true
end

function CMonster:ClearTrigger(monster)
    lualib:ClearTrigger(monster)
end

function CMonster:ClearTimer(monster)
    lualib:ClearTimer(monster)
end

function CMonster:SetEscapePath(monster)
    if not lualib:Monster_SetSeeker(monster, self.escape_path, 0, true) then
        lualib:Error("深渊信使脚本错误，怪物添加路径表失败！")
        return false        
    end
    lualib:Debug("深渊信使脚本，怪物添加路径表成功！")
end

function CMonster:PosPred(monster)
    local region = {0, self.end_point[1], self.end_point[2], 4, 4}
    local x, y = lualib:X(monster), lualib:Y(monster)
    return lualib:IsInRegion(region, x, y)
end

function CMonster:Summon(monster, status)
    local rnd = lualib:GenRandom(1, #self.summon_table[status])
    if (status == self.status.live) then
        if not lualib:Map_GenMonster(lualib:MapGuid(monster), lualib:X(monster), lualib:Y(monster), 4,
                      lualib:GenRandom(0, 7), self.summon_table[status][rnd][1],
                      self.summon_table[status][rnd][2], false) then
            lualib:Error("深渊信使脚本错误，召唤怪物"..self.summon_table[status][rnd][1].."失败！")
        end
        lualib:SysMsg_SendRoleTalk(monster, self.talk_table[lualib:GenRandom(1, #self.talk_table)])
        lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "深渊信使："..self.talk_table[lualib:GenRandom(1, #self.talk_table)])
    else
        if not lualib:Map_GenMonster(lualib:MapGuid(monster), self.end_point[1], self.end_point[2], 4,
                      lualib:GenRandom(0, 7), self.summon_table[status][rnd][1],
                      self.summon_table[status][rnd][2], false) then
            lualib:Error("深渊信使脚本错误，召唤怪物"..self.summon_table[status][rnd][1].."失败！")
        end
        lualib:SysMsg_SendRoleTalk(monster, self.talk_boss[lualib:GenRandom(1, #self.talk_boss)])
        lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "深渊信使："..self.talk_boss[lualib:GenRandom(1, #self.talk_boss)])
    end
end

function on_create(monster)
    lualib:Debug("深渊信使刷新成功！")
    CMonster:AddTrigger(monster)
    if not CMonster:AddTimer(monster, true) then return end
end

function on_post_die(monster, killer)
    lualib:Debug("深渊信使on_post_die")
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "你闯下了弥天大祸，准备面对深渊统领的攻击吧！")
    CMonster:ClearTimer(monster)
    CMonster:ClearTrigger(monster)

    CMonster:Summon(monster, CMonster.status.die)
end

function on_summon(monster, timer_id, param)
    CMonster:Summon(monster, CMonster.status.live)
end

function on_disappear(monster, timer_id, param)
    if lualib:Map_GetPlayerCount(lualib:MapGuid(monster), false) > 0 then
        lualib:DisableTimer(monster, timer_id)
        if not CMonster:AddTimer(monster, false) then return end
        if not CMonster:SetEscapePath(monster) then return end
        lualib:Debug("深渊信使逃离了你的视线！")
    end
end

function on_pred(monster, timer_id, param)
    if CMonster:PosPred(monster) then
        lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "信使将自己献祭给了深渊统领，赶快迎接挑战吧！")
        lualib:Kill(monster)
        --lualib:Monster_Remove(monster)
        --CMonster:Summon(monster, CMonster.status.die)
    end
end
