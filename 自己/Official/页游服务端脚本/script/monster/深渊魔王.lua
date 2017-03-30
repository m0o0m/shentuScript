--[[������BOSS����ɱBOSS
BOSSһ��ʼ�޵У���Ҫ��BOSS����ָ�����߼����ϣ������޵�״̬��Ȼ�󹥻�
BOSS�������޵У���Ҫ�����ֲ�ͬ��BUFFȥ�����޵�״̬
����������̶�����Ҫ���ؽ�BOSS�ƶ���������
BOSS��ʱ�����޵�BUFF������BUFF��������

�ű�����:
1.BOSS������ʱ���һ���޵�BUFF(A),1���Ӻ�,BOSS�����ϵ�BUFF(A)���滻Ϊ�޵�BUFF(B),�ٹ�1����,BUFF(B)���滻ΪBUFF(A),����ѭ��
2.BOSS����ָ������������߼�����A��B,��BOSS���ߵ��߼���A��ʱ,�ὫBOSS�����ϵ�BUFF(A)����;��BOSS���ߵ��߼���B��ʱ,�ὫBOSS�����ϵ�BUFF(B)����
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
    npc_name = "��Ԩ���㴫����",
    buff_table = 
    {
        ["�޵�1"] = {["enable"] = "�޵�1", ["opposed"] = "�޵�2", ["expires"] = {["x"] = 79, ["y"] = 70, ["buff"] = "��ɷ��ħ��3��"}},         --�޵�BUFFA
        ["�޵�2"] = {["enable"] = "�޵�2", ["opposed"] = "�޵�1", ["expires"] = {["x"] = 63, ["y"] = 83, ["buff"] = "�������3��"}},         --�޵�BUFFB
    },
    on_skill = "on_skill",
    on_pred = "on_pred",
}

function CMonster:AddTrigger(monster)
    lualib:AddTrigger(monster, lua_trigger_post_die, self.on_post_die)
end

function CMonster:AddTimer(monster)
    if not lualib:AddTimerEx(monster, self.skill_tm_id, self.skill_tm_elapse, -1, self.on_skill, "") then
        lualib:Error("��Ԩħ���ű��������BUFF�л���ʱ��ʧ��")
        return false
    end

    if not lualib:AddTimerEx(monster, self.pred_tm_id, self.pred_tm_elapse, -1, self.on_pred, "") then
        lualib:Error("��Ԩħ���ű��������BUFF�ж϶�ʱ��ʧ��")
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
        lualib:Error("��Ԩħ���ű�����ȡ�ù���������Ϣʧ�ܣ�")
        return true
    end

    if not lualib:Map_GenNpc(map, self.npc_name, x, y, 6, dir) then
         lualib:Error("��Ԩħ���ű���������NPC"..self.npc_name.."ʧ�ܣ�")
        return true
    end

    lualib:Debug("��Ԩħ���ű�������NPC"..self.npc_name.."��")
end

function CMonster:SwitchBuff(monster)
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "��Ԩħ�����Լ�ʩ����а�滤�ף�������ҵ���Ӧ�ķ����������")
    local buff_key = lualib:GetStr(monster, "buff_key")
    if buff_key == "" then
        if not lualib:AddBuff(monster, self.buff_table["�޵�1"].enable, 0) then
            lualib:Error("��Ԩħ���ű��������BUFF"..self.buff_table["�޵�1"].enable.."ʧ�ܣ�")
            return
        end
        lualib:SetStr(monster, "buff_key", self.buff_table["�޵�1"].enable)
    end

    if self.buff_table[buff_key] == nil then return end
    
    buff_key = self.buff_table[buff_key].opposed
    if not lualib:AddBuff(monster, buff_key, 0) then
        lualib:Error("��Ԩħ���ű��������BUFF"..buff_key.."ʧ�ܣ�")
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
                lualib:Debug("��������㣡")
                lualib:DelBuff(monster, v.enable)
                lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "��Ԩħ�����������ҵĻ��ף�")
                lualib:SysMsg_SendRoleTalk(monster, "�������ҵĻ��ף�")
                lualib:SysMsg_SendCenterMsg(3, "��Ԩħ����а�滤�׷����˱仯��", players[1])
            else
                lualib:AddBuff(monster, v.expires.buff, 3)
                lualib:SysMsg_SendCenterMsg(3, "�Ͽ�����Ԩħ���뿪����", players[1])
            end
        end
    end
end

function on_create(monster)
    lualib:Debug("��Ԩħ��ˢ�³ɹ���")
    CMonster:AddTrigger(monster)
    if not CMonster:AddTimer(monster) then return end
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "��Ԩħ�����ҿ�������ĺڰ���")
    lualib:SysMsg_SendRoleTalk(monster, "�ҿ�������ĺڰ���")
    CMonster:SwitchBuff(monster)
end

function on_post_die(monster, killer)
    lualib:Debug("��Ԩħ��on_post_die")
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "��Ԩħ�������޴����ڣ��й����ͻ��кڰ���")
    lualib:SysMsg_SendRoleTalk(monster, "���޴����ڣ��й����ͻ��кڰ���")
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
