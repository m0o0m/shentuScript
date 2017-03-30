--装备品质属性值
function GetQualityValue(role_attr_name, table_param)
	local value = 0
	if table_param ~= nil then
		for element in pairs(table_param) do
			if table_param[element][PROPERTY_ATTR_NAME] == role_attr_name then
				value = value + table_param[element][PROPERTY_ATTR_VALUE]
			end
		end
	end
	return value,(value>0)
end

function GetQualityRangeValue(role_attr_name1,role_attr_name2, table_param)
	local value1 = GetQualityValue(role_attr_name1,table_param)
	local value2 = GetQualityValue(role_attr_name2,table_param)
	return value1,value2,(value1>0 or value2>0)
end

function GetRoleOrHeroProperty(prop)
	local hero = GetTipParam("HEROGUID")
	if hero == nil then
		return as3.tolua(UI:Lua_GetPlayerSelfPropBase(prop))
	else
		return as3.tolua(UI:Lua_GetPlayerPropBase(hero, prop))
	end
end

function GetRoleOrHeroProperty32(prop)
	local hero = GetTipParam("HEROGUID")
	if hero == nil then
		return as3.tolua(UI:Lua_GetPlayerSelfProperty32(prop))
	else
		return as3.tolua(UI:Lua_GetPlayerProperty32(hero, prop))
	end
end


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------物品、装备Tip------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionProp()
	local itemid = GetTipParam("ITEMID")
	local guid = GetTipParam("GUID")
	local entity = GetTipParam("ENTITY")
	if entity == nil then
		if string.len(guid) > 9 then entity = true else entity = false end
	end

	local equip = false
	if GetTipParam("PROP_TYPE") == 1 then equip = true end

	--初始化Tips数据
	if true ~= tipItemsLayoutInitialize(entity, equip) then return end

	if not equip then
		CL:SetTipRet(GetItemTips(entity)); --物品tips
	else
		CL:SetTipRet(GetEquipTips(entity)); --装备tips
	end
end

--物品Tips-----------------------------------------
function GetItemTips(entity)
	local item_type = GetTipParam("PROP_TYPE")         --物品类型
	local item_subtype = GetTipParam("PROP_SUBTYPE")   --物品子类型
	local item_name = GetTipParam("PROP_NAME")         --物品名字
	local item_keyname = GetTipParam("PROP_KEYNAME")   --物品key name

	local ret = GetTipBegin()
	ret = ret..tipAll(GetTipParam("WIDTH"))

	local item = nil
	--标题--
	item = tipItemsLayoutTitle(entity, false)
	if item == nil then item = "" end; ret = ret..item
	--绑定状态--
	item = tipItemsLayoutBind(entity, false)
	if item == nil then item = "" end; ret = ret..item
	--基本需求--
	item = tipItemsLayoutRequire(entity, false)
	if item == nil then item = "" end; ret = ret..item
	--基本属性--
	--[[item = tipItemsLayoutProperty(entity, false, item ~= "")
	if item == nil then item = "" end; ret = ret..item--]]
	--物品简介--
	item = tipItemsLayoutIntroduction(entity, false)
	if item == nil then item = "" end; ret = ret..item
	--附魔石--
	if item_keyname == "附魔石" then
		item = tipItemsLayoutFumoshi(entity, false)
		if item == nil then item = "" end; ret = ret..item
	end
	--价格属性--
	item = tipItemsLayoutPrice(entity, false)
	if item == nil then item = "" end; ret = ret..item

	ret = ret..GetTipEnd();
	return ret
end

--装备Tips-----------------------------------------
function GetEquipTips(entity)
	local equip_name = GetTipParam("PROP_NAME")         --装备名字
	local equip_keyname = GetTipParam("PROP_KEYNAME")   --装备key name

	local ret = GetTipBegin()
	ret = ret..tipAll(GetTipParam("WIDTH"))

	local item = nil
	--标题--
	item = tipItemsLayoutTitle(entity, true)
	if item == nil then item = "" end; ret = ret..item
		
	--绑定状态--
	item = tipItemsLayoutBind(entity, true)
	if item == nil then item = "" end; ret = ret..item
		
		
	--基本需求--
	item = tipItemsLayoutRequire(entity, true)
	if item == nil then item = "" end; ret = ret..item
		
	--基本属性--
	--[[item = tipItemsLayoutProperty(entity, true, item ~= "")
	if item == nil then item = "" end; ret = ret..item--]]
		
	--攻防属性--
	item = tipItemsLayoutAttackDefense(entity, true)
	if item == nil then item = "" end; ret = ret..item
	--其他属性--
	item = tipItemsLayoutOtherProperty(entity, true, item ~= "")
	if item == nil then item = "" end; ret = ret..item
	--宝石镶嵌属性
	item = tipItemsLayoutCrystal(entity)
	if item == nil then item = "" end; ret = ret..item
	--装备介绍属性--
	item = tipItemsLayoutZhuangbeiJieshao(entity, true)
	if item == nil then item = "" end; ret = ret..item
		
	--[[装备附魔属性--
	item = tipItemsLayoutFumo(entity, true)
	if item == nil then item = "" end; ret = ret..item
	--精炼属性--
	item = tipItemsLayoutRefine(entity, true)
	if item == nil then item = "" end; ret = ret..item
	--鉴定属性--
	item = tipItemsLayoutIdentify(entity, true)
	if item == nil then item = "" end; ret = ret..item--]]
	
	--套装属性--
	item = tipItemsLayoutSuit(entity, true)
	if item == nil then item = "" end; ret = ret..item
	--装备回收、捐赠属性--
	item = tipItemsLayoutZhuangbeihuishou(entity)
	if item == nil then item = "" end; ret = ret..item
	--坐骑属性--
	if equip_subtype == 14 then --坐骑subtype是14
		item = tipItemsLayoutHorse(entity, true)
		if item == nil then item = "" end; ret = ret..item
	end
	--原名显示--
	item = tipItemsLayoutRawName(entity)
	if item == nil then item = "" end; ret = ret..item
	--价格属性--
	item = tipItemsLayoutPrice(entity, true)
	if item == nil then item = "" end; ret = ret..item	
	

	ret = ret..GetTipEnd(); return ret
end

--初始化数据----------------------------------------------------------------------------------------------------
function tipItemsLayoutInitialize(entity, equip)
	--当前最小Tip宽度--
	local Entity = GetTipParam("GUIDATA")		
	local qiangh_num = CLGetItemEntityCustomVarInt(Entity, "xing_num")	
	if equip then
		local item_subtype = GetTipParam("PROP_SUBTYPE")
		if item_subtype == 5 or item_subtype == 12 then
			SetTipParam("WIDTH", 255)
		else
			SetTipParam("WIDTH", 355)
		end
		
	else
		SetTipParam("WIDTH", 255)
	end	
	--获取自身GUID--
	if not as3.tolua(UI:Lua_GetPlayerSelfPropBase(ROLE_PROP_ROLEID)) then return end
	SetTipParam("SELFID", as3.tolua(LuaRet))
	--获取拥有者GUID--
	local OwerId = "0"
	if entity then
		OwerId = GetTipParam("ENTITY_ROLE")
	end
	SetTipParam("OWNERID", OwerId)
	--获取是否是英雄物品
	local HeroId = "0"
	if entity then
		if not as3.tolua(UI:Lua_GetCurHeroGUID()) then return end
		HeroId = as3.tolua(LuaRet)
	end
	if HeroId ~= "0" and type(HeroId) == type(OwerId) and HeroId == OwerId then
		SetTipParam("HEROGUID", HeroId)
	end
	--获取极品属性--
	if entity and equip then
		SetTipParam("QUALITY", GetTipParam("EQUIP_QUALITY"))
	end
	--获取精炼属性--
	if entity and equip then
		SetTipParam("REFINE", GetTipParam("EQUIP_REFINEDATA"))
		local _refine_attr_table = {}
		_refine_attr_table[ROLE_PROP32_MAX_HP_PCT] = "HP上限"
		_refine_attr_table[ROLE_PROP32_MAX_MP_PCT] = "MP上限"
		_refine_attr_table[ROLE_PROP32_MAX_PHY_DEF_PCT] = "物防上限"
		_refine_attr_table[ROLE_PROP32_MAX_MAG_DEF_PCT] = "魔防上限"
		_refine_attr_table[ROLE_PROP32_MAX_PHY_ATK_PCT] = "物攻上限"
		_refine_attr_table[ROLE_PROP32_MAX_MAG_ATK_PCT] = "魔攻上限"
		_refine_attr_table[ROLE_PROP32_MAX_TAO_ATK_PCT] = "道术上限"
		SetTipParam("REFINETABLE", _refine_attr_table)
	end
	--获取鉴定属性--
	if entity and equip then
		SetTipParam("IDENTIFY", GetTipParam("EQUIP_IDENTIFIES"))
	end
	--获取物品的type--
	
	--获取物品的Sub type--
	
	--获取物品名称--
	
	--获取物品Key name--
	
	return true
end

--物品tip标题----------------------------------------------------------------------------------------------------
function tipItemsLayoutTitle(entity, equip)
	local ret = tipSet(nil, 0)

	--标题--
	local name = GetTipParam("PROP_NAME")
	--msg(name)
	local color = 4278190079 --白色
	local brief = GetTipParam("PROP_BRIEF")
	color =  mkcolor(GetTipParam("PROP_COLOR"))

	--[[if equip and GetTipParam("PROP_SUBTYPE") == 14 and GetTipParam("CUSTOM_INT" .. "h_type") then
		local h_type = GetTipParam("CUSTOM_INT" .. "h_type")
		if h_type == 0 or h_type > 5 then h_type = 1 end
		local __name = { "","*极","*珍","*绝","*神" }
		--标题颜色表         白色       绿色       蓝色       紫色       金色       红色
		local __color = { 4278190079,4281645312,4278276095,4287265790,4294950430,4294901760 }
		color = __color[h_type]
		name = name..__name[h_type]
	elseif equip and brief == "荣耀装备" then
		color = MakeARGB(255, 245, 146, 100)
	end--]]
	--msg("color="..color)
	SetTipParam("TITLECOLOR", color)
	ret = ret..tipText(name, color, "SIMLI18")

	local BigIcon = GetTipParam("PROP_TIPSICON")	
	if BigIcon ~= 0 and BigIcon ~= nil then
		ret = ret..tipSet2(0,30)..tipImage(1803100002,58,58)..tipSet2(0,30)..tipImage(BigIcon, 58, 58)
	end	
	
	
	--精炼等级--
