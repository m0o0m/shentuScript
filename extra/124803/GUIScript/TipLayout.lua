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
		return UI:Lua_GetPlayerSelfPropBase(prop)
	else
		return UI:Lua_GetPlayerPropBase(hero, prop)
	end
end

function GetRoleOrHeroProperty32(prop)
	local hero = GetTipParam("HEROGUID")
	if hero == nil then
		return UI:Lua_GetPlayerSelfProperty32(prop)
	else
		return UI:Lua_GetPlayerProperty32(hero, prop)
	end
end


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------物品、装备Tip------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionProp()
	local itemid = tonumber(GetTipParam("ITEMID"))
	local guid = GetTipParam("GUID")
	local entity = tonumber(GetTipParam("ENTITY"))
	if entity == nil then
		if string.len(guid) > 9 then entity = 1 else entity = 0 end
	end

	if not UI:Lua_GetItemTemplateHandleByID(itemid) then return end
	local ihandle = LuaRet
	local ehandle = 0
	if entity == 1 then
		if not UI:Lua_GetItemEntityHandleByGUID(guid) then
			entity = 0
			ehandle = 0
		else
			ehandle = LuaRet
		end
	end
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_TYPE) then return end
	SetTipParam("TYPE", LuaRet)
	local equip = false
	if LuaRet == 1 then equip = true end

	--初始化Tips数据
	if true ~= tipItemsLayoutInitialize(ihandle, ehandle, equip) then return end

	if not equip then
		return GetItemTips(ihandle, ehandle) --物品tips
	else
		return GetEquipTips(ihandle, ehandle) --装备tips
	end
end

--物品Tips-----------------------------------------
function GetItemTips(ihandle, ehandle)
	local item_type = GetTipParam("TYPE")         --物品类型
	local item_subtype = GetTipParam("SUBTYPE")   --物品子类型
	local item_name = GetTipParam("NAME")         --物品名字
	local item_keyname = GetTipParam("KEYNAME")   --物品key name

	local ret = GetTipBegin()
	ret = ret..tipAll(GetTipParam("WIDTH"))

	local item = nil
	--标题--
	item = tipItemsLayoutTitle(ihandle, ehandle, false)
	if item == nil then return end; ret = ret..item
	--绑定状态--
	item = tipItemsLayoutBind(ihandle, ehandle, false)
	if item == nil then return end; ret = ret..item
	--基本需求--
	item = tipItemsLayoutRequire(ihandle, ehandle, false)
	if item == nil then return end; ret = ret..item
	--基本属性--
	item = tipItemsLayoutProperty(ihandle, ehandle, false, item ~= "")
	if item == nil then return end; ret = ret..item
	--物品简介--
	item = tipItemsLayoutIntroduction(ihandle, ehandle, false)
	if item == nil then return end; ret = ret..item
	--附魔石--
	if item_keyname == "附魔石" then
		item = tipItemsLayoutFumoshi(ihandle, ehandle, false)
		if item == nil then return end; ret = ret..item
	end
	--价格属性--
	item = tipItemsLayoutPrice(ihandle, ehandle, false)
	if item == nil then return end; ret = ret..item

	ret = ret..GetTipEnd(); return ret
end

--装备Tips-----------------------------------------
function GetEquipTips(ihandle, ehandle)
	local equip_type = GetTipParam("TYPE")         --装备类型
	local equip_subtype = GetTipParam("SUBTYPE")   --装备子类型
	local equip_name = GetTipParam("NAME")         --装备名字
	local equip_keyname = GetTipParam("KEYNAME")   --装备key name

	local ret = GetTipBegin()
	ret = ret..tipAll(GetTipParam("WIDTH"))

	local item = nil
	--标题--
	item = tipItemsLayoutTitle(ihandle, ehandle, true)
	if item == nil then return end; ret = ret..item
	--绑定状态--
	item = tipItemsLayoutBind(ihandle, ehandle, true)
	if item == nil then return end; ret = ret..item
	--基本需求--
	item = tipItemsLayoutRequire(ihandle, ehandle, true)
	if item == nil then return end; ret = ret..item
	--基本属性--
	item = tipItemsLayoutProperty(ihandle, ehandle, true, item ~= "")
	if item == nil then return end; ret = ret..item
	--攻防属性--
	item = tipItemsLayoutAttackDefense(ihandle, ehandle, true)
	if item == nil then return end; ret = ret..item
	--其他属性--
	item = tipItemsLayoutOtherProperty(ihandle, ehandle, true, item ~= "")
	if item == nil then return end; ret = ret..item
	--装备介绍属性--
	item = tipItemsLayoutZhuangbeiJieshao(ihandle, ehandle, true)
	if item == nil then return end; ret = ret..item
	--装备附魔属性--
	item = tipItemsLayoutFumo(ihandle, ehandle, true)
	if item == nil then return end; ret = ret..item
	--精炼属性--
	item = tipItemsLayoutRefine(ihandle, ehandle, true)
	if item == nil then return end; ret = ret..item
	--鉴定属性--
	item = tipItemsLayoutIdentify(ihandle, ehandle, true)
	if item == nil then return end; ret = ret..item
	--套装属性--
	item = tipItemsLayoutSuit(ihandle, ehandle, true)
	if item == nil then return end; ret = ret..item
	--宝石属性--
	item = tipItemsLayoutCombiningGem(ihandle, ehandle, true)
	if item == nil then return end; ret = ret..item
	--坐骑属性--
	if equip_subtype == 14 then --坐骑subtype是14
		item = tipItemsLayoutHorse(ihandle, ehandle, true)
		if item == nil then return end; ret = ret..item
	end
	--翅膀属性--
	if equip_subtype == 12 then --翅膀subtype是12
		item = tipItemsLayoutWing(ihandle, ehandle, true)
		if item == nil then return end; ret = ret..item
	end	
	
	
	
	--原名显示--
	item = tipItemsLayoutRawName(ihandle, ehandle)
	if item == nil then return end; ret = ret..item
	--价格属性--
	item = tipItemsLayoutPrice(ihandle, ehandle, true)
	if item == nil then return end; ret = ret..item

	ret = ret..GetTipEnd(); return ret
end

