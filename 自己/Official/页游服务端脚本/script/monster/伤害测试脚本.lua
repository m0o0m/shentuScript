function on_create(monster)
	lualib:AddTrigger(monster, lua_trigger_attack_ex , "on_attack")
end

function on_attack(self, target, hp, skill)
	lualib:SetHp(self, 9999998,false)
end
