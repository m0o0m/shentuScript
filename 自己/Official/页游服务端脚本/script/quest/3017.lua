local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
	
--任务成功接取回调 复制3011脚本 有错无错测过再说
--quest_id 任务id
function on_accomplish(player, quest_id)
	local item_table = {"明镜止水", "超级护身符", "超级灰色药粉", "超级黄色药粉"}
	local item_num_table = {1, 1, 1, 1}
	local item_bind_table = {1, 1, 1, 1}
	local on_item_table = {0, 0, 0, 0}
	local player_name = lualib:Name(player)
	local item_num = 6
	
	if lualib:Job(player) == 3 then
		if  lualib:Player_GetBagFree(player) < item_num then
			lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<"..item_table[1]..","..item_table[2]..","..item_table[3]..","..item_table[4]..">通过邮件发送给你", 0, 0, {item_table[1], 1, 1,item_table[2], 1, 1,item_table[3], 2, 1,item_table[4], 2, 1})
			lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要"..item_num.."个格子！道具已通过邮件发送给你，请注意查收")
		else
			lualib:Player_ItemRequest(player, item_table, item_num_table, item_bind_table, on_item_table, "新手任务赠送", "")
			lualib:SysMsg_SendTriggerMsg(player, "您获得了<"..item_table[1]..","..item_table[2]..","..item_table[3]..","..item_table[4]..">请打开背包查看！！！")
		end
	end
	return true
end

