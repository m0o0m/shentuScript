local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

-- ��ͼ������keyname���������ڵĵ�ͼ���ܱ����ͣ�


function main(player, item)
	local player_name = lualib:Name(player)
	local player_team = lualib:Player_GetTeamList(player)

	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[���ײ���ͨ��֤]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905000>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#����С��\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#1.���ײ���������߼����װ������ϧ����!#COLOREND#\n \n"  
	msg = msg .. "#COLORCOLOR_BROWN#2.���������ܵ�а������䣬�������������1%�ľ���!#COLOREND#\n \n"  
	msg = msg .. "#COLORCOLOR_BROWN#3.ӯ������,�����Ը�,ȷ��Ҫ��ȥ��#COLOREND#\n \n"  
    msg = msg .. "#OFFSET<X:80,Y:0>##IMAGE<ID:1900000034>#"  
	msg = msg .. "#OFFSET<X:-50,Y:-11>#<@chuansong".."#"..item.."#".." *01* ȷ��>"  
	lualib:NPCTalkDetail(player, msg, 265, 350)
	return true
end

function chuansong(player,item)
	local playername = lualib:Name(player)
	local itemname	= lualib:Name(item)
	local itemkeyname = lualib:KeyName(item)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)

	if item_num < 1 then
		lualib:SysTriggerMsg(player, "���ǲ��ǰ�["..itemname.."]���ű��ˣ�")
		return ""
	end

	
	if not lualib:DelItem(player, lualib:KeyName(item), 1, 2, "��Ա���Ϳ۳�", player) then
		
	end
	
	local mapkeyname = "���ײ���1"
	local x = 42
	local y = 446
	
	if lualib:Player_MapMoveXY(player, mapkeyname, x, y, 3) == false then
		lualib:SysTriggerMsg(player, "��תʧ��")
		return ""
	end
	
	
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
			local s1 = "["..player_name.."]��Ʒ�����ˣ���"..item_map_name.."["..item_map_x..":"..item_map_y.."]�����һ��".."��"..item_name.."��������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end
