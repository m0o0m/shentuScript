
		
function on_accept(player, quest_id)	
	lualib:AddTimer(player, 5109, 5000, 1, "enter_dgn")
	lualib:SysMsg_SendTriggerMsg(player, "注意：5秒钟后进入战斗副本！")
	return true
end

function enter_dgn(player)
	local dgn_id = lualib:Map_CreateDgn("战斗副本", false, 1200)
	lualib:Player_SetDgnTicket(player, dgn_id) 
    lualib:Player_EnterDgn(player, "战斗副本", 65, 65, 2)
	
	return
end

