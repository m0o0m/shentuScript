local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("system/Defined_Variables")

local kinds_define = {["ͷ��"] = 1, ["����"] = 2, ["����"] = 3, ["�·�"] = 4, ["����"] = 5, ["����"] = 6, ["��ָ"] = 7,
						["����"] = 8, ["Ь��"] = 9, ["����Ʒ"] = 10, ["�ӻ�"] = 11, ["����"] = 12}

--��ȡĳһ������б�
function Trade_GetItemByType(player, kinds)
	kinds = tonumber(kinds) --��������

	local str = lualib:GetDBStr("Trade_Index"..kinds)
	local tIndex = {} --�������͵�������Ŀ¼
	local tGoods = {} --������߱�
	if str == "" then
		lualib:ShowFormWithContent(player, "�ű���", "DealerBuyList.clrItemList()") --��տͻ�����ʾ�б�
		return ""
	else
		tIndex = json.decode(str)
	end
	for k,v in pairs(tIndex) do
		str = lualib:GetDBStr("Trade_"..k) --ȡ������Ϊk�ĵ��߱�
		if str ~= "" then
			local tJsonItem = json.decode(str)
			for i = 1, #tJsonItem do
				--lualib:SysPromptMsg(player, "��"..i.."������json��= "..tJsonItem[i])
				--һ�����ȡ50������
				if #tGoods > 50 then
					break
				else
					local temp = tJsonItem[i] --������Ϣtable
					local timeLimit = temp["cus"]["i"]["Trade_TimeLimit"]
					local now = lualib:GetAllTime()
					if now < timeLimit then
						--δ����
						temp["Time"] = timeLimit - now
						tGoods[#tGoods + 1] = temp
					end
				end
			end
		end
	end
	lualib:ShowFormWithContent(player, "�ű���", "DealerBuyList.UpdateItemList("..serialize(tGoods)..")")
	return ""
end


--��������
function Trade_SearchItemByStr(player, str)
	if str == "" or str == nil then
		Trade_GetAllItem(player) --��������ʾ���е���
		return ""
	end

	local tIndex = {} --�������͵�������Ŀ¼
	local tGoods = {} --������߱�
	for y,z in pairs(kinds_define) do
		local jsonStr = lualib:GetDBStr("Trade_Index"..z)
		if jsonStr ~= "" then
			tIndex = json.decode(jsonStr)
			for k,v in pairs(tIndex) do
				jsonStr = lualib:GetDBStr("Trade_"..k) --ȡ������Ϊk�ĵ��߱�
				if jsonStr ~= "" then
					local tJsonItem = json.decode(jsonStr)
					for i = 1, #tJsonItem do
						--lualib:SysPromptMsg(player, "��"..i.."������json��= "..tJsonItem[i])
						--һ�����ȡ50������
						if #tGoods > 50 then
							break
						else
							local temp = tJsonItem[i] --������Ϣtable
							local name = lualib:KeyName2Name(k, 4)
							if string.find(name, str) ~= nil then
								local timeLimit = temp["cus"]["i"]["Trade_TimeLimit"]
								local now = lualib:GetAllTime()
								if now < timeLimit then
									--δ����
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
	lualib:ShowFormWithContent(player, "�ű���", "DealerBuyList.UpdateItemList("..serialize(tGoods)..")")
	return ""
end

--������Ʒ
function Trade_GetAllItem(player)
	local tIndex = {} --�������͵�������Ŀ¼
	local tGoods = {} --������߱�
	local index = 1
	for y,z in pairs(kinds_define) do
		local jsonStr = lualib:GetDBStr("Trade_Index"..z)
		if jsonStr ~= "" then
			tIndex = json.decode(jsonStr)
			for k,v in pairs(tIndex) do
				--lualib:SetDBStr("Trade_"..k, "")
				jsonStr = lualib:GetDBStr("Trade_"..k) --ȡ������Ϊk�ĵ��߱�
				if jsonStr ~= "" then
					local tJsonItem = json.decode(jsonStr)
					for i = 1, #tJsonItem do
						--lualib:SysPromptMsg(player, "��"..i.."������json��= "..tJsonItem[i]["n"])
						--һ�����ȡ50������
						if #tGoods > 50 then
							break
						else
							local temp = tJsonItem[i] --������Ϣtable
							local timeLimit = temp["cus"]["i"]["Trade_TimeLimit"]
							local now = lualib:GetAllTime()
							if now < timeLimit then
								--δ����
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
	lualib:ShowFormWithContent(player, "�ű���", "DealerBuyList.UpdateItemList("..serialize(tGoods)..")")
	return ""
end

local function ifSellAll(player, itemGUID, own, forSale)
	if own == forSale then
		--ȫ���ϼ�
		return lualib:Item_Destroy(player, itemGUID, "�����ϼܵ���", player)
	else
		--�����ϼ�
		return lualib:Item_SetAmount(player, itemGUID, own - forSale)
	end
end

--�����ϼ�
function Trade_SellItem(player, itemGUID, amount, price)
	if amount == nil or itemGUID == nil or price == nil then
		--����Ϊ��
		return ""
	end

	amount = tonumber(amount)
	price = tonumber(price)

	if amount < 1 or price < 1 then
		--lualib:SysPromptMsg(player, "�����ͼ۸񲻿�С��1��")
		return ""
	end

	if not lualib:HasItem(player, itemGUID) then
		--lualib:SysPromptMsg(player, "��û�иõ��ߣ�")
		return ""
	end

	local kinds = 0
	local keyName = lualib:KeyName(itemGUID)
	local temp = lualib:Item_DataRow(keyName)

	--�жϵ��������Ƿ�ɳ���
	if temp["Type"] == 1 then
		if temp["SubType"] == 1 then
			kinds = kinds_define["����"]
		elseif temp["SubType"] == 2 then
			kinds = kinds_define["ͷ��"]
		elseif temp["SubType"] == 3 then
			kinds = kinds_define["����"]
		elseif temp["SubType"] == 4 then
			kinds = kinds_define["�·�"]
		elseif temp["SubType"] == 6 then
			kinds = kinds_define["Ь��"]
		elseif temp["SubType"] == 7 then
			kinds = kinds_define["����"]
		elseif temp["SubType"] == 8 then
			kinds = kinds_define["����"]
		elseif temp["SubType"] == 9 then
			kinds = kinds_define["��ָ"]
		elseif temp["SubType"] == 15 then
			kinds = kinds_define["����"]
		else
			lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("�޷��ϼܸ����͵��ߣ�")]])
			return ""
		end
	elseif temp["Type"] == 2 then
		kinds = kinds_define["����Ʒ"]
	elseif temp["Type"] == 4 then
		kinds = kinds_define["����"]
	elseif temp["Type"] == 5 then
		kinds = kinds_define["�ӻ�"]
	else
		lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("�޷��ϼܸ����͵��ߣ�")]])
		return ""
	end

	local item_amount = lualib:Item_GetAmount("", itemGUID)
	if amount > item_amount then
		lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("�ϼ�������������ӵ��������")]])
		return ""
	end

	local tGoods = {} --��ҳ��۵ĵ���
	local tIndex = {} --�������͵�������Ŀ¼
	local tItem = {} --ͬ�������ĵ��߱�

	local str = lualib:GetDBStr("Trade_Item"..player)
	if str ~= "" then
		tGoods = json.decode(str)
		if #tGoods >= 8 then
			lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("���ֻ��ͬʱ�ϼ�8����Ʒ")]])
			return ""
		end
	end

	--�ϼܵ���
	if lualib:Player_SubGold(player, trade_Poundage, false, "�������ϼ�", player) then
		str = lualib:GetDBStr("Trade_Index"..kinds)
		if str ~= "" then
			tIndex = json.decode(str)
		end
		tIndex[keyName] = 1 --����Ŀ¼���keyΪkeyname��Ԫ��
		if lualib:SetDBStrEx("Trade_Index"..kinds, json.encode(tIndex), 6) then
			str = lualib:GetDBStr("Trade_"..keyName)
			if str ~= "" then
				tItem = json.decode(str)
			end
			if #tItem > 50 then
				--����50�� ���ҹ��ڵ���
				tItem = Trade_delExpiredItem(tItem)
			end
			lualib:SetInt(itemGUID, "Trade_TimeLimit", lualib:GetAllTime() + 24*3600) --��¼����ʱ��
			lualib:SetInt(itemGUID, "Trade_price", price) --��¼�۸�
			lualib:SetStr(itemGUID, "Trade_owner", player) --��¼����
			lualib:SetStr(itemGUID, "Trade_GUID", tostring(lualib:GetAllTime())) --��¼Ψһ��ʶ
			lualib:SetStr(itemGUID, "Trade_ownerName", lualib:Name(player)) --��¼�������֣�������Ҳ�����ʱ���ʼ�
			local itemJson = lualib:Item2Json(itemGUID) --���ɵ���JSON��
			if ifSellAll(player, itemGUID, item_amount, amount) then
				local temp = json.decode(itemJson)
				if amount ~= item_amount then
					temp["a"] = amount --û��ȫ���ϼ� �����ϼ�����
				end
				tItem[#tItem + 1] = temp
				tGoods[#tGoods + 1] = {temp, false, false} --json���Ƿ��ѳ��ۡ��Ƿ��ѹ���
				lualib:SetDBStr("Trade_Item"..player, json.encode(tGoods)) --��¼��ҳ��۵���
				lualib:SetDBStrEx("Trade_"..keyName, json.encode(tItem), 6)
				lualib:ShowFormWithContent(player,"�ű���","DealerSellWnd.SetMyGoods("..serialize(tGoods)..")") --ˢ���ϼܵ���
				lualib:ShowFormWithContent(player,"�ű���","DealerSellWnd.ListItem()") --ˢ�±�������
				if 0 == lualib:GetInt(player, "Trade_tip") then
					--��ʾ�ϼܳɹ���ʾ
					lualib:ShowFormWithContent(player,"�ű���","DealerSellWnd.showTipWnd()")
				end
				lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("�ϼܳɹ�")]])
			else
				lualib:SysPromptMsg(player, "�����ϼ�ʧ��")
				return ""
			end
		end
	else
		lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("��Ҳ���")]])
		return ""
	end
	return ""
