--[[
变量名称             变量类型         变量说明
fumotiaomu             int            用于记录装备上已有的附魔属性条目数，重新附魔的时以便删除，需发客户端，动态显示几条的附魔条目

]]

local gold = 5000
local itemName = "附魔石"

function main(player, a_weizhi, b_weizhi)
	local a_weizhi = tonumber(a_weizhi)
	local b_weizhi = tonumber(b_weizhi)
	local att_table = {
				--{attName, 权重, 最小值, 最大值}
					{6, 800, 1, 1},
					{8, 800, 1, 1},
					{10, 800, 1, 1},
					{12, 800, 1, 1},
					{14, 800, 1, 1},
						}

	local a_guid = lualib:Player_GetItemGuid(player, a_weizhi)
	local a_Type = lualib:Item_GetType(player, a_guid)
	local a_SubType = lualib:Item_GetType(player, a_guid)

	if a_Type ~= 1  then
		return "不是装备，无法进行附魔！"
	end

	if a_SubType == 5 or a_SubType == 13 or a_SubType == 14 then
		return "此类型装备不能进行附魔！"
	end

	if lualib:Player_IsGoldEnough(player,gold,false) == false then
		return "吸收极品属性需要5000金币！"
	end


	local b_guid = lualib:Player_GetItemGuid(player, b_weizhi)
	local b_KeyName = lualib:KeyName(b_guid)
	local b_type = lualib:Item_GetType(player, b_guid)
	local b_subType = lualib:Item_GetSubType(player, b_guid)

	local pd = b_type == 4 and b_subType == 20
	if  not pd then
		return "请放入附魔石！"
	end

	---获取附魔石上的存储的属性
	local table_jp = {}
	local table_sub = {}
	for i = 1, 6 do
		local fumoAtt = lualib:GetInt(b_guid, "fumoAtt"..i)
		local fumoValue = lualib:GetInt(b_guid, "fumoValue"..i)
		if fumoAtt ~= 0 then
			table_sub = {fumoAtt, fumoValue}
			table.insert(table_jp, table_sub)
		end
	end


	---随机附魔石原有属性
	local att_rate = att_table
	local maxs = 0
	for i = 1, table.getn(att_table) do
		maxs = maxs + att_table[i][2]
		att_rate[i][2] = maxs
	end

	local suiji = lualib:GenRandom(1, maxs)
	local huoqu = {}
	for i = 1, table.getn(att_rate) do
		if suiji < att_rate[i][2] then
			huoqu = att_rate[i]
			break
		end
	end


	local num = lualib:GenRandom(huoqu[3], huoqu[4])
	for k, v in pairs(table_jp) do
		--print(table_jp[k][1])
		if huoqu[1] == v[1] then
			v[2] = v[2] + num
		end
	end

	return zbfm(player, a_guid, b_guid, table_jp, huoqu, num)
end

function zbfm(player, a_guid, b_guid, table_jp, huoqu, num)
	for i = 1, #huoqu do
		--print(huoqu[i])
	end
	if not lualib:Player_SubGold(player, gold, false, "非绑", "附魔") then return "扣除金币失败" end
	if not lualib:Item_Destroy(player, b_guid, "XXX", "XXX") then return "销毁物品失败" end

	local tiaomu = lualib:GetInt(a_guid, "fumotiaomu")

	while tiaomu > 0 do
		lualib:Equip_SetExtProp(player, a_guid, tiaomu - 1, 0, 0)
		tiaomu = tiaomu - 1
	end

	local xintiaomu = 0
	for i = 1, table.getn(table_jp) do
		--print(table_jp[i][1], table_jp[i][2])
		lualib:Equip_SetExtProp(player, a_guid, i - 1, table_jp[i][1], table_jp[i][2])
		xintiaomu = xintiaomu + 1
	end
	local abc = false
	for i = 1, table.getn(table_jp) do
		if huoqu[1] == table_jp[i][1] then
			abc = true
		end
	end
	if abc == false then
		lualib:Equip_SetExtProp(player, a_guid, xintiaomu, huoqu[1], num)
		xintiaomu = xintiaomu + 1
		--print(huoqu[1], num)
	end
	lualib:SetInt(a_guid, "fumotiaomu", xintiaomu)
	lualib:Item_NotifyUpdate(player, a_guid)
	lualib:MsgBox(player, "装备附魔成功！")
	return ""
end