--初始化数据----------------------------------------------------------------------------------------------------
function tipItemsLayoutInitialize(ihandle, ehandle, equip)
	--当前最小Tip宽度--
	SetTipParam("WIDTH", 150)
	--获取自身GUID--
	if not UI:Lua_GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then return end
	SetTipParam("SELFID", LuaRet)
	--获取拥有者GUID--
	local OwerId = 0
	if ehandle ~= 0 then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_ROLE) then return end
		OwerId = LuaRet
	end
	SetTipParam("OWNERID", OwerId)
	--获取是否是英雄物品
	local HeroId = "0"
	if ehandle ~= 0 then
		if not UI:Lua_GetCurHeroGUID() then return end
		HeroId = LuaRet
	end
	if HeroId ~= "0" and type(HeroId) == type(OwerId) and HeroId == OwerId then
		SetTipParam("HEROGUID", HeroId)
	end
	--获取极品属性--
	if ehandle ~= 0 and equip then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_QUALITY) then return end
		SetTipParam("QUALITY", LuaRet)
	end
	--获取精炼属性--
	if ehandle ~= 0 and equip then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_REFINEDATA) then return end
		SetTipParam("REFINE", LuaRet)
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
	if ehandle ~= 0 and equip then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_IDENTIFIES) then return end
		SetTipParam("IDENTIFY", LuaRet)
	end
	--获取物品的type--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_TYPE) then return end
	SetTipParam("TYPE", LuaRet)
	--获取物品的Sub type--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUBTYPE) then return end
	SetTipParam("SUBTYPE", LuaRet)
	--获取物品名称--
	if ehandle == 0 then
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_NAME) then return end
	else
		if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_NAME) then return end
		if LuaRet == "" then
			if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_NAME) then return end
		end
	end
	SetTipParam("NAME", LuaRet)
	--获取物品Key name--
	if ehandle == 0 then
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_KEYNAME) then return end
	else
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_KEYNAME) then return end
		if LuaRet == "" then
			if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_KEYNAME) then return end
		end
	end
	SetTipParam("KEYNAME", LuaRet)
	return true
end

--物品tip标题----------------------------------------------------------------------------------------------------
function tipItemsLayoutTitle(ihandle, ehandle, equip)
	local ret = tipSet(nil, -2)

	--标题--
	local name = GetTipParam("NAME")
	local color = 4278190079 --白色

	if equip and GetTipParam("SUBTYPE") == 14 and UI:Lua_GetItemEntityCustomVarInt(ehandle,"h_type") then
		if LuaRet == 0 or LuaRet > 5 then LuaRet = 1 end
		local __name = { "","*极","*珍","*绝","*神" }
		--标题颜色表         白色       绿色       蓝色       紫色       金色       红色
		local __color = { 4278190079,4281645312,4278276095,4287265790,4294950430,4294901760 }
		color = __color[LuaRet]
		name = name..__name[LuaRet]
	elseif equip and UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_BRIEF) and LuaRet == "荣耀装备" then
		color = MakeARGB(255, 245, 146, 100)
	elseif UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_COLOR) then
		color = mkcolor(LuaRet)
	end
	SetTipParam("TITLECOLOR", color)

	ret = ret..tipText(name, color, "SIMLI18")
	--精炼等级--
	if equip == true and ehandle ~= 0 and GetTipParam("SUBTYPE") ~= 5 then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_EQUIP_REFINELEVEL) then return end
		local refine = LuaRet
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
	end
	
	if  tonumber(CL:GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ICON) and LuaRet or 0) then
			  --  local icon = tonumber(CL:GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ICON) and LuaRet or 0) --修改
				ret = ret..tipText("\n", nil, "system")..tipSet(3, 4)  --边框位置
				ret = ret..tipImage(1908900013, 36, 36) --外框大小
				ret = ret..tipSet2(0)
				ret = ret..tipSet(-11, -14)  --道具图标位置
				ret = ret..tipAnimate(1076300000)
				ret = ret..tipSet(16, 15)..tipImage(LuaRet, 32, 32) --大图标缩放
			
			ret = ret..tipSet2(59, 5)..tipText("秦汉精品") --加字
			ret = ret..tipSet2(59, 23)..tipText("倾情奉献")
		
	end
	
	ret = ret..tipText("\n", nil, "system")..tipSet(nil, 8); return ret
end

--物品的装备、绑定状态----------------------------------------------------------------------------------------------------
function tipItemsLayoutBind(ihandle, ehandle, equip)
	local ret = ""

	--装备状态--
	local self = GetTipParam("SELFID")
	local ower = GetTipParam("OWNERID")
	if equip and ehandle ~= 0 and ower ~= 0 and self == ower and EQUIMENT_POS == GetItemPosTypeByHandle(ehandle) then
		--ret = ret..tipText("已装备\n", 4293050946)
	end
	--绑定状态--
	local bound = false
	if ehandle ~= 0 then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_IS_BOUND) then return end
		bound = LuaRet
	else
		if GetTipItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND) then
			bound = LuaRet
		end
		if not bound and UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_BINDTYPE) then
			bound = (LuaRet == 1)
		end
	end
	local state,color
	if bound then 
		state = "已绑定"; color = 4278276095
		ret = ret..tipText(state.."\n", color)
	else
		--state = "未绑定"; color = 4281645312 
		--ret = ret..tipText(state.."\n", color)
	end

	if ret ~= "" then ret = ret..tipSet(nil, 8) end; return ret
end

