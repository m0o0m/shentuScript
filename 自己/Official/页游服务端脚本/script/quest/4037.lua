

function on_accept(player, quest_id)
	lualib:SetInt(player, "4037", 0)
    return true
end


function can_accomplish(player, quest_id)
	
	local a = lualib:GetInt(player, "4037")
	if a ~= 1 then
		return false
	end
	return true
end