local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function RecordTop10ConsumeInfo(player, param) ----消费排行
	local map_guid = lualib:Map_GetMapGuid("巫山城");
	local dayint = lualib:GetDayInt(map_guid, "SetDBNum_consumeTerm")
	if dayint == 0 then 
		local startServerTime_str = lualib:GetConstVar("StartServerTime")
		startServerTime_str = startServerTime_str:gsub("%d%d:%d%d:%d%d", "00:00:00")
		local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
		local allTime = lualib:GetAllTime()
		local term = 0
		if allTime <= startServerTime_int then 
		
		elseif allTime <= (startServerTime_int + 24*60*60) then 
			term = 1
		elseif allTime <= (startServerTime_int + 2*24*60*60) then 
			term = 2
		elseif allTime <= (startServerTime_int + 3*24*60*60) then 
			term = 3
		end
		lualib:SysPromptMsg(player, 'term=========================='..term)
		lualib:SetDBNum("consumeTerm", term)
		lualib:SetDayInt(map_guid, "SetDBNum_consumeTerm", 1)
	end
	
	local yb = tonumber(param)
	if yb == 0 then
		return ""
	end
	--local index = lualib:GetDBNum("ServiceActivityIssue")      --set index = (index + 1) when the activity finish
	local index = lualib:GetDBNum("consumeTerm")
	lualib:SetInt(player, "IndividalTotalConsumeYB"..index, yb)  --记录玩家每日充值元宝数
	local str = lualib:GetDBStr("top10ConsumeChartInfo"..index)
	local Top10InfoArr = {{}}   --difine array record Top5 Information ;    Top10InfoArr[][1]=playerName    Top10InfoArr[][2]=yb
	local tempArr = {}
	local name = lualib:Name(player)
	local theName = lualib:GetStr(player, "playerNameINchart")
	if theName ~= "" then
		name = theName
	end
	local newIncreased = 0
	if str ~= nil and str ~= "" then
		Top10InfoArr = json.decode(str)
		local length = #Top10InfoArr
		local l = 0
		for i = 1, length do
			if Top10InfoArr[i][1] == name then       --找到玩家的排名（如果有）
				l = i
			end
		end
		if length <10 then                                   --排行小于10人
			if l == 0 then
				tempArr[1] = name
				tempArr[2] = yb								 --若还没有，添加到末端
				Top10InfoArr[length + 1] = tempArr          
				newIncreased = 1
			else
				Top10InfoArr[l][2] = yb                   --若有，更新对应玩家消费数据
			end
		else
			if l == 0 then
				local temp, p = yb, 0                          --排行已有10人
				for i = 1, length do
					if temp > Top10InfoArr[i][2] then
						temp = Top10InfoArr[i][2]             --找到消费最低的玩家位置
						p = i
					end
				end
				if p ~= 0 then
					Top10InfoArr[p][1] = name                  --替换
					Top10InfoArr[p][2] = yb
				end
			else
				Top10InfoArr[l][2] = yb                   --若有，更新对应玩家消费数据
			end
		end
		for  i = 1, length + newIncreased do                           --排序
			for  j = i+1, length + newIncreased do 
				if Top10InfoArr[i][2] < Top10InfoArr[j][2] then 
					local it = Top10InfoArr[i]
					Top10InfoArr[i] = Top10InfoArr[j]
					Top10InfoArr[j] = it
				end
			end
		end
	else                                                     --排行榜上没人，添加到第一位
		Top10InfoArr[1][1] = name
		Top10InfoArr[1][2] = yb
	end
	
	lualib:SetDBStr("top10ConsumeChartInfo"..index, json.encode(Top10InfoArr))
	return ""
end