--[[	if equip == true and entity and GetTipParam("PROP_SUBTYPE") ~= 5 then
		local refine = GetTipParam("EQUIP_REFINELEVEL")
		if not refine then return end
		if refine > 0 then
			local __color =
			{
				4294967295, -- +1  白色
				4294967295, -- +2  白色
				4294967295, -- +3  白色
				4294967295, -- +4  白色
				4294967295, -- +5  白色
				4281645312, -- +6  绿色
				4281645312, -- +7  绿色
				4281645312, -- +8  绿色
				4287265790, -- +9  紫色
				4287265790, -- +10 紫色
				4287265790, -- +11 紫色
				4294894158, -- +12 金黄色
				4294894158, -- +13 金黄色
				4294894158, -- +14 金黄色
				4294901760, -- +15 红色
				4294901760, -- +16 红色
				4294901760, -- +17 红色
				4283453520, -- +18 黑色
			}
			local r_color = __color[refine]
			if r_color ~= nil then
				ret = ret..tipSet(10, 5)
				ret = ret..tipImage2(1900450000, r_color)
				if refine < 9 then
					ret = ret..tipImage2(tonumber("1900450"..(refine+1).."00"), r_color)
				elseif refine == 9 then
					ret = ret..tipImage2(1900451000, r_color)
				else
					ret = ret..tipImage2(1900450200, r_color)
					ret = ret..tipImage2(tonumber("1900450"..(refine-9).."00"), r_color)
				end
			end
		end

		--添加精炼等级星--
		local empty_num = 0   --空星数量
		local half_num = 0    --半星数量
		local full_num = 0    --满星数量
		if refine <= 14 then
			half_num = refine % 2
			full_num = math.floor(refine / 2)
			empty_num = 7 - full_num - half_num
		else
			empty_num = 0
			half_num = 0
			full_num = 7
		end
		if half_num > 0 or full_num > 0 then --装备在没精炼的状态下不显示空的星星
			ret = ret..tipText("\n", nil, "system")
			for i=1,full_num do
				ret = ret..tipImage(1900340293)..tipSet(2)
			end
			for i=1,half_num do
				ret = ret..tipImage(1900340294)..tipSet(2)
			end
			for i=1,empty_num do
				--ret = ret..tipImage(1900340295)..tipSet(2)
			end
			if full_num > 0 then
				ret = ret..tipSet2(0)
				ret = ret..tipSet(-9, -9)
				for i=1,full_num do
					ret = ret..tipAnimate(1044800000)
					ret = ret..tipSet(17)
				end
			end
			if refine >= 15 then
				ret = ret..tipSet2(0)
				ret = ret..tipSet(-14, -1)
				ret = ret..tipAnimate(1044900000)
			end
		end
	end--]]
	
	if entity and equip then
		--强化
		--msg('进入强化')
		local refine = GetTipParam("EQUIP_REFINELEVEL")
		--msg('refine='..tostring(refine))
		if refine > 0 then
			if refine > 10 then
				ret = ret .. tipSet2(36, 32) ..tipText("+"..refine, "#ffcc00")
			else
				ret = ret .. tipSet2(40, 32) ..tipText("+"..refine, "#ffcc00")
			end
				
		end
		--注灵
		local Entity = GetTipParam("GUIDATA")
		--msg('Entity='..tostring(Entity))
		local zhul_lv = CLGetItemEntityCustomVarInt(Entity, "zhul_level")	
		if zhul_lv > 0 then
			if zhul_lv > 10 then
				ret = ret .. tipSet2(36, 70) ..tipText("+"..zhul_lv, "#00ccff")
			else
				ret = ret .. tipSet2(40, 70) ..tipText("+"..zhul_lv, "#00ccff")
			end	
		end
		
	end	
	
	local item_keyname = GetTipParam("PROP_KEYNAME")
	--首冲送的道具,模板属性,显示实体属性
	if not entity then
		if item_keyname == '武魂战刃Plus' or item_keyname == '魔魂法杖Plus' or item_keyname == '玄魂道剑Plus' then
			ret = ret .. tipSet2(37, 32) ..tipText("+6", "#ffcc00")
		end	
	end
	ret = ret..tipText("\n", nil, "system")..tipSet(nil, 8); return ret
end

--物品和装备的绑定状态----------------------------------------------------------------------------------------------------
function tipItemsLayoutBind(entity, equip)
	local ret = ""
	--装备状态--
	local self = GetTipParam("SELFID")
	local ower = GetTipParam("OWNERID")
	local qiangh_num = 0
	if entity and equip then
		local Entity = GetTipParam("GUIDATA")		
		qiangh_num = CLGetItemEntityCustomVarInt(Entity, "xing_num")	
	end	
	--[[msg("ENTITY_SITE="..GetTipParam("ENTITY_SITE").."; Pos="..GetItemPosType(GetTipParam("ENTITY_SITE")).."; EQUIMENT_POS="..EQUIMENT_POS.."; ower="..tostring(ower).."; self="..tostring(self)
	.."; role="..tostring(GetTipParam("ENTITY_ROLE")))--]]
	if equip and entity and ower ~= 0 and self == ower and EQUIMENT_POS == GetItemPosType(GetTipParam("ENTITY_SITE"))   then
		if qiangh_num > 0 then
			ret = ret..tipSet2(230,30)..tipImage(1803200036,78,55)
		else
			ret = ret..tipSet2(160,30)..tipImage(1803200036,78,55)
		end	
	end
	--绑定状态--
	local bound = false
	if entity then
		bound = GetTipParam("ENTITY_IS_BOUND")
	else
		if GetTipItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND) then
			bound = as3.tolua(LuaRet)
		end
		if not bound then
			bound = (GetTipParam("PROP_BINDTYPE") == 1)
		end
	end
	local state,color
	if bound then 
		state = "【绑定】"; color = 4294894158
		if equip then
			if qiangh_num > 0 then
				ret = ret..tipSet2(300, 0)..tipText(state, color)
			else
				ret = ret..tipSet2(200, 0)..tipText(state, color)
			end	
		else
			ret = ret..tipSet2(200, 0)..tipText(state, color)
		end	
	else
		--state = "未绑定"; color = 4281645312 
		--ret = ret..tipText(state.."\n", color)
	end
	
	--if ret ~= "" then ret = ret..tipSet(nil, 8) end; 
	return ret
end

--基本需求属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutRequire(entity, equip)
	local ret = ""..tipSet2(65, 26)
	
	-----------true和false，bool类型做key，注意没有双引号，这个运用多依靠学习，后面直接用一个表达式来索引
	local __color = { [true] = 4294901760, [false] = 4294573201 }
	
	local equip_type = GetTipParam("PROP_TYPE")         --装备类型
	local equip_subtype = GetTipParam("PROP_SUBTYPE")   --装备子类型
	--查询物品标识
	--物品表item，字段ItemIdentifier, 物品标识--
	if ItemIdentifierCache == nil then ItemIdentifierCache = {} end
	local ItemIdt = ItemIdentifierCache[GetTipParam("ITEMID")]
	if ItemIdt == nil then
		if GetTipParam("PROP_ITEMIDENTIFIER")==nil then ItemIdt = "" end
		if GetTipParam("PROP_ITEMIDENTIFIER") ~= 0 then
			ItemIdt = GetTipParam("PROP_ITEMIDENTIFIER")
		end
		--缓存物品标识--
		ItemIdentifierCache[GetTipParam("ITEMID")] = ItemIdt
		if ItemIdt == "" then ItemIdt = nil end
	end
	SetTipParam("PROP_ITEMIDENTIFIER",ItemIdt)
	local typeName = {"装备","消耗品","有限品","材料","杂货","包裹","仓库","金币","打捆道具","任务道具"}
	local SubTypeName = {"武器","头盔","护腕","衣服","符咒","鞋子","腰带","项链","戒指","勋章","宝珠","翅膀","法宝","坐骑","盾牌","时装","斗笠","吊坠","魂珠"}
	if tonumber(equip_type) == 1 then
		ret = ret..tipText("类型：", 4294573201)..tipText(SubTypeName[equip_subtype])
	else
		ret = ret..tipText("类型：", 4294573201)..tipText(typeName[equip_type])
	end	
	
	--等级需求--
	    --转生装备等级数据
	local rein_item = 
				{ 
				----------  1 武器 --------------------
				["圣武战刃"] = 1,
				["战神圣武战刃"] = 1,
				["圣魔法杖"] = 1,
				["圣灵道剑"] = 1,
				["威武战刃"] = 2,
				["战神威武战刃"] = 2,
				["幻神法杖"] = 2,
				["无量道剑"] = 2,
				["洪武行天战刃"] = 3,
				["战神洪武行天战刃"] = 3,
				["天地玄奇法杖"] = 3,
				["玄天妙法道扇"] = 3,
				["雄武震天战刃"] = 5,
				["战神雄武震天战刃"] = 5,
				["天异玄奥法杖"] = 5,
				["混天广法道剑"] = 5,
				["尊武凌天战刃"] = 7,
				["天魁玄灵法杖"] = 7,
				["鸿天明法道剑"] = 7,
				["神威亢天战刃"] = 9,
				["天暴玄宗法杖"] = 9,
				["昊天玄尊道剑"] = 9,
				["至尊傲天战刃"] = 11,
				["天狂玄傲法杖"] = 11,
				["傲天元法道剑"] = 11,
				
				----------- 2 头盔 --------------------
				["圣武头盔"] = 1,	
				["战神圣武头盔"] = 1,	
				["圣魔头盔"] = 1,
				["圣灵头盔"] = 1,	
				["威武头盔"] = 2,
				["战神威武头盔"] = 2,
				["幻神头盔"] = 2,
				["无量头盔"] = 2,
				["洪武行天头盔"] = 4,
				["战神洪武行天头盔"] = 4,
				["天地玄奇头盔"] = 4,
				["玄天妙法头盔"] = 4,
				["雄武震天头盔"] = 6,
				["战神雄武震天头盔"] = 6,
				["天异玄奥头盔"] = 6,
				["混天广法头盔"] = 6,
				["尊武凌天头盔"] = 8,
				["天魁玄灵头盔"] = 8,
				["鸿天明法头盔"] = 8,
				["神威亢天头盔"] = 10,
				["天暴玄宗头盔"] = 10,
				["昊天玄尊头盔"] = 10,
				["至尊傲天头盔"] = 12,
				["天狂玄傲头盔"] = 12,
				["傲天元法头盔"] = 12,
				
				----------- 3 护腕 ----------------
				["圣武手镯"] = 1,
				["战神圣武手镯"] = 1,
				["圣魔手镯"] = 1,
				["圣灵手镯"] = 1,
				["威武手镯"] = 2,
				["战神威武手镯"] = 2,
				["幻神手镯"] = 2,
				["无量手镯"] = 2,
				["洪武行天手镯"] = 4,
				["战神洪武行天手镯"] = 4,
				["天地玄奇手镯"] = 4,
				["玄天妙法手镯"] = 4,
				["雄武震天手镯"] = 6,
				["战神雄武震天手镯"] = 6,
				["天异玄奥手镯"] = 6,
				["混天广法手镯"] = 6,
				["尊武凌天手镯"] = 8,
				["天魁玄灵手镯"] = 8,
				["鸿天明法手镯"] = 8,
				["神威亢天手镯"] = 10,
				["天暴玄宗手镯"] = 10,
				["昊天玄尊手镯"] = 10,
				["至尊傲天手镯"] = 12,
				["天狂玄傲手镯"] = 12,
				["傲天元法手镯"] = 12,
				
				------------ 4 衣服 ---------------
				["圣武战甲"] = 1,
				["显示圣武战甲"] = 1,
				["圣武战袍"] = 1,
				["圣魔法袍"] = 1,
				["圣魔羽衣"] = 1,
				["圣灵道袍"] = 1,
				["圣灵道衣"] = 1,
				["威武战甲"] = 2,
				["显示威武战甲"] = 2,
				["威武战袍"] = 2,
				["幻神法袍"] = 2,
				["幻神羽衣"] = 2,
				["无量道袍"] = 2,
				["无量道衣"] = 2,
				["洪武行天战甲"] = 3,
				["显示洪武刑天战甲"] = 3,
				["洪武行天战袍"] = 3,
				["天地玄奇法袍"] = 3,
				["天地玄奇羽衣"] = 3,
				["玄天妙法道袍"] = 3,
				["玄天妙法道衣"] = 3,
				["雄武震天战甲"] = 5,
				["显示雄武震天战甲"] = 5,
				["雄武震天战袍"] = 5,
				["天异玄奥法袍"] = 5,
				["天异玄奥羽衣"] = 5,
				["混天广法道袍"] = 5,
				["混天广法道衣"] = 5,
				["尊武凌天战甲"] = 7,
				["尊武凌天战袍"] = 7,
				["天魁玄灵法袍"] = 7,
				["天魁玄灵羽衣"] = 7,
				["鸿天明法道袍"] = 7,
				["鸿天明法道衣"] = 7,
				["神威亢天战甲"] = 9,
				["神威亢天战袍"] = 9,
				["天暴玄宗法袍"] = 9,
				["天暴玄宗羽衣"] = 9,
				["昊天玄尊道袍"] = 9,
				["昊天玄尊道衣"] = 9,
				["至尊傲天战甲"] = 11,
				["至尊傲天战袍"] = 11,
				["天狂玄傲法袍"] = 11,
				["天狂玄傲羽衣"] = 11,
				["傲天元法道袍"] = 11,
				["傲天元法道衣"] = 11,
				
				---------------- 5 符咒 ------------ 
				
				----------- 6 鞋子 ------------ 
				["圣武靴子"] = 1,
				["圣魔靴子"] = 1,
				["圣灵靴子"] = 1,
				["威武靴子"] = 2,
				["幻神靴子"] = 2,
				["无量靴子"] = 2,
				["洪武行天靴子"] = 4,
				["天地玄奇靴子"] = 4,
				["玄天妙法靴子"] = 4,
				["雄武震天靴子"] = 6,
				["天异玄奥靴子"] = 6,
				["混天广法靴子"] = 6,
				["尊武凌天靴子"] = 8,
				["天魁玄灵靴子"] = 8,
				["鸿天明法靴子"] = 8,
				["神威亢天靴子"] = 10,
				["天暴玄宗靴子"] = 10,
				["昊天玄尊靴子"] = 10,
				["至尊傲天靴子"] = 12,
				["天狂玄傲靴子"] = 12,
				["傲天元法靴子"] = 12,

				----------- 7  腰带 ------------- 
				["圣武腰带"] = 1,
				["圣魔腰带"] = 1,
				["圣灵腰带"] = 1,
				["威武腰带"] = 2,
				["幻神腰带"] = 2,
				["无量腰带"] = 2,
				["洪武行天腰带"] = 4,
				["天地玄奇腰带"] = 4,
				["玄天妙法腰带"] = 4,
				["雄武震天腰带"] = 6,
				["天异玄奥腰带"] = 6,
				["混天广法腰带"] = 6,
				["尊武凌天腰带"] = 8,
				["天魁玄灵腰带"] = 8,
				["鸿天明法腰带"] = 8,
				["神威亢天腰带"] = 10,
				["天暴玄宗腰带"] = 10,
				["昊天玄尊腰带"] = 10,
				["至尊傲天腰带"] = 12,
				["天狂玄傲腰带"] = 12,
				["傲天元法腰带"] = 12,
				
				----------- 8 项链 ---------------
				["圣武项链"] = 1,
				["战神圣武项链"] = 1,
				["圣魔项链"] = 1,
				["圣灵项链"] = 1,
				["威武项链"] = 2,
				["战神威武项链"] = 2,
				["幻神项链"] = 2,
				["无量项链"] = 2,
				["洪武行天项链"] = 4,
				["战神洪武行天项链"] = 4,
				["天地玄奇项链"] = 4,
				["玄天妙法项链"] = 4,
				["雄武震天项链"] = 6,
				["战神雄武震天项链"] = 6,
				["天异玄奥项链"] = 6,
				["混天广法项链"] = 6,
				["尊武凌天项链"] = 8,
				["天魁玄灵项链"] = 8,
				["鸿天明法项链"] = 8,
				["神威亢天项链"] = 10,
				["天暴玄宗项链"] = 10,
				["昊天玄尊项链"] = 10,
				["至尊傲天项链"] = 12,
				["天狂玄傲项链"] = 12,
				["傲天元法项链"] = 12,
				
				------------- 9戒指------------------
				["圣武戒指"] = 1,
				["圣魔戒指"] = 1,
				["圣灵戒指"] = 1,
				["威武戒指"] = 2,
				["幻神戒指"] = 2,
				["无量戒指"] = 2,
				["洪武行天戒指"] = 4,
				["天地玄奇戒指"] = 4,
				["玄天妙法戒指"] = 4,
				["雄武震天戒指"] = 6,
				["天异玄奥戒指"] = 6,
				["混天广法戒指"] = 6,
				["尊武凌天戒指"] = 8,
				["天魁玄灵戒指"] = 8,
				["鸿天明法戒指"] = 8,
				["神威亢天戒指"] = 10,
				["天暴玄宗戒指"] = 10,
				["昊天玄尊戒指"] = 10,
				["至尊傲天戒指"] = 12,
				["天狂玄傲戒指"] = 12,
				["傲天元法戒指"] = 12,	
		}
	ret = ret..tipSet2(65, 41)
	local keyname = GetTipParam("PROP_KEYNAME")
	local rein_level = rein_item[keyname]
	if rein_level then
		if CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID) then 
			local self_reinlevel = CLGetPlayerCustomIntData(as3.tolua(LuaRet),"reinLevel")
			if self_reinlevel < rein_level then
				ret = ret..tipText("转生："..rein_level, 4294901760)
			else
				ret = ret..tipText("转生：",4294573201) 	..tipText(rein_level)	
			end	
		end
	else 
		if GetTipParam("PROP_LEVEL") ~= 0 then
			if GetTipParam("PROP_ITEMIDENTIFIER") == "气血石" or GetTipParam("PROP_ITEMIDENTIFIER") == "火龙之心" then
			else
				local r_level = tonumber(GetTipParam("PROP_LEVEL"))
				if not GetRoleOrHeroProperty32(ROLE_PROP32_LEVEL) then return end
				local level = tonumber(as3.tolua(LuaRet))
				if level < r_level then
					ret = ret..tipText("等级："..r_level, 4294901760)
				else
					ret = ret..tipText("等级：",4294573201)	..tipText(r_level)	
				end	
			end
		else
			ret = ret..tipText("等级：",4294573201)	..tipText("无限制")	
		end
	end
	if equip then	
		--职业需求--
		ret = ret..tipSet2(65, 56)
		if GetTipParam("PROP_JOB") ~= 0 then
			local r_job = GetTipParam("PROP_JOB")
			if not GetRoleOrHeroProperty32(ROLE_PROP32_JOB) then return end
			local job = tonumber(as3.tolua(LuaRet))
			if job ~= r_job then
				ret = ret..tipText("职业："..RDJOBName[r_job], 4294901760)
			else
				ret = ret..tipText("职业：",4294573201)	..tipText(RDJOBName[r_job])	
			end	
		else
			ret = ret..tipText("职业：",4294573201)	..tipText("无限制")	
		end
		
		--性别需求--
		ret = ret..tipSet2(65, 71)
		if GetTipParam("PROP_GENDER") ~= 0 then
			local r_sex = GetTipParam("PROP_GENDER")
			if not GetRoleOrHeroProperty(ROLE_PROP_SEX) then return end
			local sex = tonumber(as3.tolua(LuaRet))
			if sex ~= r_sex then
				ret =ret..tipText("性别："..RDSexName[r_sex].."\n",4294901760)
			else
				ret = ret..tipText("性别：",4294573201)	..tipText(RDSexName[r_sex].."\n")	
			end	
		else
			ret = ret..tipText("性别：",4294573201)	..tipText("无限制\n")	
		end
	else
		--次数需求
		local max_use = GetTipParam("PROP_USECOUNT") 
		if max_use ~= 0 and GetItemGUIDataItemPos() ~= SKILLBAR_POS then
			local cur_use = max_use
			if entity then
				cur_use = GetTipParam("ENTITY_USE_COUNT") 
			end
			ret = ret..tipSet2(65, 56)..tipText("次数：",4294573201)	..tipText(cur_use.."/"..max_use.."\n")
		end
	end	

	ret = ret..tipText("\n", nil, "system")
	return ret
