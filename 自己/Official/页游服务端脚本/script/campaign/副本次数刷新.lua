local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")
--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
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
	--local rechargeRankItemArr = {{"500��Ԫ��",1}, {"500��Ԫ��",1}, {"500��Ԫ��",1}, {"500��Ԫ��",1}, {"500��Ԫ��",1}}
	local rechargeRankItemArrAll = {
							{{"ʥ��ս��",1}, {"ʥ��ս��",1}, {"ת1������",1}, {"����ս��",1}, {"����ս��",1}},
							{{"ʥħ����",1}, {"ʥħ����",1}, {"ת1������",1}, {"��ħ����",1}, {"��ħ����",1}},
							{{"ʥ�����",1}, {"ʥ�����",1}, {"ת1������",1}, {"�������",1}, {"�������",1}},
							}
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --����ʱ�䣨�룩
	local allDays = lualib:GetAllDays(0)
	local startDay = math.ceil(((allDays+1)*24*60*60-StartServerTime_int)/(24*60*60)) --�����ڼ���
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
					rechargeRankItemArr[2][1] = "ʥ��ս��"
					rechargeRankItemArr[5][1] = "����ս��"
				elseif job == 2 then
					rechargeRankItemArr[2][1] = "ʥħ����"
					rechargeRankItemArr[5][1] = "��ħ����"
				elseif job == 3 then
					rechargeRankItemArr[2][1] = "ʥ�����"
					rechargeRankItemArr[5][1] = "�������"
				end
			end
			if Top5InfoArr[i][7] == nil or Top5InfoArr[i][7] == 0 then
				if lualib:Mail("�������ֵ����", Top5InfoArr[i][1], "���ڳ�ֵ���а��ϵ�"..i.."�����������Ľ��������պ�", 0, 0, {rechargeRankItemArr[i][1], rechargeRankItemArr[i][2], 0}) then
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



function Time_Out()    --������
	
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


