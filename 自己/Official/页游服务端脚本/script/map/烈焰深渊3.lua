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

local def_table = 
{
    gen_monster = 
    {
        {"��Ԩħ��", 1},
    },
}

function on_map_create(map)
    lualib:Debug("������Ԩ3����������")

	
	
    for i = 1, #def_table.gen_monster do
        if not lualib:Map_GenMonster(map, 72, 72, 6, lualib:GenRandom(0, 7), def_table.gen_monster[i][1], def_table.gen_monster[i][2], false) then
            lualib:Error("������Ԩ3����ˢBOSSʧ�ܣ�")
        end
    end
    lualib:Debug("������Ԩ3����ˢBOSS�ɹ���")

    lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map")
end

function on_map_destroy(map)
    lualib:ClearTrigger(map)
    lualib:Debug("������Ԩ3�������٣�")
end

function on_enter_map(player)
    lualib:SysMsg_SendTriggerMsg(player, "��ӭ����������Ԩ���㣬�����������"..lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime()).." 23:59:59�����ã�")
	lualib:RunClientScript(player, "mapeffect", "texiao", "100001560#79#70#0#99999000")
	lualib:RunClientScript(player, "mapeffect", "texiao", "100001570#63#83#0#99999000")
end

