--װ��Ʒ������ֵ
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
----------��Ʒ��װ��Tip------------------------------------------------------------------------------------------
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

	--��ʼ��Tips����
	if true ~= tipItemsLayoutInitialize(entity, equip) then return end

	if not equip then
		CL:SetTipRet(GetItemTips(entity)); --��Ʒtips
	else
		CL:SetTipRet(GetEquipTips(entity)); --װ��tips
	end
end

--��ƷTips-----------------------------------------
function GetItemTips(entity)
	local item_type = GetTipParam("PROP_TYPE")         --��Ʒ����
	local item_subtype = GetTipParam("PROP_SUBTYPE")   --��Ʒ������
	local item_name = GetTipParam("PROP_NAME")         --��Ʒ����
	local item_keyname = GetTipParam("PROP_KEYNAME")   --��Ʒkey name

	local ret = GetTipBegin()
	ret = ret..tipAll(GetTipParam("WIDTH"))

	local item = nil
	--����--
	item = tipItemsLayoutTitle(entity, false)
	if item == nil then item = "" end; ret = ret..item
	--��״̬--
	item = tipItemsLayoutBind(entity, false)
	if item == nil then item = "" end; ret = ret..item
	--��������--
	item = tipItemsLayoutRequire(entity, false)
	if item == nil then item = "" end; ret = ret..item
	--��������--
	--[[item = tipItemsLayoutProperty(entity, false, item ~= "")
	if item == nil then item = "" end; ret = ret..item--]]
	--��Ʒ���--
	item = tipItemsLayoutIntroduction(entity, false)
	if item == nil then item = "" end; ret = ret..item
	--��ħʯ--
	if item_keyname == "��ħʯ" then
		item = tipItemsLayoutFumoshi(entity, false)
		if item == nil then item = "" end; ret = ret..item
	end
	--�۸�����--
	item = tipItemsLayoutPrice(entity, false)
	if item == nil then item = "" end; ret = ret..item

	ret = ret..GetTipEnd();
	return ret
end

--װ��Tips-----------------------------------------
function GetEquipTips(entity)
	local equip_name = GetTipParam("PROP_NAME")         --װ������
	local equip_keyname = GetTipParam("PROP_KEYNAME")   --װ��key name

	local ret = GetTipBegin()
	ret = ret..tipAll(GetTipParam("WIDTH"))

	local item = nil
	--����--
	item = tipItemsLayoutTitle(entity, true)
	if item == nil then item = "" end; ret = ret..item
		
	--��״̬--
	item = tipItemsLayoutBind(entity, true)
	if item == nil then item = "" end; ret = ret..item
		
		
	--��������--
	item = tipItemsLayoutRequire(entity, true)
	if item == nil then item = "" end; ret = ret..item
		
	--��������--
	--[[item = tipItemsLayoutProperty(entity, true, item ~= "")
	if item == nil then item = "" end; ret = ret..item--]]
		
	--��������--
	item = tipItemsLayoutAttackDefense(entity, true)
	if item == nil then item = "" end; ret = ret..item
	--��������--
	item = tipItemsLayoutOtherProperty(entity, true, item ~= "")
	if item == nil then item = "" end; ret = ret..item
	--��ʯ��Ƕ����
	item = tipItemsLayoutCrystal(entity)
	if item == nil then item = "" end; ret = ret..item
	--װ����������--
	item = tipItemsLayoutZhuangbeiJieshao(entity, true)
	if item == nil then item = "" end; ret = ret..item
		
	--[[װ����ħ����--
	item = tipItemsLayoutFumo(entity, true)
	if item == nil then item = "" end; ret = ret..item
	--��������--
	item = tipItemsLayoutRefine(entity, true)
	if item == nil then item = "" end; ret = ret..item
	--��������--
	item = tipItemsLayoutIdentify(entity, true)
	if item == nil then item = "" end; ret = ret..item--]]
	
	--��װ����--
	item = tipItemsLayoutSuit(entity, true)
	if item == nil then item = "" end; ret = ret..item
	--װ�����ա���������--
	item = tipItemsLayoutZhuangbeihuishou(entity)
	if item == nil then item = "" end; ret = ret..item
	--��������--
	if equip_subtype == 14 then --����subtype��14
		item = tipItemsLayoutHorse(entity, true)
		if item == nil then item = "" end; ret = ret..item
	end
	--ԭ����ʾ--
	item = tipItemsLayoutRawName(entity)
	if item == nil then item = "" end; ret = ret..item
	--�۸�����--
	item = tipItemsLayoutPrice(entity, true)
	if item == nil then item = "" end; ret = ret..item	
	

	ret = ret..GetTipEnd(); return ret
end

--��ʼ������----------------------------------------------------------------------------------------------------
function tipItemsLayoutInitialize(entity, equip)
	--��ǰ��СTip���--
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
	--��ȡ����GUID--
	if not as3.tolua(UI:Lua_GetPlayerSelfPropBase(ROLE_PROP_ROLEID)) then return end
	SetTipParam("SELFID", as3.tolua(LuaRet))
	--��ȡӵ����GUID--
	local OwerId = "0"
	if entity then
		OwerId = GetTipParam("ENTITY_ROLE")
	end
	SetTipParam("OWNERID", OwerId)
	--��ȡ�Ƿ���Ӣ����Ʒ
	local HeroId = "0"
	if entity then
		if not as3.tolua(UI:Lua_GetCurHeroGUID()) then return end
		HeroId = as3.tolua(LuaRet)
	end
	if HeroId ~= "0" and type(HeroId) == type(OwerId) and HeroId == OwerId then
		SetTipParam("HEROGUID", HeroId)
	end
	--��ȡ��Ʒ����--
	if entity and equip then
		SetTipParam("QUALITY", GetTipParam("EQUIP_QUALITY"))
	end
	--��ȡ��������--
	if entity and equip then
		SetTipParam("REFINE", GetTipParam("EQUIP_REFINEDATA"))
		local _refine_attr_table = {}
		_refine_attr_table[ROLE_PROP32_MAX_HP_PCT] = "HP����"
		_refine_attr_table[ROLE_PROP32_MAX_MP_PCT] = "MP����"
		_refine_attr_table[ROLE_PROP32_MAX_PHY_DEF_PCT] = "�������"
		_refine_attr_table[ROLE_PROP32_MAX_MAG_DEF_PCT] = "ħ������"
		_refine_attr_table[ROLE_PROP32_MAX_PHY_ATK_PCT] = "�﹥����"
		_refine_attr_table[ROLE_PROP32_MAX_MAG_ATK_PCT] = "ħ������"
		_refine_attr_table[ROLE_PROP32_MAX_TAO_ATK_PCT] = "��������"
		SetTipParam("REFINETABLE", _refine_attr_table)
	end
	--��ȡ��������--
	if entity and equip then
		SetTipParam("IDENTIFY", GetTipParam("EQUIP_IDENTIFIES"))
	end
	--��ȡ��Ʒ��type--
	
	--��ȡ��Ʒ��Sub type--
	
	--��ȡ��Ʒ����--
	
	--��ȡ��ƷKey name--
	
	return true
end

--��Ʒtip����----------------------------------------------------------------------------------------------------
function tipItemsLayoutTitle(entity, equip)
	local ret = tipSet(nil, 0)

	--����--
	local name = GetTipParam("PROP_NAME")
	--msg(name)
	local color = 4278190079 --��ɫ
	local brief = GetTipParam("PROP_BRIEF")
	color =  mkcolor(GetTipParam("PROP_COLOR"))

	--[[if equip and GetTipParam("PROP_SUBTYPE") == 14 and GetTipParam("CUSTOM_INT" .. "h_type") then
		local h_type = GetTipParam("CUSTOM_INT" .. "h_type")
		if h_type == 0 or h_type > 5 then h_type = 1 end
		local __name = { "","*��","*��","*��","*��" }
		--������ɫ��         ��ɫ       ��ɫ       ��ɫ       ��ɫ       ��ɫ       ��ɫ
		local __color = { 4278190079,4281645312,4278276095,4287265790,4294950430,4294901760 }
		color = __color[h_type]
		name = name..__name[h_type]
	elseif equip and brief == "��ҫװ��" then
		color = MakeARGB(255, 245, 146, 100)
	end--]]
	--msg("color="..color)
	SetTipParam("TITLECOLOR", color)
	ret = ret..tipText(name, color, "SIMLI18")

	local BigIcon = GetTipParam("PROP_TIPSICON")	
	if BigIcon ~= 0 and BigIcon ~= nil then
		ret = ret..tipSet2(0,30)..tipImage(1803100002,58,58)..tipSet2(0,30)..tipImage(BigIcon, 58, 58)
	end	
	
	
	--�����ȼ�--
