

function on_accept(player, quest_id)
	lualib:SetInt(player, "5078_q", 0)
	lualib:AddTrigger(player, lua_trigger_post_process_pk, "on_timer")
    return true
end

function on_timer(player)
	if lualib:Pk(player) >= 180 then
		lualib:SetInt(player, "5078_q", 1)
	end
end

function can_accomplish(player, quest_id)
	local a = lualib:GetInt(player, "5078_q")
	
	if a ~= 1 then
		return false
	end
	return true
end