--基本需求属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutRequire(ihandle, ehandle, equip)
	local ret = ""
	local __color = { [true] = 4294901760, [false] = 4289309097 }

	--查询物品标识
	--物品表item，字段ItemIdentifier, 物品标识--
	if ItemIdentifierCache == nil then ItemIdentifierCache = {} end
	local ItemIdt = ItemIdentifierCache[GetTipParam("ITEMID")]
	if ItemIdt == nil then
		ItemIdt = FindDBE("item","ItemIdentifier","Id",""..GetTipParam("ITEMID"))
		if #ItemIdt ~= 1 then ItemIdt = "" else ItemIdt = ItemIdt[1] end
		--缓存物品标识--
		ItemIdentifierCache[GetTipParam("ITEMID")] = ItemIdt
		if ItemIdt == "" then ItemIdt = nil end
	end
	SetTipParam("ITEMIDENTIFIER",ItemIdt)

	--性别需求--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_GENDER) then return end
	if LuaRet ~= 0 then
		local r_sex = LuaRet
		if not GetRoleOrHeroProperty(ROLE_PROP_SEX) then return end
		local sex = LuaRet
		ret = ret..tipText("性别需求："..RDSexName[r_sex].."\n", __color[sex ~= r_sex])
	end
	--等级需求--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_LEVEL) then return end
	if LuaRet ~= 0 then
		if GetTipParam("ITEMIDENTIFIER") == "气血石" or GetTipParam("ITEMIDENTIFIER") == "火龙之心" then
		else
			local r_level = LuaRet
			if not GetRoleOrHeroProperty32(ROLE_PROP32_LEVEL) then return end
			local level = LuaRet
			ret = ret..tipText("等级需求："..r_level.."\n", __color[level < r_level])
		end
	end
	--职业需求--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_JOB) then return end
	if LuaRet ~= 0 then
		local r_job = LuaRet
		if not GetRoleOrHeroProperty32(ROLE_PROP32_JOB) then return end
		local job = LuaRet
		ret = ret..tipText("职业需求："..RDJOBName[r_job].."\n", __color[job ~= r_job])
	end
	--物攻需求--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_PHYLIMIT) then return end
	if LuaRet ~= 0 then
		local r_atk = LuaRet
		if not GetRoleOrHeroProperty32(ROLE_PROP32_MAX_PHY_ATK) then return end
		local atk = LuaRet
		ret = ret..tipText("物攻需求："..r_atk.."\n", __color[atk < r_atk])
	end
	--魔攻需求--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAGLIMIT) then return end
	if LuaRet ~= 0 then
		local r_atk = LuaRet
		if not GetRoleOrHeroProperty32(ROLE_PROP32_MAX_MAG_ATK) then return end
		local atk = LuaRet
		ret = ret..tipText("魔攻需求："..r_atk.."\n", __color[atk < r_atk])
	end
	--道攻需求--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_TAOLIMIT) then return end
	if LuaRet ~= 0 then
		local r_atk = LuaRet
		if not GetRoleOrHeroProperty32(ROLE_PROP32_MAX_TAO_ATK) then return end
		local atk = LuaRet
		ret = ret..tipText("道攻需求："..r_atk.."\n", __color[atk < r_atk])
	end

	return ret
end

--物品基本属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutProperty(ihandle, ehandle, equip, notnull)
	local ret = ""
	local str = ""

	--重量--
	local count = 0
	if ehandle ~= 0 then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_ENTITY_AMOUNT) then return end
		count = LuaRet
	end
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SELFWEIGHT) then return end
	str = "重量："..LuaRet
	if count > 1 then str = str.." × "..count end
	ret = ret..tipText(str.."\n", 4289309097)
	--耐久/使用次数--
	local Type = GetTipParam("TYPE")
	local subtype = GetTipParam("SUBTYPE")
	local key_name = GetTipParam("KEYNAME")
	if GetTipParam("ITEMIDENTIFIER") == "火龙之心" or  GetTipParam("ITEMIDENTIFIER") == "气血石" then
		--火龙之心耐久表示为容量
	elseif equip and subtype ~= 5 then
		if subtype == 14 then str = "饥饿度：" else str = "耐久：" end
		local cur_nj, max_nj, cur_nj_t, max_nj_t
		if ehandle == 0 then
			if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_DURABILITY) then return end
			max_nj_t = LuaRet
			cur_nj_t = max_nj_t
			max_nj = math.ceil(max_nj_t/1000)
			cur_nj = max_nj
		else
			if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_DURABILITY) then return end
			cur_nj_t = LuaRet
			cur_nj = math.ceil(cur_nj_t/1000)
			if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_MAX_DURABILITY) then return end
			max_nj_t = LuaRet
			max_nj = math.ceil(max_nj_t/1000)
		end

		local is_broken = false              --是否已破损
		local broken_color = COLOR_YELLOW    --破损颜色
		if ehandle ~= 0 then
			if max_nj_t > 8000 then
				if cur_nj_t < max_nj_t / 10 then
					broken_color = COLOR_RED
					is_broken = true
				elseif cur_nj_t < max_nj_t / 5 then
					is_broken = true
				end
			else
				if cur_nj_t < 1000 then
					broken_color = COLOR_RED
					is_broken = true
				elseif cur_nj_t < 1600 then
					is_broken = true
				end
			end
		end

		if true == is_broken then
			ret = ret..tipText(str)
			ret = ret..tipText(tostring(cur_nj), broken_color)
			ret = ret..tipText("/"..max_nj.."\n", 4289309097)
		else
			ret = ret..tipText(str..cur_nj.."/"..max_nj.."\n", 4289309097)
		end
	elseif ehandle == 0 or count == 1 then
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_USECOUNT) then return end
		local max_use = LuaRet
		if max_use ~= 0 and GetItemGUIDataItemPos() ~= SKILLBAR_POS then
			local cur_use = max_use
			if ehandle ~= 0 then
				if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_USE_COUNT) then return end
				cur_use = LuaRet
			end
			ret = ret..tipText("使用次数："..cur_use.."/"..max_use.."\n")
		end
	end
	--存储状态--
	local jl_types = { {5, 1} }
	local jl_names = { "聚灵珠(小)", "聚灵珠(中)", "聚灵珠(大)", "超级聚灵珠", "神级聚灵珠", "坐骑聚灵珠(小)", "坐骑聚灵珠(中)", "坐骑聚灵珠(大)" }
	local is_jlz = false
	for k, v in pairs(jl_types) do
		if Type == v[1] and subtype == v[2] then
			is_jlz = true
		break end
	end
	if not is_jlz then
		for k, v in pairs(jl_names) do
			if key_name == v then
				is_jlz = true
			break end
		end
	end
	if ehandle ~= 0 and true == is_jlz then
		LuaRet = 0
		if UI:Lua_GetItemEntityCustomVarInt(ehandle, "max_exp") and LuaRet ~= 0 then
			local max_exp = LuaRet
			local cur_exp = 0
			if UI:Lua_GetItemEntityCustomVarInt(ehandle, "cur_exp") then
				cur_exp = LuaRet
			end
			ret = ret..tipText("存储状态：", 4281645312)
			if cur_exp < max_exp then
				ret = ret..tipText(cur_exp.."(未满)", 4294901760)
				ret = ret..tipText("/"..max_exp.."\n", 4281645312)
			else
				ret = ret..tipText(cur_exp.."/"..max_exp.."\n")
			end
			ret = ret..tipText(nil, 4289309097)
		end
	end
	--气血石, 火龙之心--
	if GetTipParam("ITEMIDENTIFIER") == "气血石" and ehandle ~= 0 then
		LuaRet = 0
		local max_exp = 0
		local cur_exp = 0
		if UI:Lua_GetItemEntityCustomVarInt(ehandle, "total_store") and LuaRet ~= 0 then
			max_exp = LuaRet
			cur_exp = 0
			if UI:Lua_GetItemEntityCustomVarInt(ehandle, "cur_store") then
				cur_exp = LuaRet
			end

			ret = tipSet(nil, -8)..tipLine()
			ret = ret..tipText("容量：", 4281645312)

			local cur_exp_str = string.format("%.0f",cur_exp/10000)
			local max_exp_str = string.format("%.0f",max_exp/10000)

			if cur_exp < max_exp then
				ret = ret..tipText(cur_exp_str.."", 4281645312)
				ret = ret..tipText("/"..max_exp_str.."万\n", 4281645312)
			else
				ret = ret..tipText(cur_exp_str.."/"..max_exp_str.."万\n")
			end
			ret = ret .. tipText(nil, 4289309097)
			ret = ret .. tipSet(nil, 8)
		end
	elseif GetTipParam("ITEMIDENTIFIER") == "火龙之心" then
		LuaRet = 0
		local cur_nj, max_nj, cur_nj_t, max_nj_t
		if ehandle == 0 then
			if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_DURABILITY) then return end
			max_nj_t = LuaRet
			cur_nj_t = max_nj_t
			max_nj = math.ceil(max_nj_t/1)
			cur_nj = max_nj
		else
			if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_DURABILITY) then return end
			cur_nj_t = LuaRet
			cur_nj = math.ceil(cur_nj_t/1)
			if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_MAX_DURABILITY) then return end
			max_nj_t = LuaRet
			max_nj = math.ceil(max_nj_t/1)
		end

		local max_exp = max_nj
		local cur_exp = cur_nj
		ret = tipSet(nil, -8)..tipLine()
		ret = ret..tipText("容量：", 4281645312)
		local cur_exp_str = string.gsub(string.format("%.0f",cur_exp),"^(.-)%.0*$","%1")
		local max_exp_str = string.gsub(string.format("%.0f",max_exp),"^(.-)%.0*$","%1")
		if cur_exp < max_exp then
			ret = ret..tipText(cur_exp_str.."", 4281645312)
			ret = ret..tipText("/"..max_exp_str.."\n", 4281645312)
		else
			ret = ret..tipText(cur_exp_str.."/"..max_exp_str.."\n")
		end
		ret = ret..tipText(nil, 4289309097)
		ret = ret .. tipSet(nil, 8)
	end

	--时间限制--
	if UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_TIMELIMIT) and LuaRet ~= 0 then
		ret = ret..tipText("时间剩余：")
		if ehandle == 0 then
			ret = ret..tipText(GetLeaveTimeString(LuaRet).."\n")
		else
			if UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_LIFE) then
				ret = ret..tipText(GetLeaveTimeString(LuaRet).."\n")
			else
				ret = ret..tipText("已过期\n", 4294901760)
				ret = ret..tipText(nil, 4289309097)
			end
		end
	end

	if notnull or ret ~= "" then ret = ret..tipSet(nil, 8) end; return ret
