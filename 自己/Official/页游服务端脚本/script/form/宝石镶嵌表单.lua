local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

local crystal_tab = 
{
	--�ȱ�ʯ �﹥ 
	{
		{5,10},
		{10,30},
		{15,50},
		{20,80},
		{25,110},
		{30,150},
		{35,200},
		{40,260},
		{45,330},
		{50,420},
		{55,500},
		{60,600}
	},
	--�ϱ�ʯ ���� 
	{
		{5,10},
		{10,30},
		{15,50},
		{20,80},
		{25,110},
		{30,150},
		{35,200},
		{40,260},
		{45,330},
		{50,420},
		{55,500},
		{60,600}
	},
	--�̱�ʯ ���� 
	{
		{5,10},
		{10,30},
		{15,50},
		{20,80},
		{25,110},
		{30,150},
		{35,200},
		{40,260},
		{45,330},
		{50,420},
		{55,500},
		{60,600}
	},
	--����ʯ ���
	{
		{4,8},
		{8,24},
		{12,40},
		{16,64},
		{20,88},
		{24,120},
		{28,160},
		{32,208},
		{36,264},
		{40,336},
		{44,400},
		{48,480}
	},
	--����ʯ ħ��
	{
		{3,6},
		{6,18},
		{9,30},
		{12,48},
		{15,66},
		{18,90},
		{21,120},
		{24,156},
		{27,198},
		{30,252},
		{33,300},
		{36,360}
	},
	--�챦ʯ ����
	{
		25,75,125,200,275,375,500,650,825,1050,1250,1500
	},
}

local takeOff_money_tb = {10000, 20000, 30000, 100000, 200000, 300000, 400000, 500000, 600000, 700000, 900000, 1100000}

function loadEquipHoles(player, guid)
	local level = lualib:Item_GetLevel(guid)
	local holesTb = {}
	for i = 1, 4 do
		local hole = lualib:GetStr(guid, "EquipHole" .. i)
		--hole��״̬��0Ϊ�����ã�1Ϊ�����⣬2Ϊ�����⣬����Ϊ��ʯ��KeyNam
		--60��װ����������Ĭ��������ģ�����ǰ����������Ϊ2
		if hole == "" then
			break
		end
		holesTb[i] = hole
	end
	
	local stregthLevel = lualib:Equip_GetRefineLevel(player, guid)
	--local enableHolesNum = math.floor(tonumber(stregthLevel)/3)
	local enableHolesNum = 4
	lualib:Item_NotifyUpdate(player, guid)
	lualib:ShowFormWithContent(player, "�ű���", "InlayCrystal.initHoles(" .. serialize(holesTb) .. "," .. enableHolesNum .. ");")
	return ""        
end

