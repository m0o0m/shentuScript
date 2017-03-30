local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

----武器1，护腕3，魂珠19，戒指9，项链8，攻击(根据职业三选一)
local shux1 = {
	{{11,10},{13,12},{15,14}},
	{{1,7},{3,16},{6,25},{10,38},{16,55},{24,76},{34,101},{45,131},{58,165},{75,194},{94,237},{119,285}}, 	
} 
----衣服4，腰带7，鞋子6，头盔2，攻击,物防，魔防
local shux2 = {
	{{{11,10},{13,12},{15,14}},{7,6},{9,8}},
	{
	{{1,1},{1,6},{1,6}},
	{{3,3},{3,14},{3,14}},
	{{6,6},{7,24},{6,25}},
	{{9,10},{12,36},{10,39}},
	{{13,16},{19,52},{16,56}},
	{{17,23},{28,73},{23,77}},
	{{22,33},{39,99},{32,103}},
	{{27,46},{52,131},{41,134}},
	{{33,63},{66,169},{52,170}},
	{{41,85},{82,213},{65,213}},
	{{50,112},{100,264},{80,262}},
	{{60,145},{122,324},{97,316}}
	}
}
----护盾 13    物防，魔防
local shux3 = {
	{{7,6},{9,8}},
	{{{1,3},{1,2}},{{3,9},{3,6}},{{5,18},{6,12}},{{8,30},{10,21}},{{12,45},{15,32}},{{16,63},{20,46}},{{21,84},{26,64}},
	{{28,109},{33,89}},{{37,138},{42,119}},{{48,171},{53,157}},{{62,209},{66,205}},{{80,250},{81,265}}	}
}
----宝石11，魂珠13 ,吊坠18  攻击
local shux4 = {
	{{11,10},{13,12},{15,14}},
	{{1,7},{3,16},{6,27},{11,40},{17,57},{25,78},{35,103},{46,133},{59,167},{75,206},{94,249},{119,297}}
}
----勋章10     攻击
local shux5 = {
	{{11,10},{13,12},{15,14}},
	{{1,7},{3,16},{6,26},{11,37},{17,51},{25,68},{33,88},{43,112},{54,140},{67,173},{83,212},{103,257}}
}

local suc_tab = {200000,400000,1000000,1600000,3400000,7000000,8000000,10400000,14000000,16200000,20400000,26000000}

function item_set(player, item_guid)
	local level = lualib:Item_GetLevel(item_guid)  --获取装备等级   
	--lualib:SysMsg_SendBroadcastMsg(tostring(level), "装备等级") 				
	--宝珠 11   灵珠  13   盾牌 15 
	local item_subtype = lualib:Item_GetSubType(player, item_guid) 
	if item_subtype ~= 18 then
		if level < 30 and item_subtype ~= 10 and item_subtype ~= 11 and item_subtype ~= 13 and item_subtype ~= 15 and item_subtype ~= 19 then 
			lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"装备等级过低，无法转移\");")
			return ""
		end
	end
	local jl_level = lualib:Equip_GetRefineLevel(player, item_guid)			--装备强化等级
	if jl_level == 0 then	
		local level = lualib:Item_GetLevel(item_guid)
		local num = 0												        --初始化目标装备空星数
		if level >= 80 then
			num = 12
		elseif level < 80 and level >= 60 then
			num = 10
		elseif level < 60 and level >= 30 then
			num = 8
		end	
		if num ~= 0 then
			lualib:SetInt(item_guid,"xing_num",num)
		end
	end		
		
	local data = serialize(item_guid)								
	--将装备置入装备栏
	lualib:ShowFormWithContent(player,"脚本表单","ZhuanyWnd.Zhuany_item("..data.."," .. jl_level ..");")
	return ""
end

local money = 0
function setZhuanyGold(player,item_guid_tb)
	local item_tb = string.split(item_guid_tb,",")
	local jl_level = lualib:Equip_GetRefineLevel(player, item_tb[1])
	local voidStar = lualib:GetInt(item_tb[2],"xing_num")		
	if jl_level > voidStar then
		lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"原始装备强化等级大于目标装备可强化最高等级\");")
		return ""
	end
	money = suc_tab[jl_level]
	--lualib:SysMsg_SendPromptMsg(player, "jl_level="..jl_level)
	lualib:ShowFormWithContent(player, "脚本表单", "ZhuanyWnd.goldConsumption("..money..");")	--强化所需金币
	return ""
