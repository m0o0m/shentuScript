local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/����ս�淨")
require("system/serializer")

function on_map_create(strMap)
	lualib:AddTimer(strMap, 1, 5000, -1, "OnCastleOwnerCheck");
	lualib:AddTrigger(strMap , lua_trigger_player_pre_die , "on_pre_player_die")
	lualib:AddTrigger(strMap, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTrigger(strMap , lua_trigger_leave_map , "on_leave_map")
	
	return ""
end


function on_pre_player_die(player, killer)
	local kill_p = ""
	if lualib:Player_IsPlayer(killer) then
		kill_p = killer
	else
		local play = lualib:GetHeroLord(killer)
		if play ~= "" and play ~= nil then
			kill_p = play
		else
			play = lualib:Monster_GetMaster(killer)
            if play ~= "" then 
				kill_p = play
			end
		end
	end
	if kill_p ~= "" then
		lualib:SetDayInt(kill_p,"����ɱ����",lualib:GetDayInt(kill_p,"����ɱ����")+1)
	end
	sort_kill()
	return true
end


function sort_kill()
	local map = lualib:Map_GetMapGuid("���ǻʹ�")
    if "" == map then return end
	local playerList = lualib:Map_GetMapPlayers(map, true)
	local familyname
	local family_tab = {}
	for i=1,#playerList do 
		if playerList[i] ~= "" then 
			familyname = lualib:GetFamilyName(playerList[i])
			if familyname ~= "" then 
				family_tab[#family_tab+1] = {}
				family_tab[#family_tab][1] = lualib:Name(playerList[i])
				family_tab[#family_tab][2] = lualib:GetDayInt(playerList[i],"����ɱ����")
				family_tab[#family_tab][3] = familyname
				family_tab[#family_tab][4] = playerList[i]
			end
		end
	end
	for  j = 1,#family_tab do 
		if j<#family_tab then 
			for  i = 1,#family_tab-1 do 
				if family_tab[i][2] < family_tab[i+1][2] then 
					local index = family_tab[i]
					family_tab[i] = family_tab[i+1]
					family_tab[i+1] = index
				end
			end
		end
	end
	for i=1,#family_tab do 
		if family_tab[i][4] ~= "" then 
			lualib:ShowFormWithContent(family_tab[i][4], "�ű���", "CastleInWnd.RankChange("..serialize(family_tab)..")")
		end
	end
	
	return ""
end
	
function OnCastleOwnerCheck(strMap, dwID, strParam)
	if not CCastle:IsBattleStart() then
		return;
	end
	
	local m = CCastle:QueryCastleStart() + 600;
	local n = lualib:GetAllTime();
	if n <  m then
		local t_m = math.floor((m - n)/60);
		if t_m ~= 0 then
			--lualib:SysMsg_SendMapMsg(strMap, "���ǿ�ʼ10�����Ժ�Ϳ���ռ��ʹ�,Ŀǰ��ʣ"..t_m.."����.");
			--lualib:SysMapMsg(strMap, "���ǿ�ʼ10�����Ժ�Ϳ���ռ��ʹ�,Ŀǰ��ʣ"..t_m.."����.");
			local PLAYER_LIST = lualib:Map_GetMapPlayers(strMap, true)
			for i = 1, #PLAYER_LIST do  
				lualib:SysPromptMsg(PLAYER_LIST[i], "���ǿ�ʼ10�����Ժ�Ϳ���ռ��ʹ�,Ŀǰ��ʣ"..t_m.."����.");
			end
		else
			local t_s = math.floor((m - n) % 60);
			--lualib:SysMsg_SendMapMsg(strMap, "���ǿ�ʼ10�����Ժ�Ϳ���ռ��ʹ�,Ŀǰ��ʣ"..t_s.."����.");
			local PLAYER_LIST = lualib:Map_GetMapPlayers(strMap, true)
			for i = 1, #PLAYER_LIST do  
				lualib:SysPromptMsg(PLAYER_LIST[i], "���ǿ�ʼ10�����Ժ�Ϳ���ռ��ʹ�,Ŀǰ��ʣ"..t_s.."����.");
			end
		end
		return;
	end
	
	local strTempOwner = lualib:MapOwnerFamily(strMap);
	--lualib:SysMsg_SendMapMsg(strMap, "strTempOwner= "..strTempOwner);
	if strTempOwner ~= "" and strTempOwner ~= CCastle:GetTempOwner() then
		--lualib:SysMsg_SendMapMsg(strMap, "����һ���ж�");
		if CCastle:IsDefenceFamily(strTempOwner) or CCastle:IsAttackFamily(strTempOwner) then
			--lualib:SysMsg_SendMapMsg(strMap, "��������ж�");
			
			--ɾ���ϳ�������֮��BUFF
			local oldFamily = lualib:GetCastleTempFamily("����")
			if oldFamily ~= "" then
				local leader = lualib:GetFamilyLeader(oldFamily)
				if leader ~= "" then 
					--if lualib:HasBuff(player, "����֮��") then
					--	if not lualib:DelBuff(player, "����֮��") then
					--		lualib:Error("ɾ������BUFF����֮������")
					--	end
					--end
				end
			end
			
			CCastle:SetCastleTempOwner(strTempOwner);
			lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BLUE#"..strTempOwner.."#COLOREND##COLORCOLOR_YELLOW#����˳Ǳ������еĵж�����,����˳Ǳ��Ŀ���Ȩ.#COLOREND#", "����֪ͨ", 1, 0);
			lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BLUE#"..CCastle.tCastleName.."#COLOREND##COLORCOLOR_YELLOW#��ӵ���л�Ϊ:#COLOREND##COLORCOLOR_BLUE#"..strTempOwner..".#COLOREND#", "����֪ͨ");
			
			--�������ӳ���֮��BUFF  ����BUFF�Լ�ȥ��,���ﲻ����
			--[[
			local leader = lualib:GetFamilyLeader(strTempOwner)
			if leader ~= "" then 
				if lualib:HasBuff(player, "����֮��") then
					if not lualib:DelBuff(player, "����֮��") then
						lualib:Error("ɾ������BUFF����֮������")
					end
				end
			end
			--]]
		end
	end
end


function on_enter_map(player)
	
	
	local newTime = lualib:Str2Time(lualib:Now())
	local opentime = lualib:QueryCastleStart("����")
--	lualib:SysPromptMsg(player,newTime..":"..opentime)
	local lasttime = 7200 - (newTime - opentime)
	lualib:ShowFormWithContent(player, "form�ļ���", "CastleInWnd#".. lasttime)
	
	lualib:DelayCall(player, 300, "sort_kill", "")
	return ""
end

function on_leave_map(player)
	
	lualib:ShowFormWithContent(player, "�ű���", "CastleInWnd.CloseDlg()")
	return ""
	
end