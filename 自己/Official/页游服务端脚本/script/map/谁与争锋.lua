local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("form/MarsWnd_s")
function on_map_create(map)
	lualib:DelayCall(map, 600000, "start_count", "")
	--lualib:DelayCall(map, 60000, "start_count", "")
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map,  lua_trigger_leave_map, "on_trigger_leave_map")
	lualib:AddTrigger(map,  lua_trigger_player_post_die, "on_player_post_die")
	return ""
end

function on_trigger_enter_map(player)
	local heros = lualib:GetPlayerCurrentHeroList(player)
	if #heros > 0 then 
		for i = 1, #heros do
			lualib:DestroyDummy(heros[i])
			lualib:SetInt(player, "HeroRelive", 1)
		end
	end
	
	lualib:Player_ChangeAttackMode(player, 1)
	lualib:Player_SetAttackModeLock(player, true)
	local map2 = lualib:Map_GetMapGuid("��ɽ��")
	local active_time = lualib:GetInt(map2, "stzf_time") + 2400
	local restTime = active_time - lualib:GetAllTime()
	lualib:ShowFormWithContent(player, "form�ļ���", "ArenaInfoUI#"..restTime)
	--lualib:ShowFormWithContent(player, "form�ļ���", "ArenaInfoUI#"..60)
	
	lualib:ShowFormWithContent(player, "�ű���", "GameMainBar.Taskitem(5)")
end

function DelayFunc(player)
	HeroRelive(player)
end

function on_trigger_leave_map(player)
	if not lualib:Player_IsPlayer(player) then
		return ""
	end
	if lualib:GetInt(player, "HeroRelive") ~= 0 then       
		lualib:DelayCall(player, 300, "DelayFunc", "")  --�뿪��ͼ����  �˾�Ȼ���ڵ�ͼ�� orz..
	end
	lualib:SetInt(player, "HeroRelive", 0)
	lualib:ShowFormWithContent(player,"�ű���","ArenaInfoUI.CloseFBandOpenTask();")
	lualib:Player_SetAttackModeLock(player, false)
	local map = lualib:MapGuid(player)
	if lualib:GetInt(map, "hasStarted") ~= 1 then
		return ""
	end
	local playerList = lualib:Map_GetMapPlayers(map, true)
	local count = #playerList - 1
	for i = 1, #playerList do
		if playerList[i] ~= player then
			lualib:ShowFormWithContent(playerList[i],"�ű���","ArenaInfoUI.SetRestNum("..count..");")
		end
	end
	if count == 1 then
		local winner = ""
		for i = 1, #playerList do
			if playerList[i] ~= player then
				winner = playerList[i]
			end
		end
		lualib:SetDBStr("syzf_award", winner)
		lualib:SysPromptMsg(playerList[1], "��ϲ��ȡ������ʤ����60����Զ�������ͼ")
		lualib:DelayCall(playerList[1], 60000, "LeaveMap", "")
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[˭������]���������� "..lualib:Name(winner).." ʤ��#COLOREND#", 11, 2)
		ParticipantAward()
	end
end

function on_player_post_die(player, killer)
	local map = lualib:MapGuid(killer)
	local playerList = lualib:Map_GetMapPlayers(map, true)
	local count = #playerList
	for i = 1, count do
		lualib:ShowFormWithContent(playerList[i],"�ű���","ArenaInfoUI.SetRestNum("..count..");")
	end
	if count == 1 then
		lualib:SetDBStr("syzf_award", killer)
		lualib:SysPromptMsg(killer, "��ϲ��ȡ������ʤ����60����Զ�������ͼ")
		lualib:DelayCall(killer, 60000, "LeaveMap", "")
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[˭������]���������� "..lualib:Name(playerList[1]).." ʤ��#COLOREND#", 11, 2)
		ParticipantAward()
	end
	return ""
end

function LeaveMap(player)
	if lualib:Player_MapMoveXY(player, "����" , 116 , 146 , 3 ) then
		local map = lualib:Map_GetMapGuid("��ɽ��")
	end
	return ""
end

function start_count(map)
	local map2 = lualib:Map_GetMapGuid("��ɽ��")
	local active_time = lualib:GetInt(map2, "stzf_time") + 2400
	local restTime = active_time - lualib:GetAllTime()
	
	
	lualib:SetInt(map, "hasStarted", 1)
	local players = lualib:Map_GetMapPlayers(map, true)
	local participantTb = {}
	for i = 1, #players do
		participantTb[i] = lualib:Name(players[i])
	end
	lualib:SetStr("", "˭������������", json.encode(participantTb))
	
	
	if #players > 0 then
		for i = 1, #players do
			lualib:Player_SetAttackModeLock(players[i], false)
			lualib:Player_ChangeAttackMode(players[i], 0)
		end
		if #players == 1 then
			lualib:SetDBStr("syzf_award", players[1])
			lualib:SysPromptMsg(players[1], "��ϲ��ȡ������ʤ����60����Զ�������ͼ")
			lualib:DelayCall(players[1], 60000, "LeaveMap", "")
			lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[˭������]���������� "..lualib:Name(players[1]).." ʤ��#COLOREND#", 11, 2)
			ParticipantAward()
		end
	end
	--lualib:AddTimerEx(map, 1, 1000, -1, "panding", "")
	lualib:DelayCall(map, 1800000, "JudgeBattleIsEnd", "")
	--lualib:DelayCall(map, 180000, "JudgeBattleIsEnd", "")
end

function JudgeBattleIsEnd(map)
	local players = lualib:Map_GetMapPlayers(map, true)
	if #players == 1 then
		lualib:SetDBStr("syzf_award", players[1])
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[˭������]���������� "..lualib:Name(players[1]).." ʤ��#COLOREND#", 11, 2)
		ParticipantAward()
		lualib:Map_DestroyDgn(map)
	elseif #players == 0 then
		--lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[˭������]�����������û����Ҳ���#COLOREND#", 11, 2)
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

function ParticipantAward()
	local str = lualib:GetStr("", "˭������������")
	local tb = {}
	if str ~= "" then
		tb = json.decode(str)
		for i = 1, #tb do
			if lualib:Mail("˭��������뽱��", tb[i], "�����뱾��˭���������������Ľ��������պ�", 0, 0, {"��שС", 3, 1}) then
				
			end
		end
		lualib:SetStr("", "˭������������","")
	end
	return ""
end

function panding(map, id)
	local map2 = lualib:Map_GetMapGuid("��ɽ��")
	local active_time = lualib:GetInt(map2, "stzf_time") + 2400
	local cur_time = lualib:GetAllTime()
	if cur_time < active_time then
		return
	end
	
	local players = lualib:Map_GetMapPlayers(map, true)
	if #players == 1  then
		lualib:SetDBStr("syzf_award", players[1])
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[˭������]���������� "..lualib:Name(players[1]).." ʤ��#COLOREND#", 11, 2)
		lualib:Map_DestroyDgn(map)
		return
	end
	
	return
end