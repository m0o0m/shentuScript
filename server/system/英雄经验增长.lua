function hero_exp_count(player,exps)
	local heros = lualib:GetPlayerCurrentHeroList(player)

	if table.getn(heros) ~= 1 then
		return
	else
		local exp = math.floor(tonumber(exps))
		lualib:AddExp(heros[1], exp, "", "")
                     local exps = math.ceil(exp * 0.1)
                     lualib:DelayCall(heros[1], 1, "æ€¡È÷È:on_add_exp", tostring(exps))
	end
end
