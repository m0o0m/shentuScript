local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, vipLevel)
	local msg = ""
	if lualib:Player_GetCustomVarInt(player, "vip7_ssyao") == 1 then
		msg = msg.."您已经打开了一个随身商店，请稍后使用此功能！\n \n"
		msg = msg.."<@exit *01*「离开」>\n"
		lualib:NPCTalk(player, msg)
	    return true
	end	
        local mapkeya = "神歌城皇宫"
		
    if lualib:Player_GetStrProp(player, lua_role_current_map_key) == mapkeya then
		msg = msg.."当前地图不允许使用此功能，请离开此地图后在使用！\n \n"
		msg = msg.."<@exit *01*「离开」>\n"
		lualib:NPCTalk(player, msg)
	    return true
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
    return ""
end

function dsssyaonpc_ssyao(player, timer_id)
	lualib:Player_SetCustomVarInt(player, "vip7_ssyao", 0)
	return true
end
	
function exit(player)
	return ""
end
