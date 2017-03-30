--[[第三层BOSS房：杀BOSS
BOSS一开始无敌，需要将BOSS引到指定的逻辑格上，消除无敌状态，然后攻击
BOSS有两种无敌，需要用两种不同的BUFF去抵消无敌状态
两个抵消点固定，需要来回将BOSS移动到抵消点
BOSS定时生成无敌BUFF，两种BUFF交替生成

脚本功能:
1.BOSS怪生成时获得一个无敌BUFF(A),1分钟后,BOSS怪身上的BUFF(A)被替换为无敌BUFF(B),再过1分钟,BUFF(B)被替换为BUFF(A),依次循环
2.BOSS房的指定坐标的两个逻辑格上A和B,当BOSS怪走到逻辑格A上时,会将BOSS怪身上的BUFF(A)消除;当BOSS怪走到逻辑格B上时,会将BOSS怪身上的BUFF(B)消除
]]

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local CMonster = 
{ 
    skill_tm_id = 1,
    skill_tm_elapse = 60000,
    pred_tm_id = 2,
    pred_tm_elapse = 1000,
    on_post_die = "on_post_die",
    npc_name = "深渊三层传送人",
    buff_table = 
    {
        ["无敌1"] = {["enable"] = "无敌1", ["opposed"] = "无敌2", ["expires"] = {["x"] = 79, ["y"] = 70, ["buff"] = "地煞镇魔咒3级"}},         --无敌BUFFA
        ["无敌2"] = {["enable"] = "无敌2", ["opposed"] = "无敌1", ["expires"] = {["x"] = 63, ["y"] = 83, ["buff"] = "天罡护体咒3级"}},         --无敌BUFFB
    },
    on_skill = "on_skill",
    on_pred = "on_pred",
}

function CMonster:AddTrigger(monster)
    lualib:AddTrigger(monster, lua_trigger_post_die, self.on_post_die)
end

function CMonster:AddTimer(monster)
    if not lualib:AddTimerEx(monster, self.skill_tm_id, self.skill_tm_elapse, -1, self.on_skill, "") then
        lualib:Error("深渊魔王脚本错误：添加BUFF切换定时器失败")
        return false
    end

    if not lualib:AddTimerEx(monster, self.pred_tm_id, self.pred_tm_elapse, -1, self.on_pred, "") then
        lualib:Error("深渊魔王脚本错误：添加BUFF判断定时器失败")
        return false
    end
    return true
end

function CMonster:ClearTrigger(monster)
    lualib:ClearTrigger(monster)
end

function CMonster:ClearTimer(monster)
    lualib:ClearTimer(monster)
end

function CMonster:OnDie(monster)
    local x, y, map, dir = lualib:X(monster), lualib:Y(monster), lualib:MapGuid(monster), lualib:Dir(monster)
    if x == nil or y == nil or map == nil or dir == nil then
        lualib:Error("深渊魔王脚本错误，取得怪物坐标信息失败！")
        return true
    end

    if not lualib:Map_GenNpc(map, self.npc_name, x, y, 6, dir) then
         lualib:Error("深渊魔王脚本错误，生成NPC"..self.npc_name.."失败！")
        return true
    end

    lualib:Debug("深渊魔王脚本，生成NPC"..self.npc_name.."！")
end

function CMonster:SwitchBuff(monster)
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "深渊魔王对自己施放了邪焰护甲，你必须找到对应的法阵抵消它！")
    local buff_key = lualib:GetStr(monster, "buff_key")
    if buff_key == "" then
        if not lualib:AddBuff(monster, self.buff_table["无敌1"].enable, 0) then
            lualib:Error("深渊魔王脚本错误，添加BUFF"..self.buff_table["无敌1"].enable.."失败！")
            return
        end
        lualib:SetStr(monster, "buff_key", self.buff_table["无敌1"].enable)
    end

    if self.buff_table[buff_key] == nil then return end
    
    buff_key = self.buff_table[buff_key].opposed
    if not lualib:AddBuff(monster, buff_key, 0) then
        lualib:Error("深渊魔王脚本错误，添加BUFF"..buff_key.."失败！")
        return
    end
    lualib:SetStr(monster, "buff_key", buff_key)
end

function CMonster:PredBuff(monster)
    local x, y = lualib:X(monster), lualib:Y(monster)
    local region = {0, x, y, 2, 2}
    
    local players = lualib:Map_GetRegionPlayers(lualib:MapGuid(monster), 0, 0, 10000, false)
    if players == nil or #players == 0 then return end

    for _, v in pairs(self.buff_table) do
        if lualib:IsInRegion(region, v.expires.x, v.expires.y) then
            if lualib:HasBuff(monster, v.enable) then
                lualib:Debug("进入抵消点！")
                lualib:DelBuff(monster, v.enable)
                lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "深渊魔王：啊啊！我的护甲！")
                lualib:SysMsg_SendRoleTalk(monster, "啊啊！我的护甲！")
                lualib:SysMsg_SendCenterMsg(3, "深渊魔王的邪焰护甲发生了变化！", players[1])
            else
                lualib:AddBuff(monster, v.expires.buff, 3)
                lualib:SysMsg_SendCenterMsg(3, "赶快让深渊魔王离开法阵！", players[1])
            end
        end
    end
end

function on_create(monster)
    lualib:Debug("深渊魔王刷新成功！")
    CMonster:AddTrigger(monster)
    if not CMonster:AddTimer(monster) then return end
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "深渊魔王：我渴望永恒的黑暗！")
    lualib:SysMsg_SendRoleTalk(monster, "我渴望永恒的黑暗！")
    CMonster:SwitchBuff(monster)
end

function on_post_die(monster, killer)
    lualib:Debug("深渊魔王on_post_die")
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "深渊魔王：我无处不在，有光明就会有黑暗！")
    lualib:SysMsg_SendRoleTalk(monster, "我无处不在，有光明就会有黑暗！")
    CMonster:ClearTrigger(monster)
    CMonster:ClearTimer(monster)
    CMonster:OnDie(monster)
end

function on_skill(monster, timer_id, param)
    CMonster:SwitchBuff(monster)
end

function on_pred(monster, timer_id, param)
    CMonster:PredBuff(monster)
end
