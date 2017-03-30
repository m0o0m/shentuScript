local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
	
--任务成功接取回调
--quest_id 任务id
function on_accept(player, quest_id)
	local item_table = {"麻布衣(男)", "麻布衣(女)"}
	local a = lualib:Gender(player)
	local player_name = lualib:Name(player)
	local item_num = 1
	
	if  lualib:Player_GetBagFree(player) < item_num then
		lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<"..item_table[a]..">通过邮件发送给你", 0, 0, {item_table[a], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要"..item_num.."个格子！道具已通过邮件发送给你，请注意查收")	
	else
		lualib:AddItem(player, item_table[a], 1, true, "新手任务赠送", "新手任务赠送")
		lualib:SysMsg_SendTriggerMsg(player, "您获得了<"..item_table[a]..">请打开背包查看！！！")
	end
	return true
end
