local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
function ItemCount(player, keyname)
	local item_count = lualib:ItemCount(player, keyname)
    local item_id = lualib:KeyName2Id(keyname, 4); --根据keyname获取对象name

	local DATA = {}
	DATA[1] = item_count;
	DATA[2] = keyname;
	DATA[3] = item_id;

	lualib:ShowFormWithContent(player, "脚本表单", "SmeltWnd:FillOriginItemCtr("..serialize(DATA)..")");
	return ""
end


local EXPEND =
{			--金币,成功率, 元宝
	["中级"] = {10000, 60, 88},
	["高级"] = {20000, 40, 99},
}
function Smelt_YunHun(player, item_keyname, num, check)
	
	num = tonumber(num);
	check = tonumber(check);
	local index_str = item_keyname:match("(.+级)");
	local strHead = ""
	if index_str == "中级"  then 
		strHead = "低级"
	elseif index_str == "高级"  then
		strHead = "中级"
	end
	local strEnd = item_keyname:match("级(.+)");
	local ori_keyname = strHead..strEnd;
	local item_count = lualib:ItemCount(player, ori_keyname);
	local maxNum = math.floor(item_count/5);
	if num > maxNum then 
		return "超出最大可炼制数量"
	end
	local own_gold = lualib:GetGold(player);
	local singleGold = EXPEND[index_str][1];
	local goldNum = num * singleGold;
	if own_gold < goldNum then 
		lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up('金币不足,无法完成炼制')");
		return ""
	end
	local free = lualib:GetBagFree(player);
	if free <= 0 then 
		lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up('背包已满,请先清理背包')");
		return ""
	end
	local success_rate = EXPEND[index_str][2];
	local singleIngot = EXPEND[index_str][3]; 
	local success_count = 0;
	for i = 1, num do 
		
		if not lualib:Player_SubGold(player, singleGold, false, "炼制::炼制表单::魂石炼化", player) then 
			return "炼制过程扣除玩家金币失败"
		end
		local rate = math.random(1, 100);
		if rate <= success_rate then 
			if not lualib:TakeItem(player, ori_keyname, 5, "炼制::炼制表单::魂石炼化", player) then 
				return "炼制过程扣除玩家道具失败"
			end
			success_count = success_count + 1;
		else
			if check == 0 then 
				if not lualib:TakeItem(player, ori_keyname, 5, "炼制::炼制表单::魂石炼化", player) then 
					return "炼制过程扣除玩家道具失败"
				end
			elseif check == 1 then 
				if not lualib:Player_IsIngotEnough(player, singleIngot, false) then
					local msg = "本次操作共炼化"..i.."次,"..success_count.."次成功,"..i-success_count.."次失败,元宝不足无法执行后续操作.";
					lualib:ShowFormWithContent(player, "脚本表单", "MessageBox( 0, '"..msg.."')");
					if success_count > 0 then 
						if not lualib:AddItem(player, item_keyname, success_count, false, "炼制::炼制表单::魂石炼化成功", player) then --给物品
							return "炼制过程给玩家加装备失败"
						end
					end
					local msg = "		#COLORCOLOR_GOLD#本次操作共炼化#COLORCOLOR_GREENG#"..i.."#COLORCOLOR_GOLD#次,#COLORCOLOR_GREENG#"..success_count.."#COLORCOLOR_GOLD#次成功,#COLORCOLOR_GREENG#"..i-success_count.."#COLORCOLOR_GOLD#次失败,元宝不足,无法进行后续操作.#COLOREND#";
					lualib:ShowFormWithContent(player, "脚本表单", "MessageBox( 0, '"..msg.."')");
					local remain_count = lualib:ItemCount(player, ori_keyname);
					local DATA = { ori_keyname, remain_count}
					lualib:ShowFormWithContent(player, "脚本表单", "SmeltWnd:RefillOriginItemCtr("..serialize(DATA)..")");
					return ""
					
				end
				if not lualib:Player_SubIngot(player, singleIngot, false, "炼制::炼制表单::魂石炼化失败返回材料", player) then
					return "炼制过程扣除玩家元宝失败"
				end
			end
		end
	end
	if success_count > 0 then 
		if not lualib:AddItem(player, item_keyname, success_count, false, "炼制::炼制表单::魂石炼化成功", player) then --给物品
			return "炼制过程给玩家加装备失败"
		end
	end
	local msg = "		#COLORCOLOR_GOLD#本次操作共炼化#COLORCOLOR_GREENG#"..num.."#COLORCOLOR_GOLD#次,#COLORCOLOR_GREENG#"..success_count.."#COLORCOLOR_GOLD#次成功,#COLORCOLOR_GREENG#"..num-success_count.."#COLORCOLOR_GOLD#次失败.#COLOREND#";
	lualib:ShowFormWithContent(player, "脚本表单", "MessageBox( 0, '"..msg.."')");
	local remain_count = lualib:ItemCount(player, ori_keyname);
	local DATA = { ori_keyname, remain_count}
	lualib:ShowFormWithContent(player, "脚本表单", "SmeltWnd:RefillOriginItemCtr("..serialize(DATA)..")");
	return ""
