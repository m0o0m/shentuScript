local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("system/Defined_Variables")

local kinds_define = {["头盔"] = 1, ["项链"] = 2, ["武器"] = 3, ["衣服"] = 4, ["护腕"] = 5, ["护盾"] = 6, ["戒指"] = 7,
						["腰带"] = 8, ["鞋子"] = 9, ["消耗品"] = 10, ["杂货"] = 11, ["材料"] = 12}

--获取某一类道具列表
function Trade_GetItemByType(player, kinds)
	kinds = tonumber(kinds) --哪种类型

	local str = lualib:GetDBStr("Trade_Index"..kinds)
	local tIndex = {} --具体类型道具种类目录
	local tGoods = {} --具体道具表
	if str == "" then
		lualib:ShowFormWithContent(player, "脚本表单", "DealerBuyList.clrItemList()") --清空客户端显示列表
		return ""
	else
		tIndex = json.decode(str)
	end
	for k,v in pairs(tIndex) do
		str = lualib:GetDBStr("Trade_"..k) --取索引名为k的道具表
		if str ~= "" then
			local tJsonItem = json.decode(str)
			for i = 1, #tJsonItem do
				--lualib:SysPromptMsg(player, "第"..i.."个道具json串= "..tJsonItem[i])
				--一次最多取50个数据
				if #tGoods > 50 then
					break
				else
					local temp = tJsonItem[i] --道具信息table
					local timeLimit = temp["cus"]["i"]["Trade_TimeLimit"]
					local now = lualib:GetAllTime()
					if now < timeLimit then
						--未过期
						temp["Time"] = timeLimit - now
						tGoods[#tGoods + 1] = temp
					end
				end
			end
		end
	end
	lualib:ShowFormWithContent(player, "脚本表单", "DealerBuyList.UpdateItemList("..serialize(tGoods)..")")
	return ""
end


--搜索道具
function Trade_SearchItemByStr(player, str)
	if str == "" or str == nil then
		Trade_GetAllItem(player) --无输入显示所有道具
		return ""
	end

	local tIndex = {} --具体类型道具种类目录
	local tGoods = {} --具体道具表
	for y,z in pairs(kinds_define) do
		local jsonStr = lualib:GetDBStr("Trade_Index"..z)
		if jsonStr ~= "" then
			tIndex = json.decode(jsonStr)
			for k,v in pairs(tIndex) do
				jsonStr = lualib:GetDBStr("Trade_"..k) --取索引名为k的道具表
				if jsonStr ~= "" then
					local tJsonItem = json.decode(jsonStr)
					for i = 1, #tJsonItem do
						--lualib:SysPromptMsg(player, "第"..i.."个道具json串= "..tJsonItem[i])
						--一次最多取50个数据
						if #tGoods > 50 then
							break
						else
							local temp = tJsonItem[i] --道具信息table
							local name = lualib:KeyName2Name(k, 4)
							if string.find(name, str) ~= nil then
								local timeLimit = temp["cus"]["i"]["Trade_TimeLimit"]
								local now = lualib:GetAllTime()
								if now < timeLimit then
									--未过期
									temp["Time"] = timeLimit - now
									tGoods[#tGoods + 1] = temp
								end
							end
						end
					end
				end
			end
		end
	end
	lualib:ShowFormWithContent(player, "脚本表单", "DealerBuyList.UpdateItemList("..serialize(tGoods)..")")
	return ""
end

--所有商品
function Trade_GetAllItem(player)
	local tIndex = {} --具体类型道具种类目录
	local tGoods = {} --具体道具表
	local index = 1
	for y,z in pairs(kinds_define) do
		local jsonStr = lualib:GetDBStr("Trade_Index"..z)
		if jsonStr ~= "" then
			tIndex = json.decode(jsonStr)
			for k,v in pairs(tIndex) do
				--lualib:SetDBStr("Trade_"..k, "")
				jsonStr = lualib:GetDBStr("Trade_"..k) --取索引名为k的道具表
				if jsonStr ~= "" then
					local tJsonItem = json.decode(jsonStr)
					for i = 1, #tJsonItem do
						--lualib:SysPromptMsg(player, "第"..i.."个道具json串= "..tJsonItem[i]["n"])
						--一次最多取50个数据
						if #tGoods > 50 then
							break
						else
							local temp = tJsonItem[i] --道具信息table
							local timeLimit = temp["cus"]["i"]["Trade_TimeLimit"]
							local now = lualib:GetAllTime()
							if now < timeLimit then
								--未过期
								temp["Time"] = timeLimit - now
								tGoods[#tGoods + 1] = temp
								index = index + 1
							end
						end
					end
				end
			end
		end
	end
	lualib:ShowFormWithContent(player, "脚本表单", "DealerBuyList.UpdateItemList("..serialize(tGoods)..")")
	return ""
end

local function ifSellAll(player, itemGUID, own, forSale)
	if own == forSale then
		--全部上架
		return lualib:Item_Destroy(player, itemGUID, "寄售上架道具", player)
	else
		--部分上架
		return lualib:Item_SetAmount(player, itemGUID, own - forSale)
	end
end

--道具上架
function Trade_SellItem(player, itemGUID, amount, price)
	if amount == nil or itemGUID == nil or price == nil then
		--数据为空
		return ""
	end

	amount = tonumber(amount)
	price = tonumber(price)

	if amount < 1 or price < 1 then
		--lualib:SysPromptMsg(player, "数量和价格不可小于1！")
		return ""
	end

	if not lualib:HasItem(player, itemGUID) then
		--lualib:SysPromptMsg(player, "你没有该道具！")
		return ""
	end

	local kinds = 0
	local keyName = lualib:KeyName(itemGUID)
	local temp = lualib:Item_DataRow(keyName)

	--判断道具类型是否可出售
	if temp["Type"] == 1 then
		if temp["SubType"] == 1 then
			kinds = kinds_define["武器"]
		elseif temp["SubType"] == 2 then
			kinds = kinds_define["头盔"]
		elseif temp["SubType"] == 3 then
			kinds = kinds_define["护腕"]
		elseif temp["SubType"] == 4 then
			kinds = kinds_define["衣服"]
		elseif temp["SubType"] == 6 then
			kinds = kinds_define["鞋子"]
		elseif temp["SubType"] == 7 then
			kinds = kinds_define["腰带"]
		elseif temp["SubType"] == 8 then
			kinds = kinds_define["项链"]
		elseif temp["SubType"] == 9 then
			kinds = kinds_define["戒指"]
		elseif temp["SubType"] == 15 then
			kinds = kinds_define["盾牌"]
		else
			lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("无法上架该类型道具！")]])
			return ""
		end
	elseif temp["Type"] == 2 then
		kinds = kinds_define["消耗品"]
	elseif temp["Type"] == 4 then
		kinds = kinds_define["材料"]
	elseif temp["Type"] == 5 then
		kinds = kinds_define["杂货"]
	else
		lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("无法上架该类型道具！")]])
		return ""
	end

	local item_amount = lualib:Item_GetAmount("", itemGUID)
	if amount > item_amount then
		lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("上架数量超过道具拥有数量！")]])
		return ""
	end

	local tGoods = {} --玩家出售的道具
	local tIndex = {} --具体类型道具种类目录
	local tItem = {} --同索引名的道具表

	local str = lualib:GetDBStr("Trade_Item"..player)
	if str ~= "" then
		tGoods = json.decode(str)
		if #tGoods >= 8 then
			lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("最多只能同时上架8个物品")]])
			return ""
		end
	end

	--上架道具
	if lualib:Player_SubGold(player, trade_Poundage, false, "交易行上架", player) then
		str = lualib:GetDBStr("Trade_Index"..kinds)
		if str ~= "" then
			tIndex = json.decode(str)
		end
		tIndex[keyName] = 1 --类型目录添加key为keyname的元素
		if lualib:SetDBStrEx("Trade_Index"..kinds, json.encode(tIndex), 6) then
			str = lualib:GetDBStr("Trade_"..keyName)
			if str ~= "" then
				tItem = json.decode(str)
			end
			if #tItem > 50 then
				--超过50个 查找过期道具
				tItem = Trade_delExpiredItem(tItem)
			end
			lualib:SetInt(itemGUID, "Trade_TimeLimit", lualib:GetAllTime() + 24*3600) --记录过期时间
			lualib:SetInt(itemGUID, "Trade_price", price) --记录价格
			lualib:SetStr(itemGUID, "Trade_owner", player) --记录卖家
			lualib:SetStr(itemGUID, "Trade_GUID", tostring(lualib:GetAllTime())) --记录唯一标识
			lualib:SetStr(itemGUID, "Trade_ownerName", lualib:Name(player)) --记录卖家名字，用于玩家不在线时发邮件
			local itemJson = lualib:Item2Json(itemGUID) --生成道具JSON串
			if ifSellAll(player, itemGUID, item_amount, amount) then
				local temp = json.decode(itemJson)
				if amount ~= item_amount then
					temp["a"] = amount --没有全部上架 修正上架数量
				end
				tItem[#tItem + 1] = temp
				tGoods[#tGoods + 1] = {temp, false, false} --json、是否已出售、是否已过期
				lualib:SetDBStr("Trade_Item"..player, json.encode(tGoods)) --记录玩家出售道具
				lualib:SetDBStrEx("Trade_"..keyName, json.encode(tItem), 6)
				lualib:ShowFormWithContent(player,"脚本表单","DealerSellWnd.SetMyGoods("..serialize(tGoods)..")") --刷新上架道具
				lualib:ShowFormWithContent(player,"脚本表单","DealerSellWnd.ListItem()") --刷新背包道具
				if 0 == lualib:GetInt(player, "Trade_tip") then
					--显示上架成功提示
					lualib:ShowFormWithContent(player,"脚本表单","DealerSellWnd.showTipWnd()")
				end
				lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("上架成功")]])
			else
				lualib:SysPromptMsg(player, "道具上架失败")
				return ""
			end
		end
	else
		lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("金币不足")]])
		return ""
	end
	return ""