end

--物品简介----------------------------------------------------------------------------------------------------
function tipItemsLayoutIntroduction(ihandle, ehandle, equip)
	local ret = ""
	if not equip and UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_DESC) and LuaRet ~= "" and LuaRet ~= "0" then
		local desc = LuaRet
		desc = string.gsub(desc, "\"", "\\\"")
		if UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_COLOR) and LuaRet == "0" then
			if UI:Lua_GetMallItemHandleByName(GetTipParam("NAME")) then
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
function tipItemsLayoutFumoshi(ihandle, ehandle, equip)
	local ret = ""

	if not equip and ehandle ~= 0 and GetTipParam("TYPE") == 4 and GetTipParam("SUBTYPE") == 20 then
		local str = ""
		for i = 1,6 do
			local name, value
			if UI:Lua_GetItemEntityCustomVarInt(ehandle, "fumoAtt"..i) then
				if LuaRet ~= 0 and UI:Lua_GetAttrProp(LuaRet,ATT_PROP_CHINANAME) then name = LuaRet end
			end
			if UI:Lua_GetItemEntityCustomVarInt(ehandle, "fumoValue"..i) then
				value = LuaRet
			end
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
function tipItemsLayoutAttackDefense(ihandle, ehandle, equip)
	local ret = ""
	if not equip then return ret end
	local tmin, tmax, tval, thigh, vmin, vmax, val
	local __color = { [true] = 4294944768, [false] = 4278190079 }
	local __qulity = GetTipParam("QUALITY")
	--攻击属性--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MINPHYATK) then return end; vmin = LuaRet
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAXPHYATK) then return end; vmax = LuaRet
	tmin, tmax, thigh = GetQualityRangeValue(ROLE_PROP32_MIN_PHY_ATK,ROLE_PROP32_MAX_PHY_ATK,__qulity)
	vmin = vmin + tmin; vmax = vmax + tmax
	if vmin ~= 0 or vmax ~= 0 then
		ret = ret..tipText("攻击："..vmin.."-"..vmax.."\n", __color[thigh])
	end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MINMAGATK) then return end; vmin = LuaRet
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAXMAGATK) then return end; vmax = LuaRet
	tmin, tmax, thigh = GetQualityRangeValue(ROLE_PROP32_MIN_MAG_ATK,ROLE_PROP32_MAX_MAG_ATK,__qulity)
	vmin = vmin + tmin; vmax = vmax + tmax
	if vmin ~= 0 or vmax ~= 0 then
		ret = ret..tipText("魔法："..vmin.."-"..vmax.."\n", __color[thigh])
	end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MINTAOATK) then return end; vmin = LuaRet
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAXTAOATK) then return end; vmax = LuaRet
	tmin, tmax, thigh = GetQualityRangeValue(ROLE_PROP32_MIN_TAO_ATK,ROLE_PROP32_MAX_TAO_ATK,__qulity)
	vmin = vmin + tmin; vmax = vmax + tmax
	if vmin ~= 0 or vmax ~= 0 then
		ret = ret..tipText("道术："..vmin.."-"..vmax.."\n", __color[thigh])
	end

	--五行攻击--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_EA1) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_1_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("金相性攻击："..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_EA2) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_2_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("木相性攻击："..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_EA3) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_3_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("水相性攻击："..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_EA4) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_4_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("火相性攻击："..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_EA5) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_5_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("土相性攻击："..val.."\n", __color[thigh]) end

	--防御属性--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MINPHYDEF) then return end; vmin = LuaRet
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAXPHYDEF) then return end; vmax = LuaRet
	tmin, tmax, thigh = GetQualityRangeValue(ROLE_PROP32_MIN_PHY_DEF,ROLE_PROP32_MAX_PHY_DEF,__qulity)
	vmin = vmin + tmin; vmax = vmax + tmax
	if vmin ~= 0 or vmax ~= 0 then
		ret = ret..tipText("防御："..vmin.."-"..vmax.."\n", __color[thigh])
	end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MINMAGDEF) then return end; vmin = LuaRet
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAXMAGDEF) then return end; vmax = LuaRet
	tmin, tmax, thigh = GetQualityRangeValue(ROLE_PROP32_MIN_MAG_DEF,ROLE_PROP32_MAX_MAG_DEF,__qulity)
	vmin = vmin + tmin; vmax = vmax + tmax
	if vmin ~= 0 or vmax ~= 0 then
		ret = ret..tipText("魔防："..vmin.."-"..vmax.."\n", __color[thigh])
	end

	--五行防御--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ED1) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_1_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("金相性防御："..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ED2) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_2_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("木相性防御："..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ED3) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_3_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("水相性防御："..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ED4) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_4_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("火相性防御："..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ED5) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_5_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("土相性防御："..val.."\n", __color[thigh]) end

	return ret