end

--�ϼܳɹ���ʾ�����޸�
function Trade_tipFlagChange(player)
	lualib:SetInt(player, "Trade_tip", 1)
	return ""
end

--ɾ�����ڵ�����Ϣ
function Trade_delExpiredItem(tItem)
	local length = #tItem
	local tbl = tItem
	for i = 1, length do
		if tItem[i]["cus"]["i"]["Trade_TimeLimit"] < lualib:GetAllTime() then
			local player = tItem[i]["cus"]["s"]["Trade_owner"]
			local tGoods = {} --��ҳ��۵ĵ���
			local str = lualib:GetDBStr("Trade_Item"..player)
			if str ~= "" and str ~= nil then
				tGoods = json.decode(str)
				for j = 1, #tGoods do
					if tGoods[j][1]["cus"]["s"]["Trade_GUID"] == tItem[i]["cus"]["s"]["Trade_GUID"] then
						tGoods[j][3] = true --���ù���
					end
				end
			end
			table.remove(tbl, i)
		end
	end
	return tbl
end

--������ҵ���
function Trade_returnItem(player, param)
	if param == nil then
		return ""
	end

	param = tonumber(param) --�ڼ�������
	local tMyGoods = {} --��ҳ��۵ĵ���
	local str = lualib:GetDBStr("Trade_Item"..player)
	tMyGoods = json.decode(str)

	if tMyGoods[param] == nil then
		return ""
	end

	if tMyGoods[param][2] then
		--��Ʒ�ѳ���
		lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("��Ʒ�ѳ���")]])
		return ""
	end

	local itemGUID = tMyGoods[param][1]["cus"]["s"]["Trade_GUID"]
	local itemID = tMyGoods[param][1]["i"]
	local keyName = lualib:Id2KeyName(itemID, 4)
	str = lualib:GetDBStr("Trade_"..keyName)
	if str == "" then
		--����ͬ����
		return ""
	end
	local tGoods = {} --ͬ�������ĵ��߱�
	tGoods = json.decode(str)
	if 1 <= lualib:GetBagFree(player) then
		local itemJson = tMyGoods[param][1]
		table.remove(tMyGoods, param) --ɾ����ҳ��۵ĵ������
		for i = 1, #tGoods do
			if tGoods[i]["cus"]["s"]["Trade_GUID"] == itemGUID then
				table.remove(tGoods, i) --�ҵ�ͬ����������Ŀ����� ɾ��
				break
			end
		end
		--����
		lualib:SetDBStrEx("Trade_"..keyName, json.encode(tGoods), 6)
		lualib:SetDBStr("Trade_Item"..player, json.encode(tMyGoods))
		lualib:Json2ItemEx(player, json.encode(itemJson), true)
	else
		lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("�����ռ䲻��")]])
		return ""
	end
	--���¿ͻ���
	lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("�ɹ�ȡ�ص���")]])
	lualib:ShowFormWithContent(player,"�ű���","DealerSellWnd.SetMyGoods("..serialize(tMyGoods)..")")
	--���ӵ����ӳٸ��±��� �����ӳٿ��ܻᵼ����Ʒ��ʾ��ȫ
	lualib:DelayCall(player, 100, "Trade_delayUpdateBagList", player)
	return ""
