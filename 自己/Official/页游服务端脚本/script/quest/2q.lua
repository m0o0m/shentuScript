function on_accomplish(player, quest_id, select_index)
	local item_table = {"粗布甲男", "粗布甲女"}
	local gender = lualib:Gender(player)
	local player_name = lualib:Name(player)
	local item_num = 1
	
	if lualib:GetBagFree(player) < item_num then
		lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<"..item_table[gender]..">通过邮件发送给你", 0, 0, {item_table[gender], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要"..item_num.."个格子！道具已通过邮件发送给你，请注意查收")
		
	else
		lualib:AddItem(player, item_table[gender], 1, true, "新手任务赠送", "新手任务赠送")
	end
	return true
end
