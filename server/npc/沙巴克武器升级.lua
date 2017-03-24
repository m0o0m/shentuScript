--
--**ע������** 
--��������������.
--**ע������** 
--
local tForgeRule = 
{
	PayGold = 100000,			--��Ҫ֧��10WG��
	PayOre = 					--��Ҫ֧����ʯ
	{
		Type = 5,				--��ʯ����
		SubType = 0,			--��ʯ������
		Puritys = 				--��ͬ��ʯ���ȹ���ֵ
		{
			������ʯ1 = 1,
			������ʯ2 = 2,
			������ʯ3 = 3,
			������ʯ4 = 4,
			������ʯ5 = 5,
			������ʯ6 = 6,
			������ʯ7 = 7,
			������ʯ8 = 8,
			������ʯ9 = 9,
			������ʯ10 = 10,
			������ʯ11 = 11,
			������ʯ12 = 12,
			������ʯ13 = 13,
			������ʯ14 = 14,
			������ʯ15 = 15
		},
		DurabilityRate = 15,  --�;û�׼��ֵ15,�ݶ���ʽ:���յ�ǰ�;� = ��ǰ�;� * (��ǰ���� / (DurabilityRate * ��������));
	},
	PayItem =				  --��Ҫ֧������
	{
		Types = {1, 1, 1},	  --֧����Ʒ {1, 3}=����
		SubTypes = {3, 8, 9},
		AttrRate = 80,		  --���ε������ܺͷ�ֵ80,�ݶ���ʽ:��������ܺ� = (װ����󹥻� * AttrRate) + ��������;	
	},
	ForgeItem =
	{
		ForgeLevel = 8,		  --�������8��
		ForgeRate = {		  --������׼��ֵ(0-10000),�ݶ���ʽ:���ճɹ����� = ��ǰ�ɹ��ʸ� + (��ǰ�ɹ��ʸ� * (��ǰ���� / (DurabilityRate * ��������)) / 10);
						8000, --��:��һ��ǿ������3��15���ڿ�,��ɹ�����= 8000 + (8000 * (45 / (15 * 1)) / 10) = 10400 = 100%
						6000, --��:�ڶ���ǿ������3��15���ڿ�,��ɹ�����= 6000 + (6000 * (45 / (15 * 2)) / 10) = 6900 = 69%
						5000, --��:������ǿ������3��15���ڿ�,��ɹ�����= 5000 + (5000 * (45 / (15 * 3)) / 10) = 5500 = 55%
						4000,
						3000,
						2000,
						1000, --��:��7��ǿ������10��15���ڿ�,��ɹ�����= 1000 + (1000 * (150 / (15 * 7)) / 10) = 1142 = %11.4
						0	  --��:��8����ԶΪ0
					},
	   ForgeInc = 1,	      --����,һ����󹥻���һ��
	   ForgeCD = 3600		  --����CDһСʱ
	}	
}

-------------------------------------------------------------------------------

--
--**ע������** 
--����������������.д���ݿ�ı���,����ǰ����.�Ժ�Ͳ�Ҫ�Ķ���.
--����Ķ���������쳣,����ɾ����������Ʒ,Ȼ��������"ForgeTick", "ForgeItem"��������.
--**ע������** 
--
local tForgeVar = 
{
	ItemFlag = 0,			--������� 0 = δ���������� 1 = ��ʼ�������� 2 = ������������
	ItemVar = 
	{
		ForgeFlag = 0,		--�����ɹ���ʧ���ȴ���Ʒ������,�ݲ�������ҽ��
		ForgeLevel = 1,		--װ���������ȼ�
		ForgeAttrName = 0,  --�������ɹ�,Ҫǿ����������
		ForgeAttrValue = 0, --�������ɹ�,Ҫǿ��������ֵ
		ForgeDurability = 0,--�������ɹ�,Ҫ���ɵ��;�ֵ
		ForgeItems = {},	--ǿ����ɾ������ƷGUID
	}
}

-------------------------------------------------------------------------------

local CForgeMgr = 
{
	ForgeTick = "ForgeTick",--��ұ�����¼��ǰ������������Ʒ�ύʱ��:��
	ForgeItem = "ForgeItem",--��ұ�����¼��ǰ������������Ʒjson��,ͬһʱ��ֻ������һ������
}

