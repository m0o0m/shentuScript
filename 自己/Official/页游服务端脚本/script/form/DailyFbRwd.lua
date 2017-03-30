local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("map/副本赤月神殿")
require("map/副本祖玛寺庙")
require("map/副本天空之城")
require("map/副本封魔恶谷")
require("map/副本沃玛寺庙")
require("map/副本雪域秘境")

function GetReward5(player)
	local mapGuid = lualib:MapGuid(player)
	if lualib:KeyName(mapGuid) == "副本赤月神殿" then
		lualib:SetDayInt(player,"赤月神殿_Daily",1)   --魔月
		GetReward_5(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "副本祖玛寺庙" then
		lualib:SetDayInt(player,"祖玛寺庙_Daily",1)    --邪庙
		GetReward_4(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "副本天空之城" then
		lualib:SetDayInt(player,"天空之城_Daily",1)      --黑暗
		GetReward_3(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "副本封魔恶谷" then
		lualib:SetDayInt(player,"封魔恶谷_Daily",1)   ---镇魔
		GetReward_2(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "副本沃玛寺庙" then
		lualib:SetDayInt(player,"沃玛寺庙_Daily",1)   --天荒
		GetReward_1(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "雪域秘境" then
		lualib:SetDayInt(player,"雪域秘境_Daily",1)   --天荒
		GetReward_6(mapGuid, player)
	end
	return ""
end

function GetDoubleReward5(player)
	local mapGuid = lualib:MapGuid(player)
	if lualib:KeyName(mapGuid) == "副本赤月神殿" then
		lualib:SetDayInt(player,"赤月神殿_Daily",1)
		GetDoubleReward_5(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "副本祖玛寺庙" then
		lualib:SetDayInt(player,"祖玛寺庙_Daily",1)
		GetDoubleReward_4(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "副本天空之城" then
		lualib:SetInt(player,"天空之城_Daily",1)
		GetDoubleReward_3(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "副本封魔恶谷" then
		lualib:SetDayInt(player,"封魔恶谷_Daily",1)
		GetDoubleReward_2(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "副本沃玛寺庙" then
		lualib:SetDayInt(player,"沃玛寺庙_Daily",1)
		GetDoubleReward_1(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "雪域秘境" then
		lualib:SetDayInt(player,"雪域秘境_Daily",1)   --天荒
		GetDoubleReward_6(mapGuid, player)
	end
	return ""
end

function LeaveCurrentMap(player)
	lualib:ShowFormWithContent(player, "脚本表单", "DailyFbWnd.ConfirmDlg()")
	return ""
end

function LeaveMap(player)
	lualib:Player_MapMoveXY(player, "巫山城" , 161 , 200 , 3 )
	return ""
end

function AutoFight(player)
	lualib:StartAutoRun(player, "")
	if not lualib:HasBuff(player,"自动打怪") then
		lualib:AddBuff(player, "自动打怪", 0)
	end
	return ""
end