end

--上架成功提示变量修改
function Trade_tipFlagChange(player)
	lualib:SetInt(player, "Trade_tip", 1)
	return ""
end

--删除过期道具信息
function Trade_delExpiredItem(tItem)
	local length = #tItem
	local tbl = tItem
	for i = 1, length do
		if tItem[i]["cus"]["i"]["Trade_TimeLimit"] < lualib:GetAllTime() then
			local player = tItem[i]["cus"]["s"]["Trade_owner"]
			local tGoods = {} --玩家出售的道具
			local str = lualib:GetDBStr("Trade_Item"..player)
			if str ~= "" and str ~= nil then
				tGoods = json.decode(str)
				for j = 1, #tGoods do
					if tGoods[j][1]["cus"]["s"]["Trade_GUID"] == tItem[i]["cus"]["s"]["Trade_GUID"] then
						tGoods[j][3] = true --设置过期
					end
				end
			end
			table.remove(tbl, i)
		end
	end
	return tbl
end

--返还玩家道具
function Trade_returnItem(player, param)
	if param == nil then
		return ""
	end

	param = tonumber(param) --第几个道具
	local tMyGoods = {} --玩家出售的道具
	local str = lualib:GetDBStr("Trade_Item"..player)
	tMyGoods = json.decode(str)

	if tMyGoods[param] == nil then
		return ""
	end

	if tMyGoods[param][2] then
		--物品已出售
		lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("物品已出售")]])
		return ""
	end

	local itemGUID = tMyGoods[param][1]["cus"]["s"]["Trade_GUID"]
	local itemID = tMyGoods[param][1]["i"]
	local keyName = lualib:Id2KeyName(itemID, 4)
	str = lualib:GetDBStr("Trade_"..keyName)
	if str == "" then
		--无相同道具
		return ""
	end
	local tGoods = {} --同索引名的道具表
	tGoods = json.decode(str)
	if 1 <= lualib:GetBagFree(player) then
		local itemJson = tMyGoods[param][1]
		table.remove(tMyGoods, param) --删除玩家出售的道具里的
		for i = 1, #tGoods do
			if tGoods[i]["cus"]["s"]["Trade_GUID"] == itemGUID then
				table.remove(tGoods, i) --找到同索引名的中目标道具 删除
				break
			end
		end
		--保存
		lualib:SetDBStrEx("Trade_"..keyName, json.encode(tGoods), 6)
		lualib:SetDBStr("Trade_Item"..player, json.encode(tMyGoods))
		lualib:Json2ItemEx(player, json.encode(itemJson), true)
	else
		lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("包裹空间不足")]])
		return ""
	end
	--更新客户端
	lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("成功取回道具")]])
	lualib:ShowFormWithContent(player,"脚本表单","DealerSellWnd.SetMyGoods("..serialize(tMyGoods)..")")
	--增加道具延迟更新背包 不加延迟可能会导致物品显示不全
	lualib:DelayCall(player, 100, "Trade_delayUpdateBagList", player)
	return ""