--[[	if equip == true and entity and GetTipParam("PROP_SUBTYPE") ~= 5 then
		local refine = GetTipParam("EQUIP_REFINELEVEL")
		if not refine then return end
		if refine > 0 then
			local __color =
			{
				4294967295, -- +1  ��ɫ
				4294967295, -- +2  ��ɫ
				4294967295, -- +3  ��ɫ
				4294967295, -- +4  ��ɫ
				4294967295, -- +5  ��ɫ
				4281645312, -- +6  ��ɫ
				4281645312, -- +7  ��ɫ
				4281645312, -- +8  ��ɫ
				4287265790, -- +9  ��ɫ
				4287265790, -- +10 ��ɫ
				4287265790, -- +11 ��ɫ
				4294894158, -- +12 ���ɫ
				4294894158, -- +13 ���ɫ
				4294894158, -- +14 ���ɫ
				4294901760, -- +15 ��ɫ
				4294901760, -- +16 ��ɫ
				4294901760, -- +17 ��ɫ
				4283453520, -- +18 ��ɫ
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

		--��Ӿ����ȼ���--
		local empty_num = 0   --��������
		local half_num = 0    --��������
		local full_num = 0    --��������
		if refine <= 14 then
			half_num = refine % 2
			full_num = math.floor(refine / 2)
			empty_num = 7 - full_num - half_num
		else
			empty_num = 0
			half_num = 0
			full_num = 7
		end
		if half_num > 0 or full_num > 0 then --װ����û������״̬�²���ʾ�յ�����
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
		--ǿ��
		--msg('����ǿ��')
		local refine = GetTipParam("EQUIP_REFINELEVEL")
		--msg('refine='..tostring(refine))
		if refine > 0 then
			if refine > 10 then
				ret = ret .. tipSet2(36, 32) ..tipText("+"..refine, "#ffcc00")
			else
				ret = ret .. tipSet2(40, 32) ..tipText("+"..refine, "#ffcc00")
			end
				
		end
		--ע��
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
	--�׳��͵ĵ���,ģ������,��ʾʵ������
	if not entity then
		if item_keyname == '���ս��Plus' or item_keyname == 'ħ�귨��Plus' or item_keyname == '�������Plus' then
			ret = ret .. tipSet2(37, 32) ..tipText("+6", "#ffcc00")
		end	
	end
	ret = ret..tipText("\n", nil, "system")..tipSet(nil, 8); return ret
end

--��Ʒ��װ���İ�״̬----------------------------------------------------------------------------------------------------
function tipItemsLayoutBind(entity, equip)
	local ret = ""
	--װ��״̬--
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
	--��״̬--
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
		state = "���󶨡�"; color = 4294894158
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
		--state = "δ��"; color = 4281645312 
		--ret = ret..tipText(state.."\n", color)
	end
	
	--if ret ~= "" then ret = ret..tipSet(nil, 8) end; 
	return ret
end

--������������----------------------------------------------------------------------------------------------------
function tipItemsLayoutRequire(entity, equip)
	local ret = ""..tipSet2(65, 26)
	
	-----------true��false��bool������key��ע��û��˫���ţ�������ö�����ѧϰ������ֱ����һ�����ʽ������
	local __color = { [true] = 4294901760, [false] = 4294573201 }
	
	local equip_type = GetTipParam("PROP_TYPE")         --װ������
	local equip_subtype = GetTipParam("PROP_SUBTYPE")   --װ��������
	--��ѯ��Ʒ��ʶ
	--��Ʒ��item���ֶ�ItemIdentifier, ��Ʒ��ʶ--
	if ItemIdentifierCache == nil then ItemIdentifierCache = {} end
	local ItemIdt = ItemIdentifierCache[GetTipParam("ITEMID")]
	if ItemIdt == nil then
		if GetTipParam("PROP_ITEMIDENTIFIER")==nil then ItemIdt = "" end
		if GetTipParam("PROP_ITEMIDENTIFIER") ~= 0 then
			ItemIdt = GetTipParam("PROP_ITEMIDENTIFIER")
		end
		--������Ʒ��ʶ--
		ItemIdentifierCache[GetTipParam("ITEMID")] = ItemIdt
		if ItemIdt == "" then ItemIdt = nil end
	end
	SetTipParam("PROP_ITEMIDENTIFIER",ItemIdt)
	local typeName = {"װ��","����Ʒ","����Ʒ","����","�ӻ�","����","�ֿ�","���","��������","�������"}
	local SubTypeName = {"����","ͷ��","����","�·�","����","Ь��","����","����","��ָ","ѫ��","����","���","����","����","����","ʱװ","����","��׹","����"}
	if tonumber(equip_type) == 1 then
		ret = ret..tipText("���ͣ�", 4294573201)..tipText(SubTypeName[equip_subtype])
	else
		ret = ret..tipText("���ͣ�", 4294573201)..tipText(typeName[equip_type])
	end	
	
	--�ȼ�����--
	    --ת��װ���ȼ�����
	local rein_item = 
				{ 
				----------  1 ���� --------------------
				["ʥ��ս��"] = 1,
				["ս��ʥ��ս��"] = 1,
				["ʥħ����"] = 1,
				["ʥ�����"] = 1,
				["����ս��"] = 2,
				["ս������ս��"] = 2,
				["������"] = 2,
				["��������"] = 2,
				["��������ս��"] = 3,
				["ս���������ս��"] = 3,
				["������淨��"] = 3,
				["���������"] = 3,
				["��������ս��"] = 5,
				["ս����������ս��"] = 5,
				["�������·���"] = 5,
				["����㷨����"] = 5,
				["��������ս��"] = 7,
				["������鷨��"] = 7,
				["������������"] = 7,
				["��������ս��"] = 9,
				["�챩���ڷ���"] = 9,
				["����������"] = 9,
				["�������ս��"] = 11,
				["�����������"] = 11,
				["����Ԫ������"] = 11,
				
				----------- 2 ͷ�� --------------------
				["ʥ��ͷ��"] = 1,	
				["ս��ʥ��ͷ��"] = 1,	
				["ʥħͷ��"] = 1,
				["ʥ��ͷ��"] = 1,	
				["����ͷ��"] = 2,
				["ս������ͷ��"] = 2,
				["����ͷ��"] = 2,
				["����ͷ��"] = 2,
				["��������ͷ��"] = 4,
				["ս���������ͷ��"] = 4,
				["�������ͷ��"] = 4,
				["�����ͷ��"] = 4,
				["��������ͷ��"] = 6,
				["ս����������ͷ��"] = 6,
				["��������ͷ��"] = 6,
				["����㷨ͷ��"] = 6,
				["��������ͷ��"] = 8,
				["�������ͷ��"] = 8,
				["��������ͷ��"] = 8,
				["��������ͷ��"] = 10,
				["�챩����ͷ��"] = 10,
				["�������ͷ��"] = 10,
				["�������ͷ��"] = 12,
				["�������ͷ��"] = 12,
				["����Ԫ��ͷ��"] = 12,
				
				----------- 3 ���� ----------------
				["ʥ������"] = 1,
				["ս��ʥ������"] = 1,
				["ʥħ����"] = 1,
				["ʥ������"] = 1,
				["��������"] = 2,
				["ս����������"] = 2,
				["��������"] = 2,
				["��������"] = 2,
				["������������"] = 4,
				["ս�������������"] = 4,
				["�����������"] = 4,
				["���������"] = 4,
				["������������"] = 6,
				["ս��������������"] = 6,
				["������������"] = 6,
				["����㷨����"] = 6,
				["������������"] = 8,
				["�����������"] = 8,
				["������������"] = 8,
				["������������"] = 10,
				["�챩��������"] = 10,
				["�����������"] = 10,
				["�����������"] = 12,
				["�����������"] = 12,
				["����Ԫ������"] = 12,
				
				------------ 4 �·� ---------------
				["ʥ��ս��"] = 1,
				["��ʾʥ��ս��"] = 1,
				["ʥ��ս��"] = 1,
				["ʥħ����"] = 1,
				["ʥħ����"] = 1,
				["ʥ�����"] = 1,
				["ʥ�����"] = 1,
				["����ս��"] = 2,
				["��ʾ����ս��"] = 2,
				["����ս��"] = 2,
				["������"] = 2,
				["��������"] = 2,
				["��������"] = 2,
				["��������"] = 2,
				["��������ս��"] = 3,
				["��ʾ��������ս��"] = 3,
				["��������ս��"] = 3,
				["������淨��"] = 3,
				["�����������"] = 3,
				["���������"] = 3,
				["���������"] = 3,
				["��������ս��"] = 5,
				["��ʾ��������ս��"] = 5,
				["��������ս��"] = 5,
				["�������·���"] = 5,
				["������������"] = 5,
				["����㷨����"] = 5,
				["����㷨����"] = 5,
				["��������ս��"] = 7,
				["��������ս��"] = 7,
				["������鷨��"] = 7,
				["�����������"] = 7,
				["������������"] = 7,
				["������������"] = 7,
				["��������ս��"] = 9,
				["��������ս��"] = 9,
				["�챩���ڷ���"] = 9,
				["�챩��������"] = 9,
				["����������"] = 9,
				["����������"] = 9,
				["�������ս��"] = 11,
				["�������ս��"] = 11,
				["�����������"] = 11,
				["�����������"] = 11,
				["����Ԫ������"] = 11,
				["����Ԫ������"] = 11,
				
				---------------- 5 ���� ------------ 
				
				----------- 6 Ь�� ------------ 
				["ʥ��ѥ��"] = 1,
				["ʥħѥ��"] = 1,
				["ʥ��ѥ��"] = 1,
				["����ѥ��"] = 2,
				["����ѥ��"] = 2,
				["����ѥ��"] = 2,
				["��������ѥ��"] = 4,
				["�������ѥ��"] = 4,
				["�����ѥ��"] = 4,
				["��������ѥ��"] = 6,
				["��������ѥ��"] = 6,
				["����㷨ѥ��"] = 6,
				["��������ѥ��"] = 8,
				["�������ѥ��"] = 8,
				["��������ѥ��"] = 8,
				["��������ѥ��"] = 10,
				["�챩����ѥ��"] = 10,
				["�������ѥ��"] = 10,
				["�������ѥ��"] = 12,
				["�������ѥ��"] = 12,
				["����Ԫ��ѥ��"] = 12,

				----------- 7  ���� ------------- 
				["ʥ������"] = 1,
				["ʥħ����"] = 1,
				["ʥ������"] = 1,
				["��������"] = 2,
				["��������"] = 2,
				["��������"] = 2,
				["������������"] = 4,
				["�����������"] = 4,
				["���������"] = 4,
				["������������"] = 6,
				["������������"] = 6,
				["����㷨����"] = 6,
				["������������"] = 8,
				["�����������"] = 8,
				["������������"] = 8,
				["������������"] = 10,
				["�챩��������"] = 10,
				["�����������"] = 10,
				["�����������"] = 12,
				["�����������"] = 12,
				["����Ԫ������"] = 12,
				
				----------- 8 ���� ---------------
				["ʥ������"] = 1,
				["ս��ʥ������"] = 1,
				["ʥħ����"] = 1,
				["ʥ������"] = 1,
				["��������"] = 2,
				["ս����������"] = 2,
				["��������"] = 2,
				["��������"] = 2,
				["������������"] = 4,
				["ս�������������"] = 4,
				["�����������"] = 4,
				["���������"] = 4,
				["������������"] = 6,
				["ս��������������"] = 6,
				["������������"] = 6,
				["����㷨����"] = 6,
				["������������"] = 8,
				["�����������"] = 8,
				["������������"] = 8,
				["������������"] = 10,
				["�챩��������"] = 10,
				["�����������"] = 10,
				["�����������"] = 12,
				["�����������"] = 12,
				["����Ԫ������"] = 12,
				
				------------- 9��ָ------------------
				["ʥ���ָ"] = 1,
				["ʥħ��ָ"] = 1,
				["ʥ���ָ"] = 1,
				["�����ָ"] = 2,
				["�����ָ"] = 2,
				["������ָ"] = 2,
				["���������ָ"] = 4,
				["��������ָ"] = 4,
				["�������ָ"] = 4,
				["���������ָ"] = 6,
				["�������½�ָ"] = 6,
				["����㷨��ָ"] = 6,
				["���������ָ"] = 8,
				["��������ָ"] = 8,
				["����������ָ"] = 8,
				["���������ָ"] = 10,
				["�챩���ڽ�ָ"] = 10,
				["��������ָ"] = 10,
				["��������ָ"] = 12,
				["���������ָ"] = 12,
				["����Ԫ����ָ"] = 12,	
		}
	ret = ret..tipSet2(65, 41)
	local keyname = GetTipParam("PROP_KEYNAME")
	local rein_level = rein_item[keyname]
	if rein_level then
		if CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID) then 
			local self_reinlevel = CLGetPlayerCustomIntData(as3.tolua(LuaRet),"reinLevel")
			if self_reinlevel < rein_level then
				ret = ret..tipText("ת����"..rein_level, 4294901760)
			else
				ret = ret..tipText("ת����",4294573201) 	..tipText(rein_level)	
			end	
		end
	else 
		if GetTipParam("PROP_LEVEL") ~= 0 then
			if GetTipParam("PROP_ITEMIDENTIFIER") == "��Ѫʯ" or GetTipParam("PROP_ITEMIDENTIFIER") == "����֮��" then
			else
				local r_level = tonumber(GetTipParam("PROP_LEVEL"))
				if not GetRoleOrHeroProperty32(ROLE_PROP32_LEVEL) then return end
				local level = tonumber(as3.tolua(LuaRet))
				if level < r_level then
					ret = ret..tipText("�ȼ���"..r_level, 4294901760)
				else
					ret = ret..tipText("�ȼ���",4294573201)	..tipText(r_level)	
				end	
			end
		else
			ret = ret..tipText("�ȼ���",4294573201)	..tipText("������")	
		end
	end
	if equip then	
		--ְҵ����--
		ret = ret..tipSet2(65, 56)
		if GetTipParam("PROP_JOB") ~= 0 then
			local r_job = GetTipParam("PROP_JOB")
			if not GetRoleOrHeroProperty32(ROLE_PROP32_JOB) then return end
			local job = tonumber(as3.tolua(LuaRet))
			if job ~= r_job then
				ret = ret..tipText("ְҵ��"..RDJOBName[r_job], 4294901760)
			else
				ret = ret..tipText("ְҵ��",4294573201)	..tipText(RDJOBName[r_job])	
			end	
		else
			ret = ret..tipText("ְҵ��",4294573201)	..tipText("������")	
		end
		
		--�Ա�����--
		ret = ret..tipSet2(65, 71)
		if GetTipParam("PROP_GENDER") ~= 0 then
			local r_sex = GetTipParam("PROP_GENDER")
			if not GetRoleOrHeroProperty(ROLE_PROP_SEX) then return end
			local sex = tonumber(as3.tolua(LuaRet))
			if sex ~= r_sex then
				ret =ret..tipText("�Ա�"..RDSexName[r_sex].."\n",4294901760)
			else
				ret = ret..tipText("�Ա�",4294573201)	..tipText(RDSexName[r_sex].."\n")	
			end	
		else
			ret = ret..tipText("�Ա�",4294573201)	..tipText("������\n")	
		end
	else
		--��������
		local max_use = GetTipParam("PROP_USECOUNT") 
		if max_use ~= 0 and GetItemGUIDataItemPos() ~= SKILLBAR_POS then
			local cur_use = max_use
			if entity then
				cur_use = GetTipParam("ENTITY_USE_COUNT") 
			end
			ret = ret..tipSet2(65, 56)..tipText("������",4294573201)	..tipText(cur_use.."/"..max_use.."\n")
		end
	end	

	ret = ret..tipText("\n", nil, "system")
	return ret
end


--��Ʒ���----------------------------------------------------------------------------------------------------
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

--��ħʯ��������----------------------------------------------------------------------------------------------------
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
			ret = tipText("�޸�ħ����\n", 4289309097)
		else
			ret = tipText("��ħ����\n", 4294953984)..str
		end
	end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--��������----------------------------------------------------------------------------------------------------
function tipItemsLayoutAttackDefense(entity, equip)
	local ret = ""
	if not equip then return ret end
	local ext_table = {}
	local att_table = {}
	local item_keyname = GetTipParam("PROP_KEYNAME")
	
	if entity then
	--ǿ��	
		local refine = GetTipParam("EQUIP_REFINELEVEL")
		local Entity = GetTipParam("GUIDATA")		
		local qiangh_num = CLGetItemEntityCustomVarInt(Entity, "xing_num")	
		if qiangh_num > 0 then
			ret = ret .. tipText("ǿ����", "#ffcc00") ..tipSet(10)
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
		--ע��
		local zhul_num = CLGetItemEntityCustomVarInt(Entity, "zhul_num")
		--msg("zhul_num="..tostring(zhul_num))	
		if zhul_num > 0 then
			local zhul_lv = CLGetItemEntityCustomVarInt(Entity, "zhul_level")	
			local jindutiao =  math.floor(zhul_lv/zhul_num*243)	
			if jindutiao < 1 then
				jindutiao = 1
			end
			ret = ret .. tipText("\n�̻꣺", "#00ccff") ..tipSet(40,-18)
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
		--�׳��͵ĵ���,ģ������,��ʾʵ������
		if item_keyname == '���ս��Plus' or item_keyname == 'ħ�귨��Plus' or item_keyname == '�������Plus' then
			
			ret = ret .. tipText("ǿ����", "#ffcc00") ..tipSet(10)
			for j = 1 , 6 do 
				ret = ret..tipImage(1802400025,19,17)..tipSet(2)
			end
			for j = 1 , 4 do 
				ret = ret..tipImage(1802400026,19,17)..tipSet(2)
			end
			ret = ret .. tipSet2(330,106) ..tipText("+6\n", "#ffcc00")	
			
			ret = ret .. tipText("\n�̻꣺", "#00ccff") ..tipSet(40,-18)
			ret = ret .. tipImage(1802400027,267,24)
			ret = ret .. tipSet2(317,138) ..tipText("0/12".."\n", "#00ccff")	
		else
			local item_subtype = GetTipParam("PROP_SUBTYPE")
			if item_subtype ~= 5 and item_subtype ~= 12 then
				local item_level = tonumber(GetTipParam("PROP_LEVEL"))
				--ģ��װ��ǿ������
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
					ret = ret .. tipText("ǿ����", "#ffcc00") ..tipSet(10)
					for j = 1 , qiangh_num do 
						ret = ret..tipImage(1802400026,19,17)..tipSet(2)
					end
					ret = ret .. tipSet2(330,106) ..tipText("+0\n", "#ffcc00")	
				end	
				
				--ģ��װ��ע������
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
					ret = ret .. tipText("\n�̻꣺", "#00ccff") ..tipSet(40,-18)
					ret = ret .. tipImage(1802400027,267,24)
					ret = ret .. tipSet2(317,138) ..tipText("0/12".."\n", "#00ccff")
				end	
			end
		end
	end	
	
	if not entity and (item_keyname == '���ս��Plus' or item_keyname == 'ħ�귨��Plus' or item_keyname == 'ħ�귨��Plus') then
		ret = ret .. tipText("\n")
		if item_keyname == '���ս��Plus' then
			ret = ret..tipText("��������".."160 - 678", 4278190079)
			ret = ret..tipSet2(135)..tipText("ǿ��+��".."25 - 78".."��", "#ffcc00")
			ret = ret .. tipText("\n")
		elseif	item_keyname == 'ħ�귨��Plus' then
			ret = ret..tipText("��������".."120 - 165", 4278190079)
			ret = ret .. tipText("\n")
			ret = ret..tipText("ħ��������".."175 - 543", 4278190079)
			ret = ret..tipSet2(135)..tipText("ǿ��+��".."25 - 78".."��", "#ffcc00")
			ret = ret .. tipText("\n")
		elseif	item_keyname == '�������Plus' then
			ret = ret..tipText("��������".."125 - 470", 4278190079)
			ret = ret .. tipText("\n")
			ret = ret..tipText("����������".."115 - 583", 4278190079)
			ret = ret..tipSet2(135)..tipText("ǿ��+��".."25 - 78".."��", "#ffcc00")
			ret = ret .. tipText("\n")
		end
	else
		local tmin, tmax, tval, thigh, vmin, vmax, val
		local __color = { [true] = 4294944768, [false] = 4278190079 }
		local __qulity = GetTipParam("QUALITY")
		--��������--
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
			ret = ret..tipText("��������"..vmin.." - "..vmax, __color[thigh])
			if ext_table[10] ~= nil then
				ret = ret..tipSet2(135)..tipText("ǿ��+��"..ext_table[11] .." - "..ext_table[10].."��", "#ffcc00")
			end	
			if att_table[10] ~= nil then
				ret = ret..tipSet2(239)..tipText("�̻�+��"..att_table[11] .." - "..att_table[10].."��", "#00ccff")
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
			ret = ret..tipText("ħ��������"..vmin.." - "..vmax, __color[thigh])
			if ext_table[12] ~= nil and ext_table[13] ~= nil  then
				ret = ret..tipSet2(135)..tipText("ǿ��+��"..ext_table[13] .." - "..ext_table[12].."��", "#ffcc00")
			end	
			if att_table[12] ~= nil and att_table[13] ~= nil  then
				ret = ret..tipSet2(239)..tipText("�̻�+��"..att_table[13] .." - "..att_table[12].."��", "#00ccff")
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
			ret = ret..tipText("����������"..vmin.." - "..vmax, __color[thigh])
			if ext_table[15] ~= nil and ext_table[14] ~= nil  then
				ret = ret..tipSet2(135)..tipText("ǿ��+��"..ext_table[15] .." - "..ext_table[14].."��", "#ffcc00")
			end	
			if att_table[15] ~= nil and att_table[14] ~= nil  then
				ret = ret..tipSet2(239)..tipText("�̻�+��"..att_table[15] .." - "..att_table[14].."��", "#00ccff")
			end	
			ret = ret .. tipText("\n")
		end
		
		--��������--
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
			ret = ret..tipText("���������"..vmin.." - "..vmax, __color[thigh])
			if ext_table[7] ~= nil and ext_table[6] ~= nil  then
				ret = ret..tipSet2(135)..tipText("ǿ��+��"..ext_table[7] .." - "..ext_table[6].."��", "#ffcc00")
			end	
			if att_table[7] ~= nil and att_table[6] ~= nil  then
				ret = ret..tipSet2(239)..tipText("�̻�+��"..att_table[7] .." - "..att_table[6].."��", "#00ccff")
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
			ret = ret..tipText("ħ��������"..vmin.." - "..vmax, __color[thigh])
			if ext_table[9] ~= nil and ext_table[8] ~= nil then
				ret = ret..tipSet2(135)..tipText("ǿ��+��"..ext_table[9] .." - "..ext_table[8].."��", "#ffcc00")
			end
			if att_table[9] ~= nil and att_table[8] ~= nil  then
				ret = ret..tipSet2(239)..tipText("�̻�+��"..att_table[9] .." - "..att_table[8].."��", "#00ccff")
			end		
			ret = ret .. tipText("\n")
		end
	end	
	--���й���--
	val = GetTipParam("PROP_EA1")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_1_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Թ�����"..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_EA2")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_2_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ľ���Թ�����"..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_EA3")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_3_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ˮ���Թ�����"..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_EA4")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_4_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Թ�����"..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_EA5")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_5_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Թ�����"..val.."\n", __color[thigh]) end
	--���з���--
	val = GetTipParam("PROP_ED1")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_1_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Է�����"..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_ED2")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_2_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ľ���Է�����"..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_ED3")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_3_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ˮ���Է�����"..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_ED4")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_4_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Է�����"..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_ED5")
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_5_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Է�����"..val.."\n", __color[thigh]) end

	return ret
