function on_create(monster)
	if lualib:Name(monster) == "Ôªµ©Ð¡±ø" then
		lualib:AddBuff(monster,"Ôªµ©³ÆºÅ",0)
	elseif 	lualib:Name(monster) == "Ê¥µ®Ð¡ÈË" then
		lualib:AddBuff(monster,"Ê¥µ®³ÆºÅ",0)
	end
end