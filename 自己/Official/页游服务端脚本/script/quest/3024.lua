--任务完成回调
--select_index 可选奖励索引
--模本：3选1按职业给物品

function on_accomplish(player, quest_id, select_index)
	local item_table = {"道尊神符", "神魂火符", "地府之唤"}
	local item_num_table = {1, 1, 1}
	local item_bind_table = {1, 1, 1}
	local on_item_table = {0, 0, 0}
	local player_name = lualib:Name(player)
	
	if lualib:Job(player) == 3 then
		if  lualib:Player_GetBagFree(player) < 4 then
			lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<"..item_table[1]..","..item_table[2]..","..item_table[3]..">通过邮件发送给你", 0, 0, {item_table[1], 2, 1,item_table[2], 1, 1,item_table[3], 1, 1})
			lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要3个格子！道具已通过邮件发送给你，请注意查收")
		else
			lualib:Player_ItemRequest(player, item_table, item_num_table, item_bind_table, on_item_table, "新手任务赠送", "")
			lualib:SysMsg_SendTriggerMsg(player, "您获得了<"..item_table[1]..","..item_table[2]..","..item_table[3]..">请打开背包查看！！！")
		end
	elseif lualib:Job(player) == 1 then
		if  lualib:Player_GetBagFree(player) < 1 then
			lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<攻心斩>通过邮件发送给你", 0, 0, {"攻心斩", 1, 1})
			lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要1个格子！道具已通过邮件发送给你，请注意查收")
		else
			lualib:AddItem(player, "攻心斩", 1, true, "新手任务赠送", "新手任务赠送")
			lualib:SysMsg_SendTriggerMsg(player, "您获得了<攻心斩>请打开背包查看！！！")
		end
	elseif lualib:Job(player) == 2 then
		if  lualib:Player_GetBagFree(player) < 1 then
			lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<天雷术>通过邮件发送给你", 0, 0, {"天雷术", 1, 1})
			lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要1个格子！道具已通过邮件发送给你，请注意查收")
		else
			lualib:AddItem(player, "天雷术", 1, true, "新手任务赠送", "新手任务赠送")
			lualib:SysMsg_SendTriggerMsg(player, "您获得了<天雷术>请打开背包查看！！！")
		end
	end
	return true
end