end

--��������----------------------------------------------------------------------------------------------------
function tipItemsLayoutOtherProperty(entity, equip, notnull)
	local ret = ""
	local __color = { [true] = 4294944768, [false] = 4278190079 }
	local __qulity = GetTipParam("QUALITY")
	local __pading = { [true] = "+", [false] = "" }
	local tval, thigh, val

	val =  GetTipParam("PROP_HP")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_HP,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("������"..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_MP")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_MP,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ħ����"..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_WEIGHT")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_WEIGHT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�������أ�"..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_EQUIPWEIGHT")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_EQUIP_WEIGHT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�������أ�"..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_BRAWN")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_BRAWN,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("������"..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_HIT")
	tval, thigh = GetQualityValue(ROLE_PROP32_HIT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("���У�"..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_MISS")
	tval, thigh = GetQualityValue(ROLE_PROP32_MISS,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("���ܣ�"..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_MAGMISS")
	tval, thigh = GetQualityValue(ROLE_PROP32_MAG_MISS,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ħ�����ܣ�"..__pading[val > 0]..val.."\n", __color[thigh]) end

	val =  GetTipParam("PROP_BURST")
	tval, thigh = GetQualityValue(ROLE_PROP32_BURST,__qulity); val = val + tval ; val = val/100
	if val ~= 0 then ret = ret..tipText("�����ʣ�"..val.."%".."\n", 4294901760) end
	
	if entity and equip then
		local Entity = GetTipParam("GUIDATA")
		local burstharm = CLGetItemEntityCustomVarInt(Entity, "burstharm")
		if burstharm ~= 0 then ret = ret..tipText("�����˺���"..burstharm.."\n", 4294901760) end
		--ret = ret..tipText("�����˺���"..burstharm.."\n", 4294901760)
	end
	
	
	local subType = GetTipParam("PROP_SUBTYPE")
	if not entity and equip and subType == 13 then 
		local name = GetTipParam("PROP_NAME")
		local hunzhu_burstharm = 
		{
			["Ӣ������"] = 180,
			["��������"] = 360,
			["��������"] = 653,
			["�������"] = 947,
			["�Ϸ�����"] = 1376,
			["��������"] = 1806,
			["Ο������"] = 2357,
			["��������"] = 2909,
			["��������"] = 3576,
			["�׻�����"] = 4243,
			["ʥ��Ӣ������"] = 5001,
			["ʥ����������"] = 5760,
			["ʥ����������"] = 6632,
			["ʥ���������"] = 7504,
			["ʥ���Ϸ�����"] = 8528,
			["ʥ����������"] = 9552,
			["ʥ��Ο������"] = 11970,
			["ʥ����������"] = 14849,
			["ʥ����������"] = 18290,
			["ʥ���׻�����"] = 22408,
			["ʥ����ȸ����"] = 28047,
		}
		if hunzhu_burstharm[name] ~= nil then 
			ret = ret..tipText("�����˺���"..hunzhu_burstharm[name].."\n", 4294901760)
		end
		
	end

	val =  GetTipParam("PROP_LC")
	tval, thigh = GetQualityValue(ROLE_PROP32_LUCK_CURSE,__qulity); val = val + tval
	if entity and GetTipParam("EQUIP_LUCKCURSE") then val = val + GetTipParam("EQUIP_LUCKCURSE") end
	if val ~= 0 and val <= 10 and val >= -10 then
		local __goodcol = {4294573201, 4294436147, 4294753536, 4292083464, 4293590784, 4293590784, 4293590784, 4293590784, 4293590784, 4293590784}
		local __badcol  = {4294145170, 4293673014, 4289339424, 4292219163, 4294901760, 4294901760, 4294901760, 4294901760, 4294901760, 4294901760}
		if val > 0 then ret = ret..tipText("���ˣ�+"..val.."\n", __goodcol[val])
		else val = -val; ret = ret..tipText("���䣺+"..val.."\n", __badcol[val]) end
	end

	val =  GetTipParam("PROP_INTENSITY")
	tval, thigh = GetQualityValue(ROLE_PROP32_INTENSITY,__qulity); val = val + tval
	
	if GetTipParam("PROP_ITEMIDENTIFIER") == "��Ѫʯ" or GetTipParam("PROP_ITEMIDENTIFIER") == "����֮��" then
	else
		if val ~= 0 then ret = ret..tipText("ǿ�ȣ�"..__pading[val > 0]..val.."\n", __color[thigh]) end
	end

	val = GetTipParam("PROP_MOVESPEED")
	tval, thigh = GetQualityValue(ROLE_PROP32_MOVE_SPEED,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�ƶ��ٶȣ�"..__pading[val > 0]..val.."%\n", __color[thigh]) end

	val = GetTipParam("PROP_ATTACKSPEED")
	tval, thigh = GetQualityValue(ROLE_PROP32_ATTACK_SPEED,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����ٶȣ�"..__pading[val > 0]..val.."%\n", __color[thigh]) end

	val = GetTipParam("PROP_POISON")
	tval, thigh = GetQualityValue(ROLE_PROP32_POISON_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�ж��ظ���"..__pading[val > 0]..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_HPREC")
	tval, thigh = GetQualityValue(ROLE_PROP32_HP_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����ظ���"..__pading[val > 0]..val.."\n", __color[thigh]) end

	val = GetTipParam("PROP_MPREC")
	tval, thigh = GetQualityValue(ROLE_PROP32_MP_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ħ���ظ���"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if equip then
		if GetTipParam("PROP_SUCKHP") ~= 0 then ret = ret..tipText("��Ѫ��"..GetTipParam("PROP_SUCKHP").."\n", 4278190079) end
		if GetTipParam("PROP_SUCKHPPCT") ~= 0 then ret = ret..tipText("��Ѫ��"..GetTipParam("PROP_SUCKHPPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_SUCKMAXHPPCT") ~= 0 then ret = ret..tipText("��Ѫ���ޣ�"..GetTipParam("PROP_SUCKMAXHPPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_SUCKMP") ~= 0 then ret = ret..tipText("��ħ��"..GetTipParam("PROP_SUCKMP").."\n", 4278190079) end
		if GetTipParam("PROP_SUCKMPPCT")  ~= 0 then ret = ret..tipText("��ħ��"..GetTipParam("PROP_SUCKMPPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_SUCKMAXMPPCT") ~= 0 then ret = ret..tipText("��ħ���ޣ�"..GetTipParam("PROP_SUCKMAXMPPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_REFPHY") ~= 0 then ret = ret..tipText("�����˺����䣺"..GetTipParam("PROP_REFPHY").."\n", 4278190079) end
		if GetTipParam("PROP_REFPHYPCT") ~= 0 then ret = ret..tipText("�����˺����䣺"..GetTipParam("PROP_REFPHYPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_REFMAG") ~= 0 then ret = ret..tipText("ħ���˺����䣺"..GetTipParam("PROP_REFMAG").."\n", 4278190079) end
		if GetTipParam("PROP_REFMAGPCT") ~= 0 then ret = ret..tipText("ħ���˺����䣺"..GetTipParam("PROP_REFMAGPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_IMMPHY") ~= 0 then ret = ret..tipText("�����˺����⣺"..GetTipParam("PROP_IMMPHY").."\n", 4278190079) end
		if GetTipParam("PROP_IMMPHYPCT") ~= 0 then ret = ret..tipText("�����˺����⣺"..GetTipParam("PROP_IMMPHYPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_IMMMAG") ~= 0 then ret = ret..tipText("ħ���˺����⣺"..GetTipParam("PROP_IMMMAG").."\n", 4278190079) end
		if GetTipParam("PROP_IMMMAGPCT") ~= 0 then ret = ret..tipText("ħ���˺����⣺"..GetTipParam("PROP_IMMMAGPCT").."%\n", 4278190079) end
		if GetTipParam("PROP_ISPHYIMM") ~= 0 then ret = ret..tipText("�������ߣ�"..GetTipParam("PROP_ISPHYIMM").."\n", 4278190079) end
		if GetTipParam("PROP_ISMAGIMM") ~= 0 then ret = ret..tipText("ħ�����ߣ�"..GetTipParam("PROP_ISMAGIMM").."\n", 4278190079) end
	end
	----����1������3������13����ָ9������8������
	local shux1 = {
		{"��������","ħ��������","����������"},
		{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}},
		{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}},  	
	} 
	----�·�4������7��Ь��6��ͷ��2������,�����ħ��
	local shux2 = {
		{{"��������","ħ��������","����������"},"���������","ħ��������"},
		{{{1,1},{1,6},{1,6}},{{2,2},{2,8},{2,8}},{{3,3},{4,10},{3,11}},{{3,4},{5,12},{4,14}},{{4,6},{7,16},{6,17}},{{4,7},{9,21},{7,21}},
		{{5,10},{11,26},{9,26}},{{5,13},{13,32},{9,31}},{{6,17},{14,38},{11,36}},{{8,22},{16,44},{13,43}},{{9,27},{18,51},{15,49}},{{10,33},{22,60},{17,54}}}, 
		{{{2,1},{2,2},{2,2}},{{3,1},{5,4},{4,4}},{{4,1},{7,6},{6,6}},{{4,2},{10,9},{8,8}},{{5,2},{12,11},{10,10}},{{6,3},{16,12},{13,12}},{{7,4},{19,14},{16,15}},
		{{9,6},{23,17},{19,18}},{{11,7},{27,20},{21,20}},{{13,10},{31,24},{25,23}},{{15,12},{38,28},{29,27}},{{44,32},{18,15},{34,30}}},		
	}
	----���� 15    �����ħ��
	local shux3 = {
		{"���������","ħ��������"},
		{{{1,3},{1,2}},{{2,6},{2,4}},{{2,9},{3,6}},{{3,12},{4,9}},{{4,15},{5,11}},{{4,18},{5,14}},
		{{5,21},{6,18}},{{7,25},{7,25}},{{9,29},{9,30}},{{11,33},{11,38}},{{14,38},{13,48}},{{18,41},{15,60}}},
		{{{2,2},{2,2}},{{3,3},{3,3}},{{4,4},{5,5}},{{5,5},{7,7}},{{7,7},{9,8}},{{9,9},{11,10}},{{11,11},{12,11}},{{14,14},{16,13}},{{17,17},{19,17}},
		{{21,20},{21,21}},{{27,22},{24,23}},{{34,24},{27,26}}},	 	
	}
	----��ʯ11     ����
	local shux4 = {
		{"��������","ħ��������","����������"},
		{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}},
		{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}}, 	
	}
	----ѫ��10     ����
	local shux5 = {
		{"��������","ħ��������","����������"},
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
		if not entity and (item_keyname == '���ս��Plus' or item_keyname == 'ħ�귨��Plus' or item_keyname == 'ħ�귨��Plus') then
			ret = ret .. tipText("\n")
			ret = ret .. tipText("�ɶ������ԣ�", "#BE8200") 
			ret = ret ..tipSet(60,0).. tipText("ǿ��+7", "#CD6839")
			ret = ret  .. tipSet2(239) .. tipText("�̻�+1", "#104E8B")
			ret = ret .. tipText("\n")
			local prop_name = ''
			if item_keyname == '���ս��Plus' then
				prop_name = '������'
			elseif	item_keyname == 'ħ�귨��Plus' then
				prop_name = '������'
			elseif	item_keyname == '�������Plus' then
				prop_name = '������'
			end
			ret = ret..tipText( prop_name, "#8B5742")..tipSet(70)..tipText("  +".."��10 - 25��", "#CD6839")
			ret = ret .. tipSet2(239) .. tipText("+".."��2 - 1��", "#104E8B")
		else
			
			
			if qiangh_num > 0 and refine < 12 then
				ret = ret .. tipText("\n")
				ret = ret .. tipText("�ɶ������ԣ�", "#BE8200") 
				local nextlevel = refine + 1
				ret = ret ..tipSet(60,0).. tipText("ǿ��+"..nextlevel, "#CD6839")
				local zhul_lvn = 0
				if zhul_num > 0 and zhul_lv < 12 then
					zhul_lvn = zhul_lv + 1
					ret = ret  .. tipSet2(239) .. tipText("�̻�+"..zhul_lvn, "#104E8B")
				end
				ret = ret .. tipText("\n")	
				if subType == 1 or subType == 9 or subType == 8 or subType == 3 then	
					if level >= 100 then
							for i = 1 , 3 do 
								ret = ret..tipText(shux1[1][i], "#8B5742")..tipSet(70)..tipText("+��"..shux1[2][nextlevel][1] .." - ".. shux1[2][nextlevel][2] .."��", "#CD6839")
								if zhul_lvn > 0 then
									ret = ret .. tipSet2(239) .. tipText("+��"..shux1[3][zhul_lvn][1] .." - ".. shux1[3][zhul_lvn][2] .."��", "#104E8B")
								end
								ret = ret .. tipText("\n")
							end
					else		
						if job ~= 0 and job ~= nil then
							ret = ret..tipText(shux1[1][job], "#8B5742")..tipSet(70)..tipText("+��"..shux1[2][nextlevel][1] .." - ".. shux1[2][nextlevel][2] .."��", "#CD6839")
							if zhul_lvn > 0 then
								ret = ret .. tipSet2(239) .. tipText("+��"..shux1[3][zhul_lvn][1] .." - ".. shux1[3][zhul_lvn][2] .."��", "#104E8B")
							end
							ret = ret .. tipText("\n")
						end	
					end
				elseif subType == 2 or subType == 4 or subType == 6 or subType == 7 then		
					if level >= 100 then
						for i = 1 , 3 do 
							ret = ret..tipText(shux2[1][1][i], "#8B5742")..tipSet(70)..tipText("+��"..shux2[2][nextlevel][1][1] .." - ".. shux2[2][nextlevel][1][2] .."��", "#CD6839")
							if zhul_lvn > 0 then
								ret = ret .. tipSet2(239) .. tipText("+��"..shux2[3][zhul_lvn][1][1] .." - ".. shux2[3][zhul_lvn][1][2] .."��", "#104E8B")
							end
							ret = ret .. tipText("\n")
						end
						
					else
						if job ~= 0 and job ~= nil then
							ret = ret..tipText(shux2[1][1][job], "#8B5742")..tipSet(70)..tipText("+��"..shux2[2][nextlevel][1][1] .." - ".. shux2[2][nextlevel][1][2] .."��", "#CD6839")
							if zhul_lvn > 0 then
								ret = ret .. tipSet2(239) .. tipText("+��"..shux2[3][zhul_lvn][1][1] .." - ".. shux2[3][zhul_lvn][1][2] .."��", "#104E8B")
							end
							ret = ret .. tipText("\n")
						end	
					end	
					ret = ret..tipText(shux2[1][2], "#8B5742")..tipSet(70)..tipText("+��"..shux2[2][nextlevel][2][1] .." - ".. shux2[2][nextlevel][2][2] .."��", "#CD6839")
					if zhul_lvn > 0 then
						ret = ret .. tipSet2(239) .. tipText("+��"..shux2[3][zhul_lvn][2][1] .." - ".. shux2[3][zhul_lvn][2][2] .."��", "#104E8B")
					end
					ret = ret .. tipText("\n")
					ret = ret..tipText(shux2[1][3], "#8B5742")..tipSet(70)..tipText("+��"..shux2[2][nextlevel][3][1] .." - ".. shux2[2][nextlevel][3][2] .."��", "#CD6839")
					if zhul_lvn > 0 then
						ret = ret .. tipSet2(239) .. tipText("+��"..shux2[3][zhul_lvn][3][1] .." - ".. shux2[3][zhul_lvn][3][2] .."��", "#104E8B")
					end
					ret = ret .. tipText("\n")	
				elseif subType == 15 then
					for i = 1 , 2 do 
						ret = ret..tipText(shux3[1][i], "#8B5742")..tipSet(70)..tipText("+��"..shux3[2][nextlevel][i][1] .." - ".. shux3[2][nextlevel][i][2] .."��", "#CD6839")
						if zhul_lvn > 0 then
							ret = ret .. tipSet2(239) .. tipText("+��"..shux3[3][zhul_lvn][i][1] .." - ".. shux3[3][zhul_lvn][i][2] .."��", "#104E8B")
						end
						ret = ret .. tipText("\n")
					end
				elseif subType == 11 or subType == 13 then
					for i = 1 , 3 do 
						ret = ret..tipText(shux4[1][i], "#8B5742")..tipSet(70)..tipText("+��"..shux4[2][nextlevel][1] .." - ".. shux4[2][nextlevel][2] .."��", "#CD6839")
						if zhul_lvn > 0 then
							ret = ret .. tipSet2(239) .. tipText("+��"..shux4[3][zhul_lvn][1] .." - ".. shux4[3][zhul_lvn][2] .."��", "#104E8B")
						end
						ret = ret .. tipText("\n")
					end
				elseif subType == 10 then
					for i = 1 , 3 do 
						ret = ret..tipText(shux5[1][i], "#8B5742")..tipSet(70)..tipText("+��"..shux5[2][nextlevel][1] .." - ".. shux5[2][nextlevel][2] .."��", "#CD6839")
						if zhul_lvn > 0 then
							ret = ret .. tipSet2(239) .. tipText("+��"..shux5[3][zhul_lvn][1] .." - ".. shux5[3][zhul_lvn][2] .."��", "#104E8B")
						end
						ret = ret .. tipText("\n")
					end
				end	
			end	
		end
	end	
	if notnull or ret ~= "" then ret = ret..tipSet(nil, 8) end; return ret
end

--��ʯ��Ƕ����--------------------------------------------------------------------------------------------------------------
function tipItemsLayoutCrystal(entity)
	local ret = ""
	local item_keyname = ""
	if entity then
		local Entity = GetTipParam("GUIDATA")
		item_keyname = tostring(CLGetItemEntityCustomVarStr(Entity, "EquipHole1"))
		if item_keyname ~= "nil" then 	
			ret = ret .. tipText("��ʯ��Ƕ��", "#7030A0")
			ret = ret .. tipSet(60,0) .. tipText("��ʯ�����Ѽӳɣ�", "#7030A0")
			ret = ret .. tipText("\n")..tipSet(0,3)
			local property_tb =  
			{  
				["�﹥"] = {"������", 30, 1891420020},
				["ħ��"] = {"ħ������", 32, 1891420050},
				["����"] = {"��������", 34, 1891420040},
				["���"] = {"�������", 36, 1891420000},
				["ħ��"] = {"ħ������", 38, 1891420030},
				["����"] = {"����", 40, 1891420010},
				}
			local mi = 0
			local ma = 0
			local blood = 0
			for i = 1 , 4 do 
				item_keyname = tostring(CLGetItemEntityCustomVarStr(Entity, "EquipHole"..i))
				if item_keyname == "nil" then 
					break
				elseif item_keyname == "2" then
					--ret = ret .. tipSet(5,0) .. tipImage(1802900031,19,19) .. tipSet(10,3) .. tipText("ǿ��".. i*3 .."������Ƕ", "#BFCDDB")
					ret = ret .. tipSet(5,0) .. tipImage(1802900031,19,19) .. tipSet(10,3) .. tipText("����Ƕ", "#BE8200")
				elseif item_keyname == "1" then
					ret = ret .. tipSet(5,0) .. tipImage(1800700057,19,19) .. tipSet(10,3) .. tipText("�����", "#8B5742")
				else	
					local stoneType = string.match(item_keyname,"��".."(.-)".."��")
					if stoneType ~= nil then
						local propertyType = property_tb[stoneType][1]
						local a = property_tb[stoneType][2]
						local imageid = property_tb[stoneType][3]
						if propertyType then
							ret = ret .. tipSet(2,-1) .. tipImage(imageid,25,25) .. tipSet(10,3) .. tipText(item_keyname, "#7030A0")
							if a == 40 then
								ret = ret .. tipSet2(135) .. tipText(propertyType, "#7030A0")
								blood = CLGetItemEntityCustomVarInt(Entity, "_dv"..a)
								ret = ret .. tipSet2(239) .. tipText("��ʯ+��".. blood .."��", "#7030A0")
							else
								ret = ret .. tipSet2(135) .. tipText(propertyType, "#7030A0")
								mi = CLGetItemEntityCustomVarInt(Entity, "_dv".. a)
								ma = CLGetItemEntityCustomVarInt(Entity, "_dv".. a+1)
								ret = ret .. tipSet2(239) .. tipText("��ʯ+��".. mi .." - ".. ma .."��", "#7030A0")
							end
						end
					else 
						ret = ret .. tipSet(5,0) .. tipSet(10,3) .. tipText("����˴��˲��Ϸ���keyname")
					end
				end
				ret = ret .. tipText("\n")..tipSet(0,3)
			end
		end	
	end	
	if ret ~= "" then ret = ret..tipSet(nil, 8) end; return ret
end

--װ�����ա���������--
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
				ret = ret .. tipText("�蹤��ɵã�", "#A9D18E")
				ret = ret .. tipSet2(100) .. tipText(""..item_contri, "#A9D18E") .. tipText("����ֵ", "#A9D18E")
				ret = ret .. tipText("\n")
			end
			if hs_jy > 0 or hs_xf > 0 then 
				local rein_level = CLGetItemEntityCustomVarInt(Entity,"item_rein")
				local refine = GetTipParam("EQUIP_REFINELEVEL")
				local zhul_lv = CLGetItemEntityCustomVarInt(Entity, "zhul_level")
				if rein_level > 2 or refine > 0 or zhul_lv > 0 then 
					ret = ret .. tipText("���ɻ���", "#A9D18E")
					return ret
				end
				--[[
				for i = 1, 4 do  --����Ҫ�жϱ�ʯ��Ƕ��,�б�ʯ��Ƕ��,�϶�����ǿ���ȼ���
					local item_keyname = tostring(CLGetItemEntityCustomVarStr(Entity, "EquipHole"..i))
					if item_keyname == 'nil' then
						break
					elseif item_keyname ~= '2' and item_keyname ~= '1' then
						ret = ret .. tipText("��װ�����ɻ���", "#A9D18E")
						return ret
					end
				end
				--]]
				ret = ret .. tipText("���տɻ�ã�", "#A9D18E")
				if hs_jy > 0 then 
					ret = ret .. tipSet2(100) .. tipText(""..hs_jy, "#A9D18E") .. tipText("����ֵ", "#A9D18E")
				end 
				if hs_xf > 0 then 
					ret = ret .. tipSet2(239) .. tipText(""..hs_xf, "#A9D18E") .. tipText("����ӡ��", "#A9D18E")
				end
				ret = ret .. tipText("\n")
			end
		end
	end	

	return ret
end

--��ҫװ����������----------------------------------------------------------------------------------------------------
function tipItemsLayoutZhuangbeiJieshao(entity, equip)
	local ret = ""
	if not equip then return ret end
	if GetTipParam("PROP_DESC") ~= "" and GetTipParam("PROP_DESC") ~= "0" and GetTipParam("PROP_DESC") ~= 0 then
		local desc = GetTipParam("PROP_DESC")
		desc = string.gsub(desc, "\"", "\\\"")
		local color = GetTipParam("TITLECOLOR")
		if GetTipParam("PROP_BRIEF") == "��ҫװ��" then
			color = 4293050946
		elseif color == nil then
			color = mkcolor("WHITE")
		end
		ret = ret..tipText2(desc.."\n", color)
	end
	if ret ~= "" then ret = tipSet(nil, -2)..ret..tipSet(nil, 8) end; return ret
end

--װ����ħ����----------------------------------------------------------------------------------------------------
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
	if str ~= "" then ret = tipText("��ħ����\n", 4294953984)..str end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--��������----------------------------------------------------------------------------------------------------
function tipItemsLayoutRefine(entity, equip)
	local ret = ""
	local __refine = GetTipParam("REFINE")
	if __refine ~= nil and __refine[1][PROPERTY_ATTR_NAME] ~= 0 and __refine[1][PROPERTY_ATTR_VALUE] ~= 0 then
		local r_name = GetTipParam("REFINETABLE")[__refine[1][PROPERTY_ATTR_NAME]]
		if r_name ~= nil then
			ret = ret..tipText("������"..r_name.." +"..__refine[1][PROPERTY_ATTR_VALUE].."%\n", 4287550230)
		end
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--�¾�������--------------------------------------------------------------------------------------------------
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
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..tipText("�������ԣ�\n", 4287550230)..ret..tipSet(nil, 8) end; return ret
end

--��չ����û�õ�-------------------------------------------------------------------------------------------------
function tipItemsLayoutExtend(entity, equip)
	local ret = ""
	local __refine = GetTipParam("REFINE")
	if __refine ~= nil and __refine[1][PROPERTY_ATTR_NAME] ~= 0 and __refine[1][PROPERTY_ATTR_VALUE] ~= 0 and as3.tolua(UI:Lua_GetAttrProp(__refine[1][PROPERTY_ATTR_NAME],ATT_PROP_CHINANAME)) then
		local str = GetAttNameValueStr(as3.tolua(LuaRet), __refine[1][PROPERTY_ATTR_VALUE], " +")
		ret = ret..tipText("������"..str.."\n", 4287550230)
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--��������----------------------------------------------------------------------------------------------------
function tipItemsLayoutIdentify(entity, equip)
	local ret = ""
	if GetTipParam("PROP_ITEMIDENTIFIER") == "��Ѫʯ" or GetTipParam("PROP_ITEMIDENTIFIER") == "����֮��" then return ret end
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
			ret = ret..tipText("��ӡ����(�ѽ�)\n", 4287265790)
			local __color = {4278190079, 4279689899, 4293935424}
			for i=1,#t do ret = ret..tipText(t[i].."\n", __color[#t]) end
		else
			ret = ret..tipText("��ӡ����(δ��)\n", 4287265790)
		end
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--��װ����----------------------------------------------------------------------------------------------------
function tipItemsLayoutSuit(entity, equip)
	local ret = ""
	if GetTipParam("PROP_SUIT") ~= 0 then
		local suitid = GetTipParam("PROP_SUIT")
		local __color = {[true] = 4294953984, [false] = 4287861651}

		local itempos = GetItemGUIDataItemPos()
		if not entity then --����ģ��
			if not as3.tolua(UI:Lua_GetPlayerSelfEquipData()) then return end
		elseif nil ~= GetTipParam("HEROGUID") then
			if not as3.tolua(UI:Lua_GetPlayerHeroEquipData()) then return end
		elseif itempos > INVALID_POS and itempos <= VISITSTALL_POS then --�Ϸ�����Ʒλ��
			if not as3.tolua(UI:Lua_GetPlayerSelfEquipData()) then return end
		elseif GetTipParam("SELFID") ~= 0 and GetTipParam("SELFID") ~= GetTipParam("OWNERID") and as3.tolua(UI:Lua_GetPlayerTargetEquipData()) then --������Ʒ,λ��һ��ΪINVALID_POS
		else --�������
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
		--��ʾ��װ��Ŀ--
		for suit,id in pairs(suitlist) do
            if as3.tolua(UI:Lua_GetItemTemplatePropByID(id, ITEM_PROP_NAME)) then
				ret = ret..tipSet(8)..tipText(as3.tolua(LuaRet).."\n", __color[tsuit[id] ~= nil])
			end
        end
		ret = ret..tipText("��װ����\n", __color[true])
		--��ʾ��װ����--
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
				ret = ret..tipSet(8)..tipText(suit_prop_size[i][2].."/"..#suitlist.." "..GetAttNameValueStr(as3.tolua(LuaRet), suit_prop_value[i][2], "����").."\n", __color[has_attr])
			end
		end
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--��������-----------------------------------------------------------------------------------------------
function tipItemsLayoutHorse(entity, equip)
	local ret = ""
	if not equip or GetTipParam("PROP_SUBTYPE") ~= 14 or not entity then return ret end
	local alive = true
	local horse_durability = GetTipParam("ENTITY_DURABILITY")
	if entity and horse_durability and horse_durability == 0 then alive = false end
	local __color = {4281843773, 4289309097, 4283453520}
	if alive then ret = ret..tipText("��������\n", __color[1])
	else ret = ret..tipText("��������\n", __color[2]) end

	local level, curexp, maxexp
	
	level = GetTipParam("CUSTOM_INT" .. "h_level")
	if level == nil then return end
	curexp = GetTipParam("CUSTOM_INT" .. "h_cur_exp")
	if curexp == nil then return end
	maxexp = GetTipParam("CUSTOM_INT" .. "h_max_exp")
	if maxexp == nil then return end
	
	if alive then ret = ret..tipSet(8, 6)..tipText("����ȼ���"..level.."\n", 4294967168)..tipSet(8)..tipText("���ﾭ�飺", 4281843773)..tipText(tostring(curexp), 4294901760)..tipText("/"..maxexp.."\n", 4281843773)
	else ret = ret..tipSet(8, 6)..tipText("����ȼ���"..level.."\n", __color[3])..tipSet(8)..tipText("���ﾭ�飺"..curexp.."/"..maxexp.."\n") end
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
			ret = ret..tipSet(8)..tipText("��"..i.."��δ����\n", color)
		else
			ret = ret..tipSet(8)..tipText(GetAttNameValueStr(as3.tolua(LuaRet), data[i][PROPERTY_ATTR_VALUE]).."\n", color)
		end
	end
	if not alive then ret = ret..tipSet(nil, 6)..tipText("������\n", 4289309097) end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--װ��ԭ��-----------------------------------------------------------------------------------------------
function tipItemsLayoutRawName(entity)
	local ret = ""
	local name = GetTipParam("PROP_NAME")
	if string.sub(name, 1, 4) == "(��)" and GetTipParam("PROP_NAME") then
		name = GetTipParam("PROP_NAME")
		local h_type = GetTipParam("CUSTOM_INT" .. "h_type")
		if GetTipParam("PROP_SUBTYPE") == 14 and h_type ~= nil then
			if h_type == 0 or h_type > 5 then LuaRet = 1 end
			local __name = { "","*��","*��","*��","*��" }
			name = name..__name[h_type]
		end
		ret = ret..tipText("ԭ��:"..name.."\n", GetTipParam("TITLECOLOR"), "SIMLI18")
		ret = ret..tipText(nil, nil, "system")
	end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..tipSet(nil, -4)..ret..tipSet(nil, 8) end; return ret
end

--�۸�����-----------------------------------------------------------------------------------------------
function tipItemsLayoutPrice(entity, equip)
	local ret = ""
	local itempos = GetItemGUIDataItemPos()
	if itempos == GAMESTALL_POS or itempos == VISITSTALL_POS then
		local __stall = { {name="���",color=4281645312},{name="Ԫ��",color=4294953984} }
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
			ret = ret..tipText("�ۼۣ�".._FormatPrice..__stall[price_type].name.."\n", _StallColor)
		end
	end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------����Tip------------------------------------------------------------------------------------------
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
	ret = ret..tipText("��Ҫ������", __color[Enable], "system")
	if not as3.tolua(UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_NEEDWEAPON)) then return end
	info = "��������"; if as3.tolua(LuaRet) ~= 0 then info = "��" end
	__color[true] = 4286111031
	ret = ret..tipText(info, __color[Enable])
	ret = ret..tipSet(nil, 15)
	ret = ret..tipSet2(80)
	if not as3.tolua(UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_TYPE)) then return end
	info = "��������"; if as3.tolua(LuaRet) == 1 or as3.tolua(LuaRet) == 3 or as3.tolua(LuaRet) == 5 then info = "��������" end
	__color[true] = 4279755435
	ret = ret..tipText(info, __color[Enable])
	ret = ret..tipSet(nil, 15)
	ret = ret..tipSet2(80)
	__color[true] = 4294417725
	ret = ret..tipText("CD��", __color[Enable])
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
	ret = ret..tipText(string.format("%."..dot_num.."f��\n", cd_time / 1000), __color[Enable])

	ret = ret..tipSet(nil, 4)
	__color[true] = 4294761476
	ret = ret..tipText("����������", __color[Enable])
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

	--ʣ��ʱ��
	local LeftTime = GetTipParam("BUFFLEFTTIME")
	if LeftTime ~= nil then
		LeftTime = tonumber(LeftTime)
		if LeftTime > 0 then
			local TimeStr = GetLeaveTimeString(LeftTime)
			ret = ret..tipSet(nil, 4)..tipText("ʣ��ʱ�䣺"..TimeStr.."\n")
		end
	end

	ret = ret..GetTipEnd()
	CL:SetTipRet(ret)
end


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------����Tip------------------------------------------------------------------------------------------
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
	ret = ret..tipText("ȫ�׾��� +"..MedalLevel.."\n", 4294761476, "SIMLI18")
	ret = ret..tipSet(nil, 6)

	for i = 1,10 do
		local Att = tonumber(GetTipParam("ATT"..i))
		local Val = tonumber(GetTipParam("ATTVALUE"..i))
		if Att ~= nil and Val ~= nil and Att ~= 0 and as3.tolua(UI:Lua_GetAttrProp(Att, ATT_PROP_CHINANAME)) then
			local Name = as3.tolua(LuaRet)
			local Percent = true
			if string.find(Name, "�ٷֱ�$") == nil then
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
----------���ͷ��Tip--------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionTeamHead()

	local ret = GetTipBegin()
	local RoleGUID = GetTipParam("ROLEGUID")
	if as3.tolua(UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_NAME)) then ret = ret..tipText("�ǳƣ�"..as3.tolua(LuaRet).."\n") end

	if as3.tolua(UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_LEVEL)) then ret = ret..tipText("�ȼ���"..as3.tolua(LuaRet).."\n") end

	if as3.tolua(UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_JOB)) then ret = ret..tipText("ְҵ��"..RDJOBName[as3.tolua(LuaRet)].."\n") end
	if as3.tolua(UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_MAPNAME)) and as3.tolua(UI:Lua_GetMapNameByKeyName(as3.tolua(LuaRet))) then ret = ret..tipText("λ�ã�"..as3.tolua(LuaRet).."\n") end
	ret = ret..GetTipEnd(); 	
	CL:SetTipRet(ret)

end


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------Vip �ȼ�Tip--------------------------------------------------------------------------------------
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
	if timestr < 0 then timestr = "������"
	else timestr = GetLeaveTimeString(timestr) end
	ret = ret..tipText("�ȼ���"..level.."\n")
	ret = ret..tipText("ʣ��ʱ�䣺"..timestr)

	ret = ret..GetTipEnd(); return ret
	
end

-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------Vip ����Tip--------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionVipAction()
	local ret = GetTipBegin()
	ret = ret..tipAll(170)
	ret = ret..tipText(nil, MakeARGB(255,200,160,31))
	local name = GetTipParam("name")
	ret = ret..tipText("�������ƣ�"..name.."\n")
	ret = ret..tipSet(nil, 6)
	local desc = string.gsub(GetTipParam("desc"), "\"", "\\\"")
	ret = ret..tipText2("����������"..desc.."\n")
	ret = ret..tipSet(0, 6)
	local active = GetTipParam("active")
	local level = tonumber(GetTipParam("level"))
	local leavetime = tonumber(GetTipParam("leavetime"))
	if active == "�Ѽ���" then
		ret = ret..tipText(nil, MakeARGB(255,121,200,53))
		ret = ret..tipText(active.."\n")
		ret = ret..tipText("VIP�ȼ�����"..level.."\n")
		if leavetime < 0 then
			ret = ret..tipText("ʣ��ʱ��������\n")
		else
			ret = ret..tipText("ʣ��"..GetLeaveTimeString(leavetime).."\n")
		end
	else
		ret = ret..tipText(nil, 4293673014)
		ret = ret..tipText(active.."\n")
		if level == 0 then ret = ret..tipText("VIP�ȼ��޷�����\n")
		else ret = ret..tipText("VIP�ȼ�����"..level.."\n") end
		local timet = GetLeaveTimeString_VipCfg(tonumber(GetTipParam("time")))
		local price = GetTipParam("price")
		ret = ret..tipText("�۸�"..price.."Ԫ��/"..timet.."\n")
	end
	ret = ret..GetTipEnd(); 
	CL:SetTipRet(ret)
end


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------װ����Tip--------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionBrokenEquip()
	local ret = GetTipBegin()

	ret = ret..tipAll(150)
	ret = ret..tipText("�����ϵ�����װ���;ò��㣬�뾡������\n", "WHITE")
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
	ret = ret..tipText("���ͼ��ɴ��͵�", "WHITE")
	ret = ret..tipText(" ������ ", "GREENG")
	ret = ret..tipText("����װ��\n", "WHITE")
	ret = ret..tipText("�̳ǹ���")
	ret = ret..tipText(" �޸���ˮ ", "GREENG")
	ret = ret..tipText("����������ȫ��װ��", "WHITE")

	ret = ret..GetTipEnd(); return ret
end