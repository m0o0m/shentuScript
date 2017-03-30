--任务完成回调
--select_index 可选奖励索引
function on_accomplish(player, quest_id, select_index)
	local item_table = 
	{
		{"绿玉项链", "黄金手镯"},
		{"唤魔铃铛", "奥普手镯"},
		{"灵光石项链", "境魂护腕"}
	}
	local job = lualib:Job(player)
	local player_name = lualib:Name(player)
	local item_num = 2
	
	if lualib:Player_GetBagFree(player) < item_num then
		for i = 1 , 2 do		
		lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<"..item_table[job][i]..">通过邮件发送给你", 0, 0, {item_table[job][i], 1, 1})
		end
		lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要"..item_num.."个格子！道具已通过邮件发送给你，请注意查收")		
		
	else
		for i = 1, 2 do 
		lualib:AddItem(player, item_table[job][i], 1, true, "新手任务赠送", "新手任务赠送")
		lualib:SysMsg_SendTriggerMsg(player, "您获得了<"..item_table[job][i]..">请打开背包查看！！！")
		end
	end
	return true
end