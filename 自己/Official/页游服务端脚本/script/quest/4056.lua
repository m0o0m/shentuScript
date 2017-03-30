--任务成功接取回调
--quest_id 任务id
function on_accept(player, quest_id)
	lualib:Map_GenNpc(lualib:MapGuid(player),"摆脱禁锢的黑面牛魔", lualib:X(player), lualib:Y(player),2,lualib:GenRandom(1,8))
	lualib:AddTimer(player, 4056, 5000, 1, "enter_dgn")
	lualib:SysMsg_SendBottomColor(player, "5秒后将传送进入任务副本。\n意外退出副本后，请放弃任务重接以进入副本！", 1, 12)
	return true	
end

function enter_dgn(player,timeid)
	local dgn_id = lualib:Map_CreateDgn("任务临时副本", false, 1200)
	lualib:Player_SetDgnTicket(player, dgn_id) 
    lualib:Player_EnterDgn(player, "任务临时副本", 22, 33, 1)	
	return true	
end