end


local EXP = {
	25		,
	125     ,
	625     ,
	3125    ,
	15625   ,
	78125   ,
	390625  ,
	1953125 ,
}

local OFFER_EXP = {
	5		,
	25      ,
	125     ,
	625     ,
	3125    ,
	15625   ,
	78125   ,
	390625  ,
	1953125 ,
}

local COST = {
	10000,
	20000,
	30000,
	40000,
	50000,
	60000,
	70000,
	80000,
	90000,
}
function Smelt_Crystal(player, DATA)
	DATA = deserialize(DATA);
	local equipGuid = DATA[1];
	if not lualib:HasItem(player, equipGuid) then
		lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up('玩法没有此装备,无法完成吞噬')");
		return ""
	end
	local index = DATA[2]; --宝石所在装备的第几个孔
	local crystalKeyname = lualib:GetStr(equipGuid, "EquipHole"..index)
	if crystalKeyname == "" then
		lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up('此装备对应孔上没有宝石,无法完成吞噬')");
		return ""
	end
	local equip_crystal_level = crystalKeyname:match("(.+)级");
	equip_crystal_level = tonumber(equip_crystal_level);
	if equip_crystal_level >= 9 then 
		lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up('已经是最高等级的宝石,无法继续吞噬')");
		return ""
	end
	local crystalType = crystalKeyname:match("级(.+)");
	
	local MATERIAL = DATA[3];
	local totalExp = 0;
	local totalCost = 0;
	for k, v in pairs(MATERIAL) do 
		--验证宝石类型是否一样
		local Type = k:match("级(.+)");
		if Type ~= crystalType then 
			lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up('宝石类型不同,无法完成吞噬')");
			return ""
		end
		--统计吞噬所要消耗的金币,和能提供的总的经验
		local level = k:match("(.+)级");
		level = tonumber(level);
		local offerExp = OFFER_EXP[level];
		local goldCost = COST[level];
		local index = k:find("经验");
		if index ~= nil then 
			if not lualib:HasItem(player, v) then
				lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up('发现玩家不拥有其中一个宝石,无法完成吞噬')");
				return ""
			end
			local ex_offerExp = lualib:GetInt(v, "crystalExp");
			offerExp = offerExp + ex_offerExp;
		else
			local count = lualib:ItemCount(player, k);
			if count < v then 
				-- lualib:SysPromptMsg(player, "v="..v..";count="..count);
				return k.."数量不足,无法完成吞噬"
			end
			offerExp = offerExp * v;
			goldCost = goldCost * v;
		end
		totalExp = totalExp + offerExp;
		totalCost = totalCost + goldCost;
	end
	-- lualib:SysPromptMsg(player, "totalExp="..totalExp);

	
	--扣金币
	if not lualib:Player_IsGoldEnough(player, totalCost, false) then
		lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up('金币不足,无法完成吞噬')");
		return ""
    end	

	if not lualib:Player_SubGold(player, totalCost, false, "扣金币", player) then
		lualib:Error("扣金币失败！name="..lualib:Name(player));
		return ""
    end
	
	local equip_crystal_exp = lualib:GetInt(equipGuid, "crystalExp"..index);
	local sum_exp = equip_crystal_exp + totalExp;
	for i = 1, 8 do 
		if sum_exp >= EXP[equip_crystal_level] then 
			sum_exp = sum_exp - EXP[equip_crystal_level];
			equip_crystal_level = equip_crystal_level + 1;
			if equip_crystal_level >= 9 then 
				break;
			end
		else
			break;
		end
	end

	-- local str = string.format("%q", "sum_exp="..sum_exp)
	-- local str = string.format("%q", "equip_crystal_exp="..equip_crystal_exp)
	-- lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up("..str..")");
	
	--消耗,扣宝石,根据key使用不同的操作
	for k, v in pairs(MATERIAL) do 
		local index = k:find("经验");
		if index ~= nil then 
			if not lualib:Item_Destroy(player, v, "宝石升级", player) then
				lualib:Error("扣道具失败"..lualib:Name(player));
				lualib:SysPromptMsg(player, "扣道具失败");
			end
		else
			if not lualib:DelItem(player, k, v, 2, "宝石升级", player) then 
				lualib:Error("宝石升级删除宝石失败");
				lualib:SysPromptMsg(player, "宝石升级删除宝石失败");
				return ""
			end
		end
	end
	

	local equip_crystal_post_keyname = equip_crystal_level.."级"..crystalType;
	local TABLE = lualib:Item_DataRow(equip_crystal_post_keyname)
	local stoneType = equip_crystal_post_keyname:match("(%D+)");
	local a = 0
	local propertyTb = {}
	local propertyType = {}
	if stoneType == "级物攻宝石" then
		a = 30
		local MinPhyAtk = TABLE["MinPhyAtk"];
		local MaxPhyAtk = TABLE["MaxPhyAtk"];
		propertyTb = {MinPhyAtk, MaxPhyAtk}
		propertyType[1] = 11
		propertyType[2] = 10
	elseif stoneType == "级魔攻宝石" then
		a = 32
		local MinMagAtk = TABLE["MinMagAtk"];
		local MaxMagAtk = TABLE["MaxMagAtk"];
		propertyTb = {MinMagAtk, MaxMagAtk}
		propertyType[1] = 13
		propertyType[2] = 12
	elseif stoneType == "级道攻宝石" then
		a = 34
		local MinTaoAtk = TABLE["MinTaoAtk"];
		local MaxTaoAtk = TABLE["MaxTaoAtk"];
		propertyTb = {MinTaoAtk, MaxTaoAtk}
		propertyType[1] = 15
		propertyType[2] = 14
	elseif stoneType == "级物防宝石" then
		a = 36
		local MinPhyDef = TABLE["MinPhyDef"];
		local MaxPhyDef = TABLE["MaxPhyDef"];
		propertyTb = {MinPhyDef, MaxPhyDef}
		propertyType[1] = 7
		propertyType[2] = 6
	elseif stoneType == "级魔防宝石" then
		a = 38
		local MinMagDef = TABLE["MinMagDef"];
		local MaxMagDef = TABLE["MaxMagDef"];
		propertyTb = {MinMagDef, MaxMagDef}
		propertyType[1] = 9
		propertyType[2] = 8
	elseif stoneType == "级生命宝石" then
		a = 40
		local HP = TABLE["HP"];
		propertyTb = HP
		propertyType[1] = 3
	end
	
	
	if a ~= 40 then
		lualib:SetDynamicAttr(equipGuid, a, propertyType[1], propertyTb[1])
		lualib:SetDynamicAttr(equipGuid, a + 1, propertyType[2], propertyTb[2])	
	else
		lualib:SetDynamicAttr(equipGuid, a, propertyType[1], propertyTb)
	end
	lualib:SetStr(equipGuid, "EquipHole" .. index, equip_crystal_post_keyname);
	lualib:SetInt(equipGuid, "crystalExp"..index, sum_exp);
	lualib:Item_NotifyUpdate(player, equipGuid) 

	local str = string.format("%q", "crystalExp="..lualib:GetInt(equipGuid, "crystalExp"..index))
	lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up("..str..")");

	-- lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up('宝石吞噬成功')");
	lualib:ShowFormWithContent(player, "脚本表单", "CrystalSynthesis:Restart()");
	-- lualib:SysPromptMsg(player, lualib:Item2Json(equipGuid));
	-- lualib:SysPromptMsg(player, "宝石镶嵌成功");
	return ""
end

function VerifyCrystalCount(player, item_guid, count)
	count = tonumber(count);
	local keyname = lualib:KeyName(item_guid);
	local ownCount = lualib:ItemCount(player, keyname);
	if ownCount < count then 
		lualib:ShowFormWithContent(player, "脚本表单", "win_msg_up('宝石数量不足,无法继续填充此类宝石')");
		return ""
	end
	lualib:ShowFormWithContent(player, "脚本表单", "CrystalSynthesis:FillOriginItemCtr('"..item_guid.."')");
	return ""
end

