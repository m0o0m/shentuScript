
		
function on_accept(player, quest_id)
	local map = lualib:MapGuid(player)
    local X = lualib:X(player)
    local Y = lualib:Y(player)
	lualib:Map_GenSingleMonster(map, X, Y, 3, 5, "凶狼",false)
	lualib:SysMsg_SendTriggerMsg(player, "凶狼出现在你身边，请于两分钟内击杀！若凶狼消失，可放弃任务重接！")
	return true
end