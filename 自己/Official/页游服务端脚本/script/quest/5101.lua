
function on_accept(player, quest_id)
	
	lualib:AddBuff(player, "�䶷������ս����", 0)	
	return true
end


function on_accomplish(player, quest_id)
	lualib:DelBuff(player, "�䶷������ս����")
	
	return true
end