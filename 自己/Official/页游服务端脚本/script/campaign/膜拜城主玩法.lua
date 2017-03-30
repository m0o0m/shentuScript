local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")
--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
	return ""
end

function on_start_decl(id, map, times)
	
	if tonumber(times) == 0 then
		local str = ""
		local a = lualib:Now()
		local start = string.find(a, " ") + 1
		local ending = string.find(a, ":") - 1
		local b = string.sub(a,start, ending)
		if tonumber(b) == 11 then
			str = "膜拜城主   11:30 - 12:30"
		elseif tonumber(b) == 17 then
			str = "膜拜城主   17:30 - 18:30"
		end
		lualib:SetDBStr("nowActivityName", str)
		
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 1)
		lualib:SetInt("","worshipBeginning",lualib:GetAllTime())
		lualib:AddTimerEx(map, 16881688, 5000, 800, "JudgePlayerScene", map)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#膜拜城主活动已开启。在巫山城膜拜可获大量经验！#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		if lualib:Map_RemoveNpc(map, "膜拜城主") then
			lualib:Map_GenNpc(map, "膜拜城主金", 161, 194, 0, 4)
		end
		lualib:GSRunScript("玩家活动传送:playerMoveMagic2", "")
		
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#膜拜城主活动还有"..math.floor(times / 60000).."分钟开始。#COLOREND#", 11, 2)


	end
	return ""
end

function on_end_decl(id, map, times)
	if tonumber(times) == 0 then
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 0)
		lualib:SetInt("","worshipBeginning",0)
		lualib:DisableTimer(map,16881688)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#膜拜城主活动已结束!#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
		lualib:GSRunScript("ClearDailyActivitiesTimes:ClearWorshipFlag", "")
		if lualib:Map_RemoveNpc(map, "膜拜城主金") then
			lualib:Map_GenNpc(map, "膜拜城主", 161, 194, 0, 4)
		end
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#膜拜城主活动将在"..math.floor(times / 60000).."分钟后结束。#COLOREND#", 11, 2)
	end 
	return ""
end

function JudgePlayerScene(map)
	if lualib:GetInt("", "worshipBeginning") == 0 then
		return ""
	end
	local ranges = {1, 149, 182, 26, 26}   --范围，原点
	local playerList = lualib:Map_GetRegionPlayersEx(map, ranges, true)
	--local playerList = lualib:Map_GetMapPlayers(map, true)
	if #playerList > 0 then
		for i = 1, #playerList do
			local player = playerList[i]
			local x, y = lualib:X(player), lualib:Y(player)
			if lualib:GridAttr(map, x, y, 8) then
				if lualib:GetDayInt(player, "worshipFlag") == 1 then
					local level = lualib:Level(player)
					local constExp = 0
					if level >= 40 and level <= 59 then
						constExp = 12500
					elseif level >= 60 and level <= 75 then
						constExp = 20000
					elseif level >= 76 and level <= 90 then
						constExp = 30000
					elseif level >= 91 then
						constExp = 55000
					end
					lualib:AddBuff(player, "膜拜城主", 6)
					lualib:AddExp(player, tonumber(constExp), "膜拜城主", "城主膜拜系统")
					local str = "\"".."膜拜城主获得经验"..constExp.."\""
					lualib:ShowFormWithContent(player, "脚本表单", "GameMainBar.ClientCenterMessage("..str..");")
				end
			else
				lualib:DelBuff(player, "膜拜城主")
			end
		end
	end
	return ""
end

function enter(player, dgn_id)
	return ""
end


function leave(player)
	return ""
end

function Goto(id,player,map)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return ""
	end
	local level = lualib:Level(player)
	if level >= 40 then
		lualib:Player_NpcMove(player, "膜拜城主金", 2)
		local str = "" 
		str =str.. "local Handle = GetWindow(nil, \"Campaign\")\n"
		str =str.."if Handle ~= 0 then\n"
		str =str.."GUI:WndClose(Handle)\n"
		str = str .."end\n"
		lualib:ShowFormWithContent(player,"脚本表单",str)
	else 
		lualib:ShowFormWithContent(player,"脚本表单","Campaign.msg(\"等级不足\")" )
	end
	return ""
end