end


--物品简介----------------------------------------------------------------------------------------------------
function tipItemsLayoutIntroduction(entity, equip)
	local ret = ""..tipLine()
	if not equip and GetTipParam("PROP_DESC") ~= "" and GetTipParam("PROP_DESC") ~= "0" then
		local desc = GetTipParam("PROP_DESC") 
		desc = string.gsub(desc, "\"", "\\\"")
		if GetTipParam("PROP_COLOR") == "0" then
			if as3.tolua(UI:Lua_GetMallItemHandleByName(GetTipParam("PROP_NAME"))) then
				ret = ret..tipText2(desc.."\n", 4294955892)
			else
				ret = ret..tipText2(desc.."\n", 4278190079)
			end
		else
			ret = ret..tipText2(desc.."\n", GetTipParam("TITLECOLOR"))
		end
	end
	if ret ~= "" then ret = ret..tipSet(nil, 8) end; return ret
end

--附魔石吸收属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutFumoshi(entity, equip)
	local ret = ""

	if not equip and entity and GetTipParam("PROP_TYPE") == 4 and GetTipParam("PROP_SUBTYPE") == 20 then
		local str = ""
		for i = 1,6 do
			local name, value
			local fumoAtt = GetTipParam("CUSTOM_INT" .. "fumoAtt"..i)
			if fumoAtt then
				if fumoAtt ~= 0 and as3.tolua(UI:Lua_GetAttrProp(fumoAtt,ATT_PROP_CHINANAME)) then name = as3.tolua(LuaRet) end
			end
			local value = GetTipParam("CUSTOM_INT" .. "fumoValue"..i)

			if name ~= nil and value ~= nil and name ~= "" then
				str = str..tipSet(8)..tipText(GetAttNameValueStr(name, value).."\n", 4294953984)
			end
		end
		if str == "" then
			ret = tipText("无附魔属性\n", 4289309097)
		else
			ret = tipText("附魔属性\n", 4294953984)..str
		end
	end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--攻防属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutAttackDefense(entity, equip)
	local ret = ""
	if not equip then return ret end
	local ext_table = {}
	local att_table = {}
	local item_keyname = GetTipParam("PROP_KEYNAME")
	
	if entity then
	--强化	
		local refine = GetTipParam("EQUIP_REFINELEVEL")
		local Entity = GetTipParam("GUIDATA")		
		local qiangh_num = CLGetItemEntityCustomVarInt(Entity, "xing_num")	
		if qiangh_num > 0 then
			ret = ret .. tipText("强化：", "#ffcc00") ..tipSet(10)
			if refine > 0 then
				for i = 1 , refine do 
					ret = ret..tipImage(1802400025,19,17)..tipSet(2)
				end
				local a = refine + 1 
				if a <= qiangh_num then
					for j = a , qiangh_num do 
						ret = ret..tipImage(1802400026,19,17)..tipSet(2)		
					end
				end	
				ret = ret .. tipSet2(330,106) ..tipText("+"..refine.."\n", "#ffcc00")
				local Ext_table = GetTipParam("EQUIP_EXT")
				local ext_name = 0 
				local ext_value = 0 
				for i = 10 , 1 , -1  do 
					if Ext_table[i] ~= nil and Ext_table[i][PROPERTY_ATTR_NAME] ~= nil and Ext_table[i][PROPERTY_ATTR_VALUE] ~= 0  then
						ext_name = Ext_table[i][PROPERTY_ATTR_NAME]
						ext_value = Ext_table[i][PROPERTY_ATTR_VALUE]
						ext_table[ext_name] = ext_value
					else
						break
					end	
				end	
			else
				for j = 1 , qiangh_num do 
					ret = ret..tipImage(1802400026,19,17)..tipSet(2)
				end
				ret = ret .. tipSet2(330,106) ..tipText("+0\n", "#ffcc00")
			end	
		
		end	
		--注灵
		local zhul_num = CLGetItemEntityCustomVarInt(Entity, "zhul_num")
		--msg("zhul_num="..tostring(zhul_num))	
		if zhul_num > 0 then
			local zhul_lv = CLGetItemEntityCustomVarInt(Entity, "zhul_level")	
			local jindutiao =  math.floor(zhul_lv/zhul_num*243)	
			if jindutiao < 1 then
				jindutiao = 1
			end
			ret = ret .. tipText("\n蕴魂：", "#00ccff") ..tipSet(40,-18)
			ret = ret .. tipImage(1802400027,267,24)
			ret = ret .. tipSet(-257,5) .. tipImage(1802400028,jindutiao,15)
			ret = ret .. tipSet2(317,138) ..tipText(zhul_lv.."/"..zhul_num.."\n", "#00ccff")
			local att_name = 0 
			local att_value = 0 
			for i = 10 , 19  do 
				att_name = CLGetItemEntityCustomVarInt(Entity, "_da".. i)
				att_value = CLGetItemEntityCustomVarInt(Entity, "_dv".. i)
				if att_name ~= 0 and att_value ~= 0  then			
					att_table[att_name] = att_value
				else
					break
				end	
			end	
		end	
	else
		--首冲送的道具,模板属性,显示实体属性
		if item_keyname == '武魂战刃Plus' or item_keyname == '魔魂法杖Plus' or item_keyname == '玄魂道剑Plus' then
			
			ret = ret .. tipText("强化：", "#ffcc00") ..tipSet(10)
			for j = 1 , 6 do 
				ret = ret..tipImage(1802400025,19,17)..tipSet(2)
			end
			for j = 1 , 4 do 
				ret = ret..tipImage(1802400026,19,17)..tipSet(2)
			end
			ret = ret .. tipSet2(330,106) ..tipText("+6\n", "#ffcc00")	
			
			ret = ret .. tipText("\n蕴魂：", "#00ccff") ..tipSet(40,-18)
			ret = ret .. tipImage(1802400027,267,24)
			ret = ret .. tipSet2(317,138) ..tipText("0/12".."\n", "#00ccff")	
		else
			local item_subtype = GetTipParam("PROP_SUBTYPE")
			if item_subtype ~= 5 and item_subtype ~= 12 then
				local item_level = tonumber(GetTipParam("PROP_LEVEL"))
				--模板装备强化数据
				local qiangh_num = 0
				if item_subtype == 10 or item_subtype == 11 or item_subtype == 15 or item_subtype == 13 then
					qiangh_num = 12 
					
				else	
					if item_level >= 80 then 
						qiangh_num = 12 
					end	
					if item_level < 80 and item_level >= 60 then 
						qiangh_num = 10 
					end	
					if item_level < 60 and item_level >= 30 then 
						qiangh_num = 8 
					end
				end
				if qiangh_num > 0 then
					ret = ret .. tipText("强化：", "#ffcc00") ..tipSet(10)
					for j = 1 , qiangh_num do 
						ret = ret..tipImage(1802400026,19,17)..tipSet(2)
					end
					ret = ret .. tipSet2(330,106) ..tipText("+0\n", "#ffcc00")	
				end	
				
				--模板装备注灵数据
				local zhul_num = 0
				if item_subtype == 15 or item_subtype == 11 or item_subtype == 10 or item_subtype == 13 then
					zhul_num = 12	
				else
					if item_level >= 80 then
						zhul_num = 12	
					end
					if item_level < 80 and item_level >= 60 then
						zhul_num = 10 	
					end		
				end
				if zhul_num > 0 then
					ret = ret .. tipText("\n蕴魂：", "#00ccff") ..tipSet(40,-18)
					ret = ret .. tipImage(1802400027,267,24)
					ret = ret .. tipSet2(317,138) ..tipText("0/12".."\n", "#00ccff")
				end	
			end
		end
	end	
	
	if not entity and (item_keyname == '武魂战刃Plus' or item_keyname == '魔魂法杖Plus' or item_keyname == '魔魂法杖Plus') then
		ret = ret .. tipText("\n")
		if item_keyname == '武魂战刃Plus' then
			ret = ret..tipText("物理攻击：".."160 - 678", 4278190079)
			ret = ret..tipSet2(135)..tipText("强化+（".."25 - 78".."）", "#ffcc00")
			ret = ret .. tipText("\n")
		elseif	item_keyname == '魔魂法杖Plus' then
			ret = ret..tipText("物理攻击：".."120 - 165", 4278190079)
			ret = ret .. tipText("\n")
			ret = ret..tipText("魔法攻击：".."175 - 543", 4278190079)
			ret = ret..tipSet2(135)..tipText("强化+（".."25 - 78".."）", "#ffcc00")
			ret = ret .. tipText("\n")
		elseif	item_keyname == '玄魂道剑Plus' then
			ret = ret..tipText("物理攻击：".."125 - 470", 4278190079)
			ret = ret .. tipText("\n")
			ret = ret..tipText("道术攻击：".."115 - 583", 4278190079)
			ret = ret..tipSet2(135)..tipText("强化+（".."25 - 78".."）", "#ffcc00")
			ret = ret .. tipText("\n")
		end
	else
		local tmin, tmax, tval, thigh, vmin, vmax, val
		local __color = { [true] = 4294944768, [false] = 4278190079 }
		local __qulity = GetTipParam("QUALITY")
		--攻击属性--
		ret = ret .. tipText("\n")
		vmin = GetTipParam("PROP_MINPHYATK")
		vmax =  GetTipParam("PROP_MAXPHYATK")
		tmin, tmax, thigh = GetQualityRangeValue(ROLE_PROP32_MIN_PHY_ATK,ROLE_PROP32_MAX_PHY_ATK,__qulity)
		vmin = vmin + tmin; vmax = vmax + tmax
		if vmin ~= 0 or vmax ~= 0 or ext_table[10] or att_table[10] then
			if ext_table[10] ~= nil then
				vmin = vmin + ext_table[11] 
				vmax = vmax + ext_table[10]
			end	
			if att_table[10] ~= nil then
				vmin = vmin + att_table[11] 
				vmax = vmax + att_table[10]
			end	
			ret = ret..tipText("物理攻击："..vmin.." - "..vmax, __color[thigh])
			if ext_table[10] ~= nil then
				ret = ret..tipSet2(135)..tipText("强化+（"..ext_table[11] .." - "..ext_table[10].."）", "#ffcc00")
			end	
			if att_table[10] ~= nil then
				ret = ret..tipSet2(239)..tipText("蕴魂+（"..att_table[11] .." - "..att_table[10].."）", "#00ccff")
			end	
			ret = ret .. tipText("\n")
		end
		
		vmin = GetTipParam("PROP_MINMAGATK")
		vmax = GetTipParam("PROP_MAXMAGATK")
		tmin, tmax, thigh = GetQualityRangeValue(ROLE_PROP32_MIN_MAG_ATK,ROLE_PROP32_MAX_MAG_ATK,__qulity)
		vmin = vmin + tmin; vmax = vmax + tmax
		if vmin ~= 0 or vmax ~= 0 or ext_table[12] or att_table[12] then
			if ext_table[13] ~= nil and ext_table[12] ~= nil then
				vmin = vmin + ext_table[13] 
				vmax = vmax + ext_table[12]
			end	
			if att_table[13] ~= nil and att_table[12] ~= nil  then
				vmin = vmin + att_table[13] 
				vmax = vmax + att_table[12]
			end	
			ret = ret..tipText("魔法攻击："..vmin.." - "..vmax, __color[thigh])
			if ext_table[12] ~= nil and ext_table[13] ~= nil  then
				ret = ret..tipSet2(135)..tipText("强化+（"..ext_table[13] .." - "..ext_table[12].."）", "#ffcc00")
			end	
			if att_table[12] ~= nil and att_table[13] ~= nil  then
				ret = ret..tipSet2(239)..tipText("蕴魂+（"..att_table[13] .." - "..att_table[12].."）", "#00ccff")
			end	
			ret = ret .. tipText("\n")
		end
		
		vmin = GetTipParam("PROP_MINTAOATK")
		vmax = GetTipParam("PROP_MAXTAOATK")
		tmin, tmax, thigh = GetQualityRangeValue(ROLE_PROP32_MIN_TAO_ATK,ROLE_PROP32_MAX_TAO_ATK,__qulity)
		vmin = vmin + tmin; vmax = vmax + tmax
		if vmin ~= 0 or vmax ~= 0 or ext_table[14] or att_table[14] then
			if ext_table[15] ~= nil and ext_table[14] ~= nil  then
				vmin = vmin + ext_table[15] 
				vmax = vmax + ext_table[14]
			end	
			if att_table[15] ~= nil and att_table[14] ~= nil  then
				vmin = vmin + att_table[15] 
				vmax = vmax + att_table[14]
			end	
			ret = ret..tipText("道术攻击："..vmin.." - "..vmax, __color[thigh])
			if ext_table[15] ~= nil and ext_table[14] ~= nil  then
				ret = ret..tipSet2(135)..tipText("强化+（"..ext_table[15] .." - "..ext_table[14].."）", "#ffcc00")
			end	
			if att_table[15] ~= nil and att_table[14] ~= nil  then
				ret = ret..tipSet2(239)..tipText("蕴魂+（"..att_table[15] .." - "..att_table[14].."）", "#00ccff")
			end	
			ret = ret .. tipText("\n")
		end
		
		--防御属性--
		vmin = GetTipParam("PROP_MINPHYDEF")
		vmax = GetTipParam("PROP_MAXPHYDEF")
		tmin, tmax, thigh = GetQualityRangeValue(ROLE_PROP32_MIN_PHY_DEF,ROLE_PROP32_MAX_PHY_DEF,__qulity)
		vmin = vmin + tmin; vmax = vmax + tmax
		if vmin ~= 0 or vmax ~= 0 then
			if ext_table[7] ~= nil and ext_table[6] ~= nil then
				vmin = vmin + ext_table[7] 
				vmax = vmax + ext_table[6]
			end	
			if att_table[7] ~= nil and att_table[6] ~= nil then
				vmin = vmin + att_table[7] 
				vmax = vmax + att_table[6]
			end	
			ret = ret..tipText("物理防御："..vmin.." - "..vmax, __color[thigh])
			if ext_table[7] ~= nil and ext_table[6] ~= nil  then
				ret = ret..tipSet2(135)..tipText("强化+（"..ext_table[7] .." - "..ext_table[6].."）", "#ffcc00")
			end	
			if att_table[7] ~= nil and att_table[6] ~= nil  then
				ret = ret..tipSet2(239)..tipText("蕴魂+（"..att_table[7] .." - "..att_table[6].."）", "#00ccff")
			end	
			ret = ret .. tipText("\n")
		end
		
		vmin = GetTipParam("PROP_MINMAGDEF")
		vmax = GetTipParam("PROP_MAXMAGDEF")
		tmin, tmax, thigh = GetQualityRangeValue(ROLE_PROP32_MIN_MAG_DEF,ROLE_PROP32_MAX_MAG_DEF,__qulity)
		vmin = vmin + tmin; vmax = vmax + tmax
		if vmin ~= 0 or vmax ~= 0 then
			if ext_table[9] ~= nil and ext_table[8] ~= nil then
				vmin = vmin + ext_table[9] 
				vmax = vmax + ext_table[8]
			end	
			if att_table[9] ~= nil and att_table[8] ~= nil then
				vmin = vmin + att_table[9] 
				vmax = vmax + att_table[8]
			end	
			ret = ret..tipText("魔法防御："..vmin.." - "..vmax, __color[thigh])
			if ext_table[9] ~= nil and ext_table[8] ~= nil then
				ret = ret..tipSet2(135)..tipText("强化+（"..ext_table[9] .." - "..ext_table[8].."）", "#ffcc00")
			end
			if att_table[9] ~= nil and att_table[8] ~= nil  then
				ret = ret..tipSet2(239)..tipText("蕴魂+（"..att_table[9] .." - "..att_table[8].."）", "#00ccff")
			end		
			ret = ret .. tipText("\n")
		end
	end	
	--五行攻击--
	val = GetTipParam("PROP_EA1")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_1_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("金相性攻击："..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_EA2")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_2_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("木相性攻击："..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_EA3")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_3_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("水相性攻击："..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_EA4")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_4_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("火相性攻击："..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_EA5")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_5_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("土相性攻击："..val.."\n", __color[thigh]) end
	--五行防御--
	val = GetTipParam("PROP_ED1")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_1_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("金相性防御："..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_ED2")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_2_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("木相性防御："..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_ED3")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_3_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("水相性防御："..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_ED4")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_4_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("火相性防御："..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_ED5")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_5_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("土相性防御："..val.."\n", __color[thigh]) end

	return ret
