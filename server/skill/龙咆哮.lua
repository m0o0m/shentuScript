function post_apply(actor, skillid)
	local mapguid =lualib:MapGuid(actor)
	local x = lualib:X(actor)
	local y = lualib:Y(actor)
	local player_level = lualib:Level(actor)
	local skill_id = skillid
	local monster_tb1 = lualib:Map_GetRegionMonsters(mapguid, "", x, y, 1, true, true)
	local monster_tb2 = lualib:Map_GetRegionMonsters(mapguid, "", x, y, 2, true, true)
	
	local num = 0

	if	skill_id == 1070 or skill_id == 1071 then
		for i = 1, #monster_tb1 do
			local monster_tb1_level = lualib:Level(monster_tb1[i]) 
			local mt1_keyname = lualib:KeyName(monster_tb1[i])
			local mt1_type = lualib:Monster_Type(mt1_keyname)
			if player_level < monster_tb1_level then
			
			else
				if	mt1_type > 2	then
				else
					lualib:AddBuff(monster_tb1[i], "Ê¨×Óºð", 0)
					
					num = num + 1
					if num >= 8 then
						break
					end
				end
			end
		end
	elseif skill_id == 1072 or skill_id == 1073 then
		for i = 1, #monster_tb2 do
			local monster_tb2_level = lualib:Level(monster_tb2[i]) 
			local mt2_keyname = lualib:KeyName(monster_tb2[i])
			local mt2_type = lualib:Monster_Type(mt2_keyname)
			if player_level < monster_tb2_level then
				
			else
				if	mt2_type > 2 	then
				else
					lualib:AddBuff(monster_tb2[i], "Ê¨×Óºð", 0)
					
					num = num + 1
					if num >= 24 then
						break
					end
				end
			end
		end
	end
	
end