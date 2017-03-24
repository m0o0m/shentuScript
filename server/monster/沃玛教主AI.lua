local var_t = {"xs_flag30", "xs_flag50", "xs_flag80"}

function on_create(monster)
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
end

function on_attack(self, actor)
	local move_flag = lualib:GetInt(self, "move_flag")
	local curTime   = lualib:GetAllTime()
	
	if move_flag + 600 < curTime then
		return
	end
	
	local hp = lualib:Hp(self, false)
	local maxHp = lualib:Hp(self, true)
	
	if hp < math.floor(maxHp / 3) then
		if math.random(1, 100) > 90 then
			local map = lualib:MapGuid(self)
			local x = math.random(20, 80)
			local y = math.random(20, 80)
			if not lualib:GridAttr(map, x, y, 1) then
				lualib:Monster_JumpXY(map, self, x, y, 20)
				lualib:SetInt(self, "move_flag", curTime)
			end
		end
	end
end
