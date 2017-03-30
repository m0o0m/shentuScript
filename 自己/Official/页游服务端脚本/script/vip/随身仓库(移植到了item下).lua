local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, vipLevel)
	local msg = ""
	if lualib:Player_GetCustomVarInt(player, "vip6_suishen_cangku") == 1 then
		msg = msg.."���Ѿ�����һ������ֿ⣬���Ժ�ʹ�ô˹��ܣ�\n \n"
		msg = msg.."<@exit *01*���뿪��>\n"
		lualib:NPCTalk(player, msg)
	    return true
	end	
	
	local mapkeya = "��Ĺ"
	if lualib:Player_GetStrProp(player, lua_role_current_map_key) == mapkeya then
		msg = msg.."��ǰ��ͼ������ʹ�ô˹��ܣ����뿪�˵�ͼ����ʹ�ã�"
		lualib:NPCTalk(player, msg)
		return true
	end
		

    local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)
    local player_x = lualib:X(player)
    local player_y = lualib:Y(player)
    local npc_guid = lualib:Map_GenNpc(map, "����ֿ����Ա", player_x, player_y, 1, 3)
	lualib:Error(""..npc_guid)
    if "" == npc_guid then
		msg = msg.."ʹ������ֿ����ʧ��"
		lualib:NPCTalk(player, msg)
        return ""
    end
	lualib:SetStr(npc_guid, "vip6_player_guid", player)
	lualib:Player_SetCustomVarInt(player, "vip6_suishen_cangku", 1)
	lualib:AddTimer(player, 811, 180000, 1, "dssscknpc_ssck")
    return ""
end

function dssscknpc_ssck(player)
	lualib:Player_SetCustomVarInt(player, "vip6_suishen_cangku", 0)
	return true
end

function exit(player)
	return ""
end