end

--其他属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutOtherProperty(ihandle, ehandle, equip, notnull)
	local ret = ""
	local __color = { [true] = 4294944768, [false] = 4278190079 }
	local __qulity = GetTipParam("QUALITY")
	local __pading = { [true] = "+", [false] = "" }
	local tval, thigh, val

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_HP) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_HP,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("生命："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MP) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_MP,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("魔法："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_WEIGHT) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_WEIGHT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("背包负重："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_EQUIPWEIGHT) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_EQUIP_WEIGHT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("穿戴负重："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_BRAWN) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_BRAWN,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("腕力："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_HIT) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_HIT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("命中："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MISS) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MISS,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("闪避："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAGMISS) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAG_MISS,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("魔法闪避："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_BURST) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_BURST,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("暴击率："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_LC) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_LUCK_CURSE,__qulity); val = val + tval
	if ehandle ~= 0 and UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_LUCKCURSE) then val = val + LuaRet end
	if val ~= 0 and val <= 10 and val >= -10 then
		local __goodcol = {4294573201, 4294436147, 4294753536, 4292083464, 4293590784, 4293590784, 4293590784, 4293590784, 4293590784, 4293590784}
		local __badcol  = {4294145170, 4293673014, 4289339424, 4292219163, 4294901760, 4294901760, 4294901760, 4294901760, 4294901760, 4294901760}
		if val > 0 then ret = ret..tipText("幸运：+"..val.."\n", __goodcol[val])
		else val = -val; ret = ret..tipText("诅咒：+"..val.."\n", __badcol[val]) end
	end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_INTENSITY) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_INTENSITY,__qulity); val = val + tval
	
	if GetTipParam("ITEMIDENTIFIER") == "气血石" or GetTipParam("ITEMIDENTIFIER") == "火龙之心" then
	else
		if val ~= 0 then ret = ret..tipText("强度："..__pading[val > 0]..val.."\n", __color[thigh]) end
	end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MOVESPEED) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MOVE_SPEED_PCT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("移动速度："..__pading[val > 0]..val.."%\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_ATTACKSPEED) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ATTACK_SPEED_PCT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("攻击速度："..__pading[val > 0]..val.."%\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_POISON) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_POISON_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("中毒回复："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_HPREC) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_HP_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("生命回复："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MPREC) then return end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MP_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("魔法回复："..__pading[val > 0]..val.."\n", __color[thigh]) end

	if equip then
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKHP) then return end
		if LuaRet ~= 0 then ret = ret..tipText("吸血："..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKHPPCT) then return end
		if LuaRet ~= 0 then ret = ret..tipText("吸血："..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKMAXHPPCT) then return end
		if LuaRet ~= 0 then ret = ret..tipText("吸血上限："..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKMP) then return end
		if LuaRet ~= 0 then ret = ret..tipText("吸魔："..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKMPPCT) then return end
		if LuaRet ~= 0 then ret = ret..tipText("吸魔："..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKMAXMPPCT) then return end
		if LuaRet ~= 0 then ret = ret..tipText("吸魔上限："..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_REFPHY) then return end
		if LuaRet ~= 0 then ret = ret..tipText("物理伤害反射："..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_REFPHYPCT) then return end
		if LuaRet ~= 0 then ret = ret..tipText("物理伤害反射："..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_REFMAG) then return end
		if LuaRet ~= 0 then ret = ret..tipText("魔法伤害反射："..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_REFMAGPCT) then return end
		if LuaRet ~= 0 then ret = ret..tipText("魔法伤害反射："..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_IMMPHY) then return end
		if LuaRet ~= 0 then ret = ret..tipText("物理伤害减免："..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_IMMPHYPCT) then return end
		if LuaRet ~= 0 then ret = ret..tipText("物理伤害减免："..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_IMMMAG) then return end
		if LuaRet ~= 0 then ret = ret..tipText("魔法伤害减免："..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_IMMMAGPCT) then return end
		if LuaRet ~= 0 then ret = ret..tipText("魔法伤害减免："..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_ISPHYIMM) then return end
		if LuaRet ~= 0 then ret = ret..tipText("物理免疫："..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_ISMAGIMM) then return end
		if LuaRet ~= 0 then ret = ret..tipText("魔法免疫："..LuaRet.."\n", 4278190079) end
	end

	if notnull or ret ~= "" then ret = ret..tipSet(nil, 8) end; return ret
end

--荣耀装备介绍属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutZhuangbeiJieshao(ihandle, ehandle, equip)
	local ret = ""
	if ihandle == 0 or not equip then return ret end
	if UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_DESC) and LuaRet ~= "" and LuaRet ~= "0" then
		local desc = LuaRet
		desc = string.gsub(desc, "\"", "\\\"")
		local color = GetTipParam("TITLECOLOR")
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_BRIEF) and LuaRet == "荣耀装备" then
			color = 4293050946
		elseif color == nil then
			color = mkcolor("WHITE")
		end
		ret = ret..tipText2(desc.."\n", color)
	end
	if ret ~= "" then ret = tipSet(nil, -2)..ret..tipSet(nil, 8) end; return ret
end