end

--其他属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutOtherProperty(entity, equip, notnull)
	local ret = ""
	local __color = { [true] = 4294944768, [false] = 4278190079 }
	local __qulity = GetTipParam("QUALITY")
	local __pading = { [true] = "+", [false] = "" }
	local tval, thigh, val

	val =  GetTipParam("PROP_HP")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_HP,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("生命："..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_MP")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_MP,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("魔法："..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_WEIGHT")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_WEIGHT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("背包负重："..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_EQUIPWEIGHT")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_EQUIP_WEIGHT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("穿戴负重："..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_BRAWN")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_BRAWN,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("腕力："..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_HIT")
	tval, thigh = GetQualityValue(ROLE_PROP32_HIT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("命中："..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_MISS")
	tval, thigh = GetQualityValue(ROLE_PROP32_MISS,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("闪避："..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_MAGMISS")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAG_MISS,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("魔法闪避："..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_BURST")
	tval, thigh = GetQualityValue(ROLE_PROP32_BURST,__qulity); val = val + tval ; val = val/100
	if val ~= 0 then ret = ret..tipText("暴击率："..val.."%".."\n", 4294901760) end
	
	if entity and equip then
		local Entity = GetTipParam("GUIDATA")
		local burstharm = CLGetItemEntityCustomVarInt(Entity, "burstharm")
		if burstharm ~= 0 then ret = ret..tipText("暴击伤害："..burstharm.."\n", 4294901760) end
		--ret = ret..tipText("暴击伤害："..burstharm.."\n", 4294901760)
	end
	
	
	local subType = GetTipParam("PROP_SUBTYPE")
	if not entity and equip and subType == 13 then 
		local name = GetTipParam("PROP_NAME")
		local hunzhu_burstharm = 
		{
			["英招灵珠"] = 180,
			["重明灵珠"] = 360,
			["白泽灵珠"] = 653,
			["獬豸灵珠"] = 947,
			["毕方灵珠"] = 1376,
			["貔貅灵珠"] = 1806,
			["螣蛇灵珠"] = 2357,
			["麒麟灵珠"] = 2909,
			["玄武灵珠"] = 3576,
			["白虎灵珠"] = 4243,
			["圣·英招灵珠"] = 5001,
			["圣·重明灵珠"] = 5760,
			["圣·白泽灵珠"] = 6632,
			["圣·獬豸灵珠"] = 7504,
			["圣·毕方灵珠"] = 8528,
			["圣·貔貅灵珠"] = 9552,
			["圣·螣蛇灵珠"] = 11970,
			["圣·麒麟灵珠"] = 14849,
			["圣·玄武灵珠"] = 18290,
			["圣·白虎灵珠"] = 22408,
			["圣·朱雀灵珠"] = 28047,
		}
		if hunzhu_burstharm[name] ~= nil then 
			ret = ret..tipText("暴击伤害："..hunzhu_burstharm[name].."\n", 4294901760)
		end
		
	end

	val =  GetTipParam("PROP_LC")
	tval, thigh = GetQualityValue(ROLE_PROP32_LUCK_CURSE,__qulity); val = val + tval
	if entity and GetTipParam("EQUIP_LUCKCURSE") then val = val + GetTipParam("EQUIP_LUCKCURSE") end
	if val ~= 0 and val <= 10 and val >= -10 then
		local __goodcol = {4294573201, 4294436147, 4294753536, 4292083464, 4293590784, 4293590784, 4293590784, 4293590784, 4293590784, 4293590784}
		local __badcol  = {4294145170, 4293673014, 4289339424, 4292219163, 4294901760, 4294901760, 4294901760, 4294901760, 4294901760, 4294901760}
		if val > 0 then ret = ret..tipText("幸运：+"..val.."\n", __goodcol[val])
		else val = -val; ret = ret..tipText("诅咒：+"..val.."\n", __badcol[val]) end
	end

	val =  GetTipParam("PROP_INTENSITY")
	tval, thigh = GetQualityValue(ROLE_PROP32_INTENSITY,__qulity); val = val + tval
	
	if GetTipParam("PROP_ITEMIDENTIFIER") == "气血石" or GetTipParam("PROP_ITEMIDENTIFIER") == "火龙之心" then
	else
		if val ~= 0 then ret = ret..tipText("强度："..__pading[val > 0]..val.."\n", __color[thigh]) end
	end

	val = GetTipParam("PROP_MOVESPEED")
	tval, thigh = GetQualityValue(ROLE_PROP32_MOVE_SPEED,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("移动速度："..__pading[val > 0]..val.."%\n", __color[thigh]) end

	val = GetTipParam("PROP_ATTACKSPEED")
	tval, thigh = GetQualityValue(ROLE_PROP32_ATTACK_SPEED,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("攻击速度："..__pading[val > 0]..val.."%\n", __color[thigh]) end

	val = GetTipParam("PROP_POISON")
	tval, thigh = GetQualityValue(ROLE_PROP32_POISON_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("中毒回复："..__pading[val > 0]..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_HPREC")
	tval, thigh = GetQualityValue(ROLE_PROP32_HP_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("生命回复："..__pading[val > 0]..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_MPREC")
	tval, thigh = GetQualityValue(ROLE_PROP32_MP_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("魔法回复："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if equip then
		if GetTipParam("PROP_SUCKHP") ~= 0 then ret = ret..tipText("吸血："..GetTipParam("PROP_SUCKHP").."\n", 4278190079) end
		if GetTipParam("PROP_SUCKHPPCT") ~= 0 then ret = ret..tipText("吸血："..GetTipParam("PROP_SUCKHPPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_SUCKMAXHPPCT") ~= 0 then ret = ret..tipText("吸血上限："..GetTipParam("PROP_SUCKMAXHPPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_SUCKMP") ~= 0 then ret = ret..tipText("吸魔："..GetTipParam("PROP_SUCKMP").."\n", 4278190079) end
		if GetTipParam("PROP_SUCKMPPCT")  ~= 0 then ret = ret..tipText("吸魔："..GetTipParam("PROP_SUCKMPPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_SUCKMAXMPPCT") ~= 0 then ret = ret..tipText("吸魔上限："..GetTipParam("PROP_SUCKMAXMPPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_REFPHY") ~= 0 then ret = ret..tipText("物理伤害反射："..GetTipParam("PROP_REFPHY").."\n", 4278190079) end
		if GetTipParam("PROP_REFPHYPCT") ~= 0 then ret = ret..tipText("物理伤害反射："..GetTipParam("PROP_REFPHYPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_REFMAG") ~= 0 then ret = ret..tipText("魔法伤害反射："..GetTipParam("PROP_REFMAG").."\n", 4278190079) end
		if GetTipParam("PROP_REFMAGPCT") ~= 0 then ret = ret..tipText("魔法伤害反射："..GetTipParam("PROP_REFMAGPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_IMMPHY") ~= 0 then ret = ret..tipText("物理伤害减免："..GetTipParam("PROP_IMMPHY").."\n", 4278190079) end
		if GetTipParam("PROP_IMMPHYPCT") ~= 0 then ret = ret..tipText("物理伤害减免："..GetTipParam("PROP_IMMPHYPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_IMMMAG") ~= 0 then ret = ret..tipText("魔法伤害减免："..GetTipParam("PROP_IMMMAG").."\n", 4278190079) end
		if GetTipParam("PROP_IMMMAGPCT") ~= 0 then ret = ret..tipText("魔法伤害减免："..GetTipParam("PROP_IMMMAGPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_ISPHYIMM") ~= 0 then ret = ret..tipText("物理免疫："..GetTipParam("PROP_ISPHYIMM").."\n", 4278190079) end
		if GetTipParam("PROP_ISMAGIMM") ~= 0 then ret = ret..tipText("魔法免疫："..GetTipParam("PROP_ISMAGIMM").."\n", 4278190079) end
	end
	----武器1，护腕3，魂珠13，戒指9，项链8，攻击
	local shux1 = {
		{"物理攻击：","魔法攻击：","道术攻击："},
		{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}},
		{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}},  	
	} 
	----衣服4，腰带7，鞋子6，头盔2，攻击,物防，魔防
	local shux2 = {
		{{"物理攻击：","魔法攻击：","道术攻击："},"物理防御：","魔法防御："},
		{{{1,1},{1,6},{1,6}},{{2,2},{2,8},{2,8}},{{3,3},{4,10},{3,11}},{{3,4},{5,12},{4,14}},{{4,6},{7,16},{6,17}},{{4,7},{9,21},{7,21}},
		{{5,10},{11,26},{9,26}},{{5,13},{13,32},{9,31}},{{6,17},{14,38},{11,36}},{{8,22},{16,44},{13,43}},{{9,27},{18,51},{15,49}},{{10,33},{22,60},{17,54}}}, 
		{{{2,1},{2,2},{2,2}},{{3,1},{5,4},{4,4}},{{4,1},{7,6},{6,6}},{{4,2},{10,9},{8,8}},{{5,2},{12,11},{10,10}},{{6,3},{16,12},{13,12}},{{7,4},{19,14},{16,15}},
		{{9,6},{23,17},{19,18}},{{11,7},{27,20},{21,20}},{{13,10},{31,24},{25,23}},{{15,12},{38,28},{29,27}},{{44,32},{18,15},{34,30}}},		
	}
	----护盾 15    物防，魔防
	local shux3 = {
		{"物理防御：","魔法防御："},
		{{{1,3},{1,2}},{{2,6},{2,4}},{{2,9},{3,6}},{{3,12},{4,9}},{{4,15},{5,11}},{{4,18},{5,14}},
		{{5,21},{6,18}},{{7,25},{7,25}},{{9,29},{9,30}},{{11,33},{11,38}},{{14,38},{13,48}},{{18,41},{15,60}}},
		{{{2,2},{2,2}},{{3,3},{3,3}},{{4,4},{5,5}},{{5,5},{7,7}},{{7,7},{9,8}},{{9,9},{11,10}},{{11,11},{12,11}},{{14,14},{16,13}},{{17,17},{19,17}},
		{{21,20},{21,21}},{{27,22},{24,23}},{{34,24},{27,26}}},	 	
	}
	----宝石11     攻击
	local shux4 = {
		{"物理攻击：","魔法攻击：","道术攻击："},
		{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}},
		{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}}, 	
	}
	----勋章10     攻击
	local shux5 = {
		{"物理攻击：","魔法攻击：","道术攻击："},
		{{1,7},{2,9},{3,10},{5,11},{6,14},{8,17},{8,20},{10,24},{11,28},{13,33},{16,39},{20,45}},
		{{2,1},{4,3},{6,4},{8,5},{10,6},{12,8},{14,9},{16,11},{19,13},{23,15},{27,18},{33,23}},
	}
	if equip then
		local job = 0
		job = GetTipParam("PROP_JOB")
		local level = 	GetTipParam("PROP_LEVEL")	
		local subType = GetTipParam("PROP_SUBTYPE")
		local qiangh_num = 0
		local refine = 0
		local zhul_num = 0
		local zhul_lv = 0
		if entity then
			local Entity = GetTipParam("GUIDATA")
			qiangh_num = CLGetItemEntityCustomVarInt(Entity, "xing_num")
			refine = GetTipParam("EQUIP_REFINELEVEL")	
			zhul_num = CLGetItemEntityCustomVarInt(Entity, "zhul_num")
			zhul_lv = CLGetItemEntityCustomVarInt(Entity, "zhul_level")
		else	
			if subType ~= 5 and subType ~= 12 and subType ~= 14 then 
				qiangh_num = 12 	
				zhul_num = 12	
			end
		end
		
		local item_keyname = GetTipParam("PROP_KEYNAME")
		if not entity and (item_keyname == '武魂战刃Plus' or item_keyname == '魔魂法杖Plus' or item_keyname == '魔魂法杖Plus') then
			ret = ret .. tipText("\n")
			ret = ret .. tipText("可锻造属性：", "#BE8200") 
			ret = ret ..tipSet(60,0).. tipText("强化+7", "#CD6839")
			ret = ret  .. tipSet2(239) .. tipText("蕴魂+1", "#104E8B")
			ret = ret .. tipText("\n")
			local prop_name = ''
			if item_keyname == '武魂战刃Plus' then
				prop_name = '物理攻击'
			elseif	item_keyname == '魔魂法杖Plus' then
				prop_name = '物理攻击'
			elseif	item_keyname == '玄魂道剑Plus' then
				prop_name = '物理攻击'
			end
			ret = ret..tipText( prop_name, "#8B5742")..tipSet(70)..tipText("  +".."（10 - 25）", "#CD6839")
			ret = ret .. tipSet2(239) .. tipText("+".."（2 - 1）", "#104E8B")
		else
			
			
			if qiangh_num > 0 and refine < 12 then
				ret = ret .. tipText("\n")
				ret = ret .. tipText("可锻造属性：", "#BE8200") 
				local nextlevel = refine + 1
				ret = ret ..tipSet(60,0).. tipText("强化+"..nextlevel, "#CD6839")
				local zhul_lvn = 0
				if zhul_num > 0 and zhul_lv < 12 then
					zhul_lvn = zhul_lv + 1
					ret = ret  .. tipSet2(239) .. tipText("蕴魂+"..zhul_lvn, "#104E8B")
				end
				ret = ret .. tipText("\n")	
				if subType == 1 or subType == 9 or subType == 8 or subType == 3 then	
					if level >= 100 then
							for i = 1 , 3 do 
								ret = ret..tipText(shux1[1][i], "#8B5742")..tipSet(70)..tipText("+（"..shux1[2][nextlevel][1] .." - ".. shux1[2][nextlevel][2] .."）", "#CD6839")
								if zhul_lvn > 0 then
									ret = ret .. tipSet2(239) .. tipText("+（"..shux1[3][zhul_lvn][1] .." - ".. shux1[3][zhul_lvn][2] .."）", "#104E8B")
								end
								ret = ret .. tipText("\n")
							end
					else		
						if job ~= 0 and job ~= nil then
							ret = ret..tipText(shux1[1][job], "#8B5742")..tipSet(70)..tipText("+（"..shux1[2][nextlevel][1] .." - ".. shux1[2][nextlevel][2] .."）", "#CD6839")
							if zhul_lvn > 0 then
								ret = ret .. tipSet2(239) .. tipText("+（"..shux1[3][zhul_lvn][1] .." - ".. shux1[3][zhul_lvn][2] .."）", "#104E8B")
							end
							ret = ret .. tipText("\n")
						end	
					end
				elseif subType == 2 or subType == 4 or subType == 6 or subType == 7 then		
					if level >= 100 then
						for i = 1 , 3 do 
							ret = ret..tipText(shux2[1][1][i], "#8B5742")..tipSet(70)..tipText("+（"..shux2[2][nextlevel][1][1] .." - ".. shux2[2][nextlevel][1][2] .."）", "#CD6839")
							if zhul_lvn > 0 then
								ret = ret .. tipSet2(239) .. tipText("+（"..shux2[3][zhul_lvn][1][1] .." - ".. shux2[3][zhul_lvn][1][2] .."）", "#104E8B")
							end
							ret = ret .. tipText("\n")
						end
						
					else
						if job ~= 0 and job ~= nil then
							ret = ret..tipText(shux2[1][1][job], "#8B5742")..tipSet(70)..tipText("+（"..shux2[2][nextlevel][1][1] .." - ".. shux2[2][nextlevel][1][2] .."）", "#CD6839")
							if zhul_lvn > 0 then
								ret = ret .. tipSet2(239) .. tipText("+（"..shux2[3][zhul_lvn][1][1] .." - ".. shux2[3][zhul_lvn][1][2] .."）", "#104E8B")
							end
							ret = ret .. tipText("\n")
						end	
					end	
					ret = ret..tipText(shux2[1][2], "#8B5742")..tipSet(70)..tipText("+（"..shux2[2][nextlevel][2][1] .." - ".. shux2[2][nextlevel][2][2] .."）", "#CD6839")
					if zhul_lvn > 0 then
						ret = ret .. tipSet2(239) .. tipText("+（"..shux2[3][zhul_lvn][2][1] .." - ".. shux2[3][zhul_lvn][2][2] .."）", "#104E8B")
					end
					ret = ret .. tipText("\n")
					ret = ret..tipText(shux2[1][3], "#8B5742")..tipSet(70)..tipText("+（"..shux2[2][nextlevel][3][1] .." - ".. shux2[2][nextlevel][3][2] .."）", "#CD6839")
					if zhul_lvn > 0 then
						ret = ret .. tipSet2(239) .. tipText("+（"..shux2[3][zhul_lvn][3][1] .." - ".. shux2[3][zhul_lvn][3][2] .."）", "#104E8B")
					end
					ret = ret .. tipText("\n")	
				elseif subType == 15 then
					for i = 1 , 2 do 
						ret = ret..tipText(shux3[1][i], "#8B5742")..tipSet(70)..tipText("+（"..shux3[2][nextlevel][i][1] .." - ".. shux3[2][nextlevel][i][2] .."）", "#CD6839")
						if zhul_lvn > 0 then
							ret = ret .. tipSet2(239) .. tipText("+（"..shux3[3][zhul_lvn][i][1] .." - ".. shux3[3][zhul_lvn][i][2] .."）", "#104E8B")
						end
						ret = ret .. tipText("\n")
					end
				elseif subType == 11 or subType == 13 then
					for i = 1 , 3 do 
						ret = ret..tipText(shux4[1][i], "#8B5742")..tipSet(70)..tipText("+（"..shux4[2][nextlevel][1] .." - ".. shux4[2][nextlevel][2] .."）", "#CD6839")
						if zhul_lvn > 0 then
							ret = ret .. tipSet2(239) .. tipText("+（"..shux4[3][zhul_lvn][1] .." - ".. shux4[3][zhul_lvn][2] .."）", "#104E8B")
						end
						ret = ret .. tipText("\n")
					end
				elseif subType == 10 then
					for i = 1 , 3 do 
						ret = ret..tipText(shux5[1][i], "#8B5742")..tipSet(70)..tipText("+（"..shux5[2][nextlevel][1] .." - ".. shux5[2][nextlevel][2] .."）", "#CD6839")
						if zhul_lvn > 0 then
							ret = ret .. tipSet2(239) .. tipText("+（"..shux5[3][zhul_lvn][1] .." - ".. shux5[3][zhul_lvn][2] .."）", "#104E8B")
						end
						ret = ret .. tipText("\n")
					end
				end	
			end	
		end
	end	
	if notnull or ret ~= "" then ret = ret..tipSet(nil, 8) end; return ret
end

--宝石镶嵌属性--------------------------------------------------------------------------------------------------------------
function tipItemsLayoutCrystal(entity)
	local ret = ""
	local item_keyname = ""
	if entity then
		local Entity = GetTipParam("GUIDATA")
		item_keyname = tostring(CLGetItemEntityCustomVarStr(Entity, "EquipHole1"))
		if item_keyname ~= "nil" then 	
			ret = ret .. tipText("宝石镶嵌：", "#7030A0")
			ret = ret .. tipSet(60,0) .. tipText("宝石属性已加成：", "#7030A0")
			ret = ret .. tipText("\n")..tipSet(0,3)
			local property_tb =  
			{  
				["物攻"] = {"物理攻击", 30, 1891420020},
				["魔攻"] = {"魔法攻击", 32, 1891420050},
				["道攻"] = {"道术攻击", 34, 1891420040},
				["物防"] = {"物理防御", 36, 1891420000},
				["魔防"] = {"魔法防御", 38, 1891420030},
				["生命"] = {"生命", 40, 1891420010},
				}
			local mi = 0
			local ma = 0
			local blood = 0
			for i = 1 , 4 do 
				item_keyname = tostring(CLGetItemEntityCustomVarStr(Entity, "EquipHole"..i))
				if item_keyname == "nil" then 
					break
				elseif item_keyname == "2" then
					--ret = ret .. tipSet(5,0) .. tipImage(1802900031,19,19) .. tipSet(10,3) .. tipText("强化".. i*3 .."级可镶嵌", "#BFCDDB")
					ret = ret .. tipSet(5,0) .. tipImage(1802900031,19,19) .. tipSet(10,3) .. tipText("可镶嵌", "#BE8200")
				elseif item_keyname == "1" then
					ret = ret .. tipSet(5,0) .. tipImage(1800700057,19,19) .. tipSet(10,3) .. tipText("可钻孔", "#8B5742")
				else	
					local stoneType = string.match(item_keyname,"级".."(.-)".."宝")
					if stoneType ~= nil then
						local propertyType = property_tb[stoneType][1]
						local a = property_tb[stoneType][2]
						local imageid = property_tb[stoneType][3]
						if propertyType then
							ret = ret .. tipSet(2,-1) .. tipImage(imageid,25,25) .. tipSet(10,3) .. tipText(item_keyname, "#7030A0")
							if a == 40 then
								ret = ret .. tipSet2(135) .. tipText(propertyType, "#7030A0")
								blood = CLGetItemEntityCustomVarInt(Entity, "_dv"..a)
								ret = ret .. tipSet2(239) .. tipText("宝石+（".. blood .."）", "#7030A0")
							else
								ret = ret .. tipSet2(135) .. tipText(propertyType, "#7030A0")
								mi = CLGetItemEntityCustomVarInt(Entity, "_dv".. a)
								ma = CLGetItemEntityCustomVarInt(Entity, "_dv".. a+1)
								ret = ret .. tipSet2(239) .. tipText("宝石+（".. mi .." - ".. ma .."）", "#7030A0")
							end
						end
					else 
						ret = ret .. tipSet(5,0) .. tipSet(10,3) .. tipText("服务端存了不合法的keyname")
					end
				end
				ret = ret .. tipText("\n")..tipSet(0,3)
			end
		end	
	end	
	if ret ~= "" then ret = ret..tipSet(nil, 8) end; return ret
end

--装备回收、捐赠属性--
function tipItemsLayoutZhuangbeihuishou(entity)
	local ret = ""
	local subType_tb = {[1] = true,
	                    [2] = true,
						[3] = true,
						[4] = true,
						[5] = false,
						[6] = true,
						[7] = true,
						[8] = true,
						[9] = true,
						}
	if entity then
		local subType = GetTipParam("PROP_SUBTYPE")	
		if subType_tb[subType] then 
			local Entity = GetTipParam("GUIDATA")
			local hs_jy = CLGetItemEntityCustomVarInt(Entity,"huishou_jy")
			local hs_xf = CLGetItemEntityCustomVarInt(Entity,"huishou_xf")
			local item_contri = CLGetItemEntityCustomVarInt(Entity,"item_contri")
			ret = ret .. tipText("\n")
			if item_contri > 0 then 
				ret = ret .. tipText("捐工会可得：", "#A9D18E")
				ret = ret .. tipSet2(100) .. tipText(""..item_contri, "#A9D18E") .. tipText("贡献值", "#A9D18E")
				ret = ret .. tipText("\n")
			end
			if hs_jy > 0 or hs_xf > 0 then 
				local rein_level = CLGetItemEntityCustomVarInt(Entity,"item_rein")
				local refine = GetTipParam("EQUIP_REFINELEVEL")
				local zhul_lv = CLGetItemEntityCustomVarInt(Entity, "zhul_level")
				if rein_level > 2 or refine > 0 or zhul_lv > 0 then 
					ret = ret .. tipText("不可回收", "#A9D18E")
					return ret
				end
				--[[
				for i = 1, 4 do  --不需要判断宝石镶嵌了,有宝石镶嵌的,肯定是有强化等级的
					local item_keyname = tostring(CLGetItemEntityCustomVarStr(Entity, "EquipHole"..i))
					if item_keyname == 'nil' then
						break
					elseif item_keyname ~= '2' and item_keyname ~= '1' then
						ret = ret .. tipText("该装备不可回收", "#A9D18E")
						return ret
					end
				end
				--]]
				ret = ret .. tipText("回收可获得：", "#A9D18E")
				if hs_jy > 0 then 
					ret = ret .. tipSet2(100) .. tipText(""..hs_jy, "#A9D18E") .. tipText("经验值", "#A9D18E")
				end 
				if hs_xf > 0 then 
					ret = ret .. tipSet2(239) .. tipText(""..hs_xf, "#A9D18E") .. tipText("护符印记", "#A9D18E")
				end
				ret = ret .. tipText("\n")
			end
		end
	end	

	return ret
end

--荣耀装备介绍属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutZhuangbeiJieshao(entity, equip)
	local ret = ""
	if not equip then return ret end
	if GetTipParam("PROP_DESC") ~= "" and GetTipParam("PROP_DESC") ~= "0" and GetTipParam("PROP_DESC") ~= 0 then
		local desc = GetTipParam("PROP_DESC")
		desc = string.gsub(desc, "\"", "\\\"")
		local color = GetTipParam("TITLECOLOR")
		if GetTipParam("PROP_BRIEF") == "荣耀装备" then
			color = 4293050946
		elseif color == nil then
			color = mkcolor("WHITE")
		end
		ret = ret..tipText2(desc.."\n", color)
	end
	if ret ~= "" then ret = tipSet(nil, -2)..ret..tipSet(nil, 8) end; return ret
end

--装备附魔属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutFumo(entity, equip)
	local ret = ""
	local sub_type = GetTipParam("PROP_SUBTYPE")

	if not entity or not equip or sub_type == 5 or sub_type == 13 or sub_type == 14 then return ret end
	local count = GetTipParam("CUSTOM_INT" .. "fumotiaomu")
	if not count or count <= 0 then return ret end
		
	local data = GetTipParam("EQUIP_EXT")
	if not data then return end
	local str = ""
	for i = 1,count do
		if data[i] ~= nil and data[i][PROPERTY_ATTR_NAME] ~= nil and data[i][PROPERTY_ATTR_NAME] ~= 0 and as3.tolua(UI:Lua_GetAttrProp(data[i][PROPERTY_ATTR_NAME],ATT_PROP_CHINANAME)) then
			str = str..tipSet(8)..tipText(GetAttNameValueStr(as3.tolua(LuaRet), data[i][PROPERTY_ATTR_VALUE]).."\n", 4294953984)
		end
	end
	if str ~= "" then ret = tipText("附魔属性\n", 4294953984)..str end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--精炼属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutRefine(entity, equip)
	local ret = ""
	local __refine = GetTipParam("REFINE")
	if __refine ~= nil and __refine[1][PROPERTY_ATTR_NAME] ~= 0 and __refine[1][PROPERTY_ATTR_VALUE] ~= 0 then
		local r_name = GetTipParam("REFINETABLE")[__refine[1][PROPERTY_ATTR_NAME]]
		if r_name ~= nil then
			ret = ret..tipText("精炼："..r_name.." +"..__refine[1][PROPERTY_ATTR_VALUE].."%\n", 4287550230)
		end
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--新精炼属性--------------------------------------------------------------------------------------------------
function tipItemsLayoutRefine2(entity, equip)
	local ret = ""
	local __refine = {}
	local _da0 = GetTipParam("CUSTOM_INT" .. "_da0")
	if _da0 and _da0 ~= 0 then
		if as3.tolua(UI:Lua_GetAttrProp(_da0, ATT_PROP_CHINANAME)) then
			local r_name = as3.tolua(LuaRet)
			local _dv0 = GetTipParam("CUSTOM_INT" .. "_dv0")
			if r_name ~= nil and _dv0 and _dv0 ~= 0 then
				table.insert(__refine, { r_name, _dv0 })
			end
		end
	end
	
	local _da1 = GetTipParam("CUSTOM_INT" .. "_da1")
	if _da1 and as3.tolua(LuaRet) ~= 0 then
		if as3.tolua(UI:Lua_GetAttrProp(_da1, ATT_PROP_CHINANAME)) then
			local r_name = as3.tolua(LuaRet)
			local _dv1 = GetTipParam("CUSTOM_INT" .. "_dv1")
			if r_name ~= nil and _dv1 and _dv1 ~= 0 then
				table.insert(__refine, { r_name, _dv1 })
			end
		end
	end
	for i = 1, #__refine do
		ret = ret..tipText("  "..GetAttNameValueStr(__refine[i][1], __refine[i][2], " +").."\n")
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..tipText("精炼属性：\n", 4287550230)..ret..tipSet(nil, 8) end; return ret
end

--扩展属性没用到-------------------------------------------------------------------------------------------------
function tipItemsLayoutExtend(entity, equip)
	local ret = ""
	local __refine = GetTipParam("REFINE")
	if __refine ~= nil and __refine[1][PROPERTY_ATTR_NAME] ~= 0 and __refine[1][PROPERTY_ATTR_VALUE] ~= 0 and as3.tolua(UI:Lua_GetAttrProp(__refine[1][PROPERTY_ATTR_NAME],ATT_PROP_CHINANAME)) then
		local str = GetAttNameValueStr(as3.tolua(LuaRet), __refine[1][PROPERTY_ATTR_VALUE], " +")
		ret = ret..tipText("精炼："..str.."\n", 4287550230)
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--鉴定属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutIdentify(entity, equip)
	local ret = ""
	if GetTipParam("PROP_ITEMIDENTIFIER") == "气血石" or GetTipParam("PROP_ITEMIDENTIFIER") == "火龙之心" then return ret end
	local __identify = GetTipParam("IDENTIFY")
	if equip and GetTipParam("PROP_SUBTYPE") ~= 5 and __identify ~= nil then
		local t = {}
		for k,v in pairs(__identify) do
			if __identify[k][PROPERTY_ATTR_NAME] == 0 or not as3.tolua(UI:Lua_GetAttrProp(__identify[k][PROPERTY_ATTR_NAME],ATT_PROP_CHINANAME)) then break end
			local name = as3.tolua(LuaRet)
			if name ~= nil and name ~= "" then
				local val = __identify[k][PROPERTY_ATTR_VALUE]
				if val ~= 0 then t[#t+1] = GetAttNameValueStr(name, val) end
			end
		end
		if #t > 0 then
			ret = ret..tipText("封印属性(已解)\n", 4287265790)
			local __color = {4278190079, 4279689899, 4293935424}
			for i=1,#t do ret = ret..tipText(t[i].."\n", __color[#t]) end
		else
			ret = ret..tipText("封印属性(未解)\n", 4287265790)
		end
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--套装属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutSuit(entity, equip)
	local ret = ""
	if GetTipParam("PROP_SUIT") ~= 0 then
		local suitid = GetTipParam("PROP_SUIT")
		local __color = {[true] = 4294953984, [false] = 4287861651}

		local itempos = GetItemGUIDataItemPos()
		if not entity then --道具模板
			if not as3.tolua(UI:Lua_GetPlayerSelfEquipData()) then return end
		elseif nil ~= GetTipParam("HEROGUID") then
			if not as3.tolua(UI:Lua_GetPlayerHeroEquipData()) then return end
		elseif itempos > INVALID_POS and itempos <= VISITSTALL_POS then --合法的物品位置
			if not as3.tolua(UI:Lua_GetPlayerSelfEquipData()) then return end
		elseif GetTipParam("SELFID") ~= 0 and GetTipParam("SELFID") ~= GetTipParam("OWNERID") and as3.tolua(UI:Lua_GetPlayerTargetEquipData()) then --别人物品,位置一般为INVALID_POS
		else --其他情况
			if not as3.tolua(UI:Lua_GetPlayerSelfEquipData()) then return end
		end
		local data = getTable(LuaRet)
		local tcount = 0
		local tsuit = {}
		for site,guid in pairs(data) do
			if as3.tolua(UI:Lua_GetItemTemplateHandleByGUID(guid)) then
				local thandle = as3.tolua(LuaRet)
				local tsuitid, titemid
				if as3.tolua(UI:Lua_GetItemTemplatePropByHandle(thandle, ITEM_PROP_SUIT)) then tsuitid = as3.tolua(LuaRet) end
				if as3.tolua(UI:Lua_GetItemTemplatePropByHandle(thandle, ITEM_PROP_ID)) then titemid = as3.tolua(LuaRet) end
				if tsuitid ~= nil and titemid ~= nil and tsuitid == suitid and tsuit[titemid] == nil then
					tcount = tcount + 1
					tsuit[titemid] = suitid
				end
			end
		end
		if not as3.tolua(UI:Lua_GetSuitPropByID(suitid, SUIT_PROP_NAME)) then return end; local name = as3.tolua(LuaRet)
        if not as3.tolua(UI:Lua_GetSuitItemListByID(suitid)) then return end; local suitlist = as3.tolua(LuaRet)
		if #suitlist == 0 then return ret end
		ret = ret..tipText(name.."("..tcount.."/"..#suitlist..")\n", __color[true])
		--显示套装条目--
		for suit,id in pairs(suitlist) do
            if as3.tolua(UI:Lua_GetItemTemplatePropByID(id, ITEM_PROP_NAME)) then
				ret = ret..tipSet(8)..tipText(as3.tolua(LuaRet).."\n", __color[tsuit[id] ~= nil])
			end
        end
		ret = ret..tipText("套装属性\n", __color[true])
		--显示套装属性--
		local suit_prop_size =
		{
			{SUIT_PROP_ATTSIZE1, 0},
			{SUIT_PROP_ATTSIZE2, 0},
			{SUIT_PROP_ATTSIZE3, 0},
			{SUIT_PROP_ATTSIZE4, 0},
			{SUIT_PROP_ATTSIZE5, 0},
			{SUIT_PROP_ATTSIZE6, 0},
			{SUIT_PROP_ATTSIZE7, 0},
			{SUIT_PROP_ATTSIZE8, 0},
			{SUIT_PROP_ATTSIZE9, 0},
			{SUIT_PROP_ATTSIZE10,0}
		}
		local suit_prop_attr =
		{
			{SUIT_PROP_ATT1, 0},
			{SUIT_PROP_ATT2, 0},
			{SUIT_PROP_ATT3, 0},
			{SUIT_PROP_ATT4, 0},
			{SUIT_PROP_ATT5, 0},
			{SUIT_PROP_ATT6, 0},
			{SUIT_PROP_ATT7, 0},
			{SUIT_PROP_ATT8, 0},
			{SUIT_PROP_ATT9, 0},
			{SUIT_PROP_ATT10,0}
		}
		local suit_prop_value =
		{
			{SUIT_PROP_ATTVALUE1, 0},
			{SUIT_PROP_ATTVALUE2, 0},
			{SUIT_PROP_ATTVALUE3, 0},
			{SUIT_PROP_ATTVALUE4, 0},
			{SUIT_PROP_ATTVALUE5, 0},
			{SUIT_PROP_ATTVALUE6, 0},
			{SUIT_PROP_ATTVALUE7, 0},
			{SUIT_PROP_ATTVALUE8, 0},
			{SUIT_PROP_ATTVALUE9, 0},
			{SUIT_PROP_ATTVALUE10,0}
		}

		for i = 1,#suit_prop_size do
			if suit_prop_size[i][1] ~= nil then
				if as3.tolua(UI:Lua_GetSuitPropByID(suitid, suit_prop_size[i][1])) then
					suit_prop_size[i][2] = as3.tolua(LuaRet)
				end
				if as3.tolua(UI:Lua_GetSuitPropByID(suitid, suit_prop_attr[i][1])) then
					suit_prop_attr[i][2] = as3.tolua(LuaRet)
				end
				if as3.tolua(UI:Lua_GetSuitPropByID(suitid, suit_prop_value[i][1])) then
					suit_prop_value[i][2] = as3.tolua(LuaRet)
				end
			end
		end
		for i = 1,#suit_prop_size do
			if suit_prop_size[i][2] > 0 and suit_prop_value[i][2] > 0 and as3.tolua(UI:Lua_GetAttrProp(suit_prop_attr[i][2],ATT_PROP_CHINANAME)) then
				local has_attr = (tcount >= suit_prop_size[i][2])
				ret = ret..tipSet(8)..tipText(suit_prop_size[i][2].."/"..#suitlist.." "..GetAttNameValueStr(as3.tolua(LuaRet), suit_prop_value[i][2], "提升").."\n", __color[has_attr])
			end
		end
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--坐骑属性-----------------------------------------------------------------------------------------------
function tipItemsLayoutHorse(entity, equip)
	local ret = ""
	if not equip or GetTipParam("PROP_SUBTYPE") ~= 14 or not entity then return ret end
	local alive = true
	local horse_durability = GetTipParam("ENTITY_DURABILITY")
	if entity and horse_durability and horse_durability == 0 then alive = false end
	local __color = {4281843773, 4289309097, 4283453520}
	if alive then ret = ret..tipText("坐骑属性\n", __color[1])
	else ret = ret..tipText("坐骑属性\n", __color[2]) end

	local level, curexp, maxexp
	
	level = GetTipParam("CUSTOM_INT" .. "h_level")
	if level == nil then return end
	curexp = GetTipParam("CUSTOM_INT" .. "h_cur_exp")
	if curexp == nil then return end
	maxexp = GetTipParam("CUSTOM_INT" .. "h_max_exp")
	if maxexp == nil then return end
	
	if alive then ret = ret..tipSet(8, 6)..tipText("坐骑等级："..level.."\n", 4294967168)..tipSet(8)..tipText("坐骑经验：", 4281843773)..tipText(tostring(curexp), 4294901760)..tipText("/"..maxexp.."\n", 4281843773)
	else ret = ret..tipSet(8, 6)..tipText("坐骑等级："..level.."\n", __color[3])..tipSet(8)..tipText("坐骑经验："..curexp.."/"..maxexp.."\n") end
	local data = GetTipParam("EQUIP_EXT")
	if data == nil then return end
	local tcount = GetTipParam("CUSTOM_INT" .. "h_type")
	if tcount ~= nil then	
		if tcount == 0 or tcount > 5 then tcount = 1 end	
	else
		tcount = 1
	end
	local color
	if alive then color = 4283021466 else color = 4283453520 end
	for i=1,tcount do
		if data[i] == nil or data[i][PROPERTY_ATTR_NAME] == nil or data[i][PROPERTY_ATTR_NAME] == 0 or
		not as3.tolua(UI:Lua_GetAttrProp(data[i][PROPERTY_ATTR_NAME],ATT_PROP_CHINANAME)) then
			ret = ret..tipSet(8)..tipText("第"..i.."条未领悟\n", color)
		else
			ret = ret..tipSet(8)..tipText(GetAttNameValueStr(as3.tolua(LuaRet), data[i][PROPERTY_ATTR_VALUE]).."\n", color)
		end
	end
	if not alive then ret = ret..tipSet(nil, 6)..tipText("已死亡\n", 4289309097) end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--装备原名-----------------------------------------------------------------------------------------------
function tipItemsLayoutRawName(entity)
	local ret = ""
	local name = GetTipParam("PROP_NAME")
	if string.sub(name, 1, 4) == "(改)" and GetTipParam("PROP_NAME") then
		name = GetTipParam("PROP_NAME")
		local h_type = GetTipParam("CUSTOM_INT" .. "h_type")
		if GetTipParam("PROP_SUBTYPE") == 14 and h_type ~= nil then
			if h_type == 0 or h_type > 5 then LuaRet = 1 end
			local __name = { "","*极","*珍","*绝","*神" }
			name = name..__name[h_type]
		end
		ret = ret..tipText("原名:"..name.."\n", GetTipParam("TITLECOLOR"), "SIMLI18")
		ret = ret..tipText(nil, nil, "system")
	end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..tipSet(nil, -4)..ret..tipSet(nil, 8) end; return ret
end

--价格属性-----------------------------------------------------------------------------------------------
function tipItemsLayoutPrice(entity, equip)
	local ret = ""
	local itempos = GetItemGUIDataItemPos()
	if itempos == GAMESTALL_POS or itempos == VISITSTALL_POS then
		local __stall = { {name="金币",color=4281645312},{name="元宝",color=4294953984} }
		if not GetTipItemGUIDataPropByType(ITEMGUIDATA_ITEMPRICETYPE) then return end
		local price_type = as3.tolua(LuaRet) + 1
		if __stall[price_type] ~= nil then
			if not GetTipItemGUIDataPropByType(ITEMGUIDATA_ITEMPRICE) then return end
			local _FormatPrice = "" ; local _LoopCount ; local _CurPos ; local _StallPrice ; local _RoleMoney ; local _StallColor
			_StallPrice = as3.tolua(LuaRet)
			_LoopCount = math.ceil( string.len( as3.tolua(LuaRet) ) / 3 ) - 1
			_CurPos = string.len( _StallPrice )
			for i = 1,_LoopCount do
				local _SubStr = string.sub( _StallPrice, _CurPos - 2, _CurPos )
				_FormatPrice = ",".._SubStr.._FormatPrice
				_CurPos = _CurPos - 3
			end
			_FormatPrice = string.sub( _StallPrice, 0, _CurPos ).._FormatPrice
			if price_type == 1 then if not as3.tolua(UI:Lua_GetPlayerSelfProperty64( ROLE_PROP64_GOLD )) then return end
			else if not as3.tolua(UI:Lua_GetPlayerSelfProperty64( ROLE_PROP64_INGOT )) then return end ; end
			_RoleMoney = as3.tolua(LuaRet)
			local __PoorColor = {[true] = 4294901760, [false] = __stall[price_type].color}
			if string.len( _StallPrice ) < string.len( _RoleMoney ) then _StallColor = __PoorColor[ false ]
			elseif string.len( _StallPrice ) == string.len( _RoleMoney ) then _StallColor = __PoorColor[ _StallPrice > _RoleMoney ]
			else _StallColor = __PoorColor[true] end
			ret = ret..tipText("售价：".._FormatPrice..__stall[price_type].name.."\n", _StallColor)
		end
	end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------技能Tip------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionSkill()
	local ret = GetTipBegin()
	ret = ret..tipAll(218)
	local SkillId = tonumber(GetTipParam("SKILLID"))
	local Enable = (tonumber(GetTipParam("ENABLE")) == 1)
	local __color = { [false] = 4287861651 }
	if not as3.tolua(UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_NAME)) then return end
	local info = as3.tolua(LuaRet)
	if not as3.tolua(UI:Lua_GetFontStrWidth("SIMLI18",info)) then return end
	ret = ret..tipSet(math.floor((202-as3.tolua(LuaRet))/2), -4)
	ret = ret..tipText(info.."\n", nil, "SIMLI18")
	if not as3.tolua(UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_ICON)) then return end
	local id = as3.tolua(LuaRet)
	if not as3.tolua(UI:Lua_IsTextureExists(id)) then id = 1990000000 end
	ret = ret..tipSet(nil, 4)
	ret = ret..tipImage2(id, nil, not Enable)
	ret = ret..tipSet2(80)
	__color[true] = 4294417725
	ret = ret..tipText("需要武器：", __color[Enable], "system")
	if not as3.tolua(UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_NEEDWEAPON)) then return end
	info = "所有武器"; if as3.tolua(LuaRet) ~= 0 then info = "剑" end
	__color[true] = 4286111031
	ret = ret..tipText(info, __color[Enable])
	ret = ret..tipSet(nil, 15)
	ret = ret..tipSet2(80)
	if not as3.tolua(UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_TYPE)) then return end
	info = "被动技能"; if as3.tolua(LuaRet) == 1 or as3.tolua(LuaRet) == 3 or as3.tolua(LuaRet) == 5 then info = "主动技能" end
	__color[true] = 4279755435
	ret = ret..tipText(info, __color[Enable])
	ret = ret..tipSet(nil, 15)
	ret = ret..tipSet2(80)
	__color[true] = 4294417725
	ret = ret..tipText("CD：", __color[Enable])
	if not as3.tolua(UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_CD)) then return end
	__color[true] = 4279755435

	local cd_time = as3.tolua(LuaRet)
	local dot_num = 0
	if cd_time % 1000 == 0 then
		dot_num = 0
	elseif cd_time % 100 == 0 then
		dot_num = 1
	elseif cd_time % 10 == 0 then
		dot_num = 2
	else
		dot_num = 3
	end
	ret = ret..tipText(string.format("%."..dot_num.."f秒\n", cd_time / 1000), __color[Enable])

	ret = ret..tipSet(nil, 4)
	__color[true] = 4294761476
	ret = ret..tipText("技能描述：", __color[Enable])
	__color[true] = 0xffffffff
	ret = ret..tipText(nil, __color[Enable])
	if not as3.tolua(UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_TIPS)) then return end
	local desc = string.gsub(as3.tolua(LuaRet), "\"", "\\\"")
	ret = ret..tipText3(desc, 0)

	ret = ret..GetTipEnd(); 
	CL:SetTipRet(ret);
end


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------Buff Tip-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionBuff()
	local ret = GetTipBegin()
	local tipw = 150
	ret = ret..tipAll(tipw)
	local BuffID = tonumber(GetTipParam("BUFFID"))
	if not as3.tolua(UI:Lua_GetBuffProp(BuffID,BUFF_PROP_NAME)) then return end
	local info = as3.tolua(LuaRet)
	if not as3.tolua(UI:Lua_GetFontStrWidth("SIMLI18",info)) then return end
	ret = ret..tipSet((tipw - as3.tolua(LuaRet)) / 2 - 8)
	ret = ret..tipSet(nil, -4)
	ret = ret..tipText(info.."\n", "#AB995F", "SIMLI18")
	ret = ret..tipSet(nil, 8)
	if not as3.tolua(UI:Lua_GetBuffProp(BuffID,BUFF_PROP_TIPS)) then return end
	ret = ret..tipText2(as3.tolua(LuaRet).."\n", "#E4C19F", "system")

	--剩余时间
	local LeftTime = GetTipParam("BUFFLEFTTIME")
	if LeftTime ~= nil then
		LeftTime = tonumber(LeftTime)
		if LeftTime > 0 then
			local TimeStr = GetLeaveTimeString(LeftTime)
			ret = ret..tipSet(nil, 4)..tipText("剩余时间："..TimeStr.."\n")
		end
	end

	ret = ret..GetTipEnd()
	CL:SetTipRet(ret)
end


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------徽章Tip------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionMedal()
	local ret = GetTipBegin()
	local MedalLevel = tonumber(GetTipParam("LEVEL"))
	if GetTipParam("ITEMCOUNT") ~= nil then
		local ItemCount = tonumber(GetTipParam("ITEMCOUNT"))
		if ItemCount > 9 then
			MedalLevel = math.floor(MedalLevel / 3) * 3
		end
	end

	ret = ret..tipSet(nil, -4)
	ret = ret..tipText("全套精炼 +"..MedalLevel.."\n", 4294761476, "SIMLI18")
	ret = ret..tipSet(nil, 6)

	for i = 1,10 do
		local Att = tonumber(GetTipParam("ATT"..i))
		local Val = tonumber(GetTipParam("ATTVALUE"..i))
		if Att ~= nil and Val ~= nil and Att ~= 0 and as3.tolua(UI:Lua_GetAttrProp(Att, ATT_PROP_CHINANAME)) then
			local Name = as3.tolua(LuaRet)
			local Percent = true
			if string.find(Name, "百分比$") == nil then
				Percent = false
			end
			ret = ret..tipText(Name, 4294761476, "system")
			if Percent then
				ret = ret..tipText(" +"..Val.."%\n", 4281645312)
			else
				ret = ret..tipText(" +"..Val.."\n", 4281645312)
			end
		end
	end

	ret = ret..GetTipEnd(); return ret
end


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------组队头像Tip--------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionTeamHead()

	local ret = GetTipBegin()
	local RoleGUID = GetTipParam("ROLEGUID")
	if as3.tolua(UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_NAME)) then ret = ret..tipText("昵称："..as3.tolua(LuaRet).."\n") end

	if as3.tolua(UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_LEVEL)) then ret = ret..tipText("等级："..as3.tolua(LuaRet).."\n") end

	if as3.tolua(UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_JOB)) then ret = ret..tipText("职业："..RDJOBName[as3.tolua(LuaRet)].."\n") end
	if as3.tolua(UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_MAPNAME)) and as3.tolua(UI:Lua_GetMapNameByKeyName(as3.tolua(LuaRet))) then ret = ret..tipText("位置："..as3.tolua(LuaRet).."\n") end
	ret = ret..GetTipEnd(); 	
	CL:SetTipRet(ret)

end


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------Vip 等级Tip--------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionVipLevel()
	local ret = GetTipBegin()

	local level = GetTipParam("level")
	if level == nil then level = "0" end
	level = tonumber(level)
	if level > 7 or level < 0 then level = 0 end
	local timestr = GetTipParam("time")
	if timestr == nil then timestr = "-1" end
	timestr = tonumber(timestr)
	if timestr < 0 then timestr = "无限制"
	else timestr = GetLeaveTimeString(timestr) end
	ret = ret..tipText("等级："..level.."\n")
	ret = ret..tipText("剩余时间："..timestr)

	ret = ret..GetTipEnd(); return ret
	
end

-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------Vip 功能Tip--------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionVipAction()
	local ret = GetTipBegin()
	ret = ret..tipAll(170)
	ret = ret..tipText(nil, MakeARGB(255,200,160,31))
	local name = GetTipParam("name")
	ret = ret..tipText("功能名称："..name.."\n")
	ret = ret..tipSet(nil, 6)
	local desc = string.gsub(GetTipParam("desc"), "\"", "\\\"")
	ret = ret..tipText2("功能描述："..desc.."\n")
	ret = ret..tipSet(0, 6)
	local active = GetTipParam("active")
	local level = tonumber(GetTipParam("level"))
	local leavetime = tonumber(GetTipParam("leavetime"))
	if active == "已激活" then
		ret = ret..tipText(nil, MakeARGB(255,121,200,53))
		ret = ret..tipText(active.."\n")
		ret = ret..tipText("VIP等级需求："..level.."\n")
		if leavetime < 0 then
			ret = ret..tipText("剩余时间无限制\n")
		else
			ret = ret..tipText("剩余"..GetLeaveTimeString(leavetime).."\n")
		end
	else
		ret = ret..tipText(nil, 4293673014)
		ret = ret..tipText(active.."\n")
		if level == 0 then ret = ret..tipText("VIP等级无法激活\n")
		else ret = ret..tipText("VIP等级需求："..level.."\n") end
		local timet = GetLeaveTimeString_VipCfg(tonumber(GetTipParam("time")))
		local price = GetTipParam("price")
		ret = ret..tipText("价格"..price.."元宝/"..timet.."\n")
	end
	ret = ret..GetTipEnd(); 
	CL:SetTipRet(ret)
end


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------装备损坏Tip--------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionBrokenEquip()
	local ret = GetTipBegin()

	ret = ret..tipAll(150)
	ret = ret..tipText("您身上的下列装备耐久不足，请尽快修理\n", "WHITE")
	ret = ret..tipSet(nil, 10)

	local list = {}
	local i = 1
	local color
	while true do
		local flag = GetTipParam(tostring(i))
		if flag == nil then break end
		if flag == "YELLOW" then
			color = mkcolor("YELLOW")
		elseif flag == "RED" then
			color = mkcolor("RED")
		else break end

		local name = GetTipParam(i.."NAME")
		if name == nil then break end
		local curdrab = GetTipParam(i.."CURDRAB")
		if curdrab == nil then break end
		local maxdrab = GetTipParam(i.."MAXDRAB")
		if maxdrab == nil then break end

		table.insert(list, { color, name, curdrab, maxdrab })
		i = i + 1
	end

	local max_align = 0
	for i = 1, #list do
		max_align = math.max(GetStrWidth(list[i][2]), max_align)
	end
	max_align = max_align + 10

	for i = 1, #list do
		local tbl = list[i]
		ret = ret..tipText(tbl[2], tbl[1])
		ret = ret..tipSet2(max_align, nil)
		ret = ret..tipText("("..tbl[3].."/"..tbl[4]..")\n")
	end

	ret = ret..tipSet(nil, 10)
	ret = ret..tipText("点击图标可传送到", "WHITE")
	ret = ret..tipText(" 武器店 ", "GREENG")
	ret = ret..tipText("修理装备\n", "WHITE")
	ret = ret..tipText("商城购买")
	ret = ret..tipText(" 修复神水 ", "GREENG")
	ret = ret..tipText("可立即修理全身装备", "WHITE")

	ret = ret..GetTipEnd(); return ret
end