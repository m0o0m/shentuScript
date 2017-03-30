local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local itemName = "封印鉴定符"
local gold = 6000
---不可鉴定的个别装备列表
local zhuangbei = {
					"aaa",
					"bbb",
					"ccc",
					}

function main(player, a_weizhi, b_weizhi)
	local a_weizhi = tonumber(a_weizhi)
	local b_weizhi = tonumber(b_weizhi)
	local table_ku = {
				--{库类型，进入库之后扣除的积分，进入几率}
				{1, 0, 10000},
				{2, 460, -300},
				{3, 300, -150},
			}

	local table_att = {
				{
					--{一库内条目数值类型，属性值，库内权重}
                    {3, 2, 100}, --hp上限
                    {5, 2, 100}, --mp上限
                    {6, 1, 100}, --物防上限
                    {8, 1, 100}, --魔防上限
                    {10, 1, 100}, --物攻上限
                    {12, 1, 100}, --魔攻上限
                    {14, 1, 100}, --道术上限
                    {84, 1, 100}, --物防下限百分比
                    {86, 1, 100}, --魔防下限百分比
                    {88, 1, 100}, --物攻下限百分比
                    {90, 1, 100}, --魔攻下限百分比
                    {92, 1, 100}, --道术下限百分比
                    {3, 3, 100}, --hp上限
                    {5, 3, 100}, --mp上限
                    {83, 1, 100}, --物防上限百分比
                    {85, 1, 100}, --魔防上限百分比
                    {87, 1, 100}, --物攻上限百分比
                    {89, 1, 100}, --魔攻上限百分比
                    {91, 1, 100}, --道术上限百分比
                    {6, 1, 100}, --物防上限
                    {8, 1, 100}, --魔防上限
                    {10, 1, 100}, --物攻上限
                    {12, 1, 100}, --魔攻上限
                    {14, 1, 100}, --道术上限
                    {3, 4, 100}, --hp上限
                    {5, 4, 100}, --mp上限
                    {6, 1, 100}, --物防上限
                    {8, 1, 100}, --魔防上限
                    {10, 2, 100}, --物攻上限
                    {12, 2, 100}, --魔攻上限
                    {14, 2, 100}, --道术上限
                    {6, 1, 100}, --物防上限
                    {8, 1, 100}, --魔防上限
                    {10, 1, 100}, --物攻上限
                    {12, 1, 100}, --魔攻上限
                    {14, 1, 100}, --道术上限
				},
				{
					--{二库内条目数值类型，属性值，库内权重}
		    {3, 4, 100}, --hp上限
                    {5, 4, 100}, --mp上限
                    {6, 2, 100}, --物防上限
                    {8, 2, 100}, --魔防上限
                    {10, 2, 100}, --物攻上限
                    {12, 2, 100}, --魔攻上限
                    {14, 2, 100}, --道术上限
                    {7, 1, 100}, --物防下限
                    {9, 1, 100}, --魔防下限
                    {11, 1, 100}, --物攻下限
                    {13, 1, 100}, --魔攻下限
                    {15, 1, 100}, --道术下限
                    {3, 5, 100}, --hp上限
                    {5, 5, 100}, --mp上限
                    {6, 2, 100}, --物防上限
                    {8, 2, 100}, --魔防上限
                    {10, 2, 100}, --物攻上限
                    {12, 2, 100}, --魔攻上限
                    {14, 2, 100}, --道术上限
                    {7, 1, 100}, --物防下限
                    {9, 1, 100}, --魔防下限
                    {11, 1, 100}, --物攻下限
                    {13, 1, 100}, --魔攻下限
                    {15, 1, 100}, --道术下限
                    {25, 5, 100}, --上限腕力
                    {21, 50, 100}, --上限背包负重
                    {23, 5, 100}, --上限装备负重
                    {44, 5, 100}, --hp回复值
                    {45, 5, 100}, --mp回复值
                    {49, 1, 100}, --暴击率
                    {111, 3, 100}, --吸血
                    {114, 3, 100}, --吸魔
				},
				{
					--{三库内条目数值类型，属性值，库内权重}
					{3, 10, 100}, --hp上限
                    {5, 10, 100}, --mp上限
                    {6, 3, 100}, --物防上限
                    {8, 3, 100}, --魔防上限
                    {10, 3, 100}, --物攻上限
                    {12, 3, 100}, --魔攻上限
                    {14, 3, 100}, --道术上限
                    {7, 2, 100}, --物防下限
                    {9, 2, 100}, --魔防下限
                    {11, 2, 100}, --物攻下限
                    {13, 2, 100}, --魔攻下限
                    {15, 2, 100}, --道术下限
                    {3, 12, 100}, --hp上限
                    {5, 12, 100}, --mp上限
                    {83, 3, 100}, --物防上限百分比
                    {85, 3, 100}, --魔防上限百分比
                    {87, 3, 100}, --物攻上限百分比
                    {89, 3, 100}, --魔攻上限百分比
                    {91, 3, 100}, --道术上限百分比
                    {7, 2, 100}, --物防下限
                    {9, 2, 100}, --魔防下限
                    {11, 2, 100}, --物攻下限
                    {13, 2, 100}, --魔攻下限
                    {15, 2, 100}, --道术下限
                    {84, 3, 100}, --物防下限百分比
                    {86, 3, 100}, --魔防下限百分比
                    {88, 3, 100}, --物攻下限百分比
		    {90, 3, 100}, --魔攻下限百分比
                    {92, 3, 100}, --道术下限百分比
                    {44, 9, 100}, --hp回复值
                    {45, 9, 100}, --mp回复值
                    {49, 2, 100}, --暴击率
                    {111, 7, 100}, --吸血
                    {114, 7, 100}, --吸魔
				},
			}

	local a_guid = lualib:Player_GetItemGuid(player, a_weizhi)
	local a_Type = lualib:Item_GetType(player, a_guid)
	local a_SubType = lualib:Item_GetType(player, a_guid)
	local a_KeyName = lualib:KeyName(a_guid)

	if a_Type ~= 1  then
		return "不是装备，无法进行装备属性鉴定！"
	end

	if a_SubType == 5 then
		return "此类型装备无法进行装备属性鉴定"
	end

	for k, v in pairs(zhuangbei) do
		if a_KeyName == v then
			return "该装备不能进行装备属性鉴定"
		end
	end

	if lualib:Player_IsGoldEnough(player,gold,false) == false then
		return "吸收极品属性需要5000金币！"
	end

	local b_guid = lualib:Player_GetItemGuid(player, b_weizhi)
	local b_KeyName = lualib:KeyName(b_guid)

	if b_KeyName ~= itemName then
		return "请放入封印鉴定符！"
	end


	local shumu = lualib:Item_GetAmount(player, b_guid)
	if shumu < 1 then
		return "你的封印鉴定符不足！"
	end


	---获取积分自定义变量
	local fengyinjifen = lualib:GetInt(player, "fengyinjifen")

	---开始计算
	---设置获取属性容器
	jianding_att = {
					{0,0},
					{0,0},
					{0,0},
					}


	---计算第一条
	local maxs1 = 0
	local att1 = {}
	local kuattRate1 = table_att[1]

	for i = 1 ,table.getn(table_att[1]) do
		maxs1 = maxs1 + table_att[1][i][3]
		kuattRate1[i][3] = maxs1
	end

	local Rate1 = lualib:GenRandom(0, maxs1)
	for i = 1, table.getn(kuattRate1) do
		if Rate1 < kuattRate1[i][3] then
			att1 = kuattRate1[i]
			jianding_att[1] = att1
			break
		end
	end


	---计算第二条
	local req2 = false
	kuRate2 = fengyinjifen + table_ku[2][3]
	if kuRate2 > lualib:GenRandom(1, 10000) then
		req2 = true
	end


	if req2 == true then
		local maxs2 = 0
		local att2 = {}
		local kuattRate2 = table_att[2]

		for i = 1, table.getn(table_att[2]) do
			maxs2 = maxs2 + table_att[2][i][3]
			kuattRate2[i][3] = maxs2
		end

		local Rate2 = lualib:GenRandom(0, maxs2)
		for i = 1, table.getn(kuattRate2) do
			if Rate2 < kuattRate2[i][3] then
				att2 = kuattRate2[i]
				jianding_att[2] = att2
				break
			end
		end
	end

	---计算第三条属性
	local req3 = false
	if req2 == true then
		local kuRate3 = fengyinjifen + table_ku[3][3]

		if kuRate3 > lualib:GenRandom(1, 10000) then
			req3 = true
		end

		if req3 == true then
			local maxs3 = 0
			local att3 = {}
			local kuattRate3 = table_att[3]

			for i = 1, table.getn(table_att[3]) do
				maxs3 = maxs3 + table_att[3][i][3]
				kuattRate3[i][3] = maxs3
			end

			local Rate3 = lualib:GenRandom(0, maxs3)
			for i = 1, table.getn(kuattRate3) do
				if Rate3 < kuattRate3[i][3] then
					att3 = kuattRate3[i]
					jianding_att[3] = att3
					break
				end
			end
		end
	end
	---结算积分
	fengyinjifen = fengyinjifen + 10
	if req2 == true then
		fengyinjifen = fengyinjifen - table_ku[2][2]
		if req3 == true then
			fengyinjifen = fengyinjifen - table_ku[3][2]
		end
	end

	local player_Name = lualib:Name(player)
	local item_Name = lualib:Name(a_guid)
	for i = 0, 2 do
		local att = lualib:Equip_GetIdentifyProp(player, a_guid, i)
		lualib:Log(player_Name, item_Name, a_guid, att[0], jianding_att[i+1][1], "鉴定第"..i.."条属性类型", "系统")
		lualib:Log(player_Name, item_Name, a_guid, att[1], jianding_att[i+1][2], "鉴定第"..i.."条属性值", "系统")
	end


	return fengyin(player, a_guid, b_guid, jianding_att, shumu,fengyinjifen)
end


function fengyin(player, a_guid, b_guid, jianding_att, shumu, fengyinjifen)
	lualib:Player_SubGold(player, gold, false, "鉴定", "鉴定")

	lualib:Item_SetAmount(player, b_guid, shumu-1)



	if not lualib:Equip_SetIdentifyProp(player, a_guid, jianding_att[1][1], jianding_att[1][2], jianding_att[2][1], jianding_att[2][2], jianding_att[3][1], jianding_att[3][2]) then
		return "设定封印属性失败"
	end
	lualib:Item_NotifyUpdate(player, a_guid)


	if not lualib:SetInt(player, "fengyinjifen", fengyinjifen) then return "设置鉴定积分自定义变量失败" end

	----测试用个人积分观察，请不要放到外网，请在没有玩家的测试服，将下面两行注销去掉。
	--[[local s = "您当前鉴定积分为"..fengyinjifen.."，积分越高获得2、3条属性的几率越高，获得2、3条属性时会扣除一定积分。"
	lualib:SysMsg_SendPromptMsg(player, s)]]

	lualib:OnGloryTrigger(player, lua_glory_trigger_jianding, a_guid, 0, "" ,"")
	return ""
end
