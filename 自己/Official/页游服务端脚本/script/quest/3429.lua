
function on_accept(player, quest_id)
	local map = lualib:MapGuid(player)
	local x = lualib:X(player)
	local y = lualib:Y(player)	
	local b = lualib:GenRandom(1, 8)	
	if lualib:Map_GenSingleMonster(map, x, y, 4, b, "城卫统领", false) then	
		lualib:SysWarnMsg(player, "任务提示：城卫统领已经对你生出杀意，请于两分钟内消灭他！若失败请放弃重接！")
	end	
	
	return true
end