function inlayStone(player, equipGuid, stoneGuidTb)
	local equipmentIsEquiped = false;
	for i = 1, 17 do 
		local Guid = lualib:Player_GetItemGuid(player,  i) --��ȡװ��λ����ƷGUID
		if Guid ~= "" then
			if Guid == equipGuid then 
				equipmentIsEquiped = true;
				break;
			end
		end
	end
	
	local tb = deserialize(stoneGuidTb)
	local stoneNameTb = {}
	for i = 1, #tb do
		if tb[i] == "" or tb[i] == nil then
			stoneNameTb[i] = ""
		else	
			stoneNameTb[i] = lualib:KeyName(tb[i])
		end
	end
	
	local holesTb = {}
	for i = 1, 4 do
		holesTb[i] = lualib:GetStr(equipGuid, "EquipHole" .. i)
		if not (holesTb[i] == "" or holesTb[i] == "0" or holesTb[i] == "1" or holesTb[i] == "2") then
			stoneNameTb[i] = holesTb[i]
		end
	end
	
	--����
	for i = 1, 3 do
		for j = i + 1, 4 do
			if stoneNameTb[i] ~= "" and stoneNameTb[j] ~= "" then
				local index1 = string.find(stoneNameTb[i], "��")
				local newStr1 = string.sub(stoneNameTb[i], index1, string.len(stoneNameTb[i]))
			
				local index2 = string.find(stoneNameTb[j], "��")
				local newStr2 = string.sub(stoneNameTb[j], index2, string.len(stoneNameTb[j]))
			
				if newStr1 == newStr2 then
					lualib:ShowFormWithContent(player, "�ű���", "InlayCrystal.attentionMsg(2,\"һ��װ��ֻ����Ƕһ��ͬ����ı�ʯ\");")
					return ""
				end
			end
		end
	end
	
	local ATT = 
	{
		["a1"] = {0,0},--�﹥(���ޣ�����)
		["a2"] = {0,0},--ħ��
		["a3"] = {0,0},--����
		["a4"] = {0,0},--���
		["a5"] = {0,0},--ħ��
		["a6"] = {0,0},--����
	}
	
	for i = 1, 4 do
		local hole = holesTb[i]
		if hole == "2" and tb[i] ~= "" then
			local keyname = lualib:Name(tb[i])
			if not lualib:DelItem(player, keyname,1,2, "��ʯ��Ƕ����", player) then 
				lualib:ShowFormWithContent(player, "�ű���", "InlayCrystal.attentionMsg(2,\"û�������ʯ\");")
				return ""
			end
			local keyName = stoneNameTb[i]
			if lualib:SetStr(equipGuid, "EquipHole" .. i, keyName) then
				local index = string.find(keyName, "��")
				local stoneType = string.sub(keyName, index + 2, index + 5)
				local level = tonumber(string.sub(keyName, 1, index - 1))
				local a = 0
				local propertyTb = {}
				local propertyType = {}
				if stoneType == "�﹥" then
					a = 30
					propertyTb = crystal_tab[1][level] 
					propertyType[1] = 11
					propertyType[2] = 10
					ATT["a1"] = propertyTb
				elseif stoneType == "ħ��" then
					a = 32
					propertyTb = crystal_tab[2][level] 
					propertyType[1] = 13
					propertyType[2] = 12
					ATT["a2"] = propertyTb
				elseif stoneType == "����" then
					a = 34
					propertyTb = crystal_tab[3][level] 
					propertyType[1] = 15
					propertyType[2] = 14
					ATT["a3"] = propertyTb
				elseif stoneType == "���" then
					a = 36
					propertyTb = crystal_tab[4][level] 
					propertyType[1] = 7
					propertyType[2] = 6
					ATT["a4"] = propertyTb
				elseif stoneType == "ħ��" then
					a = 38
					propertyTb = crystal_tab[5][level] 
					propertyType[1] = 9
					propertyType[2] = 8
					ATT["a5"] = propertyTb
				elseif stoneType == "����" then
					a = 40
					propertyTb = crystal_tab[6][level] 
					propertyType[1] = 3
					ATT["a6"][1] = propertyTb
				end
				
				
				if a ~= 40 then
					lualib:SetDynamicAttr(equipGuid, a, propertyType[1], propertyTb[1])
					lualib:SetDynamicAttr(equipGuid, a + 1, propertyType[2], propertyTb[2])	
				else
					lualib:SetDynamicAttr(equipGuid, a, propertyType[1], propertyTb)
				end
				lualib:Item_NotifyUpdate(player, equipGuid) 
				
				lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"CrystalSystem,InlayCrystal\",3006600000,74,-27,200,1);")
				lualib:ShowFormWithContent(player, "�ű���", "InlayCrystal.attentionMsg(2,\"��Ƕ�ɹ�\");")
			end
		end
	end
	if equipmentIsEquiped then 
		if not (ATT["a1"][1] <= 0 and ATT["a1"][2] <= 0 and ATT["a2"][1] <= 0 and ATT["a2"][2] <= 0 and ATT["a3"][1] <= 0 and ATT["a3"][2] <= 0 and ATT["a4"][1] <= 0 and ATT["a4"][2] <= 0 and ATT["a5"][1] <= 0 and ATT["a5"][2] <= 0 and ATT["a6"][1] <= 0) then	
			local tab = ""
			for i=1,6 do
				tab = tab .. i .. ","
				tab = tab .. ATT["a"..i][1] .. ","
				if i == 6 then
					tab = tab .. ATT["a"..i][1]
				else
					tab = tab .. ATT["a"..i][2] .. "#"
				end
			end
			lualib:ShowFormWithContent(player, "���Ըı��", tab)
		end
	end
	loadEquipHoles(player, equipGuid)
	return ""
end

