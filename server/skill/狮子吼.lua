function post_apply(actor, skillid)
	local mapguid =lualib:MapGuid(actor)
	local x = lualib:X(actor)
	local y = lualib:Y(actor)
	local player_level = lualib:Level(actor)
	local monster_tb = lualib:Map_GetRegionMonsters(mapguid, "", x, y, 1, true, true)
	
	local num = 0
	local monster_tb_level, mt_keyname, mt_type
	
	if	skillid == 1070 or skillid == 1071 then
		for _, v in ipairs(monster_tb) do
			monster_tb_level = lualib:Level(v) 
			mt_keyname = lualib:KeyName(v)
			mt_type = lualib:Monster_Type(mt_keyname)
			if player_level >= monster_tb_level and mt_type <= 2 then
				lualib:AddBuff(v, "Ê¨×Óºğ", 0)
				num = num + 1
				if num >= 8 then
					break
				end
			end
		end
	elseif skillid == 1072 or skillid == 1073 then
		for _, v in ipairs(monster_tb) do
			monster_tb_level = lualib:Level(v) 
			mt_keyname = lualib:KeyName(v)
			mt_type = lualib:Monster_Type(mt_keyname)
			if player_level >= monster_tb_level and mt_type <= 2 then
				lualib:AddBuff(v, "Ê¨×Óºğ", 0)
					
				num = num + 1
				if num >= 24 then
					break
				end
			end
		end
	end
	
end