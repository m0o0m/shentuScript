--
--**注意事项** 
--武器熔炼规则定义.
--**注意事项** 
--
local tForgeRule = 
{
	PayGold = 100000,			--需要支付10WG币
	PayOre = 					--需要支付矿石
	{
		Type = 5,				--矿石类型
		SubType = 0,			--矿石子类型
		Puritys = 				--不同矿石纯度贡献值
		{
			黑铁矿石1 = 1,
			黑铁矿石2 = 2,
			黑铁矿石3 = 3,
			黑铁矿石4 = 4,
			黑铁矿石5 = 5,
			黑铁矿石6 = 6,
			黑铁矿石7 = 7,
			黑铁矿石8 = 8,
			黑铁矿石9 = 9,
			黑铁矿石10 = 10,
			黑铁矿石11 = 11,
			黑铁矿石12 = 12,
			黑铁矿石13 = 13,
			黑铁矿石14 = 14,
			黑铁矿石15 = 15
		},
		DurabilityRate = 15,  --耐久基准阀值15,暂定公式:最终当前耐久 = 当前耐久 * (当前纯度 / (DurabilityRate * 熔炼次数));
	},
	PayItem =				  --需要支付首饰
	{
		Types = {1, 1, 1},	  --支付物品 {1, 3}=手镯
		SubTypes = {3, 8, 9},
		AttrRate = 80,		  --首饰的属性总和阀值80,暂定公式:最终最大总和 = (装备最大攻击 * AttrRate) + 熔炼次数;	
	},
	ForgeItem =
	{
		ForgeLevel = 8,		  --最多熔炼8次
		ForgeRate = {		  --熔炼基准阀值(0-10000),暂定公式:最终成功概率 = 当前成功率概 + (当前成功率概 * (当前纯度 / (DurabilityRate * 熔炼次数)) / 10);
						8000, --如:第一次强化放入3个15级黑矿,则成功概率= 8000 + (8000 * (45 / (15 * 1)) / 10) = 10400 = 100%
						6000, --如:第二次强化放入3个15级黑矿,则成功概率= 6000 + (6000 * (45 / (15 * 2)) / 10) = 6900 = 69%
						5000, --如:第三次强化放入3个15级黑矿,则成功概率= 5000 + (5000 * (45 / (15 * 3)) / 10) = 5500 = 55%
						4000,
						3000,
						2000,
						1000, --如:第7次强化放入10个15级黑矿,则成功概率= 1000 + (1000 * (150 / (15 * 7)) / 10) = 1142 = %11.4
						0	  --如:第8次永远为0
					},
	   ForgeInc = 1,	      --增量,一次最大攻击涨一点
	   ForgeCD = 3600		  --熔炼CD一小时
	}	
}

-------------------------------------------------------------------------------

--
--**注意事项** 
--武器熔炼变量定义.写数据库的变量,开服前定好.以后就不要改动了.
--如因改动造成数据异常,尝试删除熔炼的物品,然后清除玩家"ForgeTick", "ForgeItem"二个变量.
--**注意事项** 
--
local tForgeVar = 
{
	ItemFlag = 0,			--熔炼标记 0 = 未走熔炼流程 1 = 开始熔炼流程 2 = 结束熔炼流程
	ItemVar = 
	{
		ForgeFlag = 0,		--熔炼成功或失败先存物品变量中,暂不告诉玩家结果
		ForgeLevel = 1,		--装备的熔炼等级
		ForgeAttrName = 0,  --如熔炼成功,要强化的属性名
		ForgeAttrValue = 0, --如熔炼成功,要强化的属性值
		ForgeDurability = 0,--如熔炼成功,要生成的耐久值
		ForgeItems = {},	--强化待删除的物品GUID
	}
}

-------------------------------------------------------------------------------