--装备附魔属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutFumo(ihandle, ehandle, equip)
	local ret = ""
	local sub_type = GetTipParam("SUBTYPE")

	if ehandle == 0 or not equip or sub_type == 5 or sub_type == 13 or sub_type == 14 then return ret end
	if not UI:Lua_GetItemEntityCustomVarInt(ehandle, "fumotiaomu") or LuaRet <= 0 then return ret end
	local count = LuaRet
	if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_EXT) then return ret end
	local data = LuaRet
	local str = ""
	for i = 1,count do
		if data[i] ~= nil and data[i][PROPERTY_ATTR_NAME] ~= nil and data[i][PROPERTY_ATTR_NAME] ~= 0 and UI:Lua_GetAttrProp(data[i][PROPERTY_ATTR_NAME],ATT_PROP_CHINANAME) then
			str = str..tipSet(8)..tipText(GetAttNameValueStr(LuaRet, data[i][PROPERTY_ATTR_VALUE]).."\n", 4294953984)
		end
	end
	if str ~= "" then ret = tipText("附魔属性\n", 4294953984)..str end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--精炼属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutRefine(ihandle, ehandle, equip)
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
function tipItemsLayoutRefine2(ihandle, ehandle, equip)
	local ret = ""
	local __refine = {}
	if UI:Lua_GetItemEntityCustomVarInt(ehandle, "_da0") and LuaRet ~= 0 then
		if UI:Lua_GetAttrProp(LuaRet, ATT_PROP_CHINANAME) then
			local r_name = LuaRet
			if r_name ~= nil and UI:Lua_GetItemEntityCustomVarInt(ehandle, "_dv0") and LuaRet ~= 0 then
				table.insert(__refine, { r_name, LuaRet })
			end
		end
	end
	if UI:Lua_GetItemEntityCustomVarInt(ehandle, "_da1") and LuaRet ~= 0 then
		if UI:Lua_GetAttrProp(LuaRet, ATT_PROP_CHINANAME) then
			local r_name = LuaRet
			if r_name ~= nil and UI:Lua_GetItemEntityCustomVarInt(ehandle, "_dv1") and LuaRet ~= 0 then
				table.insert(__refine, { r_name, LuaRet })
			end
		end
	end
	for i = 1, #__refine do
		ret = ret..tipText("  "..GetAttNameValueStr(__refine[i][1], __refine[i][2], " +").."\n")
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..tipText("精炼属性：\n", 4287550230)..ret..tipSet(nil, 8) end; return ret
end

