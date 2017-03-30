local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/自动打怪")
require("system/ScriptPackage")

function GetReward(player,num)
	local first = tonumber(lualib:GetInt(player,"personBosssDayF"))
	num = tonumber(num)
	if num == 3 then 
		lualib:SetInt(player,"personBosssDayF",1)
	end
	if num == 1 and first == 0 then
		lualib:ShowFormWithContent(player, "form文件表单","PersonBoss_QuitWnd")
		return ""
	end
	num = 1
	
	local map_guid = lualib:MapGuid(player)
	local monster_count = lualib:Map_GetMonsterCount(map_guid, "", true, true)
	local a = lualib:GetDayInt(player,lualib:Name(map_guid))  --确保只领一次
	if monster_count == 0 and a ~= 1 then
		if tonumber(num) == 1 then
			lualib:SetDayInt(player,lualib:Name(lualib:MapGuid(player)),1)
			lualib:SetInt(player,lualib:MapGuid(player),1)
			lualib:Player_AddExp(player, 600000, "个人boss：单倍经验", "系统")
			onLeave(player)
		else
			if lualib:Player_SubIngot(player, 98, false, "个人boss：双倍经验", "系统") then
				--********************************--
				local indexx = lualib:GetDBNum("consumeTerm")
				local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 98
				RecordTop10ConsumeInfo(player,totalYb)
				--********************************--
				lualib:SetDayInt(player,lualib:Name(lualib:MapGuid(player)),1)
				lualib:SetInt(player,lualib:MapGuid(player),1)
				lualib:Player_AddExp(player, 1200000, "个人boss：双倍经验", "系统")
				onLeave(player)
			else
				lualib:ShowFormWithContent(player, "脚本表单", "PersonBossWnd.MsgBox()")
			end
		end	
	end
	return ""
end

function onLeave(player)
	lualib:SetInt(player,"personBosssFirst",1)
	if lualib:HasBuff(player,"自动打怪") then
		--lualib:DelBuff(player, "自动打怪")         
		guaji(player) 
	end

	lualib:Player_MapMoveXY( player , "巫山城" , 161 , 200 , 3 )  
	lualib:ShowFormWithContent(player, "脚本表单", "PersonBossWnd.CloseFBandOpenTask();")
	
	lualib:AddTimerEx(player,5466123,1000,1,"on_time",player)  
	return ""
end

function on_time(player)
	lualib:ShowFormWithContent(player, "脚本表单", "CLContinueTask();")
	lualib:DisableTimer(player,5466123)                                       
	return ""
end

function AutoFight(player)
	guaji(player) 
	return ""
end

function LeaveCurrentMap(player)
	lualib:ShowFormWithContent(player, "脚本表单", "PersonBossWnd.ConfirmDlg()")
	return ""
end
function LeaveMap(player)
	if not lualib:HasTimer(player,5466123) then 
		lualib:AddTimerEx(player,5466123,1000,1,"on_time",player)  
	end
	lualib:Player_MapMoveXY(player, "巫山城" , 161 , 200 , 3 )
	return ""
end

function getTip(player)
	
	local num = lualib:GetInt(player,"personBosssFirst")
	if num == 0 then
		lualib:ShowFormWithContent(player, "脚本表单", "PersonBossWnd.personBosssFirst()")
	end
	return ""
end