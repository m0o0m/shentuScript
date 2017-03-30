local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
require("system/ScriptPackage")

-----------------------图标显示-----------------------------
--[[function buyExp_icon_show(player)
	if buyExp_IsWitinTime() then
		local clientType = lualib:GetClientType(player) 
		if clientType == 0 then
			AddSEIcon(player,1, -7, "炼制经验", 1800200011, "倒计时", "buyExp_IconOnClick","","海量经验，快速升级！")
			AddIconMagic(player, "炼制经验",3020300700, -40,-40, 150)
		elseif clientType == 1 then 
			AddSEIcon(player,1, -7, "炼制经验", 1800200091, "倒计时", "buyExp_IconOnClick","","海量经验，快速升级！")
			AddIconMagic(player, "炼制经验",3020300700, -40,-40, 150)
		end
	end
	return ""
end--]]

-------------------图标被点击-----------------------
function buyExp_IconOnClick(player)
	if not buyExp_IsWitinTime() then
		lualib:SysPromptMsg(player, "活动已结束")
		return ""
	end


	local times = lualib:GetDayInt(player, "第几次经验炼制")
	--lualib:SysPromptMsg(player, "今天第"..tostring(times).."次经验炼制")

	if times == nil or times == 0 then
		lualib:SetDayInt(player, "第几次经验炼制", 1)
		times = 1
	--elseif times > 4 then
	--	lualib:SysPromptMsg(player, "今日无剩余经验炼制次数")
	--	return ""
	end
	
	local startServerTime = lualib:GetConstVar("StartServerTime")	
	local startServerDay = lualib:Time2Str("%Y-%m-%d", lualib:Str2Time(startServerTime))
	startServerDay = startServerDay.." 00:00:00"
	
	--计算到第三天晚上24点剩几秒
	local remainTime =  259200 - (lualib:GetAllTime() - lualib:Str2Time(startServerDay))
	--lualib:SysPromptMsg(player, "剩余多少秒："..remainTime)
	local whichDay = buyExp_GetWhichDay()
	local desLevel = buyExp_calculateLevel(player) + lualib:Level(player)
	lualib:ShowFormWithContent(player, "form文件表单", "BuyExp_c#"..serialize(t_exp_cost).."#"..times.."#"..remainTime.."#"..whichDay.."#"..desLevel)
	return ""
end



--第几次，价格，经验
local table t_exp_cost = {
	--第一天
	{
		{888, 90000000},
		{2888, 180000000},
		{888, 90000000},
		{2888, 180000000},
		{888, 90000000}
	},
	--第二天
	{
		{888, 90000000},
		{2888, 180000000},
		{888, 90000000},
		{2888, 180000000},
		{888, 90000000}
	},
	--第三天	
	{
		{888, 90000000},
		{2888, 180000000},
		{888, 90000000},
		{2888, 180000000},
		{888, 90000000}
	}
}
local table t_requird_Exp = {50,150,250,450,700,
											1100,1300,1900,2300,6650,
											8200,9900,11850,13450,15750,
											18250,21000,23950,27200,36200,
											40450,44950,50950,56100,61600,
											67350,73500,79950,88500,105100,
											115150,123750,132700,144350,154200,
											164450,177800,188900,200500,335600,
											353700,375500,394600,418000,611800,
											821550,1075050,1367300,1712400,1975300,
											2344150,2767250,3236900,3756850,4336900,
											4982100,5696450,6477650,7338050,8274200,
											9421650,10624300,11954100,13424950,14575250,
											15820550,17155850,18587350,20168400,21868200,
											23693650,26544850,29396050,32208200,47059100,
											50460550,63533450,76606350,95090900,121300600,
											180155650,194281750,209897350,233334350,255180750,
											374167700,409941150,450263800,496188850,550710300,
											670035050,785710050,990000000,1220000000,1760000000,
											2000000000,2350000000,2680000000,3140000000,3982602200,
											3982602200,3982602200,3982602200,3982602200,3982602200,
											3982602200,3982602200,3982602200,3982602200,3982602200,
											3982602200,3982602200,3982602200,3982602200,3982602200,
											3982602200,3982602200,3982602200,3982602200,3982602200}

function buyExp_Implement(player)
	if not buyExp_IsWitinTime() then
		lualib:SysPromptMsg(player, "活动已结束")
		return ""
	end
	if 70 > lualib:Level(player) then
		lualib:SysPromptMsg(player, "等级不足")
		return ""
	end
	local times = lualib:GetDayInt(player, "第几次经验炼制")
	
	if times > 4 then
		lualib:SysPromptMsg(player, "今日无剩余经验炼制次数")
	end
	
	local whichDay = buyExp_GetWhichDay()
	if lualib:Player_IsIngotEnough(player, t_exp_cost[whichDay][times][1], false) then
		if lualib:Player_SubIngot(player, t_exp_cost[whichDay][times][1], false, "经验炼制活动消耗", "经验炼制") then
			--********************************--
			local indexx = lualib:GetDBNum("consumeTerm")
			local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + tonumber(t_exp_cost[whichDay][times][1])
			RecordTop10ConsumeInfo(player,totalYb)
			--********************************--
			lualib:Player_AddExp(player, t_exp_cost[whichDay][times][2], "经验炼制活动获得", "经验炼制")
			times = times +1
			if 5 <= times then
				times = 5
				DelIconMagic(player, "炼制经验")
			end
			lualib:SetDayInt(player, "第几次经验炼制", times)
			local desLevel = buyExp_calculateLevel(player) + lualib:Level(player)
			lualib:ShowFormWithContent(player, "脚本表单", "BuyExp.updateUI("..times..","..serialize(t_exp_cost)..","..whichDay..","..desLevel..")")
		else
			lualib:SysPromptMsg(player, "未知错误，扣除元宝失败")
		end
	else
		lualib:SysPromptMsg(player, "元宝不足")
	end
	return ""	
end



function buyExp_calculateLevel(player)
	local desLevel = 0
	local times = lualib:GetDayInt(player, "第几次经验炼制")
	local whichDay = buyExp_GetWhichDay()
	if 5 < times then
		times = 5
		lualib:SetDayInt(player, "第几次经验炼制", times)
	end
	local obtainedExp = t_exp_cost[whichDay][times][2]	
	local level = lualib:Level(player)
	local currentExp = lualib:GetExp(player)
	local requird_Exp = t_requird_Exp[level]	
	
	while requird_Exp < obtainedExp + currentExp do
		desLevel = desLevel +1
		level = level + 1
		requird_Exp = requird_Exp + t_requird_Exp[level]
	end
	return desLevel
end


function buyExp_IsWitinTime()
	local startServerDay_int = lualib:GetAllDays(lualib:Str2Time(lualib:GetConstVar("StartServerTime")))
	local now = lualib:GetAllDays(0)	
	if now >= startServerDay_int and now - startServerDay_int < 3 then
		return true
	else
		return false
	end
end

function buyExp_GetWhichDay()
	if buyExp_IsWitinTime() then
		local days = lualib:GetWeek(lualib:GetAllTime()) - lualib:GetWeek(lualib:Str2Time(lualib:GetConstVar("StartServerTime")))
		if days == 0 then
			return 1
		elseif days == 1 or days == -6 then
			return 2
		else
			return 3
		end
	end
	return nil
end
