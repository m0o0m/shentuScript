function main(player, item)
	local map_k = lualib:KeyName(lualib:MapGuid(player))
	local p_x = lualib:X(player)
	local p_y = lualib:Y(player)
	
	if map_k == "邪庙3" then
		if p_x > 258 and p_x < 262 and p_y > 76 and p_y < 81 then
			lualib:RunClientScript(player, "ItemEffect", "texiao", "100001581#"..p_x.."#"..p_y.."#0#30000")
			lualib:SysMsg_SendTriggerMsg(player, "使用成功")
			if not lualib:DelItem(player, "信标魔阵", 1, 2, "使用成功删除道具", "信标魔阵") then
				lualib:SysMsg_SendTriggerMsg(player, "扣除道具失败")
				return false
			end
		else
			lualib:SysMsg_SendTriggerMsg(player, "你还没到天荒邪庙3层（259:79）位置，不能使用！")
			return false
		end
	else
		lualib:SysMsg_SendTriggerMsg(player, "你还没到天荒邪庙3层（259:79）位置，不能使用！")
		return false
	end
	return true
end