end

function Trade_delayUpdateBagList(player)
	lualib:ShowFormWithContent(player,"脚本表单","DealerSellWnd.ListItem()")
end

--发送玩家个人寄售道具列表到客户端
function Trade_getPersonalGoods(player)
	local tMyGoods = {} --玩家出售的道具
	--lualib:SetDBStr("Trade_Item"..player, "")
	local str = lualib:GetDBStr("Trade_Item"..player)
	if str ~= nil and str ~= "" then
		tMyGoods = json.decode(str)
		for i = 1, #tMyGoods do
			if tMyGoods[i][1]["cus"]["i"]["Trade_TimeLimit"] < lualib:GetAllTime() then
				--是否过期
				tMyGoods[i][3] = true
			end
		end
		lualib:SetDBStr("Trade_Item"..player, json.encode(tMyGoods))
		lualib:ShowFormWithContent(player,"脚本表单","DealerSellWnd.SetMyGoods("..serialize(tMyGoods)..")")
	end
	return ""
end

local function compare(a,b)
	return a["cus"]["i"]["Trade_price"] < b["cus"]["i"]["Trade_price"]
end

--查找同索引名最便宜的3个道具信息
function Trade_getCheapestGoods(player, param)
	if param == nil then
		return ""
	end
	local keyName = ""
	local str = ""
	local tMyGoods = {}
	keyName = tonumber(param)
	if keyName == nil then
		--客户端点击包裹道具的情况
		keyName = param
	else
		param = tonumber(param)
		--客户端点击已上架道具的情况
		str = lualib:GetDBStr("Trade_Item"..player)
		tMyGoods = {}
		if str ~= nil and str ~= "" then
			tMyGoods = json.decode(str)
		end
		if tMyGoods[param] == nil then
			--客户端传过来的param可能被修改
			return ""
		end
		local itemID = tMyGoods[param][1]["i"]
		keyName = lualib:Id2KeyName(itemID, 4)
	end

	str = lualib:GetDBStr("Trade_"..keyName)
	if str == "" then
		--无相同道具
		lualib:ShowFormWithContent(player,"脚本表单","DealerSellWnd.SetCheapestGoods()")
		return ""
	end

	local tGoods = {}
	local temp = {}
	local data = {}
	temp = json.decode(str)
	for i = 1, #temp do
		local timeLimit = temp[i]["cus"]["i"]["Trade_TimeLimit"]
		local now = lualib:GetAllTime()
		if now < timeLimit then
			--未过期
			temp[i]["Time"] = timeLimit - now
			tGoods[#tGoods + 1] = temp[i]
		end
	end
	table.sort(tGoods, compare)
	if #tGoods > 3 then
		data = {tGoods[1], tGoods[2], tGoods[3]}
	else
		data = tGoods
	end
	lualib:ShowFormWithContent(player,"脚本表单","DealerSellWnd.SetCheapestGoods("..serialize(data)..")")
	return ""
end

--重新上架
function Trade_reStore(player, param, price)
	if param == nil or price == nil then
		return ""
	end

	price = tonumber(price)
	param = tonumber(param)

	if price < 1 then
		return ""
	end

	local str = lualib:GetDBStr("Trade_Item"..player)
	local tMyGoods = {}

	if str ~= nil then
		tMyGoods = json.decode(str)
	end

	if tMyGoods[param] == nil then
		--客户端传过来的param可能被修改
		return ""
	end

	if tMyGoods[param][2] then
		--物品已出售
		lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("物品已出售")]])
		return ""
	end

	local itemID = tMyGoods[param][1]["i"]
	local keyName = lualib:Id2KeyName(itemID, 4)
	local itemGUID = tMyGoods[param][1]["cus"]["s"]["Trade_GUID"] --要修改的道具的

	str = lualib:GetDBStr("Trade_"..keyName)
	if str == "" then
		return ""
	end

	local tGoods = {}
	tGoods = json.decode(str)
	for i = 1, #tGoods do
		local item = tGoods[i]
		if item["cus"]["s"]["Trade_GUID"] == itemGUID then
			item["cus"]["i"]["Trade_price"] = price --修改货物表
			tGoods[i] = item
			lualib:SetDBStrEx("Trade_"..keyName, json.encode(tGoods), 6)
			if tMyGoods[param][3] then
				--如果过期 设置为未过期
				tMyGoods[param][3] = false
			end
			tMyGoods[param][1]["cus"]["i"]["Trade_TimeLimit"] = lualib:GetAllTime() + 24*3600 --刷新过期时间
			tMyGoods[param][1]["cus"]["i"]["Trade_price"] = price --修改价格
			lualib:SetDBStr("Trade_Item"..player, json.encode(tMyGoods)) --保存
			--成功
			lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("重新上架成功")]])
			lualib:ShowFormWithContent(player,"脚本表单","DealerSellWnd.SetMyGoods("..serialize(tMyGoods)..")")
			return ""
		end
	end
	--失败
	lualib:SysPromptMsg(player, "重新上架失败")
	return ""
