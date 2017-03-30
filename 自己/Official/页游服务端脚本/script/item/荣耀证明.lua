function main(player, item)
	local itemNum = lualib:ItemCountByKey(player, "荣耀证明", true, false, false, 2)
	if itemNum < 1 then
		lualib:SysMsg_SendTriggerMsg(player, "添加道具失败！")
		return false
	end
	
	if not lualib:DelItem(player, "荣耀证明", 1, 2, "", "") then
		lualib:SysMsg_SendTriggerMsg(player, "添加道具失败！")
		return false
	end
	
	local cur_rongyao = lualib:GetInt(player, "jjc_rongyao")

	if not lualib:SetInt(player, "jjc_rongyao", cur_rongyao + 500) then
		lualib:SysMsg_SendTriggerMsg(player, "添加荣耀失败！")
        return false
    end
	lualib:SysMsg_SendTriggerMsg(player, "荣耀值增加500！")
	return true
end