function CForgeMgr:SetWeapon(strPlayer, strJson)
	lualib:SetStr(strPlayer, self.ForgeItem, strJson);
	lualib:SetInt(strPlayer, self.ForgeTick, lualib:GetAllTime());
end

function CForgeMgr:ClearWeapon(strPlayer)
	lualib:SetStr(strPlayer, self.ForgeItem, "");
	lualib:SetInt(strPlayer, self.ForgeTick, 0);
end

function CForgeMgr:WatchWeapon(strPlayer)	
	lualib:AddTrigger(strPlayer, lua_trigger_post_equip, "OnPostEquip");
	lualib:AddTrigger(strPlayer, lua_trigger_post_un_equip, "OnPostUnEquip");

	local strWeapon = lualib:Item_GetBySite(strPlayer, 1);
	local tVar = CForgeMgr:GetForgeVar(strWeapon);
	if tVar.ItemFlag == 2 then							--��Ҹ����߾ʹ���δ��������?
		lualib:AddTrigger(strPlayer, lua_trigger_spell, "OnSpell");
		lualib:SysMsg_SendTriggerMsg(strPlayer, "��װ����δ��������!");
	end
end

function CForgeMgr:OnPostEquip(strPlayer, strWeapon)
	if lualib:Item_GetSubType("", strWeapon) ~= 1 then	--���������Ͳ�������
		return;
	end
	
	local tVar = CForgeMgr:GetForgeVar(strWeapon);
	if tVar.ItemFlag ~= 2 then
		return;
	end
	
	lualib:AddTrigger(strPlayer, lua_trigger_spell, "OnSpell");
	lualib:SysMsg_SendTriggerMsg(strPlayer, "��װ����δ��������!");
end

function CForgeMgr:OnPostUnEquip(strPlayer, strWeapon)
	if lualib:Item_GetSubType("", strWeapon) ~= 1 then	--���������Ͳ�������
		return;
	end
	
	local tVar = CForgeMgr:GetForgeVar(strWeapon);
	if tVar.ItemFlag ~= 2 then
		return;
	end
	
	assert(lualib:HasTrigger(strPlayer, lua_trigger_spell, "OnSpell"), "ϵͳ����,��ҵĴ����������������.");
	lualib:RemoveTrigger(strPlayer, lua_trigger_spell, "OnSpell");
	lualib:SysMsg_SendTriggerMsg(strPlayer, "��������δ��������!");
end

function CForgeMgr:OnSpell(strPlayer)
	local strWeapon = lualib:Item_GetBySite(strPlayer, 1);
	
	local tVar = CForgeMgr:GetForgeVar(strWeapon);
	assert(tVar.ItemFlag == 2, "ϵͳ����,�߼��쳣!");
	
	self:DoForgeWeapon(strPlayer, strWeapon, tVar);
	self:SetForgeVar(strWeapon, tVar);
	
	assert(lualib:HasTrigger(strPlayer, lua_trigger_spell, "OnSpell"), "ϵͳ����,��ҵĴ����������������.");
	lualib:RemoveTrigger(strPlayer, lua_trigger_spell, "OnSpell");
end

function CForgeMgr:IsGoldEnough(strPlayer)
	local tRule = tForgeRule;
	
	return lualib:Player_IsGoldEnough(strPlayer, tRule.PayGold, false);
end

function CForgeMgr:SubGold(strPlayer)
	local tRule = tForgeRule;
	
	return lualib:Player_SubGold(strPlayer, tRule.PayGold, false, "����������Ǯ10W", "��������NPC");
end

