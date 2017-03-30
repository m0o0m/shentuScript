--任务完成回调
--select_index 可选奖励索引


function on_accomplish(player, quest_id, select_index)
	local job = lualib:Job(player)
	local item_table = {{"鬼噬", "风刺剑法"}, {"魔灵法杖", "烈焰火海", "死亡射线"}, {"天玄剑", "地煞镇魔咒", "天罡护体咒"}}	
	
	local player_name = lualib:Name(player)
	local item_num = 3
	
	if lualib:Player_GetBagFree(player) < item_num then
		for i = 1, #item_table[job] do 
		lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<"..item_table[job][i]..">通过邮件发送给你", 0, 0, {item_table[job][i], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要"..item_num.."个格子！奖励已通过邮件发送给你，请注意查收")
		end
		
	else
		for i = 1, #item_table[job] do
		lualib:AddItem(player, item_table[job][i], 1, true, "任务赠送", "任务赠送")
		lualib:SysMsg_SendTriggerMsg(player, "您获得了<"..item_table[job][i]..">请打开背包查看！！！")
		end
		
	end
	return true
end