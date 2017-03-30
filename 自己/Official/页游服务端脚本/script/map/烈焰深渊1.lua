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
    gen_monster = 
    {
        {"��Ԩū�ͼ�", 100},
        {"��Ԩū����", 10},
    }
}

function on_map_create(map)
    lualib:Debug("������Ԩ1����������")

    for i = 1, #def_table.gen_monster do
        if not lualib:Map_BatchGenMonster(map, def_table.gen_monster[i][1], def_table.gen_monster[i][2], false) then
            lualib:Warn("������Ԩ1����ˢ��û�дﵽָ����������")
        end
    end

    lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map")
end

function on_map_destroy(map)
    lualib:ClearTrigger(map)
    lualib:Debug("������Ԩ1�������٣�")
end

function on_enter_map(player)
    lualib:SysMsg_SendTriggerMsg(player, "��ӭ����������Ԩһ�㣬�����������"..lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime()).." 23:59:59�����ã�")
	
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.������Ԩ��3�㣬ÿ�㶼�в�ͬ���淨������BOSS�ڵ�����\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.���������߼����ܵĲ�ҳ��һЩ��װ��\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.�������BOSS�󣬿ɻ��ħ���ı��أ��������������^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
end
