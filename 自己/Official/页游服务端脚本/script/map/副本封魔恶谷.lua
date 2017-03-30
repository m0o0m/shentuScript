--日常封魔恶谷
--29只怪

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/自动打怪")

local monster_tbl = {
					[1] = { "副本火焰沃玛" , 20 , false } , 
					[2] = { "副本魔龙巨蛾" , 8 , false } , 
					[3] = { "副本恶魔蝙蝠" , 1 , false } , 
}
local cur = 0
function on_map_create(sMapID)
	lualib:AddTrigger(sMapID , lua_trigger_leave_map , "on_leave_map" )
	lualib:AddTrigger(sMapID, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTrigger(sMapID, lua_trigger_monster_post_die, "on_monster_post_die") 
	for i=1,#monster_tbl do
		lualib:Map_BatchGenMonster( sMapID , monster_tbl[i][1] , monster_tbl[i][2] , monster_tbl[i][3] )
	end
	return ""
end

function on_leave_map(player)
	if not lualib:Player_IsPlayer(player) then
		return ""
	end
	if lualib:HasBuff(player,"自动打怪") then
		lualib:DelBuff(player, "自动打怪") 
		guaji(player)
	end
	local sMapID = lualib:MapGuid(player)
	lualib:Map_DestroyDgn(sMapID)
	lualib:ShowFormWithContent(player, "脚本表单", "DailyFbWnd.CloseFBandOpenTask();")
	return ""
end

function on_enter_map(player)
	lualib:ShowFormWithContent(player, "form文件表单", "DailyFbWnd#\"羽毛\"#12#600000#29#\"神灵之羽\"")
	return ""
end

function on_monster_post_die(monster, killer)
	local player = ""
	local iMonster_count = 0
	local mapGuid = ""
	mapGuid = lualib:MapGuid(killer)
	if not lualib:Player_IsPlayer(killer) then
		if lualib:GUIDType(killer) == 2 then
			player = lualib:Name2Guid(lualib:Monster_GetMaster(killer))
		else
			player = lualib:GetHeroLord(killer)
		end
	else
		player = killer
	end
	if mapGuid ~= "" and player ~= "" then
		iMonster_count = lualib:Map_GetMonsterCount(mapGuid , "" , true , true )
		local cur = 29-iMonster_count
		lualib:ShowFormWithContent(player, "脚本表单", "DailyFbWnd.showAim("..cur..");")
		if iMonster_count <= 0 then	
			lualib:ShowFormWithContent(player, "脚本表单", "DailyFbWnd.ShowGetRwdBtn();")
			if lualib:HasBuff(player,"自动打怪") then
				lualib:DelBuff(player, "自动打怪") 
				guaji(player)
			end
		end
	end
	return ""
end


function onLeave(sMapID, player)
	if lualib:Player_MapMoveXY(player, "巫山城" , 223 , 180 , 3 ) then
		lualib:SetInt(player, "FirstCompleteDailyFB", 1)
	end
	return ""
end


function GetReward_2(sMapID, player)
	local iMonster_count = lualib:Map_GetMonsterCount( sMapID , "" , true , true )
	if iMonster_count <= 0 then
		if not (lualib:BagFree(player, true, false, false) > 0) then
			if lualib:MailToPlayer("镇魔圣殿", player , "您选择双倍副本奖励，请注意查收" , 0 , 0 , { "羽毛" , 12 , 1 } ) then
				if lualib:Player_AddExp(player ,600000 , "镇魔圣殿" ,"system") then
					onLeave(sMapID, player)
				end
			end
		else	
			if lualib:AddItem(player , "羽毛" , 12 , true , "副本镇魔圣殿奖励", "每日副本系统") then
				if lualib:Player_AddExp(player ,600000 ,"镇魔圣殿" ,"system") then
					onLeave(sMapID, player)
				end
			end
		end
	else
		onLeave(sMapID, player)
	end
	return ""
end

function GetDoubleReward_2(sMapID, player)
	local iMonster_count = lualib:Map_GetMonsterCount( sMapID , "" , true , true )
	if iMonster_count <= 0 then
		if not (lualib:GetIngot(player) >= 188) then
			lualib:ShowFormWithContent(player, "脚本表单", "DailyFbWnd.MsgBox()")
		else
			if lualib:SubIngot(player, 188, "每日副本", "系统") then
				if not (lualib:BagFree(player, true, false, false) > 0) then
					if lualib:MailToPlayer("镇魔圣殿", player , "您选择双倍副本奖励，请注意查收" , 0 , 0 , { "羽毛" , 24 , 1 } ) then
						if lualib:Player_AddExp(player ,1200000 , "镇魔圣殿" ,"system") then
							onLeave(sMapID, player)
						end
					end
				else
					if lualib:AddItem(player , "羽毛" , 24 , true , "副本镇魔圣殿双倍奖励", "每日副本系统") then
						if lualib:Player_AddExp(player ,1200000 , "镇魔圣殿" ,"system") then
							onLeave(sMapID, player)
						end
					end
				end
			end
		end
	else
		onLeave(sMapID)
	end
	return ""
end