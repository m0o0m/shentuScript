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
		lualib:GSRunScript("ClearDailyActivitiesTimes:ClearTimes", "")
		GetTop5RechargeReward()
	end
	return ""
end

function GetTop5RechargeReward()
	--local rechargeRankItemArr = {{"500绑定元宝",1}, {"500绑定元宝",1}, {"500绑定元宝",1}, {"500绑定元宝",1}, {"500绑定元宝",1}}
	local rechargeRankItemArrAll = {
							{{"圣武战刃",1}, {"圣武战袍",1}, {"转1首饰箱",1}, {"神武战刃",1}, {"神武战袍",1}},
							{{"圣魔法杖",1}, {"圣魔羽衣",1}, {"转1首饰箱",1}, {"神魔法杖",1}, {"神魔羽衣",1}},
							{{"圣灵道剑",1}, {"圣灵道衣",1}, {"转1首饰箱",1}, {"神灵道扇",1}, {"神灵道衣",1}},
							}
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）
	local allDays = lualib:GetAllDays(0)
	local startDay = math.ceil(((allDays+1)*24*60*60-StartServerTime_int)/(24*60*60)) --开服第几天
	--[[if startDay > 7 then
		return
	end--]]
	----------------------------------------------------------------------------------------------------------------------------------------
	--local index = lualib:GetDBNum("serviceStartDays")
	local index = startDay
	local str = lualib:GetDBStr("top5RechargeChartInfo"..index)
	local Top5InfoArr = {{}}   --difine array record Top5 Information ;    Top5InfoArr[][1]=playerName    Top5InfoArr[][2]=yb
	if str ~= nil and str ~= "" then
		Top5InfoArr = json.decode(str)
		local length = #Top5InfoArr
		for i = 1, length do
			local rechargeRankItemArr = {}
			local gender = Top5InfoArr[i][5]
			local job = Top5InfoArr[i][6]
			rechargeRankItemArr = rechargeRankItemArrAll[job]
			if gender == 1 then
				if job == 1 then
					rechargeRankItemArr[2][1] = "圣武战甲"
					rechargeRankItemArr[5][1] = "神武战甲"
				elseif job == 2 then
					rechargeRankItemArr[2][1] = "圣魔法袍"
					rechargeRankItemArr[5][1] = "神魔法袍"
				elseif job == 3 then
					rechargeRankItemArr[2][1] = "圣灵道袍"
					rechargeRankItemArr[5][1] = "神灵道袍"
				end
			end
			if Top5InfoArr[i][7] == nil or Top5InfoArr[i][7] == 0 then
				if lualib:Mail("开服活动充值排行", Top5InfoArr[i][1], "您在充值排行榜上第"..i.."名，这是您的奖励，请收好", 0, 0, {rechargeRankItemArr[i][1], rechargeRankItemArr[i][2], 0}) then
					Top5InfoArr[i][7] = 1
					str =  json.encode(Top5InfoArr)
					--lualib:SysPromptMsg(player, ""..str)
					lualib:SetDBStr("top5RechargeChartInfo"..index,str)
				end
			end
		end
	end
	return ""
end

function on_end_decl(id, map, times)

	return ""
end



function Time_Out()    --发奖啦
	
	return ""
	
end

function enter(player, dgn_id)
	return ""
end

function cleanMap(player)
	 
	return ""
end

function leave(player)
	return ""
end

function Goto(id,player,map)
	

	return ""
end


