local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local role_attr_point = {}			 		  ---角色属性点table
role_attr_point[1] = { lua_role_point, 0}      --- 剩余属性点
role_attr_point[2] = { lua_role_point_hp, 0}   --- hp point
role_attr_point[3] = { lua_role_point_mp, 0}   --- mp point
role_attr_point[4] = { lua_role_point_phy_atk, 0}--- physical attack point
role_attr_point[5] = { lua_role_point_mag_atk, 0}--- magical attack point
role_attr_point[6] = { lua_role_point_tao_atk, 0}--- taoism attack point
role_attr_point[7] = { lua_role_point_phy_def, 0}--- physical defense point
role_attr_point[8] = { lua_role_point_mag_def, 0}--- magical defense point

function main(player, item)

	for i = 1, table.getn(role_attr_point) do
		role_attr_point[i][2] = lualib:Player_GetIntProp(player, role_attr_point[i][1])
		if role_attr_point[i][2] == -1 then
			lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@1！")
			return false
		end
		if i ~= 1 then
			role_attr_point[1][2] = role_attr_point[1][2] + role_attr_point[i][2] 
			role_attr_point[i][2] = 0 
		end
	end
	
	for i = 1, table.getn(role_attr_point) do
		local ret = lualib:Player_SetIntProp(player, role_attr_point[i][1],  lua_role_attr_equal, role_attr_point[i][2])
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@2！")
			return false
		end
	end

	lualib:SysMsg_SendPromptMsg(player, "您使用洗髓丹已将当前所有点数重置！")
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
