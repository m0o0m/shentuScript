--[[第一层：真假怪物
通过怪物的喊话来判断真假，打死真怪后可以进入下一层
打死假怪物时，怪物爆炸，对周围的角色造成伤害

脚本功能:
怪物死亡后,触发一个指定技能
杀死指定的怪物后,角色可以通过NPC进入下一层地图]]
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local def_table = 
{
    type = 
    {
        ["深渊奴仆真"] = 1,
        ["深渊奴仆假"] = 2,
    },

    on_pre_die = "on_pre_die",                  --怪物死亡前回调
    on_talk    = "on_talk",                     --怪物说话回调

    talk_info = 
    {   
        {                                       --对应type table顺序不要乱改
            "天啊，你脸黑死了！",
            "走开，你长得太丑了！",
        },
        {
            "神马都是浮云！",
            "浮云，一切都是浮云！",
        }
    },
}

local CMonster = 
{
    talk_tm_id = 1,
    talk_tm_elapse = 50000,
    skill_id = 10123,
    npc_name = "深渊一层传送人",
}

function CMonster:GetType(monster)
    local t = def_table.type[lualib:KeyName(monster)]
    if t == nil then
        lualib:Error("深渊奴仆脚本错误，怪物keyname与脚本不匹配！")
    end
    return t
end

function CMonster:AddTrigger(monster)
    lualib:AddTrigger(monster, lua_trigger_pre_die, def_table.on_pre_die)
end

function CMonster:AddTimer(monster)
    if not lualib:AddTimerEx(monster, self.talk_tm_id, self.talk_tm_elapse, -1, def_table.on_talk, "") then
        lualib:Error("深渊奴仆脚本错误，怪物添加说话定时器失败！")
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

function CMonster:Talk(monster)
    local type = self:GetType(monster)
    if type == nil then return false end
	
	lualib:SysMsg_SendRoleTalk(monster, def_table.talk_info[type][lualib:GenRandom(1, #def_table.talk_info[type])])

end

function CMonster:PreDie(monster, killer)
    local type = self:GetType(monster)
    if type == nil then return false end
    if type == 1 then
        local x, y, map, dir = lualib:X(monster), lualib:Y(monster), lualib:MapGuid(monster), lualib:Dir(monster)
        if x == nil or y == nil or map == nil or dir == nil then
            lualib:Error("深渊奴仆脚本错误，取得怪物坐标信息失败！")
            return true
        end

        if not lualib:Map_GenNpc(map, self.npc_name, x, y, 6, dir) then
             lualib:Error("深渊奴仆脚本错误，生成NPC"..self.npc_name.."失败！")
            return true
        end

        lualib:Debug("深渊奴仆脚本，生成NPC"..self.npc_name.."！")
        lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "深渊奴仆急于逃生，召唤出传送使者！")
    elseif type == 2 then
		local x = lualib:X(monster)
		local y = lualib:Y(monster)
		local map = lualib:MapGuid(monster)
		if x == -1 or y == -1 or map == "" then return end
		local players = lualib:Map_GetRegionPlayers(map, x, y, 1, true)
		
			lualib:SetHp(monster, 1, false)
		if not lualib:Monster_SpellTarget(monster, self.skill_id, monster) then
            lualib:Error("深渊奴仆脚本错误，怪物自爆失败！")
         return true
        end
		for i = 1, #players do
			lualib:AddBuffEx(players[i], "毒蜘蛛减血", 0, -15)
			lualib:Debug("深渊奴仆脚本，怪物自爆成功！")
		end
		
        if lualib:Player_IsPlayer(killer) then
            lualib:SysMsg_SendCenterMsg(0, "深渊奴仆露出了残忍的笑容！天啊，它在自爆！", killer)
        end
    end

    return true
end

function on_create(monster)
    lualib:Debug("深渊奴仆刷新成功！")
    CMonster:AddTrigger(monster)
    if not CMonster:AddTimer(monster) then return end
end

function on_pre_die(monster, killer)
    CMonster:PreDie(monster, killer)
    CMonster:ClearTimer(monster)
    CMonster:ClearTrigger(monster)
    return true
end

function on_talk(monster, timer_id, param)
    CMonster:Talk(monster)
end
