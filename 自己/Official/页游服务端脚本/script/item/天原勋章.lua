local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function main(player, item)		
	local msg = ""
	local player_name = lualib:Name(player)
	msg = player_name.."����ö��ֵ�ѫ�£��ƺ�����Щ��ԭսʿ��ǰ֮��������������ʲô���ܡ���˵�����а������ڣ��ƺ��и�#COLORCOLOR_SKYBLUE#[���ǵ�սʿ]#COLOREND#֪��ѫ�µ����ܣ��Ͻ����Ұɡ�\n \n"
    msg = msg.."                                                   #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@likai *01*�����ء�>"
    lualib:NPCTalk(player, msg)
	lualib:AddTimerEx(item, 250, 1000, -1, "npc_gen", "")
	return true
end

function likai(player, item)

	return ""
end

function npc_gen(item)
    
	local map = lualib:Map_GetMapGuid("а��2")
	local npc = lualib:Map_GetMapNpc(map, "���ǵ�սʿ")
	if not lualib:Npc_IsExist(npc) then lualib:Map_GenNpc(map, "���ǵ�սʿ", 263, 178, 2, 4) end
	lualib:DisableTimer(item, 250)
	return true
end