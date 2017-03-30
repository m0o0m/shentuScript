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
    on_post_die = "on_post_die",
    npc_name = "��Ԩ���㴫����",
}

function CMonster:AddTrigger(monster)
    lualib:AddTrigger(monster, lua_trigger_post_die, self.on_post_die)
end

function CMonster:ClearTrigger(monster)
    lualib:ClearTrigger(monster)
end

function CMonster:OnDie(monster)
    local x, y, map, dir = lualib:X(monster), lualib:Y(monster), lualib:MapGuid(monster), lualib:Dir(monster)
    if x == nil or y == nil or map == nil or dir == nil then
        lualib:Error("��Ԩͳ��ű�����ȡ�ù���������Ϣʧ�ܣ�")
        return true
    end

    if not lualib:Map_GenNpc(map, self.npc_name, x, y, 6, dir) then
         lualib:Error("��Ԩͳ��ű���������NPC"..self.npc_name.."ʧ�ܣ�")
        return true
    end

    lualib:Debug("��Ԩū�ͽű�������NPC"..self.npc_name.."��")
end

function on_create(monster)
    lualib:Debug("��Ԩͳ��ˢ�³ɹ���")
    CMonster:AddTrigger(monster)
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "��Ԩͳ�죺������������һ�������ģ��þ�û�гԵ����ʵ����ˣ�")
    lualib:SysMsg_SendRoleTalk(monster, "������������һ�������ģ��þ�û�гԵ����ʵ����ˣ�")
end

function on_post_die(monster, killer)
    lualib:Debug("��Ԩͳ��on_post_die")
    lualib:SysMsg_SendMapMsg(lualib:MapGuid(monster), "��Ԩͳ�죺������Ҳ�ܽй���......�ðɣ�Ҳ�������ǶԵģ�")
    lualib:SysMsg_SendRoleTalk(monster, "������Ҳ�ܽй���......�ðɣ�Ҳ�������ǶԵģ�")
    CMonster:ClearTrigger(monster)
    CMonster:OnDie(monster)
end
