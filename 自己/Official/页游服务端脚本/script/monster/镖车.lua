local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local EscorterAward = --������
{
       --�ڳ�����   ,����
    Escorter =
    {
        ["�ڳ�����"] = {1, "#COLORCOLOR_WHITE#�ڳ�����#COLOREND#"},
        ["�ڳ�����"] = {2, "#COLORCOLOR_GREENG#�ڳ�����#COLOREND#"},
        ["�ڳ�����"] = {4, "#COLORCOLOR_BLUE#�ڳ�����#COLOREND#"},
        ["�ڳ�����"] = {6, "#COLORCOLOR_PURPLE#�ڳ�����#COLOREND#"},
        ["�ڳ�����"] = {8, "#COLORCOLOR_GOLD#�ڳ�����#COLOREND#"},
    },
    cur_level = "cur_level",    --�����ڳ����˵ȼ�
    cur_guid = "cur_guid",     --����ڳ����˵�GUID
    cur_dest = "cur_dest",      --�����ڳ�Ŀ�ĵ�
    escort_v = "escort_v",      --������������������
    level_limit = 10,           --���ڽ����ȼ���ֵ
    remain_times = "remain_times",--����ʧ�ܵ���ʱ
    talk_interval = 15,           --�������
    escort_life = 1200,           --��������
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
        lualib:SysMsg_SendWarnMsg(killer, "��ɱ�����Լ����ڳ����޷��õ�������")
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
        lualib:SysMsg_SendWarnMsg(killer, "��ĵȼ�����Ѻ�����"..EscorterAward.level_limit.."�����޷��õ�������")
        return
    end


    if master_level < 42 then
		lualib:SysMsg_SendCenterMsg(1, "["..killername.."]��С����ҵ��ڳ�������û�еõ�����������ϵͳ�����ˣ�", "")
		lualib:SetPk(killer, addpkz)
        lualib:SysMsg_SendWarnMsg(killer, "�Է��ȼ�����42�������۸�С�ţ��޷��õ����������ͷ�90��PKֵ��")
        return
    end	
	

    lualib:SetInt(killer, EscorterAward.escort_v,
                  lualib:GetInt(killer, EscorterAward.escort_v) +
                  EscorterAward.Escorter[keyname][1])
    lualib:SysMsg_SendWarnMsg(killer, "������"..EscorterAward.Escorter[keyname][1].."��������")
end

function main(monster, player)
    local keyname = lualib:KeyName(monster)
    if EscorterAward.Escorter[keyname] == nil then return "" end
    return "��"..EscorterAward.Escorter[keyname][2].."���͵�#COLORCOLOR_RED#"..
           lualib:GetStr(monster, EscorterAward.cur_dest)..
           "#COLOREND#���Ի�÷������"
	
end

function on_talk(monster, timer_id)
    lualib:SetInt(monster, EscorterAward.remain_times, lualib:GetInt(monster, EscorterAward.remain_times) + EscorterAward.talk_interval)
    local remain = EscorterAward.escort_life - lualib:GetInt(monster, EscorterAward.remain_times)
    local remain_str = string.format("ʣ��ʱ�䣺%d��%d��", remain / 60, remain % 60)
	local master = lualib:Monster_GetMaster(monster)
    local keyname = lualib:KeyName(monster)
    if EscorterAward.Escorter[keyname] == nil then return "" end
    lualib:SysMsg_SendRoleTalk(monster, "�뽫�ڳ����͵�#COLORCOLOR_RED#"..
            lualib:GetStr(monster, EscorterAward.cur_dest).."#COLOREND#��"..remain_str.."��")
	if remain < 0 then
		lualib:Kill(monster)
	end
end
