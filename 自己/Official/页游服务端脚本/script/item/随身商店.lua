local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
	local msg = ""
	if lualib:Player_GetCustomVarInt(player, "vip7_ssyao") == 1 then
		msg = msg.."您已经打开了一个随身商店，请稍后使用此功能！\n \n"
		msg = msg.."<@exit *01*「离开」>\n"
		lualib:NPCTalk(player, msg)
	    return false
	end	
        local mapkeya = "神歌城皇宫"
		
    if lualib:Player_GetStrProp(player, lua_role_current_map_key) == mapkeya then
		msg = msg.."当前地图不允许使用此功能，请离开此地图后在使用！\n \n"
		msg = msg.."<@exit *01*「离开」>\n"
		lualib:NPCTalk(player, msg)
	    return false
	end

    local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)
    local player_x = lualib:X(player)
    local player_y = lualib:Y(player)
    local npc_guid = lualib:Map_GenNpc(map, "随身商店服务员", player_x, player_y, 1, 3)
    if "" == npc_guid then
		msg = msg.."使用随身商店服务失败"
        return msg
    end
	
	lualib:SetStr(npc_guid, "vip7_player_guid", player)
	lualib:Player_SetCustomVarInt(player, "vip7_ssyao", 1)
	lualib:AddTimer(player, 812, 180000, 1, "dsssyaonpc_ssyao")
    return true
end

function dsssyaonpc_ssyao(player, timer_id)
	lualib:Player_SetCustomVarInt(player, "vip7_ssyao", 0)
	return true
end
	
function exit(player)
	return ""
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
