local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
--——————————图标显示——————————
function openMarsPage_show(player)
	------*****************页游、微端资源同步后删除*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		else
			AddSEIcon(player, 2, -4, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	if lualib:GetInt(player,"tanbao_score") > 0 then
		AddSEIcon(player, 2, -5, "战神", 1800200083, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
	else
		AddSEIcon(player, 2, -4, "战神", 1800200083, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
	end

	return ""
end

function AddMarsIcon(player)
	------*****************页游、微端资源同步后删除*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		else
			AddSEIcon(player, 2, -4, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	
	local tanbaoScore = lualib:GetInt(player,"tanbao_score")
	if tanbaoScore > 0 then
		AddSEIcon(player, 2, -5, "战神", 1800200083, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
	else
		AddSEIcon(player, 2, -4, "战神", 1800200083, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
	end
	FirstCall(player)
	return ""
end

