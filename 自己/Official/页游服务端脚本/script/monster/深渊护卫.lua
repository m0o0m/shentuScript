--[[�ڶ��㣺׷��������
����ֻ���ܣ����ṥ�����ᶨʱ�ٻ�����ٻ��Ĺ�����һЩ���ż��ܣ���ɱ��׷�����������ֱ����ȡ��������(���߻�ô�������)
����涨ʱ���ڴ�������������ʧ������СͷĿ�֣�ɱ��СͷĿ�ֺ������һ��

�ű�����:
1.���������ڷ�����Ұ�������ʱ,��ʼ���չ̶���·�ƶ�
2.�������￪ʼ�ƶ���,15���ֺ��������������Ȼû������,��ù�����ʧ,�ڹ�����ʧ�ĵ�������һָֻ����ͷĿ����
3.ɱ�������������ͷĿ�����,��ɫ����ͨ��NPC������һ���ͼ
4.�������￪ʼ�ƶ���,ÿ��15���ٻ�һ�ι���(���������͹�������������ɵ���)
5.�ٻ�����ÿ��10��ʩ��һ��ָ���ļ���]]

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local CMonster = 
{
    type = 
    {
        ["��Ԩ����1"] = 1,
        ["��Ԩ����2"] = 2,
    },
    skill_tm_id = 1,               --�ٻ���ʱ��ID
    skill_tm_elapse = 3000,        --�ٻ���ʱ�����
    skill_rang = 5,                --���ܷ�Χ
    skill_table = 
    {
        10124,                     --����1���� 
        10125,                     --����2����
    },
    on_spell = "on_spell",
    talk_table = 
    {
        "���������ǵ���ҵ������ģ�",
        "Ϊ����޴���Ϊ��ڰɣ�",
        "û�����ܴ��ҵ��������ѣ�",
    },
}

function CMonster:AddTimer(monster)
    if not lualib:AddTimerEx(monster, self.skill_tm_id, self.skill_tm_elapse, -1, self.on_spell, "") then
        lualib:Error("��Ԩ�����ű����󣬹���ʹ�ü��ܶ�ʱ��ʧ�ܣ�")
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
        lualib:Error("�ű�����ﲻƥ�䣡")
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
        lualib:Error("��Ԩ����ʩ�ż���ʧ�ܣ�")
    end
    lualib:Debug("��Ԩ����ʩ�ż��ܳɹ���")
end

function on_create(monster)
    lualib:Debug("��Ԩ����ˢ�³ɹ���")
    if not CMonster:AddTimer(monster) then return end
    CMonster:OnSpell(monster)
end

function on_post_die(monster, killer)
    lualib:Debug("��Ԩ����on_post_die")
    CMonster:ClearTimer(monster)
end

function on_spell(monster, timer_id, param)
    CMonster:OnSpell(monster)
end