end

function ZhuanyPreview(player, item_guid_tb, job)
	job = tonumber(job)
	local item_tb = string.split(item_guid_tb,",")
	local jl_level = lualib:Equip_GetRefineLevel(player, item_tb[1])
	local voidStar = lualib:GetInt(item_tb[2],"xing_num")
	if jl_level > voidStar then
		--lualib:SysMsg_SendPromptMsg(player, "原始装备强化等级大于目标装备可强化最高等级")
		lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"原始装备强化等级大于目标装备可强化最高等级\");")
		return ""
	end
	money = suc_tab[jl_level]
	if not qh_zhuanyi(player, "") then
		lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"您的金币不足\");")
		
		--lualib:SysMsg_SendPromptMsg(player, "金币不足")
		return ""
	end
	local subType = lualib:Item_GetSubType(player, item_tb[2])
	if 0 == job then
		job = lualib:Job(player)
	end
	local itemlevel = lualib:Item_GetLevel(item_tb[2])

	if subType == 1 or subType == 9 or subType == 8 or subType == 3 then
		if itemlevel >= 100 then
			local a = 4 
			for i = 1 , 3 do 
				lualib:Equip_SetExtProp(player, item_tb[2], a, shux1[1][i][1], shux1[2][jl_level][1])
				lualib:Equip_SetExtProp(player, item_tb[1], a, shux1[1][i][1], 0)
				a = a + 1 
				lualib:Equip_SetExtProp(player, item_tb[2], a, shux1[1][i][2], shux1[2][jl_level][2])
				lualib:Equip_SetExtProp(player, item_tb[1], a, shux1[1][i][2], 0)
				a = a + 1 
			end
		else
			lualib:Equip_SetExtProp(player, item_tb[2], 8, shux1[1][job][1], shux1[2][jl_level][1])
			lualib:Equip_SetExtProp(player, item_tb[2], 9, shux1[1][job][2], shux1[2][jl_level][2])
			--lualib:Equip_SetExtProp(player, item_tb[1], 8, shux1[1][job][1], 0)
			--lualib:Equip_SetExtProp(player, item_tb[1], 9, shux1[1][job][2], 0)
			local a = 4 
			for i = 1 , 3 do 
				lualib:Equip_SetExtProp(player, item_tb[1], a, shux1[1][i][1], 0)
				a = a + 1 
				lualib:Equip_SetExtProp(player, item_tb[1], a, shux1[1][i][2], 0)
				a = a + 1 
			end
		end
	elseif subType == 2 or subType == 4 or subType == 6 or subType == 7 then
		local a = 4
		for i = 1 , 3 do 
			if i == 1 then
				if itemlevel >= 100 then
					a = 0 
					for j = 1 , 3 do
						lualib:Equip_SetExtProp(player, item_tb[2], a, shux2[1][i][j][1], shux2[2][jl_level][i][1])
						lualib:Equip_SetExtProp(player, item_tb[1], a, shux2[1][i][j][1], 0)
						a = a + 1
						lualib:Equip_SetExtProp(player, item_tb[2], a, shux2[1][i][j][2], shux2[2][jl_level][i][2])
						lualib:Equip_SetExtProp(player, item_tb[1], a, shux2[1][i][j][2], 0)
						a = a + 1
					end
				else
					lualib:Equip_SetExtProp(player, item_tb[2], a, shux2[1][i][job][1], shux2[2][jl_level][i][1])
					lualib:Equip_SetExtProp(player, item_tb[1], a, shux2[1][i][job][1], 0)
					a = a + 1
					lualib:Equip_SetExtProp(player, item_tb[2], a, shux2[1][i][job][2], shux2[2][jl_level][i][2])
					lualib:Equip_SetExtProp(player, item_tb[1], a, shux2[1][i][job][2], 0)
					a = a + 1
				end
			else
				lualib:Equip_SetExtProp(player, item_tb[2], a, shux2[1][i][1], shux2[2][jl_level][i][1])
				lualib:Equip_SetExtProp(player, item_tb[1], a, shux2[1][i][1], 0)
				a = a + 1 
				lualib:Equip_SetExtProp(player, item_tb[2], a, shux2[1][i][2], shux2[2][jl_level][i][2])
				lualib:Equip_SetExtProp(player, item_tb[1], a, shux2[1][i][2], 0)
				a = a + 1 
			end	
		end
	elseif subType == 15 then
		local a = 6
		for i = 1 , 2 do 
			lualib:Equip_SetExtProp(player, item_tb[2], a, shux3[1][i][1], shux3[2][jl_level][i][1])
			lualib:Equip_SetExtProp(player, item_tb[1], a, shux3[1][i][1], 0)
			a = a + 1
			lualib:Equip_SetExtProp(player, item_tb[2], a, shux3[1][i][2], shux3[2][jl_level][i][2])
			lualib:Equip_SetExtProp(player, item_tb[1], a, shux3[1][i][2], 0)
			a = a + 1 
		end
	elseif subType == 11 or subType == 18 or subType == 13 then
		local a = 4
		for i = 1 , 3 do 
			lualib:Equip_SetExtProp(player, item_tb[2], a, shux4[1][i][1], shux4[2][jl_level][1])
			lualib:Equip_SetExtProp(player, item_tb[1], a, shux4[1][i][1], 0)
			a = a + 1 
			lualib:Equip_SetExtProp(player, item_tb[2], a, shux4[1][i][2], shux4[2][jl_level][2])
			lualib:Equip_SetExtProp(player, item_tb[1], a, shux4[1][i][2], 0)
			a = a + 1 
		end
	elseif subType == 10 then
		local a = 4
		for i = 1 , 3 do 
			lualib:Equip_SetExtProp(player, item_tb[2], a, shux5[1][i][1], shux5[2][jl_level][1])
			lualib:Equip_SetExtProp(player, item_tb[1], a, shux5[1][i][1], 0)
			a = a + 1
			lualib:Equip_SetExtProp(player, item_tb[2], a, shux5[1][i][2], shux5[2][jl_level][2])
			lualib:Equip_SetExtProp(player, item_tb[1], a, shux5[1][i][2], 0)
			a = a + 1 
		end
	end

	lualib:Equip_SetRefineLevel(player, item_tb[1], 0)
	lualib:Equip_SetRefineLevel(player, item_tb[2], jl_level)
	lualib:Item_NotifyUpdate(player, item_tb[1])
	lualib:Item_NotifyUpdate(player, item_tb[2])
	lualib:ShowFormWithContent(player, "脚本表单", "WndAddEffect(nil,\"ForgeWnd,ZhuanyWnd,TestWndChild_28\",3020200500,-175,-60,150,1);WndAddEffect(nil,\"ForgeWnd,ZhuanyWnd,atm\",3020200400,-290,-130,150,1);ForgeWnd.Get_EquipUpdate('"..item_tb[1].."','"..item_tb[2].."');ZhuanyWnd.ClearZhuanyMsg();")
	return ""
end

function qh_zhuanyi(player, temp_json)
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if money > tonumber(bind_gold + n_gold)  then
		--lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"金币不足\");")
		return false
	end	
	
	if bind_gold >= money then
		if not lualib:Player_SubGold(player, money, true, "扣绑定金币:转移", "系统") then
			--lualib:ShowFormWithContent(player,"脚本表单","ZhuanyWnd.msg_up(\"金币扣除失败\");")
			return false
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "扣绑定金币:转移", "系统") then
			--lualib:ShowFormWithContent(player,"脚本表单","ZhuanyWnd.msg_up(\"金币扣除失败\");")
			return false
		end
		local jb = money - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "扣金币:转移", "系统") then
			--lualib:ShowFormWithContent(player,"脚本表单","ZhuanyWnd.msg_up(\"金币扣除失败\");")
			return false
		end
	end	
	return true
end