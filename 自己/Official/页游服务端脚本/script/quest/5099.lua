
function on_accept(player, quest_id)
	
	lualib:SetInt(player, "5099", 0)
	lualib:SysMsg_SendTriggerMsg(player, "注意：5秒钟后进入战斗副本！")
	lualib:AddTimer(player, 5099, 5000, 1, "enter_dgn")
	
	
	return true
end

function enter_dgn(player)
	local dgn_id = lualib:Map_CreateDgn("守护副本", false, 1200)
	lualib:Player_SetDgnTicket(player, dgn_id) 
    lualib:Player_EnterDgn(player, "守护副本", 65, 65, 2)
	lualib:AddBuff(player, "随机BUFF14", 600000)
	lualib:SysWarnMsg(player, "守护封印阵心，5分钟内不被毁坏即可完成任务！")
	return ""
			
end

function can_accomplish(player,quest_id)
	local a = lualib:GetInt(player, "5099")
	if a ~= 1 then return false end	
	return true
			
end


function on_accomplish(player, quest_id)

	lualib:DelBuff(player, "随机BUFF14")
	return true
end