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
    type = 
    {
        ["深渊护卫1"] = 1,
        ["深渊护卫2"] = 2,
    },
    skill_tm_id = 1,               --召唤定时器ID
    skill_tm_elapse = 3000,        --召唤定时器间隔
    skill_rang = 5,                --技能范围
    skill_table = 
    {
        10124,                     --护卫1技能 
        10125,                     --护卫2技能
    },
    on_spell = "on_spell",
    talk_table = 
    {
        "蠢货，我们的事业是正义的！",
        "为你的愚蠢行为忏悔吧！",
        "没有人能从我的手上逃脱！",
    },
}

function CMonster:AddTimer(monster)
    if not lualib:AddTimerEx(monster, self.skill_tm_id, self.skill_tm_elapse, -1, self.on_spell, "") then
        lualib:Error("深渊护卫脚本错误，怪物使用技能定时器失败！")
        return false
    end

    return true
end

function CMonster:ClearTimer(monster)
    lualib:ClearTimer(monster)
end

function CMonster:OnSpell(monster)
    local type = self.type[lualib:KeyName(monster)]
    if type == nil then
        lualib:Error("脚本与怪物不匹配！")
        return
    end

    if lualib:Monster_IsDie(monster) then
        lualib:ClearTimer(monster)
        return
    end

    lualib:SysMsg_SendRoleTalk(monster, self.talk_table[lualib:GenRandom(1, #self.talk_table)])
    local players = lualib:Map_GetRegionPlayers(lualib:MapGuid(monster), lualib:X(monster), lualib:Y(monster), self.skill_rang, true)
    if players == nil or table.getn(players) <= 0 then
        return 
    end

    if not lualib:Monster_SpellTarget(monster, self.skill_table[type], players[lualib:GenRandom(1, #players)]) then
        lualib:Error("深渊护卫施放技能失败！")
    end
    lualib:Debug("深渊护卫施放技能成功！")
end

function on_create(monster)
    lualib:Debug("深渊护卫刷新成功！")
    if not CMonster:AddTimer(monster) then return end
    CMonster:OnSpell(monster)
end

function on_post_die(monster, killer)
    lualib:Debug("深渊护卫on_post_die")
    CMonster:ClearTimer(monster)
end

function on_spell(monster, timer_id, param)
    CMonster:OnSpell(monster)
end
