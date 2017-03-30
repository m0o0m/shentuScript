function main(player, z_item, c_item)
	
	local table_type = {1,2,3,4,6,7,8,9,10,11,12} --可精炼装备类型
	local z_guid = lualib:Player_GetItemGuid(player, z_item)
	local z_type = lualib:Item_GetType(player,z_guid)
	if tonumber(z_type) ~= 1 then 
		return "不是装备，不可进行属性重置！"
	end
	
	local z_subType = lualib:Item_GetSubType(player, z_guid)
	local ret = false
	for k, v in pairs(table_type) do
		if z_subType == v then
			ret = true
		end
	end
	
	if ret ~= true then
		return "该装备不能进行极品属性重置！"
	end
	
	local c_guid = lualib:Player_GetItemGuid(player, c_item)
	local c_Key = lualib:KeyName(c_guid)
	if c_Key ~= "低级唤魂石" and c_Key ~= "中级唤魂石" and c_Key ~= "高级唤魂石" then
		return "极品属性重置需要一颗唤神石！"
	end
	
	local c_num = tonumber(lulalib:Item_GetAmount(player, c_guid))
	if c_num < 1 then
		return "唤魂石数量不足！"
	end

	return shuxingchongzhi(player, z_guid, z_type, c_guid, c_num)
end

function shuxingchongzhi(player, z_guid, z_type, c_guid, c_num)
	local huanshen = {
						["低级唤魂石"] = 500,
						["中级唤魂石"] = 1000,
						["高级唤魂石"] = 1500,
					}
	local c_item = lualib:KeyName(c_guid)
	local gold = 5000
	if not lualib:Player_SubGold(player,gold,false,"非绑","装备打造大师") then return "扣除金币失败" end
	lualib:Item_SetAmount(player,c_guid, c_num - 1) 
	local table_att = {
				--{属性值，循环概率，最高点数}
				{{3,5000,5},{6,5000,5},{8,5000,5},{10,5000,5},{12,5000,5},{14,5000,5}},--装备类型1极品随机机率
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},--装备类型2
				{{3,500,5},{6,500,5},{8,500,5},{10,500,5},{12,500,5},{14,500,5}},--装备类型3
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
	return "极品属性重置成功！"
end