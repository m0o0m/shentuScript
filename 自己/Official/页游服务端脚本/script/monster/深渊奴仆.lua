--[[��һ�㣺��ٹ���
ͨ������ĺ������ж���٣�������ֺ���Խ�����һ��
�����ٹ���ʱ�����ﱬը������Χ�Ľ�ɫ����˺�

�ű�����:
����������,����һ��ָ������
ɱ��ָ���Ĺ����,��ɫ����ͨ��NPC������һ���ͼ]]
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local def_table = 
{
    type = 
    {
        ["��Ԩū����"] = 1,
        ["��Ԩū�ͼ�"] = 2,
    },

    on_pre_die = "on_pre_die",                  --��������ǰ�ص�
    on_talk    = "on_talk",                     --����˵���ص�

    talk_info = 
    {   
        {                                       --��Ӧtype table˳��Ҫ�Ҹ�
            "�찡�����������ˣ�",
            "�߿����㳤��̫���ˣ�",
        },
        {
            "�����Ǹ��ƣ�",
            "���ƣ�һ�ж��Ǹ��ƣ�",
        }
    },
}

local CMonster = 
{
    talk_tm_id = 1,
    talk_tm_elapse = 50000,
    skill_id = 10123,
    npc_name = "��Ԩһ�㴫����",
}

function CMonster:GetType(monster)
    local t = def_table.type[lualib:KeyName(monster)]
    if t == nil then
        lualib:Error("��Ԩū�ͽű����󣬹���keyname��ű���ƥ�䣡")
    end
    return t
end

function CMonster:AddTrigger(monster)
    lualib:AddTrigger(monster, lua_trigger_pre_die, def_table.on_pre_die)
end

function CMonster:AddTimer(monster)
    if not lualib:AddTimerEx(monster, self.talk_tm_id, self.talk_tm_elapse, -1, def_table.on_talk, "") then
        lualib:Error("��Ԩū�ͽű����󣬹������˵����ʱ��ʧ�ܣ�")
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
            lualib:Error("��Ԩū�ͽű�����ȡ�ù���������Ϣʧ�ܣ�")
            return true
        end

        if not lualib:Map_GenNpc(map, self.npc_name, x, y, 6, dir) then
             lualib:Error("��Ԩū�ͽű���������NPC"..self.npc_name.."ʧ�ܣ�")
            return true
        end

        lualib:Debug("��Ԩū�ͽű�������NPC"..self.npc_name.."��")
        lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "��Ԩū�ͼ����������ٻ�������ʹ�ߣ�")
    elseif type == 2 then
		local x = lualib:X(monster)
		local y = lualib:Y(monster)
		local map = lualib:MapGuid(monster)
		if x == -1 or y == -1 or map == "" then return end
		local players = lualib:Map_GetRegionPlayers(map, x, y, 1, true)
		
			lualib:SetHp(monster, 1, false)
		if not lualib:Monster_SpellTarget(monster, self.skill_id, monster) then
            lualib:Error("��Ԩū�ͽű����󣬹����Ա�ʧ�ܣ�")
         return true
        end
		for i = 1, #players do
			lualib:AddBuffEx(players[i], "��֩���Ѫ", 0, -15)
			lualib:Debug("��Ԩū�ͽű��������Ա��ɹ���")
		end
		
        if lualib:Player_IsPlayer(killer) then
            lualib:SysMsg_SendCenterMsg(0, "��Ԩū��¶���˲��̵�Ц�ݣ��찡�������Ա���", killer)
        end
    end

    return true
end

function on_create(monster)
    lualib:Debug("��Ԩū��ˢ�³ɹ���")
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