end

function Trade_delayUpdateBagList(player)
	lualib:ShowFormWithContent(player,"�ű���","DealerSellWnd.ListItem()")
end

--������Ҹ��˼��۵����б��ͻ���
function Trade_getPersonalGoods(player)
	local tMyGoods = {} --��ҳ��۵ĵ���
	--lualib:SetDBStr("Trade_Item"..player, "")
	local str = lualib:GetDBStr("Trade_Item"..player)
	if str ~= nil and str ~= "" then
		tMyGoods = json.decode(str)
		for i = 1, #tMyGoods do
			if tMyGoods[i][1]["cus"]["i"]["Trade_TimeLimit"] < lualib:GetAllTime() then
				--�Ƿ����
				tMyGoods[i][3] = true
			end
		end
		lualib:SetDBStr("Trade_Item"..player, json.encode(tMyGoods))
		lualib:ShowFormWithContent(player,"�ű���","DealerSellWnd.SetMyGoods("..serialize(tMyGoods)..")")
	end
	return ""
end

local function compare(a,b)
	return a["cus"]["i"]["Trade_price"] < b["cus"]["i"]["Trade_price"]
end

--����ͬ����������˵�3��������Ϣ
function Trade_getCheapestGoods(player, param)
	if param == nil then
		return ""
	end
	local keyName = ""
	local str = ""
	local tMyGoods = {}
	keyName = tonumber(param)
	if keyName == nil then
		--�ͻ��˵���������ߵ����
		keyName = param
	else
		param = tonumber(param)
		--�ͻ��˵�����ϼܵ��ߵ����
		str = lualib:GetDBStr("Trade_Item"..player)
		tMyGoods = {}
		if str ~= nil and str ~= "" then
			tMyGoods = json.decode(str)
		end
		if tMyGoods[param] == nil then
			--�ͻ��˴�������param���ܱ��޸�
			return ""
		end
		local itemID = tMyGoods[param][1]["i"]
		keyName = lualib:Id2KeyName(itemID, 4)
	end

	str = lualib:GetDBStr("Trade_"..keyName)
	if str == "" then
		--����ͬ����
		lualib:ShowFormWithContent(player,"�ű���","DealerSellWnd.SetCheapestGoods()")
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
			--δ����
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
	lualib:ShowFormWithContent(player,"�ű���","DealerSellWnd.SetCheapestGoods("..serialize(data)..")")
	return ""
