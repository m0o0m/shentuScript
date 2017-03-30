local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)

	local item_guid = lualib:Player_GetEquipGuid(player,  lua_site_weapon)
	if item_guid == "" then
		return false
	end
	
	local result = lualib:Player_FixSingleEquip(player, item_guid, false)
	if result == false then
		return false
	end
	
	return true

end

function on_create(item)
--	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
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
			local s = "【"..item_name.."】掉落在["..item_map_name.."]的["..item_map_x..":"..item_map_y.."]！"
			local s1 = "#COLORCOLOR_BROWN#【"..item_name.."】#COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！"
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			 --lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		else
			local s = "【"..item_name.."】掉落在["..item_map_name.."]的["..item_map_x..":"..item_map_y.."]！"
			local s1 = "#COLORCOLOR_BROWN#【"..item_name.."】#COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！"
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			 --lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end