local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

function on_map_create( sMapID ) 
	
	lualib:AddTrigger(sMapID, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTrigger(sMapID , lua_trigger_leave_map , "on_leave_map" )
	lualib:AddTrigger(sMapID, lua_trigger_monster_post_die, "on_post_monster_die")
	lualib:AddTrigger(sMapID, lua_trigger_monster_born, "on_monster_born")
	return ""
	
end

function on_enter_map(player)
	
	local sMapID = lualib:MapGuid(player)
	local mon_msg = Gettimes(sMapID)
	lualib:ShowFormWithContent(player,"form�ļ���","BossRefresh#"..serialize(mon_msg)) 
	return ""
	
end

function Gettimes(sMapID)
	local mon_msg = {
			{"��֮��Ȫ����",0,1800},
			{"��֮���þ���",0,900},
			{"��֮�������",0,900},
			{"��֮��ħ����",0,1800},
			{"��֮ţħ��",0,900},
			{"��֮˫ͷ���",0,900},
			{"��֮ʬ��",0,1800},
			{"��֮�������",0,900},
			{"����ս��",0,1800},
			{"��֮������",0,1800},
			} 
local mon_tab = {
			{"��ħ�����޽���",0,1800},
			{"��ħ��������",0,900},
			{"��ħ����Ľ���",0,900},
			{"��ħ��������ħ",0,1800},
			{"��ħ��ţħ��",0,900},
			{"��ħ��ţͷ����",0,900},
			{"��ħ��Ѫɫǧ��ն",0,1800},
			{"��ħ��а��",0,900},
			{"��ħ����ҹŮ��",0,1800},
			{"��ħ��ħ����",0,1800},
			} 
	
	for i = 1,#mon_msg do
		local monster_count = lualib:Map_GetMonsterCount(sMapID, mon_msg[i][1], true, true)
		
		mon_tab[i][1] = lualib:KeyName2Name(mon_msg[i][1],2)
		if monster_count > 0 then 
			mon_tab[i][2] = 0
		else
			local sconed =  lualib:GetInt(sMapID,mon_msg[i][1])
			if sconed == 0 then 
				mon_tab[i][2] = mon_msg[i][3] -1
			else 
				mon_tab[i][2] = mon_msg[i][3] -1 - (lualib:Str2Time(lualib:Now()) - sconed)
			end
		end
	end
	
	for  j = 1,#mon_tab-1 do 
		for  i = 1,#mon_tab-1 do 
			if mon_tab[i][2] > mon_tab[i+1][2] then 
				local index = mon_tab[i]
				mon_tab[i] = mon_tab[i+1]
				mon_tab[i+1] = index
			end
		end
	end
	
	
--[[	for  i = 1,#mon_tab do  
		local playerList = lualib:Map_GetMapPlayers(sMapID, true)
		for s=1,#playerList do  
			lualib:SysPromptMsg(playerList[s],mon_tab[i][1]..":"..mon_tab[i][2]..":"..mon_tab[i][3])
		end
	end--]]
	
	return mon_tab
	
end

function on_monster_born(monster)
	
	local k_name = lualib:KeyName(monster) 
	local mt1_type = lualib:Monster_Type(k_name)
	if mt1_type == 4 then  
		local sMapID = lualib:MapGuid(monster)
		lualib:SetInt(sMapID,k_name,0)
		local mon_msg = Gettimes(sMapID)
		local playerList = lualib:Map_GetMapPlayers(sMapID, true)
		for i=1,#playerList do
			lualib:ShowFormWithContent(playerList[i],"�ű���","BossRefresh.DcUpdata("..serialize(mon_msg).. ");")   
		end
	end
	return ""
	
end

function on_post_monster_die( monster , sPlayerID )
	
	local k_name = lualib:KeyName(monster) 
	local mt1_type = lualib:Monster_Type(k_name)
	if mt1_type == 4 then 
		local strTime =  lualib:Str2Time(lualib:Now())
		local sMapID = lualib:MapGuid(monster)
		lualib:SetInt(sMapID,k_name,strTime)
		local mon_msg = Gettimes(sMapID)
		local playerList = lualib:Map_GetMapPlayers(sMapID, true)
		for i=1,#playerList do
			lualib:ShowFormWithContent(playerList[i],"�ű���","BossRefresh.DcUpdata("..serialize(mon_msg).. ");")   
		end
	end
	return ""
	
end


function on_leave_map( sPlayerID )
	
	if lualib:Player_IsPlayer(sPlayerID) then  
		lualib:ShowFormWithContent(sPlayerID,"�ű���","BossRefresh.CloseWnd()")   
	end
	
end 


