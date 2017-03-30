local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local monster_tbl = {
	[1] = {"��������",98,126} , 
	[2] = {"����������",100,128} , 
	[3] = {"��������",100,135} , 
	[4] = {"��������",103,131} , 
	[5] = {"����ս��",106,127} , 
	[6] = {"�����ָ���1",103,138} , 
	[7] = {"�����ָ���2",105,136} , 
	[8] = {"�����ָ���3",109,132} , 
	[9] = {"�����ָ���4",111,130} , 
}

function on_map_create( sMapID )
	lualib:AddTrigger( sMapID , lua_trigger_leave_map , "on_leave_map" )
	lualib:AddTrigger(sMapID, lua_trigger_monster_post_die, "on_post_monster_die")
	for i, v in pairs(monster_tbl) do
		lualib:Map_GenSingleMonster( sMapID ,v[2],v[3], 1, 3, v[1], false)
	end
	lualib:AddTrigger( sMapID , lua_trigger_map_destroy , "on_dungeon_end" )
end 

function on_post_monster_die( monster , sPlayerID )
	local sMapID = lualib:MapGuid(sPlayerID)
	if not lualib:Player_IsPlayer(sPlayerID) then
		local playerList = lualib:Map_GetMapPlayers(sMapID, true)
		if playerList[1] ~= "" then  
			sPlayerID = playerList[1]
		end
	end
	local sMapKeyName = lualib:KeyName(sMapID)
	local monsterCount = lualib:Map_GetMonsterCount( sMapID , "" , true , true )
	thisseceod = 180
	if monsterCount <= 0  then
		local destMap = lualib:Map_GetMapGuid("��ɽ��")
		local dMapKeyName = lualib:KeyName(destMap)
		lualib:Map_AddJumpPointEx(sMapID, destMap, 89, 117, 2, 161, 200, 3)
		--lualib:Map_AddEffect(sMapID, 89, 117, 100000009, 2000)
		local jump_content = sMapKeyName.."#"..dMapKeyName.."#".."89".."#".."117".."#".."2"
		lualib:ShowFormWithContent(sPlayerID,"���Ӷ�̬��ת���",jump_content)
		lualib:RunClientScript(sMapID, "mapeffect", "texiao", "100000009".."#".."89".."#".."117".."#0#2000") --���볡����Ч , ��Ҫ���뿪����ʱɾ��
		
		lualib:SysPromptMsg( sPlayerID , thisseceod.."��������ᱻ���͵���ɽ��")
		lualib:AddTimerEx( sMapID , 1 , 1000 , 181, "oncall" , sPlayerID )
	end
end

function oncall( sMapID , iTimerID , sPlayerID )
	--if not thisseceod then 
	--	lualib:DisableTimer( sMapID , 1 )
	--	return
	--end
	if not lualib:Player_IsPlayer(sPlayerID) then
		local playerList = lualib:Map_GetMapPlayers(sMapID, true)
		if playerList[1] ~= "" then  
			sPlayerID = playerList[1]
		end
	end
	thisseceod = thisseceod - 1
	if thisseceod > 30 then
		if thisseceod%30 == 0 then
			lualib:SysPromptMsg( sPlayerID , "������"..thisseceod.."��󱻴�������ɽ��")
		end
	elseif thisseceod > 5 and thisseceod < 31 then
		if thisseceod%5 == 0 then
			lualib:SysPromptMsg( sPlayerID , "������"..thisseceod.."��󱻴�������ɽ��")
		end
	elseif thisseceod < 6 and thisseceod > 0 then
		lualib:SysPromptMsg( sPlayerID , "������"..thisseceod.."��󱻴�������ɽ��")
	elseif thisseceod <= 0 then 
		lualib:Player_MapMoveXY(sPlayerID , "��ɽ��" , 161 , 200 , 3 )
	end
end

function on_leave_map( sPlayerID )
	lualib:ForceQuestReady(sPlayerID , 56)
	local sMapID = lualib:MapGuid( sPlayerID )
	lualib:RunClientScript(sMapID, "mapeffect", "del_texiao", "100000009".."#".."89".."#".."117")
	lualib:DisableTimer( sMapID , 1 )
	lualib:Map_DestroyDgn( sMapID )
end

function on_dungeon_end( sMapID , sMapKey )
	for i=1,5 do
		if lualib:HasTimer( sMapID , i ) then lualib:DisableTimer( sMapID , i ) end
	end
end