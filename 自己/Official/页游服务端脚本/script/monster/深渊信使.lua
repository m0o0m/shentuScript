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
    status = 
    {
        ["live"] = 1,               --����״̬������
        ["die"] = 2,                --����״̬����������ʧ
    },
    summon_tm_id = 1,               --�ٻ���ʱ��ID
    summon_tm_elapse = 15000,       --�ٻ���ʱ�����
    disappear_tm_id = 2,            --���ܶ�ʱ��ID
    disappear_tm_elapse = 1000,     --��·���
    pred_tm_id = 3,                 --�ж϶�ʱ��ID
    pred_tm_elapse = 1000,          --�ж϶�ʱ��
    summon_table = 
    {
        {                             --��Ӧstatus��˳�򣬲�Ҫ�Ҹ�
            {"��Ԩ����1", 3},         --��·ʱ��С��
            {"��Ԩ����2", 3},         --��·ʱ��С��
        },
        {
            {"��Ԩͳ��", 1},          --��ʧ����������BOSS
        },
    },
    escape_path =                     --���ܵ�·��
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
        "�����ϵ�װ������ͳ����˵ģ��������ߣ�",
        "��׷���ˣ������ǿ��������ϵ�װ���˰ɣ��Ͻ��غã�",
        "�������������ǵ������ģ������ǲ���Ź��ҵģ�",
        "�Ҹ�����ƴ�ˣ�С���ǣ����Һݺݵ������ǣ�",
    },
    talk_boss =
    {
        "�ߺߣ����������ֵ����������ˣ�����һ����˺�����ǵģ�"
    }
}

function CMonster:AddTrigger(monster)
    lualib:AddTrigger(monster, lua_trigger_post_die, self.on_post_die)
end

function CMonster:AddTimer(monster, init)
    if init == true then
        if not lualib:AddTimerEx(monster, self.disappear_tm_id, self.disappear_tm_elapse, -1, self.on_disappear, "") then
            lualib:Error("��Ԩ��ʹ�ű����󣬹��������ʧ��ʱ��ʧ�ܣ�")
            return false
        end
    else
        if not lualib:AddTimerEx(monster, self.summon_tm_id, self.summon_tm_elapse, -1, self.on_summon, "") then
            lualib:Error("��Ԩ��ʹ�ű����󣬹�������ٻ���ʱ��ʧ�ܣ�")
            return false
        end

        if not lualib:AddTimerEx(monster, self.pred_tm_id, self.pred_tm_elapse, -1, self.on_pred, "") then
            lualib:Error("��Ԩ��ʹ�ű�������ӹ���λ���ж϶�ʱ��ʧ�ܣ�")
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
        lualib:Error("��Ԩ��ʹ�ű����󣬹������·����ʧ�ܣ�")
        return false        
    end
    lualib:Debug("��Ԩ��ʹ�ű����������·����ɹ���")
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
            lualib:Error("��Ԩ��ʹ�ű������ٻ�����"..self.summon_table[status][rnd][1].."ʧ�ܣ�")
        end
        lualib:SysMsg_SendRoleTalk(monster, self.talk_table[lualib:GenRandom(1, #self.talk_table)])
        lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "��Ԩ��ʹ��"..self.talk_table[lualib:GenRandom(1, #self.talk_table)])
    else
        if not lualib:Map_GenMonster(lualib:MapGuid(monster), self.end_point[1], self.end_point[2], 4,
                      lualib:GenRandom(0, 7), self.summon_table[status][rnd][1],
                      self.summon_table[status][rnd][2], false) then
            lualib:Error("��Ԩ��ʹ�ű������ٻ�����"..self.summon_table[status][rnd][1].."ʧ�ܣ�")
        end
        lualib:SysMsg_SendRoleTalk(monster, self.talk_boss[lualib:GenRandom(1, #self.talk_boss)])
        lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "��Ԩ��ʹ��"..self.talk_boss[lualib:GenRandom(1, #self.talk_boss)])
    end
end

function on_create(monster)
    lualib:Debug("��Ԩ��ʹˢ�³ɹ���")
    CMonster:AddTrigger(monster)
    if not CMonster:AddTimer(monster, true) then return end
end

function on_post_die(monster, killer)
    lualib:Debug("��Ԩ��ʹon_post_die")
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "�㴳������������׼�������Ԩͳ��Ĺ����ɣ�")
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
        lualib:Debug("��Ԩ��ʹ������������ߣ�")
    end
end

function on_pred(monster, timer_id, param)
    if CMonster:PosPred(monster) then
        lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "��ʹ���Լ��׼�������Ԩͳ�죬�Ͽ�ӭ����ս�ɣ�")
        lualib:Kill(monster)
        --lualib:Monster_Remove(monster)
        --CMonster:Summon(monster, CMonster.status.die)
    end
end
