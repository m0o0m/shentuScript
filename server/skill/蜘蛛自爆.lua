function post_apply(actor, skillid)	
	if tonumber(skillid) == 2 then
		local attack = lualib:Monster_GetAttackTarget(actor)
		
		local cost_hp = lualib:Hp(attack, false) - math.random(15,25)
		if cost_hp > 0 then
			lualib:SetHp(attack, cost_hp, false)
		else
			lualib:Kill(attack)
		end
		lualib:Kill(actor)
	end
end	