local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)

    local equip_table = {{0,  lua_site_weapon},
        {0,  lua_site_helmet},
                         {0,  lua_site_wrist_0},
                         {0,  lua_site_wrist_1},
                         {0,  lua_site_armor},
                         {0,  lua_site_shoes},
                         {0,  lua_site_shoulder},
                         {0,  lua_site_necklace},
                         {0,  lua_site_ring_0},
                         {0,  lua_site_ring_1},
						 {0,  lua_site_gem},
						 {0,  lua_site_medal},
						 {0,  lua_site_wings}}

	local is_success = false
    for i = 1, table.getn(equip_table) do
        equip_table[i][1] = lualib:Player_GetEquipGuid(player, equip_table[i][2])
			if equip_table[i][1] ~= "" then
				local a, b = lualib:Item_GetMaxDurability(player, equip_table[i][1]), lualib:Item_GetDurability(player, equip_table[i][1])
				if a > b then
					if lualib:Player_FixSingleEquip(player, equip_table[i][1], true) then
						is_success = true
					end
				end
			end
    end
	
	if is_success then
		lualib:SysMsg_SendTriggerMsg(player, "修理装备成功！")
		return true
	end
	
	lualib:SysMsg_SendTriggerMsg(player, "修理装备失败！")
	return false
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
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end