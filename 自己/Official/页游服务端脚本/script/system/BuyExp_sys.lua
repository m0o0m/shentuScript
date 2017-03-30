local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
require("form/BuyExp_s")

-----------------------图标显示-----------------------------
function buyExp_icon_show(player)
	
	if buyExp_IsWitinTime() then
		local times = lualib:GetDayInt(player, "第几次经验炼制")
		local clientType = lualib:GetClientType(player) 
		if clientType == 0 then
			AddSEIcon(player,1, -7, "炼制经验", 1800200011, "倒计时", "buyExp_IconOnClick","","海量经验，快速升级！")
			if 5 > times then
				AddIconMagic(player, "炼制经验",3020300700, -40,-40, 150)
			end
		elseif clientType == 1 then
			AddSEIcon(player,1, -7, "炼制经验", 1800200091, "倒计时", "buyExp_IconOnClick","","海量经验，快速升级！")
			if 5 > times then
				AddIconMagic(player, "炼制经验",3020300700, -40,-40, 150)
			end
		end
	end
	return ""
end

function buyExp_addIcon_openUI(player)
	if buyExp_IsWitinTime() then
		lualib:ShowFormWithContent(player, "脚本表单", "LittleMap.addEffect_BuyExp()")
		lualib:DelayCall(player, 500, "buyExp_icon_show", "")
		lualib:DelayCall(player, 500, "buyExp_IconOnClick", "")
	end
	return ""
end
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

