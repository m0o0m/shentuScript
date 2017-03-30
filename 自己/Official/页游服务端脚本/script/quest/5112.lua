
function on_accept(player, quest_id)

	lualib:SetInt(player, "5112_q", 0)
	
	lualib:AddTimer(player, 5112, 4000, 1, "enter_dgn")
	lualib:SysMsg_SendTriggerMsg(player, "注意：4秒钟后进入战斗副本！")
	return true
end

function enter_dgn(player,timeid)
	local dgn_id = lualib:Map_CreateDgn("战斗副本", false, 1200)
	lualib:Player_SetDgnTicket(player, dgn_id) 
    lualib:Player_EnterDgn(player, "战斗副本", 65, 65, 2)
	return true
end


function can_accomplish(player, quest_id)
	local a = lualib:GetInt(player, "5112_q")
	if a ~= 1 then
		return false
	end
	return true
end