function unsealHole(player, equipGuid, holeNum)
	local hole = lualib:GetStr(equipGuid, "EquipHole" .. holeNum)
	if hole == "1" then
		local tb = lualib:BagItemList(player, true, false, false)
		if #tb > 0 then
			local key = ""
			for i = 1, #tb do
				key = lualib:KeyName(tb[i])
				if key == "�Ʒ�ӡ" then
					local Amount = lualib:Item_GetAmount(player, tb[i])
					if lualib:Item_SetAmount(player, tb[i], Amount - 1) then
					--if lualib:Item_Destroy(player, tb[i], "��ʯ�׽����ӡ", player) then
						lualib:SetStr(equipGuid, "EquipHole" .. holeNum, "2")
						lualib:ShowFormWithContent(player, "�ű���", "InlayCrystal.unsealHole(" .. holeNum .. ");InlayCrystal.attentionMsg(4,\"���ɹ�\");")
						lualib:Item_NotifyUpdate(player, equipGuid)
						return ""
					end
				end
			end			
		end
	end
	lualib:ShowFormWithContent(player, "�ű���", "InlayCrystal.attentionMsg(4,\"ȱ���Ʒ�ӡ\");")
	return ""
end

function getSubGold(player, equipGuid, indexNum)
	if tonumber(indexNum) ~= 0 then
		local keyName = lualib:GetStr(equipGuid, "EquipHole" .. indexNum)
		if keyName ~= "0" and keyName ~= "1" and keyName ~= "2" then
			local index = string.find(keyName, "��")
			local stoneType = string.sub(keyName, index + 2, index + 5)
			local level = tonumber(string.sub(keyName, 1, math.ceil(index/2)))
					
			local costMoney = takeOff_money_tb[level]
			lualib:ShowFormWithContent(player, "�ű���", "InlayCrystal.takeOffNeedGold(" .. costMoney .. ");")
		end
	end
	return ""
end

function stoneTakeOff(player, equipGuid, indexNum)
	if tonumber(indexNum) ~= 0 then
		local keyName = lualib:GetStr(equipGuid, "EquipHole" .. indexNum)
		if keyName ~= "0" and keyName ~= "1" and keyName ~= "2" then
			local free = lualib:BagFree(player, true, false, false)
			if free > 0 then
				local index = string.find(keyName, "��")
				local stoneType = string.sub(keyName, index + 2, index + 5)
				local level = tonumber(string.sub(keyName, 1, math.ceil(index/2)))
					
				local costMoney = takeOff_money_tb[level]
				local bindGold = tonumber(lualib:GetBindGold(player))
				local gold = tonumber(lualib:GetGold(player))
				
				if costMoney <= bindGold + gold then
					lualib:SubBindGold(player, bindGold, "ժ����ʯ:���ȿ۳����", player)
					if costMoney > bindGold then
						costMoney = costMoney - bindGold
						lualib:SubGold(player, costMoney, "ժ����ʯ:�����۽��", player)
					end
				else
					lualib:ShowFormWithContent(player, "�ű���", "InlayCrystal.attentionMsg(2,\"��Ҳ���\");")
					return ""
				end
				
				local a = 0
				local propertyType = {}
				if stoneType == "�﹥" then
					a = 30
					propertyType[1] = 11
					propertyType[2] = 10
				elseif stoneType == "ħ��" then
					a = 32
					propertyType[1] = 13
					propertyType[2] = 12
				elseif stoneType == "����" then
					a = 34
					propertyType[1] = 15
					propertyType[2] = 14
				elseif stoneType == "���" then
					a = 36
					propertyType[1] = 7
					propertyType[2] = 6
				elseif stoneType == "ħ��" then
					a = 38
					propertyType[1] = 9
					propertyType[2] = 8
				elseif stoneType == "����" then
					a = 40
					propertyType[1] = 3
				end
				
				lualib:SetDynamicAttr(equipGuid, a, propertyType[1], 0)
				if a ~= 40 then
					lualib:SetDynamicAttr(equipGuid, a + 1, propertyType[2], 0)	
				end
					
				if lualib:SetStr(equipGuid, "EquipHole" .. indexNum, "2") then
					if lualib:AddItem(player, keyName, 1, false, "�����Ƕ��ʯ���", player) then
						lualib:Item_NotifyUpdate(player, equipGuid)
						lualib:ShowFormWithContent(player, "�ű���", "InlayCrystal.takeOffFinish();")
					end
				end
			else
				lualib:ShowFormWithContent(player, "�ű���", "InlayCrystal.attentionMsg(2,\"�����ռ䲻��\");")
				return ""
			end
		end
	end
	return ""
end