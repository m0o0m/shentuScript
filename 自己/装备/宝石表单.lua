local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

local UNSEAL_MONEY = 
{	--消耗类型1元宝 2金币
	{2, 1000},
	{2, 2000},
	{2, 3000},
}

function OfferData(player,item_guid)
	local DATA = {};
	-- item_guid = lualib:Item2Json(item_guid);
	DATA[1] = item_guid;
	lualib:ShowFormWithContent(player, "脚本表单", "CrystalWnd:UpData("..serialize(DATA)..")");
	return ""
end	

function Deblocking(player, item_guid1, index)
	index = tonumber(index);
	for i = 1, index-1 do 
		local status = lualib:GetInt(item_guid1, "Gem_holeNum");
		if status == 0 then 
			lualib:ShowFormWithContent(player,"脚本表单", "win_msg_up(\"请先开启前面的孔\");")
			-- lualib:ShowFormWithContent(player, "脚本表单", "CrystalWnd:MsgBox("..index..",".."'请先开启前面的未开启孔'"..")");
			return "请先开启前面的孔"
		end 
		
	end
	local status = lualib:GetInt(item_guid1, "Gem_holeNum");
	if status == index then 
		return "不要重复解锁"
	else 
		local money = UNSEAL_MONEY[index];
		if money then 
			if money[1] == 1 then 
				local gold = lualib:GetGold(player);
				if gold < money[2] then 
				lualib:ShowFormWithContent(player,"脚本表单", "win_msg_up(\"金币不足\");")

					return "金币不足"
				end
				if not lualib:Player_SubGold(player, money[2], false, "宝石镶嵌表单:Deblocking", player) then 
					return "宝石镶嵌表单:扣除金币失败"
				end
			elseif money[1] == 2 then 
				local ingot = lualib:GetIngot(player);
				if ingot < money[2] then 
				lualib:ShowFormWithContent(player,"脚本表单", "win_msg_up(\"元宝不足\");")

					return "元宝不足"
				end
				if not lualib:Player_SubIngot(player, money[2], false, "宝石镶嵌表单:Deblocking", player) then 
					return "宝石镶嵌表单:扣除元宝失败"
				end
			end
		else 
			return "没有找到对应索引位置的孔"
		end
		lualib:SetInt(item_guid1, "Gem_holeNum", index);
		lualib:Item_NotifyUpdate(player, item_guid1);
		lualib:ShowFormWithContent(player, "脚本表单", "CrystalWnd:Deblocking("..index..")");
	end
	lualib:ShowFormWithContent(player,"脚本表单", "win_msg_up(\"恭喜,解锁成功\");")
	return "解锁成功"
end


function InlayCrystal(player, equipGuid, index, stoneGuid)
	if not lualib:HasItem(player, equipGuid) then
		lualib:SysPromptMsg(player, "玩家没有该道具");
		return ""
	end
	
	if not lualib:HasItem(player, stoneGuid) then
		lualib:SysPromptMsg(player, "玩家没有该宝石");
		return ""
	end
	
	index = tonumber(index);
	local holeNum = lualib:GetInt(equipGuid, "Gem_holeNum");
	if index > holeNum then 
		lualib:SysPromptMsg(player, "该宝石孔还未被解锁");
		return ""
	end
	
	local str = lualib:GetStr(equipGuid, "EquipHole" .. index);
	if str ~= "" then 
		lualib:SysPromptMsg(player, "该宝石孔已经有宝石镶嵌其中");
		return ""
	end
	
	local stoneKeyName = lualib:KeyName(stoneGuid)
	local stoneType = stoneKeyName:match("(%D+)");
	--查重
	for i = 1, holeNum do
		local gemKeyName = lualib:GetStr(equipGuid, "EquipHole" .. i);
		local gemType = gemKeyName:match("(%D+)");
		if gemType == stoneType then 
				lualib:ShowFormWithContent(player,"脚本表单", "win_msg_up(\"一件装备只能镶嵌一个同种类的宝石\");")

			lualib:SysPromptMsg(player, "一件装备只能镶嵌一个同种类的宝石");
			return ""
		end
	end
	
	--消耗
	if not lualib:DelItem(player, stoneKeyName, 1, 2, "宝石镶嵌消耗", player) then 
		lualib:SysPromptMsg(player, "宝石镶嵌删除宝石失败");
		return ""
	end
	
	local level = tonumber(stoneKeyName:match("(%d+)"))
	local TABLE = lualib:Item_DataRow(stoneKeyName)
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
	lualib:SetStr(equipGuid, "EquipHole" .. index, stoneKeyName);
	lualib:Item_NotifyUpdate(player, equipGuid) 
	-- lualib:SysPromptMsg(player, lualib:Item2Json(equipGuid));
	OfferData(player,equipGuid);
	lualib:ShowFormWithContent(player,"脚本表单", "win_msg_up(\"宝石镶嵌成功\");")
	lualib:SysPromptMsg(player, "宝石镶嵌成功");
	return ""
end

function RemoveCrystal(player, equipGuid, index)
	if not lualib:HasItem(player, equipGuid) then
		lualib:SysPromptMsg(player, "玩家没有该道具");
		return ""
	end
	
	index = tonumber(index);
	local holeNum = lualib:GetInt(equipGuid, "Gem_holeNum");
	if index > holeNum then 
		lualib:SysPromptMsg(player, "该宝石孔还未被解锁");
		return ""
	end
	
	local stoneKeyName = lualib:GetStr(equipGuid, "EquipHole" .. index);
	if stoneKeyName == "" then 
		lualib:SysPromptMsg(player, "该宝石孔没有宝石可供移除");
		return ""
	end
	
	local free = lualib:GetBagFree(player);
	if free < 1 then 
	lualib:ShowFormWithContent(player,"脚本表单", "win_msg_up(\"包裹空间不足\");")

		lualib:SysPromptMsg(player, "包裹空间不足");
		return ""
	end
	
	local stoneType = stoneKeyName:match("(%D+)");
	local a = 0
	if stoneType == "级物攻宝石" then
		a = 30
	elseif stoneType == "级魔攻宝石" then
		a = 32
	elseif stoneType == "级道攻宝石" then
		a = 34
	elseif stoneType == "级物防宝石" then
		a = 36
	elseif stoneType == "级魔防宝石" then
		a = 38
	elseif stoneType == "级生命宝石" then
		a = 40
	end
	if a ~= 40 then
		lualib:SetDynamicAttr(equipGuid, a, 0, 0)
		lualib:SetDynamicAttr(equipGuid, a + 1, 0, 0)	
	else
		lualib:SetDynamicAttr(equipGuid, a, 0, 0)
	end
	lualib:SetStr(equipGuid, "EquipHole" .. index, "");
	if not lualib:AddItem(player, stoneKeyName, 1, false, "拆除宝石", player) then --给物品
		return "拆除宝石,返回玩家宝石失败"
	end
	lualib:Item_NotifyUpdate(player, equipGuid) 
	-- lualib:SysPromptMsg(player, lualib:Item2Json(equipGuid));
	lualib:ShowFormWithContent(player,"脚本表单", "win_msg_up(\"宝石移除成功\");")

	lualib:SysPromptMsg(player, "宝石移除成功");
	OfferData(player,equipGuid)
	return ""
end


