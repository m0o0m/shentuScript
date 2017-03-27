local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
	lualib:AddTimerEx(map, 1, 2100000, -1, "panding", "")
	return
end

function panding(map, id)
	local open_hhzb_jinru = lualib:GetInt(map,"open_hhzb_jinru")


	if open_hhzb_jinru == 1 then
		return
	end
	
	
	local players = lualib:Map_GetMapPlayers(map, true)
	local Guild = ""
	
	if #players < 1 then
		lualib:SysMsg_SendBroadcastMsg("[行会争霸]活动已结束，无行会胜出.活动地图内没人", "系统通知")
		lualib:Map_DestroyDgn(map)
		return
	end
	
	
	for i = 1, #players do
		Guild = lualib:GuildGuid(players[i])
		if Guild ~= "" and Guild ~= nil then
			break
		end
	end
	
	if Guild == "" then
		lualib:SysMsg_SendBroadcastMsg("[行会争霸]活动已结束，无行会胜出.Guid无", "系统通知")
		lualib:Map_DestroyDgn(map)
		return
	end
	
	local name =lualib:Name(Guild)
	for i = 1, #players do
		if not lualib:IsInFamily(players[i], name) then
            return
        end
	end
	
	lualib:SetDBStr("Guild_award", Guild)

	lualib:SysMsg_SendBroadcastMsg("[行会争霸]已经已结束，行会["..name.."]胜出", "系统通知")
	lualib:SysMsg_SendBroadcastMsg("[行会争霸]活动已结束，行会["..name.."]胜出", "系统通知")
	lualib:SysMsg_SendBroadcastMsg("[行会争霸]活动已结束，行会["..name.."]胜出", "系统通知")
	lualib:DisableTimer(map, 1)
	return
end