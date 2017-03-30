local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local EscorterAward = --劫镖用
{
       --镖车名字   ,镖银
    Escorter =
    {
        ["镖车·普"] = {1, "#COLORCOLOR_WHITE#镖车·普#COLOREND#"},
        ["镖车·极"] = {2, "#COLORCOLOR_GREENG#镖车·极#COLOREND#"},
        ["镖车·珍"] = {4, "#COLORCOLOR_BLUE#镖车·珍#COLOREND#"},
        ["镖车·绝"] = {6, "#COLORCOLOR_PURPLE#镖车·绝#COLOREND#"},
        ["镖车·神"] = {8, "#COLORCOLOR_GOLD#镖车·神#COLOREND#"},
    },
    cur_level = "cur_level",    --保存镖车主人等级
    cur_guid = "cur_guid",     --存放镖车主人的GUID
    cur_dest = "cur_dest",      --保存镖车目的地
    escort_v = "escort_v",      --保存劫镖玩家镖银数量
    level_limit = 10,           --劫镖奖励等级阀值
    remain_times = "remain_times",--任务失败倒计时
    talk_interval = 15,           --喊话间隔
    escort_life = 1200,           --怪物生命
}

function on_create(monster)
	lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    lualib:AddTimer(monster, 1, EscorterAward.talk_interval * 1000, -1, "on_talk")
	local master = lualib:Monster_GetMaster(monster)
end

function on_trigger_post_die(actor, killer)
    lualib:ClearTrigger(actor)
    lualib:DisableTimer(actor, 1)
	local master = lualib:GetStr(actor, EscorterAward.cur_guid)
	lualib:DropQuest(master, 7000)
	
    local keyname = lualib:KeyName(actor)
    if EscorterAward.Escorter[keyname] == nil then return end

   
    if master == killer then
        lualib:SysMsg_SendWarnMsg(killer, "你杀死了自己的镖车，无法得到镖银！")
        return
    end

    local master_level = lualib:GetInt(actor, EscorterAward.cur_level)
    if master_level == 0 then return end

    if lualib:Monster_IsMonster(killer) then
        local master = lualib:Monster_GetMaster(killer)
        killer = lualib:Name2Guid(master)
        if killer == "" then return end
        if not lualib:Player_IsInGS(killer) then return end
    end

	local killername = lualib:Name(killer)
	local pkz = lualib:Pk(killer)
	local addpkz = pkz + 90
	
    local killer_level = lualib:Level(killer)
    if killer_level >= (master_level + EscorterAward.level_limit) then
        lualib:SysMsg_SendWarnMsg(killer, "你的等级超出押镖玩家"..EscorterAward.level_limit.."级，无法得到镖银！")
        return
    end


    if master_level < 42 then
		lualib:SysMsg_SendCenterMsg(1, "["..killername.."]抢小号玩家的镖车，不但没有得到镖银，还被系统鄙视了！", "")
		lualib:SetPk(killer, addpkz)
        lualib:SysMsg_SendWarnMsg(killer, "对方等级不足42级，你欺负小号，无法得到镖银！被惩罚90点PK值！")
        return
    end	
	

    lualib:SetInt(killer, EscorterAward.escort_v,
                  lualib:GetInt(killer, EscorterAward.escort_v) +
                  EscorterAward.Escorter[keyname][1])
    lualib:SysMsg_SendWarnMsg(killer, "你获得了"..EscorterAward.Escorter[keyname][1].."点镖银！")
end

function main(monster, player)
    local keyname = lualib:KeyName(monster)
    if EscorterAward.Escorter[keyname] == nil then return "" end
    return "将"..EscorterAward.Escorter[keyname][2].."护送到#COLORCOLOR_RED#"..
           lualib:GetStr(monster, EscorterAward.cur_dest)..
           "#COLOREND#可以获得丰厚奖励！"
	
end

function on_talk(monster, timer_id)
    lualib:SetInt(monster, EscorterAward.remain_times, lualib:GetInt(monster, EscorterAward.remain_times) + EscorterAward.talk_interval)
    local remain = EscorterAward.escort_life - lualib:GetInt(monster, EscorterAward.remain_times)
    local remain_str = string.format("剩余时间：%d分%d秒", remain / 60, remain % 60)
	local master = lualib:Monster_GetMaster(monster)
    local keyname = lualib:KeyName(monster)
    if EscorterAward.Escorter[keyname] == nil then return "" end
    lualib:SysMsg_SendRoleTalk(monster, "请将镖车护送到#COLORCOLOR_RED#"..
            lualib:GetStr(monster, EscorterAward.cur_dest).."#COLOREND#，"..remain_str.."！")
	if remain < 0 then
		lualib:Kill(monster)
	end
end
