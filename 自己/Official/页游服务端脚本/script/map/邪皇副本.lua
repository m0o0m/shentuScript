local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/自动打怪")

local monster_tbl = {
	[1] = {"祖玛教主副本",24,38} , 
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
	lualib:ShowFormWithContent(player, "form文件表单", "PersonBossWnd")
	return ""
end

function on_time(player)
	
	--lualib:StopAutoRun(player)
	if lualib:HasBuff(player,"自动打怪") then
		guaji(player) 
	end
	lualib:DisableTimer(player,868686) 
	return ""
end

function on_post_monster_die( monster , sPlayerID)
	local sMapID = lualib:MapGuid(sPlayerID)
	if not lualib:Player_IsPlayer(sPlayerID) then  
		local playerList = lualib:Map_GetMapPlayers(sMapID, true)
		if playerList[1] ~= "" then  
			sPlayerID = playerList[1]
		end
	end

	local monster_count = tonumber(lualib:Map_GetMonsterCount(sMapID, "", true, true))
	if monster_count == 0 then
		lualib:SetDayInt(sPlayerID, "qianwang6",1)
		lualib:SetInt(sPlayerID, "qianwang6",1)
		lualib:NotifyVar(sPlayerID, "qianwang6")
		lualib:AddTimerEx(sPlayerID,868686,15000,1,"on_time","") 
		
		local num = lualib:GetInt(sPlayerID, "邪皇副本one") 
		if num == 0 then 
			lualib:SetInt(sPlayerID, "邪皇副本one",1) 
			local x = lualib:X(monster)
			local y = lualib:Y(monster)
			local item_tab = {"战将戒指","法灵戒指","散人戒指"}
			local job = lualib:Job(sPlayerID)
			lualib:Map_GenItemRnd(sMapID, x, y, 3, item_tab[job], 1, true, 0)
		end
		
		lualib:ShowFormWithContent(sPlayerID, "脚本表单", "PersonBossWnd.ShowGetRwdBtn();")
	end
	--[[local sMapKeyName = lualib:KeyName(sMapID)
	local monsterCount = lualib:Map_GetMonsterCount( sMapID , "" , true , true )
	thisseceod = 180
	if monsterCount <= 0  then
		local destMap = lualib:Map_GetMapGuid("巫山城")
		local dMapKeyName = lualib:KeyName(destMap)
		lualib:Map_AddJumpPointEx(sMapID, destMap, 14, 25, 2, 161, 200, 3)
		--lualib:Map_AddEffect(sMapID, 14, 25, 100000009, 2000)
			local jump_content = sMapKeyName.."#"..dMapKeyName.."#".."14".."#".."25".."#".."2"
		lualib:ShowFormWithContent(sPlayerID,"增加动态跳转点表单",jump_content)
		lualib:RunClientScript(sMapID, "mapeffect", "texiao", "100000009".."#".."14".."#".."25".."#0#2000") --加入场景特效 , 需要在离开副本时删除
	
		lualib:SysPromptMsg( sPlayerID , thisseceod.."秒后，您将会被传送到巫山城")
		lualib:AddTimerEx( sMapID , 1 , 1000 , 181, "oncall" , sPlayerID)
	end--]]
end
--[[
function oncall( sMapID , iTimerID , sPlayerID )
	if not lualib:Player_IsPlayer(sPlayerID) then  
		local playerList = lualib:Map_GetMapPlayers(sMapID, true)
		if playerList[1] ~= "" then  
			sPlayerID = playerList[1]
		end
	end
	thisseceod = thisseceod - 1
	if thisseceod > 30 then
		if thisseceod%30 == 0 then
		--	lualib:SysPromptMsg( sPlayerID , "您将在"..thisseceod.."秒后被传送至巫山城")
		end
	elseif thisseceod > 5 and thisseceod < 31 then
		if thisseceod%5 == 0 then
		--	lualib:SysPromptMsg( sPlayerID , "您将在"..thisseceod.."秒后被传送至巫山城")
		end
	elseif thisseceod < 6 and thisseceod > 0 then
	--	lualib:SysPromptMsg( sPlayerID , "您将在"..thisseceod.."秒后被传送至巫山城")
	elseif thisseceod <= 0 then 
		lualib:Player_MapMoveXY( sPlayerID , "巫山城" , 161 , 200 , 3 )
	end
end--]]


function on_leave_map( sPlayerID )
	
	--lualib:RunClientScript(sMapID, "mapeffect", "del_texiao", "100000009".."#".."14".."#".."25")
	
	if lualib:Player_IsPlayer( sPlayerID ) == true then 
		lualib:ShowFormWithContent(sPlayerID, "脚本表单", "PersonBossWnd.CloseFBandOpenTask();")
		local sMapID = lualib:MapGuid( sPlayerID )
		local monster_count = lualib:Map_GetMonsterCount(sMapID, "", true, true)
		--lualib:SysPromptMsg(sPlayerID,"monster_count ".. monster_count)
		if monster_count == 0 then 
			if lualib:HasQuest(sPlayerID, 76) then
				lualib:ForceQuestReady(sPlayerID , 76)
			end
			if lualib:GetInt(sPlayerID,lualib:MapGuid(sPlayerID)) == 0 then 
				lualib:Player_AddExp(sPlayerID, 600000, "个人boss：单倍经验", "系统")
			end
		end
		lualib:Map_DestroyDgn( sMapID )
	end 
end 