end

--�����ϼ�
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
		--�ͻ��˴�������param���ܱ��޸�
		return ""
	end

	if tMyGoods[param][2] then
		--��Ʒ�ѳ���
		lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("��Ʒ�ѳ���")]])
		return ""
	end

	local itemID = tMyGoods[param][1]["i"]
	local keyName = lualib:Id2KeyName(itemID, 4)
	local itemGUID = tMyGoods[param][1]["cus"]["s"]["Trade_GUID"] --Ҫ�޸ĵĵ��ߵ�

	str = lualib:GetDBStr("Trade_"..keyName)
	if str == "" then
		return ""
	end

	local tGoods = {}
	tGoods = json.decode(str)
	for i = 1, #tGoods do
		local item = tGoods[i]
		if item["cus"]["s"]["Trade_GUID"] == itemGUID then
			item["cus"]["i"]["Trade_price"] = price --�޸Ļ����
			tGoods[i] = item
			lualib:SetDBStrEx("Trade_"..keyName, json.encode(tGoods), 6)
			if tMyGoods[param][3] then
				--������� ����Ϊδ����
				tMyGoods[param][3] = false
			end
			tMyGoods[param][1]["cus"]["i"]["Trade_TimeLimit"] = lualib:GetAllTime() + 24*3600 --ˢ�¹���ʱ��
			tMyGoods[param][1]["cus"]["i"]["Trade_price"] = price --�޸ļ۸�
			lualib:SetDBStr("Trade_Item"..player, json.encode(tMyGoods)) --����
			--�ɹ�
			lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("�����ϼܳɹ�")]])
			lualib:ShowFormWithContent(player,"�ű���","DealerSellWnd.SetMyGoods("..serialize(tMyGoods)..")")
			return ""
		end
	end
	--ʧ��
	lualib:SysPromptMsg(player, "�����ϼ�ʧ��")
	return ""
end