end

--提现
function Trade_Withdrawals(player, param)
	if param == nil then
		return ""
	end
	param = tonumber(param)
	local str = lualib:GetDBStr("Trade_Item"..player)
	local tMyGoods = {}

	if str ~= nil then
		tMyGoods = json.decode(str)
	end

	if tMyGoods[param] == nil then
		--客户端传过来的param可能被修改
		return ""
	end

	if not tMyGoods[param][2] then
		return ""
	end

	local itemID = tMyGoods[param][1]["i"]
	local keyName = lualib:Id2KeyName(itemID, 4)
	local itemGUID = tMyGoods[param][1]["cus"]["s"]["Trade_GUID"] --要修改的道具的唯一标识

	str = lualib:GetDBStr("Trade_"..keyName)
	if str == "" then
		--lualib:SysPromptMsg(player, "无此类道具信息")
		return ""
	end

	local index = 0
	local tGoods = {}
	local target= {}
	tGoods = json.decode(str)
	local found = false
	for i = 1, #tGoods do
		if tGoods[i]["cus"]["s"]["Trade_GUID"] == itemGUID then
			index = i
			target = tGoods[i] --找到目标道具
			found = true
			break
		end
	end

	local amount = 0 --购买数量
	local totalPrice = 0 --所赚元宝
	if found then
		--部分被买
		amount = tMyGoods[param][1]["a"] - target["a"]
		totalPrice = tMyGoods[param][1]["cus"]["i"]["Trade_price"] * amount * (1 - trade_TaxRate/100)
		tMyGoods[param][1]["a"] = target["a"]
		tMyGoods[param][2] = false
	else
		--没找到 说明全部被买
		amount = tMyGoods[param][1]["a"]
		totalPrice = tMyGoods[param][1]["cus"]["i"]["Trade_price"] * amount * (1 - trade_TaxRate/100)
		table.remove(tMyGoods, param)
	end

	if lualib:SetDBStr("Trade_Item"..player, json.encode(tMyGoods)) then
		lualib:AddIngot(player, totalPrice, "交易行售出物品", player)
		lualib:ShowFormWithContent(player,"脚本表单",[[DealerSellWnd.SetMyGoods(]]..serialize(tMyGoods)..[[);DealerWnd.updateIngot();win_msg_up("提现成功")]]) 
	end

	return ""
