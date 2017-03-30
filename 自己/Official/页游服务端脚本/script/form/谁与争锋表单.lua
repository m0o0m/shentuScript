local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")


function Award(player)
	local name = lualib:Name(player)
	local syzf_award = lualib:GetDBStr("syzf_award")
	if lualib:Name(syzf_award) ~= name then
		if lualib:GetDayInt(player, "syzf_award_flag") == 0 then
			msg = "\"��������ʤ�ߣ��޷���ȡ\""
			lualib:ShowFormWithContent(player,"�ű���","ArenaNPC.AlertMsg("..msg..");")
		else
			msg = "\"������ȡ��������\""
			lualib:ShowFormWithContent(player,"�ű���","ArenaNPC.AlertMsg("..msg..");")
		end
		return ""
	end	
	--lualib:Player_AddIngot(player, 1000, false, "˭������", player)
	if lualib:BagFree(player, true, false, false) > 0 then
		if lualib:AddItem(player, "1000Ԫ��", 1, true, "˭��������ʤ��", "ϵͳ") then
			if lualib:SetDBStr("syzf_award", "") then
				lualib:SetDayInt(player, "syzf_award_flag", 1)
			end
		end
	else
		msg = "\"�����ռ䲻�㣡\""
		lualib:ShowFormWithContent(player,"�ű���","ArenaNPC.AlertMsg("..msg..");")
	end
	return ""
end

function GetPlayerNum(player)
	local map = lualib:MapGuid(player)
	local playerList = lualib:Map_GetMapPlayers(map, true)
	local count = #playerList
	lualib:ShowFormWithContent(player,"�ű���","ArenaInfoUI.SetRestNum("..count..");")
	return ""
end

function Enter(player)
	local map = lualib:Map_GetMapGuid("��ɽ��")
    local dgn_guid = lualib:GetStr(map, "active_stzf_dgn")
	local active_time = lualib:GetInt(map, "stzf_time") + 600
	
	local msg = ""
	local cur_time = lualib:GetAllTime()
	if active_time == 0 or cur_time > active_time then
		msg = "\"�Բ����볡ʱ���ѹ������´��ٲ���\""
		lualib:ShowFormWithContent(player,"�ű���","ArenaNPC.AlertMsg("..msg..");")

		return ""
	end
	
	local level = lualib:Level(player)
	if level < 50 then
		msg = "\"�ȼ�����50����\""
		lualib:ShowFormWithContent(player,"�ű���","ArenaNPC.AlertMsg("..msg..");")
		return ""
	end
	
	if dgn_guid == "" then
		return "���λ�쳣������ϵGM��"
	else
		if not lualib:Map_IsDgnExist(dgn_guid) then
			return "���������ڣ�"
		end
		lualib:Player_SetDgnTicket(player, dgn_guid)
		if lualib:Player_HasDgnTicket(player, "˭������") then
			if lualib:Player_EnterDgn(player, "˭������", 0, 0, 0) then
				lualib:ShowFormWithContent(player,"�ű���","ArenaNPC.CloseWnd();")
			end
		end
	end
	return ""
end

function JudgeBattleIsEnd(player)
	local temp = lualib:Map_GetMapGuid("��ɽ��")
    local map = lualib:GetStr(temp, "active_stzf_dgn")
	local players = lualib:Map_GetMapPlayers(map, true)
	if #players == 1 then
		lualib:SetDBStr("syzf_award", players[1])
		lualib:SysMsg_SendBroadcastMsg("", "ϵͳ֪ͨ")
		lualib:SysMsg_SendTopColor(1, "[˭������]����������["..lualib:Name(players[1]).."]ʤ��#COLOREND#", 11, 2)
		lualib:Map_DestroyDgn(map)
	else
		local str = ""
		for i = 1, #players do
			local name = lualib:Name(players[i])
			str = str..name
			if i ~= #players then
				str = str.."��"
			end
		end
		if lualib:GetDBNum("syzf_informed") == "hasnot" then
			lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[˭������]���������� "..str.." ����ʤ��#COLOREND#", 11, 2)
			lualib:SetDBStr("syzf_informed","")
		end
		lualib:Map_DestroyDgn(map)
	end
	return ""
end

function Leave(player)
	if lualib:Player_MapMoveXY(player, "����" , 105 , 127 , 3 ) then
		
	end
	return ""
end