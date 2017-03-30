--任务完成回调
--select_index 可选奖励索引
function on_accept(player, quest_id, select_index)
	local player_name = lualib:Name(player)
	local s = {
				"玩家【"..player_name.."】庄严的立下誓言：如果我还能呼吸，如果我还能思想，那么与堕落邪恶的斗争永不终止！",
			    "玩家【"..player_name.."】庄严的立下誓言：吾必以全部力量消灭恶魔，必以全部汗血终结苦难！",
				}
	local a = lualib:GenRandom(1,2)
	lualib:SysMsg_SendCenterMsg(1, s[a], "")
    return true
end

--[[
function on_accomplish(player, quest_id)
	local job = lualib:Job(player)
	local item_table = {"蛮荒长刀", "夜叉矛", "上弦"}
	local player_name = lualib:Name(player)
	local item_num = 1
	
	if lualib:Player_GetBagFree(player) < item_num then
		lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<"..item_table[job]..">通过邮件发送给你", 0, 0, {item_table[job], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要"..item_num.."个格子！道具已通过邮件发送给你，请注意查收")
		
	else
		lualib:AddItem(player, item_table[job], 1, true, "新手任务赠送", "新手任务赠送")
		lualib:SysMsg_SendTriggerMsg(player, "您获得了<"..item_table[job]..">请打开背包查看！！！")
	end
	return true
end
]]