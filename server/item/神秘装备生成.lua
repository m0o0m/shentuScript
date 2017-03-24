function on_create(item)
	on_createEx(item)
end


function on_createEx(item, types)
	local att_name_t = {
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
				{6, 7, 8, 9, 10, 11, 12, 13, 14},
			}

	local rand1 = math.random(1, 2)
	if rand1 == 1 then
		lualib:SetInt(item, "apply_equip", 1)
	end
	
	
	
	local equip_type = lualib:Item_GetSubType("", item)
	if types == 1 then
		local att_num = math.random(1, 6)
		local set_att_t = {}
		for i = 1, att_num do
			local att_index_rand = math.random(1, #att_name_t[equip_type])
			
			set_att_t[i] = att_name_t[equip_type][att_index_rand]
			table.remove(att_name_t[equip_type], att_index_rand)
		end
	
		for i = 1, #set_att_t do
			local att_value = math.random(1, 3)
			lualib:Equip_SetQualProp("", item, i-1, set_att_t[i], att_value)
		end
		lualib:SetInt(item, "att_rand_flag", 1)
	end
end