local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
	local msg = ""
	if lualib:Player_GetCustomVarInt(player, "vip6_suishen_cangku") == 1 then
		msg = msg.."���Ѿ�����һ������ֿ⣬���Ժ�ʹ�ô˹��ܣ�\n \n"
		msg = msg.."<@exit *01*���뿪��>\n"
		lualib:NPCTalk(player, msg)
	    return false
	end	
	
	local mapkeya = "��Ĺ"
	if lualib:Player_GetStrProp(player, lua_role_current_map_key) == mapkeya then
		msg = msg.."��ǰ��ͼ������ʹ�ô˹��ܣ����뿪�˵�ͼ����ʹ�ã�"
		lualib:NPCTalk(player, msg)
		return false
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
    return true
end

function dssscknpc_ssck(player)
	lualib:Player_SetCustomVarInt(player, "vip6_suishen_cangku", 0)
	return true
end

function exit(player)
	return ""
end

function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#��["..item_map_x..":"..item_map_y.."]������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end