function CForgeMgr:DestroyForgeItem(strPlayer, tVar)
	--ɾ����Ʒ(����Ҫ��һ������һ��������,��ȻBUG��)
	assert(#tVar.ItemVar.ForgeItems >= 2, "ϵͳ����,������ɾ����Ʒ�����쳣!");
	
	for k, v in ipairs(tVar.ItemVar.ForgeItems) do
		if not lualib:Item_Destroy("", v, "��������ɾ�����κͺ�����", "��������NPC") then
			return false;
		end
	end
	
	tVar.ItemVar.ForgeItems = {};
	return true;
end

function CForgeMgr:IsBegin(strPlayer)
	return 0 ~= lualib:GetInt(strPlayer, self.ForgeTick);
end

function CForgeMgr:GetRemain(strPlayer)
	local tRule = tForgeRule;
	
	return lualib:GetInt(strPlayer, self.ForgeTick) + tRule.ForgeItem.ForgeCD - lualib:GetAllTime();
end

function CForgeMgr:GetWeapon(strPlayer)
	local strWeapon = lualib:Item_GetBySite(strPlayer, 1); 	--�ж�����
	return strWeapon, lualib:KeyName(strWeapon);
end

function CForgeMgr:ForgeWeapon(strPlayer, strWeapon)
	local strJson = lualib:Item2Json(strWeapon);
	assert(strJson ~= "", "ϵͳ����,��Ʒ����ʧ��.");
	assert(lualib:Item_Destroy("", strWeapon, "����������������Ϊjson", "��������NPC"), "ϵͳ����,��Ʒɾ��ʧ��!");
	
	return strJson;
end

function CForgeMgr:MakeWeapon(strPlayer)
	local strJson = lualib:GetStr(strPlayer, self.ForgeItem);
	assert(strJson ~= "", "ϵͳ����,��Ʒ��Ϣ�����쳣!");
	
	local strItem = lualib:Json2Item(strPlayer, strJson);
	assert (strItem ~= "" and strItem ~= "0", "ϵͳ����,��Ʒ������ʧ��.");
	
	local strName = lualib:Name(strItem);
	lualib:Item_ChangeName("", strItem, "(*)"..strName);
	
	return strItem;
end

function CForgeMgr:DoForgeWeapon(strPlayer, strWeapon, tVar)		
	if tVar.ItemVar.ForgeFlag == 1 then					--��������ɹ�?
		local tAttrPair = nil;
		local bExist = false;
		
		--�ȱ�����Ʒ����
		for i = 0, 5 do
			tAttrPair = lualib:Equip_GetQualProp("", strWeapon, i);
			assert(tAttrPair[0] and tAttrPair[1], "ϵͳ����,������BUG.");
														--�����Ӧ�ļ�Ʒ���Դ���,���޸�
			if tVar.ItemVar.ForgeAttrName == tAttrPair[0] then	
				bExist = true;
				assert(lualib:Equip_SetQualProp("", strWeapon, i, tAttrPair[0], tAttrPair[1] + tVar.ItemVar.ForgeAttrValue), "ϵͳ�������ü�Ʒ����ʧ��!");
				break;
			end
		end
		
		if not bExist then								--�����Ӧ�ļ�Ʒ���Բ�����,������һ����Ʒ����
			for i = 0, 5 do
				tAttrPair = lualib:Equip_GetQualProp("", strWeapon, i);
				assert(tAttrPair[0] and tAttrPair[1], "ϵͳ����,������BUG.");
				
				if tAttrPair[0] == 0 then
					assert(lualib:Equip_SetQualProp("", strWeapon, i, tVar.ItemVar.ForgeAttrName, tVar.ItemVar.ForgeAttrValue), "ϵͳ����,���ü�Ʒ����ʧ��!");
					break;
				end
			end
		end
		
		tVar.ItemVar.ForgeAttrName = 0;
		tVar.ItemVar.ForgeAttrValue = 0;
		
		--�������;�
		assert(lualib:Item_SetDurability("", strWeapon, tVar.ItemVar.ForgeDurability), "ϵͳ����,�����;�ʧ��!");
		
		--����������
		lualib:Item_ChangeName("", 	strWeapon, string.sub(lualib:Name(strWeapon), 4));
		
		tVar.ItemVar.ForgeDurability = 0;
		
		--��ɿ�������
		tVar.ItemVar.ForgeFlag = 0;
		tVar.ItemFlag = 0;
		
		lualib:Item_NotifyUpdate(strPlayer, strWeapon);
		lualib:SysMsg_SendWarnMsg(strPlayer, "��ϲ��,������������ɹ���!");
	
	elseif tVar.ItemVar.ForgeFlag == 0 then			--���ʧ������������Ϣ
		assert(lualib:Item_Destroy("", strWeapon, "��Ʒ����ʧ��ɾ������", "��Ʒ����NPC"), "ϵͳ����,ɾ������ʧ������ʧ��!");
		lualib:SysMsg_SendWarnMsg(strPlayer, "���ź�,�����������ʧ����!");
	else
		assert(false, "ϵͳ����,�����쳣!");
	end	
end

function CForgeMgr:GetAllOre(strPlayer)				--�ҿ�ʯ
	local tRule = tForgeRule; 						--��������ջ��,������ȡЧ��
	local tOre = lualib:ItemsByType(strPlayer, tRule.PayOre.Type, tRule.PayOre.SubType, false, 
		true, false, false);						--���ÿ�ʯ�������������޶�һ����Χ����Ч��
	
	local dwPuritys = 0;	
	local t = 0;
	for i = #tOre, 1, -1 do							--��ȷ���ǲ�����Ҫ�Ŀ�ʯ
		t = tRule.PayOre.Puritys[lualib:KeyName(tOre[i])]		
		if nil == t then
			table.remove(tOre, i);
		else
			dwPuritys = dwPuritys + t;
		end
	end		
		
	if #tOre == 0 then
		return nil, nil;
	end	
	
	return tOre, dwPuritys;
end

function CForgeMgr:GetAllOrnament(strPlayer)
	local tRule = tForgeRule; 
	local tItems = nil;								--������
	local tDataRow = nil;
	local strKeyName = "";
	local tOrnament = {};
	local tForgeAttrs = {		  					--�������Զ���
							{Name = 10, Value = 0, Str = "MaxPhyAtk", Ch = "�﹥"}, --�﹥
							{Name = 12, Value = 0, Str = "MaxMagAtk", Ch = "ħ��"}, --ħ��
							{Name = 14, Value = 0, Str = "MaxTaoAtk", Ch = "����"}  --����
						};
	
	
	for i = 1, #tRule.PayItem.Types do				--���α���������������
		tItems = lualib:ItemsByType(strPlayer, tRule.PayItem.Types[i], tRule.PayItem.SubTypes[i], false,
			true, false, false);

		for k = 1, #tItems do 						--�����ۼӹ�������
			local strItem = tItems[k];
			tDataRow = lualib:Item_DataRow(lualib:KeyName(strItem));
			
			tForgeAttrs[1].Value = tForgeAttrs[1].Value + tDataRow.MaxPhyAtk;
			tForgeAttrs[2].Value = tForgeAttrs[2].Value + tDataRow.MaxMagAtk;
			tForgeAttrs[3].Value = tForgeAttrs[3].Value + tDataRow.MaxTaoAtk;
			
			table.insert(tOrnament, strItem);
		end	
	end
	
	if tDataRow == nil then							--û�����ξͷ���
		return nil, nil, nil, nil, nil;
	end
	
	--������ҳ������Ǹ�����ֵ
	table.sort(tForgeAttrs, function (lhs, rhs)
								return lhs.Value > rhs.Value;
							end);
							
	return tOrnament, tForgeAttrs[1].Name, tForgeAttrs[1].Value, tForgeAttrs[1].Str, tForgeAttrs[1].Ch;
end

function CForgeMgr:GetForgeAttr(strWeaponKey, strAttrName, dwForgeLevel)
	local tRule = tForgeRule; 
	
	--�ж����Ի�׼ֵ �ݶ���ʽ:��������ܺ� = (װ����󹥻� * AttrRate) + ��������;	
	return math.floor((lualib:Item_DataRow(strWeaponKey)[strAttrName] * tRule.PayItem.AttrRate + dwForgeLevel * 100) / 100);
end

function CForgeMgr:GetForgeRate(dwPuritys, dwForgeLevel)
	local tRule = tForgeRule; 
	
	local dwCurRate = tRule.ForgeItem.ForgeRate[dwForgeLevel];
	--�ж�ǿ������ �ݶ���ʽ:���ճɹ����� = ��ǰ�ɹ��ʸ� + (��ǰ�ɹ��ʸ� * (��ǰ���� / (DurabilityRate * ��������)) / 10);
	return math.floor(dwCurRate + (dwCurRate * (dwPuritys / (tRule.PayOre.DurabilityRate * dwForgeLevel)) / 10));
end

function CForgeMgr:GetForgeDura(strWeapon, dwPuritys, dwForgeLevel)
	local tRule = tForgeRule; 
	
	--�ж��;ñ��� �ݶ���ʽ:���յ�ǰ�;� = ��ǰ�;� * (��ǰ���� / (DurabilityRate * ��������));
	return math.floor(lualib:Item_GetDurability("", strWeapon) * (dwPuritys / (tRule.PayOre.DurabilityRate * dwForgeLevel)));
end

function CForgeMgr:SetForgeAttr(tVar, tOre, tOrnament, dwForgeRate, dwForgeLevel, dwAttrName, dwDurability)
	local tRule = tForgeRule; 
	
	tVar.ItemFlag = 1;									--��ʼ���������,������ʼ��Ʒ��������
	tVar.ItemVar.ForgeLevel = dwForgeLevel + 1;			--����������1											
	if lualib:GenRandom(1, 10000) < dwForgeRate then	--������Ʒ,��ʱ�Ϳ��Ծ����ɹ�����ʧ����.���ǽ������ҹ������ٽ���
		tVar.ItemVar.ForgeFlag = 1;						--�ɹ�,Ҫ���ӵ�������������ֵ			
		tVar.ItemVar.ForgeAttrName = dwAttrName;
		tVar.ItemVar.ForgeAttrValue = tRule.ForgeItem.ForgeInc;
		tVar.ItemVar.ForgeDurability = dwDurability;
	else
		tVar.ItemVar.ForgeFlag = 0;						--ʧ��
		tVar.ItemVar.ForgeAttrName = 0;
		tVar.ItemVar.ForgeAttrValue = 0;
		tVar.ItemVar.ForgeDurability = 0;
	end
	
	for i = 1, #tOre do									--���������ɹ�����ʧ��,ȷ��֮����Щ��Ʒȫ��Ҫɾ��
		table.insert(tVar.ItemVar.ForgeItems, tOre[i]);
	end
	
	for i = 1, #tOrnament do
		table.insert(tVar.ItemVar.ForgeItems, tOrnament[i]);
	end
end

function CForgeMgr:UpdateForgeAttr(tVar)
	tVar.ItemFlag = 2;
end

function CForgeMgr:ResetForgeAttr(tVar)
	tVar.ItemFlag = 0;
	
	tVar.ItemVar.ForgeFlag = 0;
	tVar.ItemVar.ForgeLevel = tVar.ItemVar.ForgeLevel - 1;
	tVar.ItemVar.ForgeAttrName = 0;
	tVar.ItemVar.ForgeAttrValue = 0;
	tVar.ItemVar.ForgeItems = {};
end

function CForgeMgr:GetForgeVar(strItem)
	local tVar = lualib:GetStr(strItem, "tForgeVar");
	if tVar == "" then
		return tForgeVar;
	else
		tVar = json.decode(tVar);
		return tVar;
	end
end

function CForgeMgr:SetForgeVar(strItem, tVar)
	lualib:SetStr(strItem, "tForgeVar", json.encode(tVar));
end

-------------------------------------------------------------------------------

--**ע������**
--**���ڸýű�������Դ�����Ҫ��ܸ�,Ϊ�˱������������,�������ײ��������µ���:
--**װ��λ�ϵ���Ʒ���Դ���on_spll������(��Ʒ����������������)
--**ע������**

function main(strNpc, strPlayer)
	local strMsg = "�ҿ��԰��㽫��������!\n\n";
	strMsg = strMsg.."<@ForgeBegin *01* ��������>    <@Award *01* �������>\n\n<@Leave *01* �뿪>";
	return strMsg;
end

function ForgeBegin(strNpc, strPlayer)
	if CForgeMgr:IsBegin(strPlayer) then
		return "��֮ǰ�����ҵĶ�����δ���Ŷ,��������������...\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	local strWeapon, strWeaponKey = CForgeMgr:GetWeapon(strPlayer);
	if strWeapon == "" or strWeaponKey == "" then
		return "�Ƚ�Ҫ����������װ������...\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	local tOre, dwPuritys = CForgeMgr:GetAllOre(strPlayer);
	if nil == tOre or nil == dwPuritys then
		return "û�к���ʯ,��ˡ������Ϊ��...\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	local tOrnament, dwAttrName, dwAttrValue, strAttrName, strChName = CForgeMgr:GetAllOrnament(strPlayer);
	if nil == tOrnament or nil == dwAttrName or nil == dwAttrValue or nil == strAttrName or strChName == nil then
		return "û���ṩ����,��ˡ������Ϊ��...\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	local tVar = CForgeMgr:GetForgeVar(strWeapon);		
	if tVar.ItemFlag == 1 then
		CForgeMgr:ResetForgeAttr(tVar);
		CForgeMgr:SetForgeVar(strWeapon, tVar);
	elseif tVar.ItemFlag == 2 then
		return "�������δ����,��ˡ������Ϊ��...\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	local dwForgeLevel = tVar.ItemVar.ForgeLevel;
	local dwForgeAttrValue = CForgeMgr:GetForgeAttr(strWeaponKey, strAttrName, dwForgeLevel);
	if dwAttrValue < dwForgeAttrValue then
		return "�����ṩ�����Լӳɲ���,��Ҫ����"..strChName.."�����ܼƴﵽ"..dwForgeAttrValue.."���ܼ���...\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	local dwDurability = CForgeMgr:GetForgeDura(strWeapon, dwPuritys, dwForgeLevel);
	if dwDurability < 1000 then
		return "�����ṩ�Ĵ��Ȳ���,��Ʒ�޷�����...\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	local dwForgeRate = CForgeMgr:GetForgeRate(dwPuritys, dwForgeLevel);
	CForgeMgr:SetForgeAttr(tVar, tOre, tOrnament, dwForgeRate, dwForgeLevel, dwAttrName, dwDurability);
	
	--����������Ϣ����Ʒ������
	CForgeMgr:SetForgeVar(strWeapon, tVar);
	
	return "��������������Ϊ:"..dwForgeLevel..".\n������ʯ�Ĵ���Խ�߳ɹ�����ҲԽ��,ȷ��Ҫ������?\n\n<@ForgeEnd#"..strWeapon.." *01* ȷ��>    <@main *01* ����>    <@Leave *01* �뿪>";
end

function ForgeEnd(strNpc, strPlayer, strWeaponOld)
	if CForgeMgr:IsBegin(strPlayer) then
		return "��֮ǰ�����ҵĶ�����δ���Ŷ,��������������...\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	local strWeapon, strWeaponKey = CForgeMgr:GetWeapon(strPlayer);
	if strWeapon == "" or strWeaponKey == "" then
		return "�Ƚ�Ҫ����������װ������...\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	local tVar = CForgeMgr:GetForgeVar(strWeapon);
	if tVar.ItemFlag ~= 1 or strWeapon ~= strWeaponOld then
		return "����,��͵͵���������˰�,�������㻹���˵�!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	--���ж�Ǯ������
	if not CForgeMgr:IsGoldEnough(strPlayer) then
		return "�Ұﲻ����,�㶮��(���10W)...\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	--�Ͻ���,��˰��!!!
	if not CForgeMgr:DestroyForgeItem(strPlayer, tVar) then
		return "����,������������ǲ���ת������?���������ҵ�(�Ųֿ���Ҳ���ҳ���)!Ϊ�˳ͷ���,��ǰ���Ͻɵ���Ʒ��Ҳ�����˸�����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	--��Ǯ
	assert(CForgeMgr:SubGold(strPlayer), "ϵͳ����,Ǯ�����ܿ�ʧ��!");
	
	CForgeMgr:UpdateForgeAttr(tVar);			--����������Ϣ
	CForgeMgr:SetForgeVar(strWeapon, tVar);		--����
	
	CForgeMgr:SetWeapon(strPlayer, CForgeMgr:ForgeWeapon(strPlayer, strWeapon)); --������Ʒ��Ϣ���������
	
	return "����������,��һСʱ��������ȡ!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
end

function Award(strNpc, strPlayer)
	if not CForgeMgr:IsBegin(strPlayer) then
		return "��û��ί��������������...\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	local dwRemain = CForgeMgr:GetRemain(strPlayer);
	if dwRemain > 0 then
		return "��������"..math.floor(dwRemain / 60).."����"..math.fmod(dwRemain, 60).."���Ժ����,�����ĵȴ���.\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	if lualib:BagFree(strPlayer, true, false, false) < 1 then
		return "��İ���������,����ô��������?\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	local strWeapon = CForgeMgr:MakeWeapon(strPlayer);
	CForgeMgr:ClearWeapon(strPlayer);		--����������������صı���
	
	return "��ȡ�ɹ�!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
end

function Leave(strNpc, strPlayer)
	return "";
end

-------------------------------------------------------------------------------

function OnPostEquip(strPlayer, strEquip, ...)
	CForgeMgr:OnPostEquip(strPlayer, strEquip);	
end

function OnPostUnEquip(strPlayer, strEquip, ...)
	CForgeMgr:OnPostUnEquip(strPlayer, strEquip);	
end

function OnSpell(strPlayer, ...)
	CForgeMgr:OnSpell(strPlayer);
end

function OnWatchWeapon(strPlayer)
	CForgeMgr:WatchWeapon(strPlayer);
end