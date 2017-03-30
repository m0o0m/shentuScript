
function on_accept(player, quest_id)
	
	lualib:AddBuff(player, "Îä¶·³¡ÈÛÑÒÕ½¼×ÄĞ", 0)	
	return true
end


function on_accomplish(player, quest_id)
	lualib:DelBuff(player, "Îä¶·³¡ÈÛÑÒÕ½¼×ÄĞ")
	
	return true
end