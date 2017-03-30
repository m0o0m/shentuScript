
		
function on_accept(player, quest_id)
	lualib:SysMsg_SendTriggerMsg(player, "断剑有危险，请一定要小心！")
	return true
end