function main(player, z_item, c_item)
	
	local table_type = {1,2,3,4,6,7,8,9,10,11,12} --�ɾ���װ������
	local z_guid = lualib:Player_GetItemGuid(player, z_item)
	local z_type = lualib:Item_GetType(player,z_guid)
	if tonumber(z_type) ~= 1 then 
		return "����װ�������ɽ����������ã�"
	end
	
	local z_subType = lualib:Item_GetSubType(player, z_guid)
	local ret = false
	for k, v in pairs(table_type) do
		if z_subType == v then
			ret = true
		end
	end
	
	if ret ~= true then
		return "��װ�����ܽ��м�Ʒ�������ã�"
	end
	
	local c_guid = lualib:Player_GetItemGuid(player, c_item)
	local c_Key = lualib:KeyName(c_guid)
	if c_Key ~= "�ͼ�����ʯ" and c_Key ~= "�м�����ʯ" and c_Key ~= "�߼�����ʯ" then
		return "��Ʒ����������Ҫһ�Ż���ʯ��"
	end
	
	local c_num = tonumber(lulalib:Item_GetAmount(player, c_guid))
	if c_num < 1 then
		return "����ʯ�������㣡"
	end

	return shuxingchongzhi(player, z_guid, z_type, c_guid, c_num)
end

function shuxingchongzhi(player, z_guid, z_type, c_guid, c_num)
	local huanshen = {
						["�ͼ�����ʯ"] = 500,
						["�м�����ʯ"] = 1000,
						["�߼�����ʯ"] = 1500,
					}
	local c_item = lualib:KeyName(c_guid)
	local gold = 5000
	if not lualib:Player_SubGold(player,gold,false,"�ǰ�","װ�������ʦ") then return "�۳����ʧ��" end
	lualib:Item_SetAmount(player,c_guid, c_num - 1) 
	local table_att = {
				--{����ֵ��ѭ�����ʣ���ߵ���}
				{{3,5000,5},{6,5000,5},{8,5000,5},{10,5000,5},{12,5000,5},{14,5000,5}},--װ������1��Ʒ�������
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},--װ������2
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},--װ������3
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},
				}
	for i = 1, table.getn(table_att[tonumber(z_type)]) do
		table_att[tonumber(z_type)][i][4] = 0
		for j = 1, table_att[tonumber(z_type)][i][3] do
			local suiji = lualib:GenRandom(0,10000)
			if suiji <= table_att[tonumber(z_type)][i][2] + huanshen[c_item] then
				table_att[tonumber(z_type)][i][4] = table_att[tonumber(z_type)][i][4] + 1
			else
				break
			end
		end
		lualib:Equip_SetQualProp(player, z_guid, i-1, table_att[tonumber(z_type)][i][1], table_att[tonumber(z_type)][i][4])
	end
	lualib:Item_NotifyUpdate(player,z_guid)
	return "��Ʒ�������óɹ���"
end