--����
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
		--�ͻ��˴�������param���ܱ��޸�
		return ""
	end

	if not tMyGoods[param][2] then
		return ""
	end

	local itemID = tMyGoods[param][1]["i"]
	local keyName = lualib:Id2KeyName(itemID, 4)
	local itemGUID = tMyGoods[param][1]["cus"]["s"]["Trade_GUID"] --Ҫ�޸ĵĵ��ߵ�Ψһ��ʶ

	str = lualib:GetDBStr("Trade_"..keyName)
	if str == "" then
		--lualib:SysPromptMsg(player, "�޴��������Ϣ")
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
			target = tGoods[i] --�ҵ�Ŀ�����
			found = true
			break
		end
	end

	local amount = 0 --��������
	local totalPrice = 0 --��׬Ԫ��
	if found then
		--���ֱ���
		amount = tMyGoods[param][1]["a"] - target["a"]
		totalPrice = tMyGoods[param][1]["cus"]["i"]["Trade_price"] * amount * (1 - trade_TaxRate/100)
		tMyGoods[param][1]["a"] = target["a"]
		tMyGoods[param][2] = false
	else
		--û�ҵ� ˵��ȫ������
		amount = tMyGoods[param][1]["a"]
		totalPrice = tMyGoods[param][1]["cus"]["i"]["Trade_price"] * amount * (1 - trade_TaxRate/100)
		table.remove(tMyGoods, param)
	end

	if lualib:SetDBStr("Trade_Item"..player, json.encode(tMyGoods)) then
		lualib:AddIngot(player, totalPrice, "�������۳���Ʒ", player)
		lualib:ShowFormWithContent(player,"�ű���",[[DealerSellWnd.SetMyGoods(]]..serialize(tMyGoods)..[[);DealerWnd.updateIngot();win_msg_up("���ֳɹ�")]]) 
	end

	return ""
end

--�������
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
	tGoods = json.decode(str) --������ΪkeyName�ļ��۵��߱�
	for i = 1, #tGoods do
		if tGoods[i]["cus"]["s"]["Trade_GUID"] == itemGUID then
			index = i
			found = true
			target = tGoods[i] --�ҵ�Ҫ�����
			break
		end
	end

	if not found then
		lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("��Ʒ�ѱ�����")]])
		return ""
	end

	if player == target["cus"]["s"]["Trade_owner"] then
		lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("���ܹ����Լ����۵���Ʒ")]])
		return ""
	end

	if amount > target["a"] then
		local msg = "������������: ʣ��"..tostring(target["a"])
		lualib:ShowFormWithContent(player,"�ű���","win_msg_up("..serialize(msg)..")")
		return ""
	end

	local totalPrice = amount*target["cus"]["i"]["Trade_price"]
	if not lualib:Player_IsIngotEnough(player, totalPrice, false) then
		lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("Ԫ������")]])
		return ""
	end

	if 1 > lualib:GetBagFree(player) then
		lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("�����ռ䲻��")]])
		return ""
	end

	local sellerGUID = target["cus"]["s"]["Trade_owner"]
	str = lualib:GetDBStr("Trade_Item"..sellerGUID)
	local tSellerGoods = {}
	if str ~= "" then
		tSellerGoods = json.decode(str)
	end
	if lualib:SubIngot(player, totalPrice, "������������Ʒ", player) then
		lualib:ShowFormWithContent(player,"�ű���","DealerWnd.updateIngot()")
		if amount == target["a"] then
			--ȫ�������ɾ���õ�����Ϣ
			table.remove(tGoods, index)
		else
			--���ֱ���
			tGoods[index]["a"] = tGoods[index]["a"] - amount --����ʣ������
		end

		for i = 1, #tSellerGoods do
			if tSellerGoods[i][1]["cus"]["s"]["Trade_GUID"] == itemGUID then
				--���Ҽ��۱������ѳ���
				tSellerGoods[i][2] = true
				lualib:SetDBStr("Trade_Item"..sellerGUID, json.encode(tSellerGoods))
				break
			end
		end

		if lualib:SetDBStrEx("Trade_"..keyName, json.encode(tGoods), 6) then
			target["a"] = amount --������ҵĵ���
			if "" == lualib:Json2ItemEx(player, json.encode(target), true) then
				--lualib:SysPromptMsg(player, "Json2Item����")
			else
				--lualib:SysPromptMsg(player, "Json2Item�ɹ�")
				lualib:ShowFormWithContent(player,"�ű���",[[win_msg_up("����ɹ�")]])
				--���ʼ�������
				lualib:Mail("������", target["cus"]["s"]["Trade_ownerName"], "���ڽ��������۵� "..lualib:KeyName2Name(keyName, 4).."��"..amount.." ���۳������"..totalPrice.."Ԫ���룬�鿴�����С�", 0, 0, {})
				if lualib:Player_IsOnline(sellerGUID) then
					--����������߸���ʾ
					lualib:SysPromptMsg(sellerGUID, "���ڽ��������۵���Ʒ���۳�����鿴�����С�")
				end
				lualib:ShowFormWithContent(player,"�ű���","DealerBuyList.BuySuccess("..amount..")") --��������
			end
		end
	end
	return ""
end