end

--购买道具
function Trade_buyItem(player, itemID, itemGUID, amount)
	if itemID == nil or itemGUID == nil or amount == nil then
		return ""
	end

	itemID = tonumber(itemID)
	amount = tonumber(amount)

	local keyName = lualib:Id2KeyName(itemID, 4)
	local str = lualib:GetDBStr("Trade_"..keyName)
	if str == "" then
		return ""
	end

	local tGoods = {}
	local target = {}
	local index = 0

	local found = false
	tGoods = json.decode(str) --索引名为keyName的寄售道具表
	for i = 1, #tGoods do
		if tGoods[i]["cus"]["s"]["Trade_GUID"] == itemGUID then
			index = i
			found = true
			target = tGoods[i] --找到要买道具
			break
		end
	end

	if not found then
		lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("物品已被购买")]])
		return ""
	end

	if player == target["cus"]["s"]["Trade_owner"] then
		lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("不能购买自己出售的物品")]])
		return ""
	end

	if amount > target["a"] then
		local msg = "道具数量错误: 剩余"..tostring(target["a"])
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up("..serialize(msg)..")")
		return ""
	end

	local totalPrice = amount*target["cus"]["i"]["Trade_price"]
	if not lualib:Player_IsIngotEnough(player, totalPrice, false) then
		lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("元宝不足")]])
		return ""
	end

	if 1 > lualib:GetBagFree(player) then
		lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("包裹空间不足")]])
		return ""
	end

	local sellerGUID = target["cus"]["s"]["Trade_owner"]
	str = lualib:GetDBStr("Trade_Item"..sellerGUID)
	local tSellerGoods = {}
	if str ~= "" then
		tSellerGoods = json.decode(str)
	end
	if lualib:SubIngot(player, totalPrice, "交易所购买物品", player) then
		lualib:ShowFormWithContent(player,"脚本表单","DealerWnd.updateIngot()")
		if amount == target["a"] then
			--全部买表中删除该道具信息
			table.remove(tGoods, index)
		else
			--部分被买
			tGoods[index]["a"] = tGoods[index]["a"] - amount --更改剩余数量
		end

		for i = 1, #tSellerGoods do
			if tSellerGoods[i][1]["cus"]["s"]["Trade_GUID"] == itemGUID then
				--卖家寄售表设置已出售
				tSellerGoods[i][2] = true
				lualib:SetDBStr("Trade_Item"..sellerGUID, json.encode(tSellerGoods))
				break
			end
		end

		if lualib:SetDBStrEx("Trade_"..keyName, json.encode(tGoods), 6) then
			target["a"] = amount --给予玩家的道具
			if "" == lualib:Json2ItemEx(player, json.encode(target), true) then
				--lualib:SysPromptMsg(player, "Json2Item出错")
			else
				--lualib:SysPromptMsg(player, "Json2Item成功")
				lualib:ShowFormWithContent(player,"脚本表单",[[win_msg_up("购买成功")]])
				--发邮件给卖家
				lualib:Mail("交易行", target["cus"]["s"]["Trade_ownerName"], "您在交易所寄售的 "..lualib:KeyName2Name(keyName, 4).."×"..amount.." 已售出，获得"..totalPrice.."元宝请，查看交易行。", 0, 0, {})
				if lualib:Player_IsOnline(sellerGUID) then
					--如果卖家在线给提示
					lualib:SysPromptMsg(sellerGUID, "您在交易所寄售的物品已售出，请查看交易行。")
				end
				lualib:ShowFormWithContent(player,"脚本表单","DealerBuyList.BuySuccess("..amount..")") --购买数量
			end
		end
	end
	return ""
end