local CForgeMgr = 
{
	ForgeTick = "ForgeTick",--玩家变量记录当前正在熔炼的物品提交时间:秒
	ForgeItem = "ForgeItem",--玩家变量记录当前正在熔炼的物品json串,同一时刻只能熔炼一个道具
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
	if tVar.ItemFlag == 2 then							--玩家刚上线就穿着未开锋武器?
		lualib:AddTrigger(strPlayer, lua_trigger_spell, "OnSpell");
		lualib:SysMsg_SendTriggerMsg(strPlayer, "你装备了未开锋武器!");
	end
end

function CForgeMgr:OnPostEquip(strPlayer, strWeapon)
	if lualib:Item_GetSubType("", strWeapon) ~= 1 then	--不是武器就不关心了
		return;
	end
	
	local tVar = CForgeMgr:GetForgeVar(strWeapon);
	if tVar.ItemFlag ~= 2 then
		return;
	end
	
	lualib:AddTrigger(strPlayer, lua_trigger_spell, "OnSpell");
	lualib:SysMsg_SendTriggerMsg(strPlayer, "你装备了未开锋武器!");
end

function CForgeMgr:OnPostUnEquip(strPlayer, strWeapon)
	if lualib:Item_GetSubType("", strWeapon) ~= 1 then	--不是武器就不关心了
		return;
	end
	
	local tVar = CForgeMgr:GetForgeVar(strWeapon);
	if tVar.ItemFlag ~= 2 then
		return;
	end
	
	assert(lualib:HasTrigger(strPlayer, lua_trigger_spell, "OnSpell"), "系统错误,玩家的触发器被意外清除了.");
	lualib:RemoveTrigger(strPlayer, lua_trigger_spell, "OnSpell");
	lualib:SysMsg_SendTriggerMsg(strPlayer, "你脱下了未开锋武器!");
end

function CForgeMgr:OnSpell(strPlayer)
	local strWeapon = lualib:Item_GetBySite(strPlayer, 1);
	
	local tVar = CForgeMgr:GetForgeVar(strWeapon);
	assert(tVar.ItemFlag == 2, "系统错误,逻辑异常!");
	
	self:DoForgeWeapon(strPlayer, strWeapon, tVar);
	self:SetForgeVar(strWeapon, tVar);
	
	assert(lualib:HasTrigger(strPlayer, lua_trigger_spell, "OnSpell"), "系统错误,玩家的触发器被意外清除了.");
	lualib:RemoveTrigger(strPlayer, lua_trigger_spell, "OnSpell");
end

function CForgeMgr:IsGoldEnough(strPlayer)
	local tRule = tForgeRule;
	
	return lualib:Player_IsGoldEnough(strPlayer, tRule.PayGold, false);
end

function CForgeMgr:SubGold(strPlayer)
	local tRule = tForgeRule;
	
	return lualib:Player_SubGold(strPlayer, tRule.PayGold, false, "武器熔炼扣钱10W", "武器熔炼NPC");
end

function CForgeMgr:DestroyForgeItem(strPlayer, tVar)
	--删除物品(至少要有一个首饰一个黑铁矿,不然BUG了)
	assert(#tVar.ItemVar.ForgeItems >= 2, "系统错误,熔炼待删除物品数据异常!");
	
	for k, v in ipairs(tVar.ItemVar.ForgeItems) do
		if not lualib:Item_Destroy("", v, "武器熔炼删除首饰和黑铁矿", "武器熔炼NPC") then
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
	local strWeapon = lualib:Item_GetBySite(strPlayer, 1); 	--判断武器
	return strWeapon, lualib:KeyName(strWeapon);
end

function CForgeMgr:ForgeWeapon(strPlayer, strWeapon)
	local strJson = lualib:Item2Json(strWeapon);
	assert(strJson ~= "", "系统错误,物品流化失败.");
	assert(lualib:Item_Destroy("", strWeapon, "武器熔炼流化物器为json", "武器熔炼NPC"), "系统错误,物品删除失败!");
	
	return strJson;
end

function CForgeMgr:MakeWeapon(strPlayer)
	local strJson = lualib:GetStr(strPlayer, self.ForgeItem);
	assert(strJson ~= "", "系统错误,物品信息数据异常!");
	
	local strItem = lualib:Json2Item(strPlayer, strJson);
	assert (strItem ~= "" and strItem ~= "0", "系统错误,物品反流化失败.");
	
	local strName = lualib:Name(strItem);
	lualib:Item_ChangeName("", strItem, "(*)"..strName);
	
	return strItem;
end

function CForgeMgr:DoForgeWeapon(strPlayer, strWeapon, tVar)		
	if tVar.ItemVar.ForgeFlag == 1 then					--如果熔炼成功?
		local tAttrPair = nil;
		local bExist = false;
		
		--先遍历极品属性
		for i = 0, 5 do
			tAttrPair = lualib:Equip_GetQualProp("", strWeapon, i);
			assert(tAttrPair[0] and tAttrPair[1], "系统错误,程序有BUG.");
														--如果对应的极品属性存在,则修改
			if tVar.ItemVar.ForgeAttrName == tAttrPair[0] then	
				bExist = true;
				assert(lualib:Equip_SetQualProp("", strWeapon, i, tAttrPair[0], tAttrPair[1] + tVar.ItemVar.ForgeAttrValue), "系统错误设置极品属性失败!");
				break;
			end
		end
		
		if not bExist then								--如果对应的极品属性不存在,则设置一条极品属性
			for i = 0, 5 do
				tAttrPair = lualib:Equip_GetQualProp("", strWeapon, i);
				assert(tAttrPair[0] and tAttrPair[1], "系统错误,程序有BUG.");
				
				if tAttrPair[0] == 0 then
					assert(lualib:Equip_SetQualProp("", strWeapon, i, tVar.ItemVar.ForgeAttrName, tVar.ItemVar.ForgeAttrValue), "系统错误,设置极品属性失败!");
					break;
				end
			end
		end
		
		tVar.ItemVar.ForgeAttrName = 0;
		tVar.ItemVar.ForgeAttrValue = 0;
		
		--再修正耐久
		assert(lualib:Item_SetDurability("", strWeapon, tVar.ItemVar.ForgeDurability), "系统错误,设置耐久失败!");
		
		--再修正名字
		lualib:Item_ChangeName("", 	strWeapon, string.sub(lualib:Name(strWeapon), 4));
		
		tVar.ItemVar.ForgeDurability = 0;
		
		--完成开锋流程
		tVar.ItemVar.ForgeFlag = 0;
		tVar.ItemFlag = 0;
		
		lualib:Item_NotifyUpdate(strPlayer, strWeapon);
		lualib:SysMsg_SendWarnMsg(strPlayer, "恭喜你,你的武器熔炼成功了!");
	
	elseif tVar.ItemVar.ForgeFlag == 0 then			--如果失败则让武器消息
		assert(lualib:Item_Destroy("", strWeapon, "物品熔炼失败删除武器", "物品熔炼NPC"), "系统错误,删除熔炼失败武器失败!");
		lualib:SysMsg_SendWarnMsg(strPlayer, "很遗憾,你的武器熔炼失败了!");
	else
		assert(false, "系统错误,数据异常!");
	end	
end

function CForgeMgr:GetAllOre(strPlayer)				--找矿石
	local tRule = tForgeRule; 						--规则表放在栈里,提升读取效率
	local tOre = lualib:ItemsByType(strPlayer, tRule.PayOre.Type, tRule.PayOre.SubType, false, 
		true, false, false);						--先用矿石的类型子类型限定一个范围提升效率
	
	local dwPuritys = 0;	
	local t = 0;
	for i = #tOre, 1, -1 do							--再确认是不是想要的矿石
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
	local tItems = nil;								--找首饰
	local tDataRow = nil;
	local strKeyName = "";
	local tOrnament = {};
	local tForgeAttrs = {		  					--熔炼属性定义
							{Name = 10, Value = 0, Str = "MaxPhyAtk", Ch = "物攻"}, --物攻
							{Name = 12, Value = 0, Str = "MaxMagAtk", Ch = "魔攻"}, --魔攻
							{Name = 14, Value = 0, Str = "MaxTaoAtk", Ch = "道攻"}  --道攻
						};
	
	
	for i = 1, #tRule.PayItem.Types do				--依次遍历包裹所有首饰
		tItems = lualib:ItemsByType(strPlayer, tRule.PayItem.Types[i], tRule.PayItem.SubTypes[i], false,
			true, false, false);

		for k = 1, #tItems do 						--迭代累加攻击属性
			local strItem = tItems[k];
			tDataRow = lualib:Item_DataRow(lualib:KeyName(strItem));
			
			tForgeAttrs[1].Value = tForgeAttrs[1].Value + tDataRow.MaxPhyAtk;
			tForgeAttrs[2].Value = tForgeAttrs[2].Value + tDataRow.MaxMagAtk;
			tForgeAttrs[3].Value = tForgeAttrs[3].Value + tDataRow.MaxTaoAtk;
			
			table.insert(tOrnament, strItem);
		end	
	end
	
	if tDataRow == nil then							--没有首饰就返回
		return nil, nil, nil, nil, nil;
	end
	
	--排序表找出最大的那个属性值
	table.sort(tForgeAttrs, function (lhs, rhs)
								return lhs.Value > rhs.Value;
							end);
							
	return tOrnament, tForgeAttrs[1].Name, tForgeAttrs[1].Value, tForgeAttrs[1].Str, tForgeAttrs[1].Ch;
end

function CForgeMgr:GetForgeAttr(strWeaponKey, strAttrName, dwForgeLevel)
	local tRule = tForgeRule; 
	
	--判断属性基准值 暂定公式:最终最大总和 = (装备最大攻击 * AttrRate) + 熔炼次数;	
	return math.floor((lualib:Item_DataRow(strWeaponKey)[strAttrName] * tRule.PayItem.AttrRate + dwForgeLevel * 100) / 100);
end

function CForgeMgr:GetForgeRate(dwPuritys, dwForgeLevel)
	local tRule = tForgeRule; 
	
	local dwCurRate = tRule.ForgeItem.ForgeRate[dwForgeLevel];
	--判断强化概率 暂定公式:最终成功概率 = 当前成功率概 + (当前成功率概 * (当前纯度 / (DurabilityRate * 熔炼次数)) / 10);
	return math.floor(dwCurRate + (dwCurRate * (dwPuritys / (tRule.PayOre.DurabilityRate * dwForgeLevel)) / 10));
end

function CForgeMgr:GetForgeDura(strWeapon, dwPuritys, dwForgeLevel)
	local tRule = tForgeRule; 
	
	--判断耐久比率 暂定公式:最终当前耐久 = 当前耐久 * (当前纯度 / (DurabilityRate * 熔炼次数));
	return math.floor(lualib:Item_GetDurability("", strWeapon) * (dwPuritys / (tRule.PayOre.DurabilityRate * dwForgeLevel)));
end

function CForgeMgr:SetForgeAttr(tVar, tOre, tOrnament, dwForgeRate, dwForgeLevel, dwAttrName, dwDurability)
	local tRule = tForgeRule; 
	
	tVar.ItemFlag = 1;									--初始化熔炼标记,表明开始物品熔炼流程
	tVar.ItemVar.ForgeLevel = dwForgeLevel + 1;			--熔炼次数加1											
	if lualib:GenRandom(1, 10000) < dwForgeRate then	--熔炼物品,这时就可以决定成功还是失败了.但是结果等玩家攻击后再揭晓
		tVar.ItemVar.ForgeFlag = 1;						--成功,要增加的属性名与属性值			
		tVar.ItemVar.ForgeAttrName = dwAttrName;
		tVar.ItemVar.ForgeAttrValue = tRule.ForgeItem.ForgeInc;
		tVar.ItemVar.ForgeDurability = dwDurability;
	else
		tVar.ItemVar.ForgeFlag = 0;						--失败
		tVar.ItemVar.ForgeAttrName = 0;
		tVar.ItemVar.ForgeAttrValue = 0;
		tVar.ItemVar.ForgeDurability = 0;
	end
	
	for i = 1, #tOre do									--不管熔炼成功还是失败,确认之后这些物品全都要删除
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

--**注意事项**
--**因于该脚本的需求对触发器要求很高,为了避免服务器卡机,服务器底层做出如下调整:
--**装备位上的物品可以触发on_spll触发器(物品可以添加这个触发器)
--**注意事项**

function main(strNpc, strPlayer)
	local strMsg = "我可以帮你将武器熔炼!\n\n";
	strMsg = strMsg.."<@ForgeBegin *01* 武器熔炼>    <@Award *01* 熔炼领回>\n\n<@Leave *01* 离开>";
	return strMsg;
end

function ForgeBegin(strNpc, strPlayer)
	if CForgeMgr:IsBegin(strPlayer) then
		return "你之前交给我的订单还未完成哦,武器正在熔炼中...\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	local strWeapon, strWeaponKey = CForgeMgr:GetWeapon(strPlayer);
	if strWeapon == "" or strWeaponKey == "" then
		return "先将要熔炼的武器装备起来...\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	local tOre, dwPuritys = CForgeMgr:GetAllOre(strPlayer);
	if nil == tOre or nil == dwPuritys then
		return "没有黑铁石,请恕我无能为力...\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	local tOrnament, dwAttrName, dwAttrValue, strAttrName, strChName = CForgeMgr:GetAllOrnament(strPlayer);
	if nil == tOrnament or nil == dwAttrName or nil == dwAttrValue or nil == strAttrName or strChName == nil then
		return "没有提供首饰,请恕我无能为力...\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	local tVar = CForgeMgr:GetForgeVar(strWeapon);		
	if tVar.ItemFlag == 1 then
		CForgeMgr:ResetForgeAttr(tVar);
		CForgeMgr:SetForgeVar(strWeapon, tVar);
	elseif tVar.ItemFlag == 2 then
		return "你的武器未开锋,请恕我无能为力...\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	local dwForgeLevel = tVar.ItemVar.ForgeLevel;
	local dwForgeAttrValue = CForgeMgr:GetForgeAttr(strWeaponKey, strAttrName, dwForgeLevel);
	if dwAttrValue < dwForgeAttrValue then
		return "首饰提供的属性加成不足,需要首饰"..strChName.."上限总计达到"..dwForgeAttrValue.."才能继续...\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	local dwDurability = CForgeMgr:GetForgeDura(strWeapon, dwPuritys, dwForgeLevel);
	if dwDurability < 1000 then
		return "黑铁提供的纯度不足,物品无法打造...\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	local dwForgeRate = CForgeMgr:GetForgeRate(dwPuritys, dwForgeLevel);
	CForgeMgr:SetForgeAttr(tVar, tOre, tOrnament, dwForgeRate, dwForgeLevel, dwAttrName, dwDurability);
	
	--保存熔炼信息在物品变量中
	CForgeMgr:SetForgeVar(strWeapon, tVar);
	
	return "熔炼后升级次数为:"..dwForgeLevel..".\n黑铁矿石的纯度越高成功机率也越高,确定要熔炼吗?\n\n<@ForgeEnd#"..strWeapon.." *01* 确定>    <@main *01* 返回>    <@Leave *01* 离开>";
end

function ForgeEnd(strNpc, strPlayer, strWeaponOld)
	if CForgeMgr:IsBegin(strPlayer) then
		return "你之前交给我的订单还未完成哦,武器正在熔炼中...\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	local strWeapon, strWeaponKey = CForgeMgr:GetWeapon(strPlayer);
	if strWeapon == "" or strWeaponKey == "" then
		return "先将要熔炼的武器装备起来...\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	local tVar = CForgeMgr:GetForgeVar(strWeapon);
	if tVar.ItemFlag ~= 1 or strWeapon ~= strWeaponOld then
		return "哈哈,你偷偷更换武器了吧,年轻人你还嫩了点!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	--先判断钱够不够
	if not CForgeMgr:IsGoldEnough(strPlayer) then
		return "我帮不了你,你懂的(金币10W)...\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	--上交吧,交税了!!!
	if not CForgeMgr:DestroyForgeItem(strPlayer, tVar) then
		return "哈哈,你的熔炼材料是不是转移走了?你瞒不过我的(放仓库里也会找出来)!为了惩罚你,你前面上缴的物品我也不会退给你了!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	--扣钱
	assert(CForgeMgr:SubGold(strPlayer), "系统错误,钱不可能扣失败!");
	
	CForgeMgr:UpdateForgeAttr(tVar);			--更新熔炼信息
	CForgeMgr:SetForgeVar(strWeapon, tVar);		--保存
	
	CForgeMgr:SetWeapon(strPlayer, CForgeMgr:ForgeWeapon(strPlayer, strWeapon)); --更新物品信息到玩家身上
	
	return "熔炼处理中,请一小时后再来领取!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
end

function Award(strNpc, strPlayer)
	if not CForgeMgr:IsBegin(strPlayer) then
		return "你没有委托我熔炼过武器...\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	local dwRemain = CForgeMgr:GetRemain(strPlayer);
	if dwRemain > 0 then
		return "熔炼将在"..math.floor(dwRemain / 60).."分钟"..math.fmod(dwRemain, 60).."秒以后完成,请耐心等待吧.\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	if lualib:BagFree(strPlayer, true, false, false) < 1 then
		return "你的包包都满了,该怎么放武器呢?\n\n<@main *01* 返回>    <@Leave *01* 离开>";
	end
	
	local strWeapon = CForgeMgr:MakeWeapon(strPlayer);
	CForgeMgr:ClearWeapon(strPlayer);		--清除玩家身上熔炼相关的变量
	
	return "领取成功!\n\n<@main *01* 返回>    <@Leave *01* 离开>";
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