local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTimerEx(map, 1, 1*30*1000, 1, "closeDgn", "")
	return
end

function closeDgn(dgn)
	local map = lualib:Map_GetMapGuid("��ŭ֮��");
	lualib:SetStr(map, "guild_map_guid", "")
	lualib:SetInt(map, "guild_active_time", 0)
	lualib:SysMsg_SendTopColor(2, "[�л�����]��ֹͣ���룡�������ڴ�ʤ���л�ĵ���", 11, 13) --��Ȼ�Ǻ�ɫ
	lualib:SysMsg_SendBroadcastMsg("[�л�����]��ֹͣ���룡�������ڴ�ʤ���л�ĵ���", "ϵͳ֪ͨ")
	lualib:SysMsg_SendBroadcastMsg("���ɱ�����л���������", "������ʾ")
	lualib:SysMsg_SendBoardMsg("0", "[�л�����]", "[�л�����]��ֹͣ���룡", 15000)
	
	lualib:AddTimerEx(dgn, 2, 30*1000, 35, "panding", "")
	
end

function on_enter_map(player)
	local str = "#COLORCOLOR_YELLOW#���#COLOREND##COLORCOLOR_BLUE#��"..lualib:Name(player).."��#COLOREND##COLORCOLOR_YELLOW#�����л����Ե�ͼ��#COLOREND#";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	return ""
end


function panding(map, id)
	lualib:SysMapMsg(map, "�ж���ʤ�л���-----");
	local players = lualib:Map_GetMapPlayers(map, true)
	if #players < 1 then
		lualib:SysMsg_SendBroadcastMsg("[�л�����]��ѽ��������л�ʤ��.���ͼ��û��", "ϵͳ֪ͨ")
		lualib:Map_DestroyDgn(map)
		return
	end

	local strTempOwner = lualib:MapOwnerFamily(map);
	if strTempOwner == "" then
		lualib:SysMapMsg(map, "ϵͳÿ�����ж�һ��ʤ���лᣬ���ɱ�����л��������ң�ȡ������ʤ������");
		return
	end
	
	for i = 1, #players do
		Guild = lualib:GuildGuid(players[i])
		if Guild ~= "" and Guild ~= nil then
			break
		end
	end
	lualib:SetDBStr("Guild_award", Guild)
	lualib:SetDBNum("Guild_yb", 30000)
	lualib:SysMsg_SendBroadcastMsg("[�л�����]�Ѿ��ѽ������л�["..strTempOwner.."]ʤ��", "ϵͳ֪ͨ")
	lualib:SysMsg_SendBroadcastMsg("[�л�����]��ѽ������л�["..strTempOwner.."]ʤ��", "ϵͳ֪ͨ")
	lualib:SysMsg_SendBroadcastMsg("[�л�����]��ѽ������л�["..strTempOwner.."]ʤ��", "ϵͳ֪ͨ")
	lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BLUE#"..strTempOwner.."#COLOREND##COLORCOLOR_YELLOW#����˵�ͼ�����еĵж�����,������л�սʤ�����۰����£���.#COLOREND#", "�л�ս֪ͨ", 1, 0);
	lualib:DisableTimer(map, 1)
	lualib:Map_DestroyDgn(map)
	return
end