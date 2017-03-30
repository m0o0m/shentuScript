local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
	
	if lualib:GetInt(player, "autoattack") == 1 then
		lualib:StopAutoRun(player)
		lualib:SetInt(player, "autoattack", 0)

		lualib:SysTriggerMsg(player, "天神离开了！再次点击可进入自动战斗！")
	else
		lualib:StartAutoRun(player, "")
		lualib:SetInt(player, "autoattack", 1)
		lualib:SetStr(player, "map_1", lualib:MapGuid(player))
		lualib:SysTriggerMsg(player, "天神来了！他正在挥洒着自己的热血和神力帮你战斗着，感动吧，凡人……再次点击脱离自动战斗！")
	end
	
	return true
end


function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			 --lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "["..player_name.."]人品爆发了，在"..item_map_name.."["..item_map_x..":"..item_map_y.."]打出了一个".."【"..item_name.."】！！！"
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			 --lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end

function close(item)
	return ""
end
