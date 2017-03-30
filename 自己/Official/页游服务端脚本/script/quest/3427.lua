
function on_accept(player, quest_id)
	local map = lualib:MapGuid(player)
	local x = lualib:X(player)
	local y = lualib:Y(player)	
	local b = lualib:GenRandom(1, 8)	
	if lualib:Map_GenSingleMonster(map, x, y, 4, b, "魔化的老实人", false) then	
		lualib:SysWarnMsg(player, "任务提示：老实人已经入魔，阻止他任何可能的行动，请于两分钟内消灭他！\n失败后请可放弃重接！")
	end	
	
	return true
end

