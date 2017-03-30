local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function main(player, item)
    local key_name = lualib:KeyName(item)
	local PlayerLevel = lualib:Player_GetIntProp(player,  lua_role_level)
    local amount = lualib:Item_GetAmount(player, item)
	lualib:Item_Destroy(player, item, "使用经验丹", "经验丹小")
	if key_name == "经验丹小" then
        if lualib:Player_AddExp(player, 3000000 * amount, "使用经验丹", "经验丹小") == false  then
            lualib:Print("经验丹使用失败")
            return false
        else
            lualib:Print("经验丹使用成功")
            return true
        end
    elseif key_name == "经验丹中" then
        --addexp = (PlayerLevel^3)*2
		if lualib:Player_AddExp(player, 6000000 * amount, "使用中型经验丹", "经验丹中") == false then
            lualib:Print("大型经验丹使用失败")
            return false
        else
            lualib:Print("大型经验丹使用成功")
            return true
        end
    elseif key_name == "经验丹大" then
        if lualib:Player_AddExp(player, 10000000 * amount, "使用大型经验丹", "经验丹大") == false then
            lualib:Print("朱果使用失败")
            return false
        else
            lualib:Print("朱果使用成功")
            return true
        end
    end


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