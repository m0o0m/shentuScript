
function on_accept(player, quest_id)
	
	lualib:AddTimer(player, 5124, 4000, 1, "enter_dgn")
	lualib:SysMsg_SendTriggerMsg(player, "ע�⣺4���Ӻ����ս��������")
	return true
end

function enter_dgn(player,timeid)
	local dgn_id = lualib:Map_CreateDgn("ս������", false, 1200)
	lualib:Player_SetDgnTicket(player, dgn_id) 
    lualib:Player_EnterDgn(player, "ս������", 65, 65, 2)
	return true
end

