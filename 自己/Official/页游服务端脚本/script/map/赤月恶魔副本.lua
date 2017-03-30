local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/�Զ����")

local monster_tbl = {
	[1] = {"���¶�ħ����",23,32} , 
}
function on_map_create( sMapID )
	lualib:AddTrigger(sMapID, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTrigger( sMapID , lua_trigger_leave_map , "on_leave_map" )
	lualib:AddTrigger(sMapID, lua_trigger_monster_post_die, "on_post_monster_die")
	for i, v in pairs(monster_tbl) do
		lualib:Map_GenSingleMonster( sMapID ,v[2],v[3], 1, 3, v[1], false)
	end
	return ""
end 

function on_enter_map(player) 
	lualib:ShowFormWithContent(player, "form�ļ���", "PersonBossWnd")
	return ""
end

function on_time(player)
	
	--lualib:StopAutoRun(player)
	if lualib:HasBuff(player,"�Զ����") then
		guaji(player) 
	end
	lualib:DisableTimer(player,868686) 
	return ""
end

function on_post_monster_die( monster , sPlayerID )
	local sMapID = lualib:MapGuid(sPlayerID)
	if not lualib:Player_IsPlayer(sPlayerID) then  
		local playerList = lualib:Map_GetMapPlayers(sMapID, true)
		if playerList[1] ~= "" then  
			sPlayerID = playerList[1]
		end
	end

	local monster_count = tonumber(lualib:Map_GetMonsterCount(sMapID, "", true, true))
	if monster_count == 0 then
		lualib:SetDayInt(sPlayerID, "qianwang7",1)
		lualib:SetInt(sPlayerID, "qianwang7",1)
		lualib:NotifyVar(sPlayerID, "qianwang7")
		lualib:AddTimerEx(sPlayerID,868686,15000,1,"on_time","") 
		
		local num = lualib:GetInt(sPlayerID, "���¶�ħ����one") 
		if num == 0 then 
			lualib:SetInt(sPlayerID, "���¶�ħ����one",1) 
			local x = lualib:X(monster)
			local y = lualib:Y(monster)
			local item_tab = {"�������","ħ������","��������"}
			local job = lualib:Job(sPlayerID)
			lualib:Map_GenItemRnd(sMapID, x, y, 3, item_tab[job], 1, true, 0)
		end
		
		lualib:ShowFormWithContent(sPlayerID, "�ű���", "PersonBossWnd.ShowGetRwdBtn();")
	end
	--[[
	local sMapKeyName = lualib:KeyName(sMapID)
	local monsterCount = lualib:Map_GetMonsterCount( sMapID , "" , true , true )

	if monsterCount <= 0  then
		local destMap = lualib:Map_GetMapGuid("��ɽ��")
		local dMapKeyName = lualib:KeyName(destMap)
		
		lualib:Map_AddJumpPointEx(sMapID, destMap, 23, 26, 2, 196, 249, 3)		
		--lualib:Map_AddEffect(sMapID, 23, 26, 100000009, 2000)
		local jump_content = sMapKeyName.."#"..dMapKeyName.."#".."23".."#".."26".."#".."2"
		lualib:ShowFormWithContent(sPlayerID,"���Ӷ�̬��ת���",jump_content)
		lualib:RunClientScript(sMapID, "mapeffect", "texiao", "100000009".."#".."23".."#".."26".."#0#2000") --���볡����Ч , ��Ҫ���뿪����ʱɾ��		
		
		if lualib:GetInt( sMapID , "����ʱ��" ) > 60 then
			local lastminute = (thissecond-thissecond%60)/60
			local lastsecond = thissecond - lastminute*60
			if lastsecond == 0 then
				--lualib:SysPromptMsg( sPlayerID , "������"..lastminute.."���Ӻ󱻴�������ɽ��")
			else
			--	lualib:SysPromptMsg( sPlayerID , "������"..lastminute.."��"..lastsecond.."��󱻴�������ɽ��")
			end
		else
			--lualib:SysPromptMsg( sPlayerID , "������"..thissecond.."��󱻴�������ɽ��")
		end

		lualib:AddTimerEx( sMapID , 1 , 1000 , 181 , "oncall" , sPlayerID)
	end--]]
end

--[[function oncall( sMapID , iTimerID , sPlayerID )
	if not lualib:Player_IsPlayer(sPlayerID) then  
		local playerList = lualib:Map_GetMapPlayers(sMapID, true)
		if playerList[1] ~= "" then  
			sPlayerID = playerList[1]
		end
	end
	local thissecond = lualib:GetInt( sMapID , "����ʱ��" ) - 1
	lualib:SetInt( sMapID , "����ʱ��" , thissecond )
	if thissecond > 30 then
		if thissecond%30 == 0 then
			if thissecond > 60 then
				local lastminute = (thissecond-thissecond%60)/60
				local lastsecond = thissecond - lastminute*60
				if lastsecond == 0 then
				--	lualib:SysPromptMsg( sPlayerID , "������"..lastminute.."���Ӻ󱻴�������ɽ��")
				else
				--	lualib:SysPromptMsg( sPlayerID , "������"..lastminute.."��"..lastsecond.."��󱻴�������ɽ��")
				end
			else
			--	lualib:SysPromptMsg( sPlayerID , "������"..thissecond.."��󱻴�������ɽ��")
			end
		end
	elseif thissecond > 5 and thissecond < 31 then
		if thissecond%5 == 0 then
			--lualib:SysPromptMsg( sPlayerID , "������"..thissecond.."��󱻴�������ɽ��")
		end
	elseif thissecond < 6 and thissecond > 0 then
		--lualib:SysPromptMsg( sPlayerID , "������"..thissecond.."��󱻴�������ɽ��")
	elseif thissecond <= 0 then 
		lualib:Player_MapMoveXY( sPlayerID , "��ɽ��" , 190 , 258 , 3 ) 
	end
end--]]

function on_leave_map( sPlayerID )
	
	--lualib:RunClientScript(sMapID, "mapeffect", "del_texiao", "100000009".."#".."14".."#".."25")
	if lualib:Player_IsPlayer( sPlayerID ) == true then 
		lualib:ShowFormWithContent(sPlayerID, "�ű���", "PersonBossWnd.CloseFBandOpenTask();")
		local sMapID = lualib:MapGuid( sPlayerID )
		local monster_count = lualib:Map_GetMonsterCount(sMapID, "", true, true)
		--lualib:SysPromptMsg(sPlayerID,"monster_count ".. monster_count)
		if monster_count == 0 then 
			if lualib:HasQuest(sPlayerID, 73) then
				lualib:ForceQuestReady(sPlayerID , 73)
			end
			if lualib:GetInt(sPlayerID,lualib:MapGuid(sPlayerID)) == 0 then 
				lualib:Player_AddExp(sPlayerID, 600000, "����boss����������", "ϵͳ")
			end
		end
		lualib:Map_DestroyDgn( sMapID )
	end
	
end 