--扩展属性没用到-------------------------------------------------------------------------------------------------
function tipItemsLayoutExtend(ihandle, ehandle, equip)
	local ret = ""
	local __refine = GetTipParam("REFINE")
	if __refine ~= nil and __refine[1][PROPERTY_ATTR_NAME] ~= 0 and __refine[1][PROPERTY_ATTR_VALUE] ~= 0 and UI:Lua_GetAttrProp(__refine[1][PROPERTY_ATTR_NAME],ATT_PROP_CHINANAME) then
		local str = GetAttNameValueStr(LuaRet, __refine[1][PROPERTY_ATTR_VALUE], " +")
		ret = ret..tipText("精炼："..str.."\n", 4287550230)
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--鉴定属性----------------------------------------------------------------------------------------------------
function tipItemsLayoutIdentify(ihandle, ehandle, equip)
	local ret = ""
	if GetTipParam("ITEMIDENTIFIER") == "气血石" or GetTipParam("ITEMIDENTIFIER") == "火龙之心" then return ret end
	local __identify = GetTipParam("IDENTIFY")
	if equip and GetTipParam("SUBTYPE") ~= 5 and __identify ~= nil then
		local t = {}
		for k,v in pairs(__identify) do
			if __identify[k][PROPERTY_ATTR_NAME] == 0 or not UI:Lua_GetAttrProp(__identify[k][PROPERTY_ATTR_NAME],ATT_PROP_CHINANAME) then break end
			local name = LuaRet
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
function tipItemsLayoutSuit(ihandle, ehandle, equip)
	local ret = ""
	if UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_SUIT) and LuaRet ~= 0 then
		local suitid = LuaRet
		local __color = {[true] = 4294953984, [false] = 4287861651}

		local itempos = GetItemGUIDataItemPos()
		if ehandle == 0 then --道具模板
			if not UI:Lua_GetPlayerSelfEquipData() then return end
		elseif nil ~= GetTipParam("HEROGUID") then
			if not UI:Lua_GetPlayerHeroEquipData() then return end
		elseif itempos > INVALID_POS and itempos <= VISITSTALL_POS then --合法的物品位置
			if not UI:Lua_GetPlayerSelfEquipData() then return end
		elseif GetTipParam("SELFID") ~= 0 and GetTipParam("SELFID") ~= GetTipParam("OWNERID") and UI:Lua_GetPlayerTargetEquipData() then --别人物品,位置一般为INVALID_POS
		else --其他情况
			if not UI:Lua_GetPlayerSelfEquipData() then return end
		end
		local data = LuaRet
		local tcount = 0
		local tsuit = {}
		for site,guid in pairs(data) do
			if UI:Lua_GetItemTemplateHandleByGUID(guid) then
				local thandle = LuaRet
				local tsuitid, titemid
				if UI:Lua_GetItemTemplatePropByHandle(thandle, ITEM_PROP_SUIT) then tsuitid = LuaRet end
				if UI:Lua_GetItemTemplatePropByHandle(thandle, ITEM_PROP_ID) then titemid = LuaRet end
				if tsuitid ~= nil and titemid ~= nil and tsuitid == suitid and tsuit[titemid] == nil then
					tcount = tcount + 1
					tsuit[titemid] = suitid
				end
			end
		end
		if not UI:Lua_GetSuitPropByID(suitid, SUIT_PROP_NAME) then return end; local name = LuaRet
        if not UI:Lua_GetSuitItemListByID(suitid) then return end; local suitlist = LuaRet
		if #suitlist == 0 then return ret end
		ret = ret..tipText(name.."("..tcount.."/"..#suitlist..")\n", __color[true])
		--显示套装条目--
		for suit,id in pairs(suitlist) do
            if UI:Lua_GetItemTemplatePropByID(id, ITEM_PROP_NAME) then
				ret = ret..tipSet(8)..tipText(LuaRet.."\n", __color[tsuit[id] ~= nil])
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
				if UI:Lua_GetSuitPropByID(suitid, suit_prop_size[i][1]) then
					suit_prop_size[i][2] = LuaRet
				end
				if UI:Lua_GetSuitPropByID(suitid, suit_prop_attr[i][1]) then
					suit_prop_attr[i][2] = LuaRet
				end
				if UI:Lua_GetSuitPropByID(suitid, suit_prop_value[i][1]) then
					suit_prop_value[i][2] = LuaRet
				end
			end
		end
		for i = 1,#suit_prop_size do
			if suit_prop_size[i][2] > 0 and suit_prop_value[i][2] > 0 and UI:Lua_GetAttrProp(suit_prop_attr[i][2],ATT_PROP_CHINANAME) then
				local has_attr = (tcount >= suit_prop_size[i][2])
				ret = ret..tipSet(8)..tipText(suit_prop_size[i][2].."/"..#suitlist.." "..GetAttNameValueStr(LuaRet, suit_prop_value[i][2], "提升").."\n", __color[has_attr])
			end
		end
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

function tipItemsLayoutCombiningGem(ihandle, ehandle, equip)
	local ret = ""
	if ehandle == 0 then return ret end
	
	local gem_name_t = {	
							[6] = {"物防", 1900100005, 1},
							[8] = {"魔防", 1900100003, 1},
							[10] = {"物攻", 1900100004, 1},
							[12] = {"魔攻", 1900100006, 1},
							[14] = {"道术", 1900100002, 1},
							[81] = {"体力", 1900100001, 0},
						}
	
	UI:Lua_GetItemEntityCustomVarInt(ehandle, "hole_num")
	local hole_num = LuaRet
	--if hole_num == 1 then return ret end
	for i = 1, hole_num do
		local gem_att = 0
		local gem_value = 0
		if UI:Lua_GetItemEntityCustomVarInt(ehandle, "_da"..i - 1) then
			gem_att = LuaRet
		end
		if UI:Lua_GetItemEntityCustomVarInt(ehandle, "_dv"..i - 1) then
			gem_value = LuaRet
		end
		if gem_att > 0 and gem_value > 0 and gem_name_t[gem_att] ~= nil then
			if gem_name_t[gem_att][3] == 1 then
				ret = ret..tipImage(gem_name_t[gem_att][2])..tipSet(nil, 3)..tipText(" "..gem_name_t[gem_att][1].." + "..gem_value.."-"..gem_value.."\n", 4289309097)
			else
				ret = ret..tipImage(gem_name_t[gem_att][2])..tipSet(nil, 3)..tipText(" "..gem_name_t[gem_att][1].." + "..gem_value.."%\n", 4289309097)
			end
		else
			ret = ret..tipImage(1900100000)..tipSet(nil, 3)..tipText(" ".."未镶嵌".."\n", 4289309097)
		end
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--坐骑属性-----------------------------------------------------------------------------------------------
function tipItemsLayoutHorse(ihandle, ehandle, equip)
	local ret = ""
	if not equip or GetTipParam("SUBTYPE") ~= 14 or ehandle == 0 then return ret end
	local alive = true
	if ehandle ~= 0 and UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_DURABILITY) and LuaRet == 0 then alive = false end
	local __color = {4281843773, 4289309097, 4283453520}
	if alive then ret = ret..tipText("坐骑属性\n", __color[1])
	else ret = ret..tipText("坐骑属性\n", __color[2]) end

	local level, curexp, maxexp
	if not UI:Lua_GetItemEntityCustomVarInt(ehandle, "h_level")   then return end; level = LuaRet
	if not UI:Lua_GetItemEntityCustomVarInt(ehandle, "h_cur_exp") then return end; curexp = LuaRet
	if not UI:Lua_GetItemEntityCustomVarInt(ehandle, "h_max_exp") then return end; maxexp = LuaRet
	if alive then ret = ret..tipSet(8, 6)..tipText("坐骑等级："..level.."\n", 4294967168)..tipSet(8)..tipText("坐骑经验：", 4281843773)..tipText(tostring(curexp), 4294901760)..tipText("/"..maxexp.."\n", 4281843773)
	else ret = ret..tipSet(8, 6)..tipText("坐骑等级："..level.."\n", __color[3])..tipSet(8)..tipText("坐骑经验："..curexp.."/"..maxexp.."\n") end
	if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_EXT) then return end
	--local data = LuaRet
	--local tcount = 1
	--if UI:Lua_GetItemEntityCustomVarInt(ehandle,"h_type") then
	--	tcount = LuaRet; if tcount == 0 or tcount > 5 then tcount = 1 end
	--end
	--local color
	--if alive then color = 4283021466 else color = 4283453520 end
	--for i=1,tcount do
	--	if data[i] == nil or data[i][PROPERTY_ATTR_NAME] == nil or data[i][PROPERTY_ATTR_NAME] == 0 or
	--	not UI:Lua_GetAttrProp(data[i][PROPERTY_ATTR_NAME],ATT_PROP_CHINANAME) then
	--		ret = ret..tipSet(8)..tipText("第"..i.."条未领悟\n", color)
	--	else
	--		ret = ret..tipSet(8)..tipText(GetAttNameValueStr(LuaRet, data[i][PROPERTY_ATTR_VALUE]).."\n", color)
	--	end
	--end
	
	if not alive then ret = ret..tipSet(nil, 6)..tipText("已死亡\n", 4289309097) end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--翅膀属性-----------------------------------------------------------------------------------------------
function tipItemsLayoutWing(ihandle, ehandle, equip)
	local ret = ""
	if not equip or GetTipParam("SUBTYPE") ~= 12 or ehandle == 0 then return ret end
	local alive = true
	if ehandle ~= 0 and UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_DURABILITY) and LuaRet == 0 then alive = false end
	local __color = {4281843773, 4289309097, 4283453520}
	if alive then ret = ret..tipText("翅膀属性\n", __color[1])
	else ret = ret..tipText("翅膀属性\n", __color[2]) end

	local level, curexp, maxexp
	if not UI:Lua_GetItemEntityCustomVarInt(ehandle, "w_level")   then return end; level = LuaRet
	if not UI:Lua_GetItemEntityCustomVarInt(ehandle, "w_cur_exp") then return end; curexp = LuaRet
	if not UI:Lua_GetItemEntityCustomVarInt(ehandle, "w_max_exp") then return end; maxexp = LuaRet
	if alive then ret = ret..tipSet(8, 6)..tipText("翅膀等级："..level.."\n", 4294967168)..tipSet(8)..tipText("翅膀经验：", 4281843773)..tipText(tostring(curexp), 4294901760)..tipText("/"..maxexp.."\n", 4281843773)
	else ret = ret..tipSet(8, 6)..tipText("翅膀等级："..level.."\n", __color[3])..tipSet(8)..tipText("翅膀经验："..curexp.."/"..maxexp.."\n") end
	if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_EXT) then return end
	
	if not alive then ret = ret..tipSet(nil, 6)..tipText("已死亡\n", 4289309097) end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end


