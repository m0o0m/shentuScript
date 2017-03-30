local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")


function BeginWorship(player)
	
	local isBegin = lualib:GetInt("", "worshipBeginning")
	if isBegin == 1 then
		lualib:SetDayInt(player, "worshipFlag", 1)
		local str = "\"膜拜中，正在获得大量经验!\""
		lualib:ShowFormWithContent(player, "脚本表单", "CastlellanWorshipWnd.BeginPrompt("..str..");")
	else
		--lualib:SysPromptMsg(player, "活动还未开始！")
		local str = "\"11:30和17：30开启膜拜!\""
		lualib:ShowFormWithContent(player, "脚本表单", "CastlellanWorshipWnd.MsgPrompt("..str..");")
	end
	return ""
end

function GetAbility(player)
	local CastleOwnFamily = lualib:GetCastleOwnFamily("神歌城")
	if player == lualib:GetFamilyLeader(tostring(CastleOwnFamily)) then
		if lualib:HasBuff(player, "城主之力") then
			local str = "\"您已经领取过城主buff！\""
			lualib:ShowFormWithContent(player, "脚本表单", "CastlellanWorshipWnd.MsgPrompt("..str..");")
		else
			lualib:AddBuff(player, "城主之力", 0)
		end
	else
		local str = "\"您不是城主，不能领取奖励!\""
		lualib:ShowFormWithContent(player, "脚本表单", "CastlellanWorshipWnd.MsgPrompt("..str..");")
	end
	return ""
end

function GetWelfare(player)
	local CastleOwnFamily = lualib:GetCastleOwnFamily("神歌城")
	if player == lualib:GetFamilyLeader(tostring(CastleOwnFamily)) then
		if lualib:GetDayInt(player, "castellanDailyWelfare") == 0 then
			local a = lualib:Now()
			local head = string.find(a, " ") + 1
			local ending = string.find(a, ":") - 1
			local hour = string.sub(a, head, ending)
			if tonumber(hour) >=21 and tonumber(hour) <= 23 then
				if lualib:Player_AddIngot(player, 2000, true, "城主每日元宝奖励", "系统") then
					lualib:SetDayInt(player, "castellanDailyWelfare", 1)
				end
			else
				local str = "\"请在21点至23点之间来领取!\""
				lualib:ShowFormWithContent(player, "脚本表单", "CastlellanWorshipWnd.MsgPrompt("..str..");")
			end
		else
			local str = "\"您已领取过城主每日福利!\""
			lualib:ShowFormWithContent(player, "脚本表单", "CastlellanWorshipWnd.MsgPrompt("..str..");")
		end
	else
		local str = "\"您不是城主，不能领取奖励!\""
		lualib:ShowFormWithContent(player, "脚本表单", "CastlellanWorshipWnd.MsgPrompt("..str..");")
	end
	return ""
end

function GetWeapon(player)
	local CastleOwnFamily = lualib:GetCastleOwnFamily("神歌城")
	if player == lualib:GetFamilyLeader(tostring(CastleOwnFamily)) then
		
	else
		local str = "\"您不是城主，不能领取奖励!\""
		lualib:ShowFormWithContent(player, "脚本表单", "CastlellanWorshipWnd.MsgPrompt("..str..");")
	end
	return ""
end