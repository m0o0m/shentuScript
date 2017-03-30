--任务成功接取回调
--quest_id 任务id
function on_accomplish(player, quest_id, select_index)
	local job = lualib:Job(player)
	local sex = lualib:Gender(player)
	local item_table = {
							{"元灵铠甲(男)","元灵铠甲(女)"},
							{"紫绸长袍(男)","紫绸长袍(女)"},
							{"天心道衣(男)","天心道衣(女)"},
						}
						
						
	local player_name = lualib:Name(player)
	local item_num = 1
	
	if lualib:Player_GetBagFree(player) < item_num then
		lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<"..item_table[job][sex]..">通过邮件发送给你", 0, 0, {item_table[job][sex], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要"..item_num.."个格子！道具已通过邮件发送给你，请注意查收")
		
	else
		lualib:AddItem(player, item_table[job][sex], 1, true, "新手任务赠送", "新手任务赠送")
		lualib:SysMsg_SendTriggerMsg(player, "您获得了<"..item_table[job][sex]..">请打开背包查看！！！")
	end	
    return true
end