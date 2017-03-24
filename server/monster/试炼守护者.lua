function on_create(monster)
	lualib:AddTrigger(monster, lua_trigger_post_die, "on_post_die")
end

function on_post_die(monster, player)
	lualib:SetInt(player, "k_slshz", 1)                  --- k_slshz  …±À¿ ‘¡∂ ÿª§’ﬂ
	local TeamList = lualib:Player_GetTeamList(player)
	
	if TeamList ~= nil then
		for i = 1, #TeamList do
			lualib:SetInt(TeamList[i], "k_slshz", 1)
		end
	end
end