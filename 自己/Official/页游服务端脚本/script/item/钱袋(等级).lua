local golds = {}
golds[40] = 100000	
golds[45] = 300000	
golds[50] = 1000000	
golds[55] = 1500000	
golds[60] = 1800000	
golds[65] = 2000000	

--[[加金币]]
function main(player_guid, item_guid)

	local item_id = lualib:Item_GetID(player_guid, item_guid)
	if item_id == 0 then
		lualib:SysMsg_SendTipsMsg(player_guid, "道具不存在！")
		lualib:SysMsg_SendWarnMsg(player_guid, "道具不存在！")
		return false
	end

	local level = lualib:Level(player_guid)

	if level < 30 then
			if not lualib:Player_AddGold(player_guid, golds[40], false, "每日在线礼包绑定钱袋给金币", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "添加绑定金币失败！")
				lualib:SysMsg_SendWarnMsg(player_guid, "添加绑定金币失败！")
				return false
			end
	elseif level >= 30 and level < 40 then
			if not lualib:Player_AddGold(player_guid, golds[45], false, "每日在线礼包绑定钱袋给金币", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "添加绑定金币失败！")
				lualib:SysMsg_SendWarnMsg(player_guid, "添加绑定金币失败！")
				return false
			end
	elseif level >= 40 and level < 50 then
			if not lualib:Player_AddGold(player_guid, golds[50], false, "每日在线礼包绑定钱袋给金币", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "添加绑定金币失败！")
				lualib:SysMsg_SendWarnMsg(player_guid, "添加绑定金币失败！")
				return false	
			end
	elseif level >= 50 and level < 55 then
			if not lualib:Player_AddGold(player_guid, golds[55], false, "每日在线礼包绑定钱袋给金币", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "添加绑定金币失败！")
				lualib:SysMsg_SendWarnMsg(player_guid, "添加绑定金币失败！")
				return false
			end
	elseif level >= 55 and level < 60 then
			if not lualib:Player_AddGold(player_guid, golds[60], false, "每日在线礼包绑定钱袋给金币", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "添加绑定金币失败！")
				lualib:SysMsg_SendWarnMsg(player_guid, "添加绑定金币失败！")
				return false
			end
	elseif level >= 60 and level < 65 then
			if not lualib:Player_AddGold(player_guid, golds[65], false, "每日在线礼包绑定钱袋给金币", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "添加绑定金币失败！")
				lualib:SysMsg_SendWarnMsg(player_guid, "添加绑定金币失败！")
				return false	
			end
	elseif level >= 60 then
			if not lualib:Player_AddGold(player_guid, golds[65], false, "每日在线礼包绑定钱袋给金币", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "添加绑定金币失败！")
				lualib:SysMsg_SendWarnMsg(player_guid, "添加绑定金币失败！")
				return false				
			end
	end
	
	

	return true
end
