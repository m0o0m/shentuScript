function on_accept(player, quest_id)
    return true
end


function AddTrigger(player, trigger_enter_map, can_accomplish)
	return true
end

function can_accomplish(player, quest_id)
	local map = "√ÿ∫£∑‚”°"
	local player_map = lualib:KeyName(lualib:MapGuid(player))
	if player_map == map then
		return true
	end
	return false
end