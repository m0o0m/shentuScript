--任务成功接取回调
--quest_id 任务id
function on_accept(player, quest_id)
	lualib:Map_GenNpc(lualib:MapGuid(player),"海妖将军", lualib:X(player), lualib:Y(player),2,lualib:GenRandom(1,8))
	lualib:AddTimer(player, 4007,15000, 1, "enter_dgn")
return false
end

function enter_dgn(player,timeid)
	local dgn_id = lualib:Map_CreateDgn("海角秘境", false, 1800)
	lualib:Player_SetDgnTicket(player, dgn_id) 
    lualib:Player_EnterDgn(player, "海角秘境", 50, 70, 10) 
end