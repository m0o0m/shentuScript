local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local pk_opr_value = 90

function main(player, item)
    
	local pk_value = lualib:Player_GetIntProp(player,  lua_role_pk)
	if pk_value == -1 then
		lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@1！")
		return false
	elseif pk_value == 0 then
		lualib:SysMsg_SendWarnMsg(player, "您没有PK值！")
		return false
	end

	if pk_value > pk_opr_value then
		pk_value = pk_opr_value
	end

	local ret = false
	ret = lualib:Player_SetIntProp(player,  lua_role_pk,  lua_role_attr_sub, pk_value)
	if ret == false then
		lualib:SysMsg_SendWarnMsg(player, "系统错误，请联系GM@2！") 
		return false			
	end
	lualib:SysMsg_SendPromptMsg(player, "您使用清心丹降低了PK值"..pk_value.."点。") 

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
