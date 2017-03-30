local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local npc_guid = "";
function main(npc, player)
	npc_guid = npc;
	local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
	if player_name == "" then return "出错了，请联系GM@1！" end

    local msg = player_name.."，在你面前的可是远古遗留下来的神秘宝箱哦……\n \n"
	msg = msg.."<@ExchangeItem *01*开启神秘宝箱>\n"
	msg = msg.."<@Lever *01*太紧张，手抖了>\n"
    return msg
end

function ExchangeItem(npc, player)
	--进度条
	if lualib:ProgressBarStart(player, 5000, "宝箱", "progress_complete", "progress_abort", "进度条参数") == false then
		return "出错了，请联系GM@2！"
	end

	return ""
end

function Lever(npc, player)
	return ""
end

function progress_complete(player, params)		--进度条成功
	local request_slots = 4
	local item_array = {"号角", "仓库扩充1", "仓库扩充2","包裹扩充1"}

	if lualib:Player_GetBagFree(player_guid) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要4个格子！")
	    return "背包空间不够，需要4个格子！"
	end

	for element in pairs(item_array) do
		local result = lualib:Player_GiveItemBind(player, item_array[element], 1, "给物品：宝箱", player)
		if result == false then
			lualib:SysMsg_SendTriggerMsg(player, "获取物品"..item_array[element].."失败！")
			return "获取物品"..item_array[element].."失败！"
		end
	end

	lualib:Npc_Remove(npc_guid)
	return "物品给予成功！"
end

function progress_abort(player, params)   --进度条失败
end