--装备原名-----------------------------------------------------------------------------------------------
function tipItemsLayoutRawName(ihandle, ehandle)
	local ret = ""
	local name = GetTipParam("NAME")
	if string.sub(name, 1, 4) == "(改)" and UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_NAME) then
		name = LuaRet
		if GetTipParam("SUBTYPE") == 14 and UI:Lua_GetItemEntityCustomVarInt(ehandle,"h_type") then
			if LuaRet == 0 or LuaRet > 5 then LuaRet = 1 end
			local __name = { "","*极","*珍","*绝","*神" }
			name = name..__name[LuaRet]
		end
		ret = ret..tipText("原名:"..name.."\n", GetTipParam("TITLECOLOR"), "SIMLI18")
		ret = ret..tipText(nil, nil, "system")
	end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..tipSet(nil, -4)..ret..tipSet(nil, 8) end; return ret
end

--价格属性-----------------------------------------------------------------------------------------------
function tipItemsLayoutPrice(ihandle, ehandle, equip)
	local ret = ""
	local itempos = GetItemGUIDataItemPos()
	if itempos == GAMESTALL_POS or itempos == VISITSTALL_POS then
		local __stall = { {name="金币",color=4281645312},{name="元宝",color=4294953984} }
		if not GetTipItemGUIDataPropByType(ITEMGUIDATA_ITEMPRICETYPE) then return end
		local price_type = LuaRet + 1
		if __stall[price_type] ~= nil then
			if not GetTipItemGUIDataPropByType(ITEMGUIDATA_ITEMPRICE) then return end
			local _FormatPrice = "" ; local _LoopCount ; local _CurPos ; local _StallPrice ; local _RoleMoney ; local _StallColor
			_StallPrice = LuaRet
			_LoopCount = math.ceil( string.len( LuaRet ) / 3 ) - 1
			_CurPos = string.len( _StallPrice )
			for i = 1,_LoopCount do
				local _SubStr = string.sub( _StallPrice, _CurPos - 2, _CurPos )
				_FormatPrice = ",".._SubStr.._FormatPrice
				_CurPos = _CurPos - 3
			end
			_FormatPrice = string.sub( _StallPrice, 0, _CurPos ).._FormatPrice
			if price_type == 1 then if not UI:Lua_GetPlayerSelfProperty64( ROLE_PROP64_GOLD ) then return end
			else if not UI:Lua_GetPlayerSelfProperty64( ROLE_PROP64_INGOT ) then return end ; end
			_RoleMoney = LuaRet
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

	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_NAME) then return end
	local info = LuaRet
	if not UI:Lua_GetFontStrWidth("SIMLI18",info) then return end
	ret = ret..tipSet(math.floor((202-LuaRet)/2), -4)
	ret = ret..tipText(info.."\n", nil, "SIMLI18")

	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_ICON) then return end
	local id = LuaRet
	if not UI:Lua_IsTextureExists(id) then id = 1990000000 end
	ret = ret..tipSet(nil, 4)
	ret = ret..tipImage2(id, nil, not Enable)
	ret = ret..tipSet2(80)
	__color[true] = 4294417725
	ret = ret..tipText("需要武器：", __color[Enable], "system")
	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_NEEDWEAPON) then return end
	info = "所有武器"; if LuaRet ~= 0 then info = "剑" end
	__color[true] = 4286111031
	ret = ret..tipText(info, __color[Enable])
	ret = ret..tipSet(nil, 15)
	ret = ret..tipSet2(80)
	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_TYPE) then return end
	info = "被动技能"; if LuaRet == 1 or LuaRet == 3 or LuaRet == 5 then info = "主动技能" end
	__color[true] = 4279755435
	ret = ret..tipText(info, __color[Enable])
	ret = ret..tipSet(nil, 15)
	ret = ret..tipSet2(80)
	__color[true] = 4294417725
	ret = ret..tipText("CD：", __color[Enable])
	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_CD) then return end
	__color[true] = 4279755435

	local cd_time = LuaRet
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
	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_TIPS) then return end
	local desc = string.gsub(LuaRet, "\"", "\\\"")
	ret = ret..tipText3(desc, 0)

	ret = ret..GetTipEnd(); return ret
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
	if not UI:Lua_GetBuffProp(BuffID,BUFF_PROP_NAME) then return end
	local info = LuaRet
	if not UI:Lua_GetFontStrWidth("SIMLI18",info) then return end
	ret = ret..tipSet((tipw - LuaRet) / 2 - 8)
	ret = ret..tipSet(nil, -4)
	ret = ret..tipText(info.."\n", nil, "SIMLI18")
	ret = ret..tipSet(nil, 8)
	if not UI:Lua_GetBuffProp(BuffID,BUFF_PROP_TIPS) then return end
	ret = ret..tipText2(LuaRet.."\n", nil, "system")

	--剩余时间
	local LeftTime = GetTipParam("BUFFLEFTTIME")
	if LeftTime ~= nil then
		LeftTime = tonumber(LeftTime)
		if LeftTime > 0 then
			local TimeStr = GetLeaveTimeString(LeftTime)
			ret = ret..tipSet(nil, 4)..tipText("剩余时间："..TimeStr.."\n")
		end
	end

	ret = ret..GetTipEnd(); return ret
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
			--MedalLevel = math.floor(MedalLevel / 3) * 3
		end
	end

	ret = ret..tipSet(nil, -4)
	ret = ret..tipText("全套精炼 +"..MedalLevel.."\n", 4294761476, "SIMLI18")
	ret = ret..tipSet(nil, 6)

	for i = 1,10 do
		local Att = tonumber(GetTipParam("ATT"..i))
		local Val = tonumber(GetTipParam("ATTVALUE"..i))
		if Att ~= nil and Val ~= nil and Att ~= 0 and UI:Lua_GetAttrProp(Att, ATT_PROP_CHINANAME) then
			local Name = LuaRet
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
	if UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_NAME) then ret = ret..tipText("昵称："..LuaRet.."\n") end
	if UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_LEVEL) then ret = ret..tipText("等级："..LuaRet.."\n") end
	if UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_JOB) then ret = ret..tipText("职业："..RDJOBName[LuaRet].."\n") end
	if UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_MAPNAME) and UI:Lua_GetMapNameByKeyName(LuaRet) then ret = ret..tipText("位置："..LuaRet.."\n") end
	ret = ret..GetTipEnd(); return ret
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

	ret = ret..GetTipEnd(); return ret
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