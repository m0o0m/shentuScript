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

local def_table = 
{
    gen_monster = 
    {
        {"��Ԩ��ʹ", 1},
    }
}

function on_map_create(map)
    lualib:Debug("������Ԩ2����������")

    for i = 1, #def_table.gen_monster do
        if not lualib:Map_GenMonster(map, 40, 40, 6, lualib:GenRandom(0, 7), def_table.gen_monster[i][1], def_table.gen_monster[i][2], false) then
            lualib:Error("������Ԩ2����ˢ��ʹʧ�ܣ�")
        end
    end

    lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map")
end

function on_map_destroy(map)
    lualib:ClearTrigger(map)
    lualib:Debug("������Ԩ2�������٣�")
end

function on_enter_map(player)
    lualib:SysMsg_SendTriggerMsg(player, "��ӭ����������Ԩ���㣬�����������"..lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime()).." 23:59:59�����ã�")
end
