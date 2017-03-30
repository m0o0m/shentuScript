local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local monster_tbl = {
	[1] = {"白色恶猪副本",22,41} , 
}

function on_map_create( sMapID )
	lualib:AddTrigger( sMapID , lua_trigger_leave_map , "on_leave_map" )
	lualib:AddTrigger(sMapID, lua_trigger_monster_post_die, "on_post_monster_die")
	for i, v in pairs(monster_tbl) do
		lualib:Map_GenSingleMonster( sMapID ,v[2],v[3], 1, 3, v[1], false)
	end
	lualib:AddTrigger( sMapID , lua_trigger_map_destroy , "on_dungeon_end" )
	return ""
end 

function on_post_monster_die(monster , sPlayerID)
	local sMapID = lualib:MapGuid(sPlayerID)
	if not lualib:Player_IsPlayer(sPlayerID) then  
		local playerList = lualib:Map_GetMapPlayers(sMapID, true)
		if playerList[1] ~= "" then  
			sPlayerID = playerList[1]
		end
	end
	local sMapKeyName = lualib:KeyName(sMapID)
	local monsterCount = lualib:Map_GetMonsterCount( sMapID , "" , true , true )
	
	local thissecond = 180
	lualib:SetInt( sMapID , "倒计时秒" , thissecond )

	if monsterCount <= 0  then
		local destMap = lualib:Map_GetMapGuid("巫山城")
		local dMapKeyName = lualib:KeyName(destMap)
		lualib:Map_AddJumpPointEx(sMapID, destMap, 13, 47, 2, 161, 200, 3)
		local jump_content = sMapKeyName.."#"..dMapKeyName.."#".."13".."#".."47".."#".."2"
		lualib:ShowFormWithContent(sPlayerID,"增加动态跳转点表单",jump_content)
		lualib:RunClientScript(sMapID, "mapeffect", "texiao", "100000009".."#".."13".."#".."47".."#0#2000") --加入场景特效 , 需要在离开副本时删除
				
		
		if lualib:GetInt( sMapID , "倒计时秒" ) > 60 then
			local lastminute = (thissecond-thissecond%60)/60
			local lastsecond = thissecond - lastminute*60
			if lastsecond == 0 then
				lualib:SysPromptMsg( sPlayerID , "您将在"..lastminute.."分钟后被传送至巫山城")
			else
				lualib:SysPromptMsg( sPlayerID , "您将在"..lastminute.."分"..lastsecond.."秒后被传送至巫山城")
			end
		else
			lualib:SysPromptMsg( sPlayerID , "您将在"..thissecond.."秒后被传送至巫山城")
		end

		lualib:AddTimerEx( sMapID , 1 , 1000 , 181 , "oncall" , sPlayerID )
	end
	return ""
end

function oncall( sMapID , iTimerID , sPlayerID )
	if not lualib:Player_IsPlayer(sPlayerID) then  
		local playerList = lualib:Map_GetMapPlayers(sMapID, true)
		if playerList[1] ~= "" then  
			sPlayerID = playerList[1]
		end
	end
	local thissecond = lualib:GetInt( sMapID , "倒计时秒" ) - 1
	lualib:SetInt( sMapID , "倒计时秒" , thissecond )
	if thissecond > 30 then
		if thissecond%30 == 0 then
			if thissecond > 60 then
				local lastminute = (thissecond-thissecond%60)/60
				local lastsecond = thissecond - lastminute*60
				if lastsecond == 0 then
					lualib:SysPromptMsg( sPlayerID , "您将在"..lastminute.."分钟后被传送至巫山城")
				else
					lualib:SysPromptMsg( sPlayerID , "您将在"..lastminute.."分"..lastsecond.."秒后被传送至巫山城")
				end
			else
				lualib:SysPromptMsg( sPlayerID , "您将在"..thissecond.."秒后被传送至巫山城")
			end
		end
	elseif thissecond > 5 and thissecond < 31 then
		if thissecond%5 == 0 then
			lualib:SysPromptMsg( sPlayerID , "您将在"..thissecond.."秒后被传送至巫山城")
		end
	elseif thissecond < 6 and thissecond > 0 then
		lualib:SysPromptMsg( sPlayerID , "您将在"..thissecond.."秒后被传送至巫山城")
	elseif thissecond <= 0 then 
		lualib:Player_MapMoveXY( sPlayerID , "巫山城" , 161 , 200 , 3 )
	end
end

function on_leave_map( sPlayerID )
	lualib:ForceQuestReady(sPlayerID , 47)
	local sMapID = lualib:MapGuid( sPlayerID )
	lualib:RunClientScript(sMapID, "mapeffect", "del_texiao", "100000009".."#".."17".."#".."66")
	lualib:DisableTimer( sMapID , 1 )
	lualib:Map_DestroyDgn( sMapID )
	return ""
end

function on_dungeon_end( sMapID , sMapKey )
	for i=1,5 do
		if lualib:HasTimer( sMapID , i ) then lualib:DisableTimer( sMapID , i ) end
	end
end