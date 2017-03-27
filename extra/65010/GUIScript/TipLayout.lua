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
----------��Ʒ��װ��Tip------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionProp()
	local itemid = tonumber(GetTipParam("ITEMID"))
	local guid = GetTipParam("GUID")
	local entity = tonumber(GetTipParam("ENTITY"))
	if entity == nil then
		if string.len(guid) > 9 then entity = 1 else entity = 0 end
	end

	if not UI:Lua_GetItemTemplateHandleByID(itemid) then return "err 52"end
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
	--dbg(""..ehandle)
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_TYPE) then return "err 64"end
	SetTipParam("TYPE", LuaRet)
	local equip = false
	if LuaRet == 1 then equip = true end

	--��ʼ��Tips����
	if true ~= tipItemsLayoutInitialize(ihandle, ehandle, equip) then return "err 70"end

	if not equip then
		return GetItemTips(ihandle, ehandle) --��Ʒtips
	else
		return GetEquipTips(ihandle, ehandle) --װ��tips
	end
end

--��ƷTips-----------------------------------------
function GetItemTips(ihandle, ehandle)
	local item_type = GetTipParam("TYPE")         --��Ʒ����
	local item_subtype = GetTipParam("SUBTYPE")   --��Ʒ������
	local item_name = GetTipParam("NAME")         --��Ʒ����
	local item_keyname = GetTipParam("KEYNAME")   --��Ʒkey name

	local ret = GetTipBegin()
	ret = ret..tipAll(GetTipParam("WIDTH"))

	local item = nil
	--dbg("GetItemTips")
	--����--
	item = tipItemsLayoutTitle(ihandle, ehandle, false)
	if item == nil then return "err 93"end; ret = ret..item
	--dbg("����"..ret)
	--��״̬--
	item = tipItemsLayoutBind(ihandle, ehandle, false)
	if item == nil then return "err 97"end; ret = ret..item
	--dbg("��״̬"..ret)
	--��������--
	item = tipItemsLayoutRequire(ihandle, ehandle, false)
	if item == nil then return "err 101"end; ret = ret..item
	--dbg("��������"..ret)
	--��������--
	--[[item = tipItemsLayoutProperty(ihandle, ehandle, false, item ~= "")
	if item == nil then return "err 105"end; ret = ret..item--]]
	--��Ʒ���--
	item = tipItemsLayoutIntroduction(ihandle, ehandle, false)
	if item == nil then return "err 108"end; ret = ret..item
	--dbg("��Ʒ���"..ret)
	--��ħʯ--
	if item_keyname == "��ħʯ" then
		item = tipItemsLayoutFumoshi(ihandle, ehandle, false)
		if item == nil then return "err 113"end; ret = ret..item
	end
	--dbg("��ħʯ"..ret)
	--�۸�����--
	item = tipItemsLayoutPrice(ihandle, ehandle, false)
	if item == nil then return "err 118"end; ret = ret..item
	--dbg("�۸�����"..ret)

	ret = ret..GetTipEnd()
	return ret
end

--װ��Tips-----------------------------------------
function GetEquipTips(ihandle, ehandle)
	local equip_type = GetTipParam("TYPE")         --װ������
	local equip_subtype = GetTipParam("SUBTYPE")   --װ��������
	local equip_name = GetTipParam("NAME")         --װ������
	local equip_keyname = GetTipParam("KEYNAME")   --װ��key name

	local ret = GetTipBegin()
	ret = ret..tipAll(GetTipParam("WIDTH"))

	local item = nil
	--dbg("GetEquipTips")
	--����--
	item = tipItemsLayoutTitle(ihandle, ehandle, true)
	if item == nil then return "err 138"end; ret = ret..item
	--dbg("����"..ret)
	--��״̬--
	item = tipItemsLayoutBind(ihandle, ehandle, true)
	if item == nil then return "err 142"end; ret = ret..item
	--dbg("��״̬"..ret)
	--��������--
	item = tipItemsLayoutRequire(ihandle, ehandle, true)
	if item == nil then return "err 146"end; ret = ret..item
	--dbg("��������"..ret)
	--��������--
	--[[item = tipItemsLayoutProperty(ihandle, ehandle, true, item ~= "")
	if item == nil then return "err 150"end; ret = ret..item--]]
	--��������--
	item = tipItemsLayoutAttackDefense(ihandle, ehandle, true)
	if item == nil then return "err 153"end; ret = ret..item
	--dbg("��������"..ret)
	--��������--
	item = tipItemsLayoutOtherProperty(ihandle, ehandle, true, item ~= "")
	if item == nil then return "err 157"end; ret = ret..item
	--dbg("��������"..ret)
	--��ʯ��Ƕ����
	item = tipItemsLayoutCrystal(ihandle, ehandle, true)
	if item == nil then item = "err 161n" end; ret = ret..item
	--dbg("��ʯ��Ƕ����"..ret)
	--װ����������--
	item = tipItemsLayoutZhuangbeiJieshao(ihandle, ehandle, true)
	if item == nil then return "err 161"end; ret = ret..item
	--dbg("װ����������"..ret)
	--װ����ħ����--
	--[[item = tipItemsLayoutFumo(ihandle, ehandle, true)
	if item == nil then return "err 165"end; ret = ret..item
	--dbg("װ����ħ����"..ret)
	--��������--
	item = tipItemsLayoutRefine(ihandle, ehandle, true)
	if item == nil then return "err 169"end; ret = ret..item
	--dbg("��������"..ret)
	--��������--
	item = tipItemsLayoutIdentify(ihandle, ehandle, true)
	if item == nil then return "err 173"end; ret = ret..item
	--dbg("��������"..ret)--]]
	--��װ����--
	item = tipItemsLayoutSuit(ihandle, ehandle, true)
	if item == nil then return "err 177"end; ret = ret..item
	--dbg("��װ����"..ret)
	--װ�����ա���������--
	item = tipItemsLayoutZhuangbeihuishou(ihandle, ehandle, true)
	if item == nil then item = "err 191n" end; ret = ret..item
	--dbg("װ�����ա���������"..ret)
	--��������--
	if equip_subtype == 14 then --����subtype��14
		item = tipItemsLayoutHorse(ihandle, ehandle, true)
		if item == nil then return "err 182"end; ret = ret..item
	end
	--dbg("��������"..ret)
	--ԭ����ʾ--
	item = tipItemsLayoutRawName(ihandle, ehandle)
	if item == nil then return "err 187"end; ret = ret..item
	--dbg("ԭ����ʾ"..ret)
	--�۸�����--
	item = tipItemsLayoutPrice(ihandle, ehandle, true)
	if item == nil then return "err 191"end; ret = ret..item
	--dbg("�۸�����"..ret)

	ret = ret..GetTipEnd()
	return ret
end

--��ʼ������----------------------------------------------------------------------------------------------------
function tipItemsLayoutInitialize(ihandle, ehandle, equip)
	--��ǰ��СTip���--
	local qiangh_num = 0
	qiangh_num = CL:GetItemEntityCustomVarInt(tonumber(ehandle), "xing_num")
	if equip then
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUBTYPE) then return "err 213"end
		if LuaRet == 5 or LuaRet == 12 then
			SetTipParam("WIDTH", 255)
		else
			SetTipParam("WIDTH", 355)
		end
	end	

	--��ȡ����GUID--
	if not UI:Lua_GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then return "err 209"end
	SetTipParam("SELFID", LuaRet)
	--��ȡӵ����GUID--
	local OwerId = 0
	if ehandle ~= 0 then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_ROLE) then return "err 214"end
		OwerId = LuaRet
	end
	SetTipParam("OWNERID", OwerId)
	--��ȡ�Ƿ���Ӣ����Ʒ
	local HeroId = "0"
	if ehandle ~= 0 then
		if not UI:Lua_GetCurHeroGUID() then return "err 221"end
		HeroId = LuaRet
	end
	if HeroId ~= "0" and type(HeroId) == type(OwerId) and HeroId == OwerId then
		SetTipParam("HEROGUID", HeroId)
	end
	--��ȡ��Ʒ����--
	if ehandle ~= 0 and equip then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_QUALITY) then return "err 229"end
		SetTipParam("QUALITY", LuaRet)
	end
	--��ȡ��������--
	if ehandle ~= 0 and equip then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_REFINEDATA) then return "err 234"end
		SetTipParam("REFINE", LuaRet)
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
	if ehandle ~= 0 and equip then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_IDENTIFIES) then return "err 248"end
		SetTipParam("IDENTIFY", LuaRet)
	end
	--��ȡ��Ʒ��type--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_TYPE) then return "err 252"end
	SetTipParam("TYPE", LuaRet)
	--��ȡ��Ʒ��Sub type--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUBTYPE) then return "err 255"end
	SetTipParam("SUBTYPE", LuaRet)
	--��ȡ��Ʒ����--
	if ehandle == 0 then
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_NAME) then return "err 259"end
	else
		if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_NAME) then return "err 261"end
		if LuaRet == "" then
			if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_NAME) then return "err 263"end
		end
	end
	SetTipParam("NAME", LuaRet)
	--��ȡ��ƷKey name--
	if ehandle == 0 then
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_KEYNAME) then return "err 269"end
	else
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_KEYNAME) then return "err 271"end
		if LuaRet == "" then
			if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_KEYNAME) then return "err 273"end
		end
	end
	SetTipParam("KEYNAME", LuaRet)

	return true
end

--��Ʒtip����----------------------------------------------------------------------------------------------------
function tipItemsLayoutTitle(ihandle, ehandle, equip)
	local ret = tipSet(nil, 0)

	--����--
	local name = GetTipParam("NAME")
	local color = 4278190079 --��ɫ
	if UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_COLOR) then
		color = mkcolor(LuaRet)
	end

	--[[if equip and GetTipParam("SUBTYPE") == 14 and UI:Lua_GetItemEntityCustomVarInt(ehandle,"h_type") then
		if LuaRet == 0 or LuaRet > 5 then LuaRet = 1 end
		local __name = { "","*��","*��","*��","*��" }
		--������ɫ��         ��ɫ       ��ɫ       ��ɫ       ��ɫ       ��ɫ       ��ɫ
		local __color = { 4278190079,4281645312,4278276095,4287265790,4294950430,4294901760 }
		color = __color[LuaRet]
		name = name..__name[LuaRet]
	elseif equip and UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_BRIEF) and LuaRet == "��ҫװ��" then
		color = MakeARGB(255, 245, 146, 100)
	elseif UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_COLOR) then
		color = mkcolor(LuaRet)
	end--]]
	SetTipParam("TITLECOLOR", color)
	ret = ret..tipText(name, color, "SIMLI18")

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_TIPSICON) then return "err 306" end
	local BigIcon = tonumber(LuaRet)
	if BigIcon ~= 0 and BigIcon ~= nil then
		ret = ret..tipSet2(0,30)..tipImage(1803100002,58,58)..tipSet2(0,30)..tipImage(BigIcon, 58, 58)
	end	
	
	--�����ȼ�--
	--[[if equip == true and ehandle ~= 0 and GetTipParam("SUBTYPE") ~= 5 then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_EQUIP_REFINELEVEL) then return "err 315"end
		local refine = LuaRet
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

	if ehandle ~= 0 and equip then
		ret = ret..tipText("", nil, "system")
		--ǿ��
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_REFINELEVEL) then return "err 396" end
		local refine = tonumber(LuaRet)
		if refine > 0 then
			if refine > 10 then
				ret = ret .. tipSet2(36, 32) .. tipText("+"..refine, "#ffcc00")
			else
				ret = ret .. tipSet2(40, 32) .. tipText("+"..refine, "#ffcc00")
			end
		end
		--�̻�
		local zhul_lv = CL:GetItemEntityCustomVarInt(tonumber(ehandle), "zhul_level")	
		if zhul_lv > 0 then
			if zhul_lv > 10 then
				ret = ret .. tipSet2(36, 70) ..tipText("+"..zhul_lv, "#00ccff")
			else
				ret = ret .. tipSet2(40, 70) ..tipText("+"..zhul_lv, "#00ccff")
			end
		end
	end

	local item_keyname = GetTipParam("KEYNAME")
	--�׳��͵ĵ���,ģ������,��ʾʵ������
	if ehandle ~= 0 then
		if item_keyname == '���ս��Plus' or item_keyname == 'ħ�귨��Plus' or item_keyname == '�������Plus' then
			ret = ret .. tipSet2(37, 32) ..tipText("+6", "#ffcc00")
		end	
	end
	ret = ret..tipText("", nil, "system")
	return ret
end

--��Ʒ��װ������״̬----------------------------------------------------------------------------------------------------
function tipItemsLayoutBind(ihandle, ehandle, equip)
	local ret = ""
	
	--װ��״̬--
	local self = GetTipParam("SELFID")
	local ower = GetTipParam("OWNERID")
	
	local qiangh_num = 0
	if ehandle ~= 0 and equip then
		--local Entity = GetTipParam("GUIDATA")		
		qiangh_num = CL:GetItemEntityCustomVarInt(tonumber(ehandle), "xing_num")	
	end	
	
	if ehandle ~= 0 then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_ENTITY_SITE) then return "err 436"end
		local site = tonumber(LuaRet)
		if equip ~= 0 and ehandle and ower ~= 0 and self == ower and EQUIMENT_POS == GetItemPosType(site) then
			if qiangh_num > 0 then
				ret = ret..tipSet2(230,30)..tipImage(1803200036,78,55)
			else
				ret = ret..tipSet2(160,30)..tipImage(1803200036,78,55)
			end	
		end
	end

	--��״̬--
	local bound = false
	if ehandle ~= 0 then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_IS_BOUND) then return "err 450"end
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
	
	
	return ret
end

--������������----------------------------------------------------------------------------------------------------
function tipItemsLayoutRequire(ihandle, ehandle, equip)
	local ret = ""..tipSet2(65, 26)
	-----------true��false,bool������key,ע��û��˫����,������ö�����ѧϰ,����ֱ����һ�����ʽ������
	local __color = { [true] = 4294901760, [false] = 4294573201 }
	local equip_type = tonumber(GetTipParam("TYPE"))         --װ������
	local equip_subtype = tonumber(GetTipParam("SUBTYPE"))   --װ��������
	
	--��ѯ��Ʒ��ʶ
	--��Ʒ��item,�ֶ�ItemIdentifier, ��Ʒ��ʶ--
	if ItemIdentifierCache == nil then ItemIdentifierCache = {} end
	local ItemIdt = ItemIdentifierCache[GetTipParam("ITEMID")]
	if ItemIdt == nil then
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_ITEMIDENTIFIER) then ItemIdt = "" end
		if LuaRet ~= 0 then
			ItemIdt = LuaRet
		end
		--������Ʒ��ʶ--
		ItemIdentifierCache[GetTipParam("ITEMID")] = ItemIdt
		if ItemIdt == "" then ItemIdt = nil end
	end
	SetTipParam("ITEMIDENTIFIER",ItemIdt)
	
	local typeName = {"װ��","����Ʒ","����Ʒ","����","�ӻ�","����","�ֿ�","���","��������","�������"}
	local SubTypeName = {"����","ͷ��","����","�·�","����","Ь��","����","����","��ָ","ѫ��","����","���","����","����","����","ʱװ","����","����","����",
	"�۾�", "����", "���", "��ϥ", "����", "����", "����", "ͷ��", "����", "����", "����", "����", "����1", "����2", "����3", "����4", "����5", "����6", "����7", "����8",
	"����9", "����10", "�Զ���1", "�Զ���2", "�Զ���3", "�Զ���4", "�Զ���5", "�Զ���6", "�Զ���7", "�Զ���8", "�Զ���9", "�Զ���10", "�Զ���11", "�Զ���12", "�Զ���13", "�Զ���14", "�Զ���15", "�Զ���16", 
	"�Զ���17", "�Զ���18", "�Զ���19", "�Զ���20"}
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
				["ʥħ����"] = 1,
				["ʥ�����"] = 1,
				["����ս��"] = 2,
				["������"] = 2,
				["��������"] = 2,
				["��������ս��"] = 3,
				["������淨��"] = 3,
				["���������"] = 3,
				["��������ս��"] = 5,
				["�������·���"] = 5,
				["����㷨����"] = 5,
				["��������ս��"] = 7,
				["������鷨��"] = 7,
				["�跨�������"] = 7,
				["��������ս��"] = 9,
				["�챩���ڷ���"] = 9,
				["����������"] = 9,
				["�������ս��"] = 11,
				["�����������"] = 11,
				["����Ԫ������"] = 11,
				
				----------- 2 ͷ�� --------------------
				["ʥ��ͷ��"] = 1,	
				["ʥħͷ��"] = 1,
				["ʥ��ͷ��"] = 1,	
				["����ͷ��"] = 2,
				["����ͷ��"] = 2,
				["����ͷ��"] = 2,
				["��������ͷ��"] = 4,
				["�������ͷ��"] = 4,
				["�����ͷ��"] = 4,
				["��������ͷ��"] = 6,
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
				
				------------ 4 �·� ---------------
				["ʥ��ս��"] = 1,
				["ʥ��ս��"] = 1,
				["ʥħ����"] = 1,
				["ʥħ����"] = 1,
				["ʥ�����"] = 1,
				["ʥ�����"] = 1,
				["����ս��"] = 2,
				["����ս��"] = 2,
				["������"] = 2,
				["��������"] = 2,
				["��������"] = 2,
				["��������"] = 2,
				["��������ս��"] = 3,
				["��������ս��"] = 3,
				["�����������"] = 3,
				["�����������"] = 3,
				["���������"] = 3,
				["���������"] = 3,
				["��������ս��"] = 5,
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
	local keyname = GetTipParam("KEYNAME")
	local rein_level = rein_item[keyname]
	if rein_level then
		if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
			self_reinlevel = CL:GetPlayerCustomIntData(LuaRet, "reinLevel")
			if self_reinlevel < rein_level then
				ret = ret..tipText("ת����"..rein_level, 4294901760)
			else
				ret = ret..tipText("ת����", 4294573201)..tipText(rein_level)
			end	
		end
	else 
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_LEVEL) then return "err 511"end
		if LuaRet ~= 0 then
			if GetTipParam("ITEMIDENTIFIER") == "��Ѫʯ" or GetTipParam("ITEMIDENTIFIER") == "����֮��" then
			else
				local r_level = LuaRet
				if not GetRoleOrHeroProperty32(ROLE_PROP32_LEVEL) then return "err 516"end
				local level = LuaRet
				if level < r_level then
					ret = ret..tipText("�ȼ���"..r_level, 4294901760)
				else
					ret = ret..tipText("�ȼ���",4294573201)..tipText(r_level)	
				end	
			end
		end
	end
	
	if equip then
		--ְҵ����--
		ret = ret..tipSet2(65, 56)
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_JOB) then return "err 529"end
		if LuaRet ~= 0 then
			local r_job = LuaRet
			if not GetRoleOrHeroProperty32(ROLE_PROP32_JOB) then return "err 532"end
			local job = LuaRet
			if job ~= r_job then
				ret = ret..tipText("ְҵ��"..RDJOBName[r_job], 4294901760)
			else
				ret = ret..tipText("ְҵ��",4294573201)..tipText(RDJOBName[r_job])	
			end
		else
			ret = ret..tipText("ְҵ��",4294573201)..tipText("������")
		end
		
		--�Ա�����--
		ret = ret..tipSet2(65, 71)
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_GENDER) then return "err 545"end
		if LuaRet ~= 0 then
			local r_sex = LuaRet
			if not GetRoleOrHeroProperty(ROLE_PROP_SEX) then return "err 548"end
			local sex = LuaRet
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
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_USECOUNT) then return "err 560"end
		if LuaRet ~= 0 then
			local max_use = tonumber(LuaRet) 
			if max_use ~= 0 and GetItemGUIDataItemPos() ~= SKILLBAR_POS then
				local cur_use = max_use
				if ehandle ~= 0 then
					if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_ENTITY_USE_COUNT) then return "err 566"end
					cur_use = tonumber(LuaRet)
				end
				ret = ret..tipSet2(65, 56)..tipText("������",4294573201)	..tipText(cur_use.."/"..max_use.."\n")
			end
		end
	end
	
	ret = ret..tipText("\n", nil, "system")
	return ret
end

--��Ʒ��������----------------------------------------------------------------------------------------------------
--[[function tipItemsLayoutProperty(ihandle, ehandle, equip, notnull)
	local ret = ""
	local str = ""

	--����--
	local count = 0
	if ehandle ~= 0 then
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_ENTITY_AMOUNT) then return "err 586"end
		count = LuaRet
	end
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SELFWEIGHT) then return "err 589"end
	str = "������"..LuaRet
	if count > 1 then str = str.." �� "..count end
	ret = ret..tipText(str.."\n", 4289309097)
	--�;�/ʹ�ô���--
	local Type = GetTipParam("TYPE")
	local subtype = GetTipParam("SUBTYPE")
	local key_name = GetTipParam("KEYNAME")
	if GetTipParam("ITEMIDENTIFIER") == "����֮��" or  GetTipParam("ITEMIDENTIFIER") == "��Ѫʯ" then
		--����֮���;ñ�ʾΪ����
	elseif equip and subtype ~= 5 then
		if subtype == 14 then str = "�����ȣ�" else str = "�;ã�" end
		local cur_nj, max_nj, cur_nj_t, max_nj_t
		if ehandle == 0 then
			if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_DURABILITY) then return "err 603"end
			max_nj_t = LuaRet
			cur_nj_t = max_nj_t
			max_nj = math.ceil(max_nj_t/1000)
			cur_nj = max_nj
		else
			if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_DURABILITY) then return "err 609"end
			cur_nj_t = LuaRet
			cur_nj = math.ceil(cur_nj_t/1000)
			if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_MAX_DURABILITY) then return "err 612"end
			max_nj_t = LuaRet
			max_nj = math.ceil(max_nj_t/1000)
		end

		local is_broken = false              --�Ƿ�������
		local broken_color = COLOR_YELLOW    --������ɫ
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
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_USECOUNT) then return "err 645"end
		local max_use = LuaRet
		if max_use ~= 0 and GetItemGUIDataItemPos() ~= SKILLBAR_POS then
			local cur_use = max_use
			if ehandle ~= 0 then
				if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_USE_COUNT) then return "err 650"end
				cur_use = LuaRet
			end
			ret = ret..tipText("ʹ�ô�����"..cur_use.."/"..max_use.."\n")
		end
	end
	--�洢״̬--
	local jl_types = { {5, 1} }
	local jl_names = { "������(С)", "������(��)", "������(��)", "����������", "�񼶾�����", "���������(С)", "���������(��)", "���������(��)" }
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
			ret = ret..tipText("�洢״̬��", 4281645312)
			if cur_exp < max_exp then
				ret = ret..tipText(cur_exp.."(δ��)", 4294901760)
				ret = ret..tipText("/"..max_exp.."\n", 4281645312)
			else
				ret = ret..tipText(cur_exp.."/"..max_exp.."\n")
			end
			ret = ret..tipText(nil, 4289309097)
		end
	end
	--��Ѫʯ, ����֮��--
	if GetTipParam("ITEMIDENTIFIER") == "��Ѫʯ" and ehandle ~= 0 then
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
			ret = ret..tipText("������", 4281645312)

			local cur_exp_str = string.format("%.0f",cur_exp/10000)
			local max_exp_str = string.format("%.0f",max_exp/10000)

			if cur_exp < max_exp then
				ret = ret..tipText(cur_exp_str.."", 4281645312)
				ret = ret..tipText("/"..max_exp_str.."��\n", 4281645312)
			else
				ret = ret..tipText(cur_exp_str.."/"..max_exp_str.."��\n")
			end
			ret = ret .. tipText(nil, 4289309097)
			ret = ret .. tipSet(nil, 8)
		end
	elseif GetTipParam("ITEMIDENTIFIER") == "����֮��" then
		LuaRet = 0
		local cur_nj, max_nj, cur_nj_t, max_nj_t
		if ehandle == 0 then
			if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_DURABILITY) then return "err 721"end
			max_nj_t = LuaRet
			cur_nj_t = max_nj_t
			max_nj = math.ceil(max_nj_t/1)
			cur_nj = max_nj
		else
			if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_DURABILITY) then return "err 727"end
			cur_nj_t = LuaRet
			cur_nj = math.ceil(cur_nj_t/1)
			if not UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_MAX_DURABILITY) then return "err 730"end
			max_nj_t = LuaRet
			max_nj = math.ceil(max_nj_t/1)
		end

		local max_exp = max_nj
		local cur_exp = cur_nj
		ret = tipSet(nil, -8)..tipLine()
		ret = ret..tipText("������", 4281645312)
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

	--ʱ������--
	if UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_TIMELIMIT) and LuaRet ~= 0 then
		ret = ret..tipText("ʱ��ʣ�ࣺ")
		if ehandle == 0 then
			ret = ret..tipText(GetLeaveTimeString(LuaRet).."\n")
		else
			if UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_LIFE) then
				ret = ret..tipText(GetLeaveTimeString(LuaRet).."\n")
			else
				ret = ret..tipText("�ѹ���\n", 4294901760)
				ret = ret..tipText(nil, 4289309097)
			end
		end
	end

	if notnull or ret ~= "" then ret = ret..tipSet(nil, 8) end; return ret
end--]]

--��Ʒ���----------------------------------------------------------------------------------------------------
function tipItemsLayoutIntroduction(ihandle, ehandle, equip)
	local ret = ""..tipLine()
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

--��ħʯ��������----------------------------------------------------------------------------------------------------
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
			ret = tipText("�޸�ħ����\n", 4289309097)
		else
			ret = tipText("��ħ����\n", 4294953984)..str
		end
	end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--��������----------------------------------------------------------------------------------------------------
function tipItemsLayoutAttackDefense(ihandle, ehandle, equip)
	local ret = ""
	if not equip then return ret end
	local ext_table = {}
	local att_table = {}
	local item_keyname = GetTipParam("KEYNAME")
	if ehandle ~= 0 and equip then
		--ǿ��
		local refine = 0;
		if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_REFINELEVEL) then return "err 825"end
		if LuaRet ~= 0 then
			refine = tonumber(LuaRet)
		end
		local qiangh_num = CL:GetItemEntityCustomVarInt(tonumber(ehandle), "xing_num")
		if qiangh_num > 0 then
			ret = ret .. tipText("   \n")
			ret = ret..tipText("ǿ����", "#ffcc00") ..tipSet(10,-2)
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
				ret = ret .. tipSet2(330,0) ..tipText("+"..refine.."\n", "#ffcc00")
				local Ext_table = {}
				if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_EXT) then return end
				Ext_table = LuaRet
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
				ret = ret .. tipSet2(330,0) ..tipText("+0\n", "#ffcc00")
			end	
		end
		--�̻�
		local zhul_num = CL:GetItemEntityCustomVarInt(tonumber(ehandle), "zhul_num")
		if zhul_num > 0 then
			ret = ret .. tipText("   \n")
			local zhul_lv = CL:GetItemEntityCustomVarInt(tonumber(ehandle), "zhul_level")	
			local jindutiao =  math.floor(zhul_lv/zhul_num*243)	
			if jindutiao < 1 then
				jindutiao = 1
			end
			ret = ret .. tipText("\n�̻꣺", "#00ccff") ..tipSet(10,-2)
			ret = ret .. tipImage(1802400027,267,24)
			ret = ret .. tipSet(-254,6) .. tipImage(1802400028,jindutiao,15)
			ret = ret .. tipSet2(317,0) ..tipText(zhul_lv.."/"..zhul_num.."\n", "#00ccff")
			local att_name = 0 
			local att_value = 0 
			for i = 10 , 19  do 
				att_name = CL:GetItemEntityCustomVarInt(tonumber(ehandle), "_da".. i)
				att_value = CL:GetItemEntityCustomVarInt(tonumber(ehandle), "_dv".. i)
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
			
			ret = ret .. tipText("   \n")
			ret = ret .. tipText("ǿ����", "#ffcc00") ..tipSet(10,-2)
			for j = 1 , 6 do 
				ret = ret..tipImage(1802400025,19,17)..tipSet(2)
			end
			for j = 1 , 4 do 
				ret = ret..tipImage(1802400026,19,17)..tipSet(2)
			end
			ret = ret .. tipSet2(330,0) ..tipText("+6\n", "#ffcc00")
			
			ret = ret .. tipText("   \n")
			ret = ret .. tipText("�̻꣺", "#00ccff") ..tipSet(10,-2)
			ret = ret .. tipImage(1802400027,267,24)
			ret = ret .. tipSet2(317,0) ..tipText("0/12".."\n", "#00ccff")	
		else
			local item_subtype = GetTipParam("SUBTYPE")
			if item_subtype ~= 5 and item_subtype ~= 12 then
				if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_LEVEL) then return "err 1161"end
				local item_level = tonumber(LuaRet)
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
					ret = ret .. tipText("   \n")
					ret = ret .. tipText("ǿ����", "#ffcc00") ..tipSet(10,-2)
					for j = 1 , qiangh_num do 
						ret = ret..tipImage(1802400026,19,17)..tipSet(2)
					end
					ret = ret .. tipSet2(330,0) ..tipText("+0\n", "#ffcc00")	
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
					ret = ret .. tipText("   \n")
					ret = ret .. tipText("�̻꣺", "#00ccff") ..tipSet(10,-2)
					ret = ret .. tipImage(1802400027,267,24)
					ret = ret .. tipSet2(317,0) ..tipText("0/12".."\n", "#00ccff")	
				end	
			end
		end
	end

	
	if not ehandle and (item_keyname == '���ս��Plus' or item_keyname == 'ħ�귨��Plus' or item_keyname == 'ħ�귨��Plus') then
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
		ret = ret .. tipText("   \n")
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MINPHYATK) then return end; vmin = LuaRet
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAXPHYATK) then return end; vmax = LuaRet
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

		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MINMAGATK) then return "err 920"end; vmin = LuaRet
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAXMAGATK) then return "err 922"end; vmax = LuaRet
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

		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MINTAOATK) then return "err 943"end; vmin = LuaRet
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAXTAOATK) then return "err 944"end; vmax = LuaRet
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
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MINPHYDEF) then return "err 967"end; vmin = LuaRet
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAXPHYDEF) then return "err 968"end; vmax = LuaRet
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

		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MINMAGDEF) then return "err 990"end; vmin = LuaRet
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAXMAGDEF) then return "err 991"end; vmax = LuaRet
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
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_EA1) then return "err 1014"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_1_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Թ�����"..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_EA2) then return "err 1018"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_2_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ľ���Թ�����"..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_EA3) then return "err 1022"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_3_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ˮ���Թ�����"..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_EA4) then return "err 1026"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_4_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Թ�����"..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_EA5) then return "err 1030"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_5_ATK,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Թ�����"..val.."\n", __color[thigh]) end

	
	--���з���--
	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ED1) then return "err 1036"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_1_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Է�����"..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ED2) then return "err 1040"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_2_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ľ���Է�����"..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ED3) then return "err 1044"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_3_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ˮ���Է�����"..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ED4) then return "err 1048"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_4_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Է�����"..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_ED5) then return "err 1052"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ELE_5_DEF,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����Է�����"..val.."\n", __color[thigh]) end

	return ret
end

--��������----------------------------------------------------------------------------------------------------
function tipItemsLayoutOtherProperty(ihandle, ehandle, equip, notnull)
	local ret = "\n"
	local __color = { [true] = 4294944768, [false] = 4278190079 }
	local __qulity = GetTipParam("QUALITY")
	local __pading = { [true] = "+", [false] = "" }
	local tval, thigh, val

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_HP) then return "err 1067"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_HP,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("������"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MP) then return "err 1071"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_MP,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ħ����"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_WEIGHT) then return "err 1075"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_WEIGHT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�������أ�"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_EQUIPWEIGHT) then return "err 1079"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_EQUIP_WEIGHT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�������أ�"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_BRAWN) then return "err 1083"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAX_BRAWN,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("������"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_HIT) then return "err 1087"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_HIT,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("���У�"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MISS) then return "err 1091"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MISS,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("���ܣ�"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MAGMISS) then return "err 1095"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MAG_MISS,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ħ�����ܣ�"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_BURST) then return "err 1099"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_BURST,__qulity); val = val + tval ; val = val / 100
	if val ~= 0 then ret = ret..tipText("�����ʣ�"..string.format("%.2f", val).."%".."\n", 4294901760) end

	if ehandle and equip then
		local burstharm = CL:GetItemEntityCustomVarInt(ehandle, "burstharm")
		if burstharm ~= 0 then ret = ret..tipText("�����˺���"..burstharm.."\n", 4294901760) end
		--ret = ret..tipText("�����˺���"..burstharm.."\n", 4294901760)
	end
	
	
	local subType = tonumber(GetTipParam("SUBTYPE"))
	if ehandle == 0 and equip and subType == 13 then 
		local name = GetTipParam("NAME")
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

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_LC) then return "err 1103"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_LUCK_CURSE,__qulity); val = val + tval
	if ehandle ~= 0 and UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_LUCKCURSE) then val = val + LuaRet end
	if val ~= 0 and val <= 10 and val >= -10 then
		local __goodcol = {4294573201, 4294436147, 4294753536, 4292083464, 4293590784, 4293590784, 4293590784, 4293590784, 4293590784, 4293590784}
		local __badcol  = {4294145170, 4293673014, 4289339424, 4292219163, 4294901760, 4294901760, 4294901760, 4294901760, 4294901760, 4294901760}
		if val > 0 then ret = ret..tipText("���ˣ�+"..val.."\n", __goodcol[val])
		else val = -val; ret = ret..tipText("���䣺+"..val.."\n", __badcol[val]) end
	end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_INTENSITY) then return "err 1113"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_INTENSITY,__qulity); val = val + tval
	
	if GetTipParam("ITEMIDENTIFIER") == "��Ѫʯ" or GetTipParam("ITEMIDENTIFIER") == "����֮��" then
	else
		if val ~= 0 then ret = ret..tipText("ǿ�ȣ�"..__pading[val > 0]..val.."\n", __color[thigh]) end
	end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MOVESPEED) then return "err 1121"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MOVE_SPEED,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�ƶ��ٶȣ�"..__pading[val > 0]..val.."%\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_ATTACKSPEED) then return "err 1125"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_ATTACK_SPEED,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����ٶȣ�"..__pading[val > 0]..val.."%\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_POISON) then return "err 1129"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_POISON_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�ж��ظ���"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_HPREC) then return "err 1133"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_HP_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("�����ظ���"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_MPREC) then return "err 1137"end; val = LuaRet
	tval, thigh = GetQualityValue(ROLE_PROP32_MP_REC,__qulity); val = val + tval
	if val ~= 0 then ret = ret..tipText("ħ���ظ���"..__pading[val > 0]..val.."\n", __color[thigh]) end

	if equip then
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKHP) then return "err 1142"end
		if LuaRet ~= 0 then ret = ret..tipText("��Ѫ��"..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKHPPCT) then return "err 1144"end
		if LuaRet ~= 0 then ret = ret..tipText("��Ѫ��"..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKMAXHPPCT) then return "err 1146"end
		if LuaRet ~= 0 then ret = ret..tipText("��Ѫ���ޣ�"..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKMP) then return "err 1148"end
		if LuaRet ~= 0 then ret = ret..tipText("��ħ��"..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKMPPCT) then return "err 1150"end
		if LuaRet ~= 0 then ret = ret..tipText("��ħ��"..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_SUCKMAXMPPCT) then return "err 1152"end
		if LuaRet ~= 0 then ret = ret..tipText("��ħ���ޣ�"..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_REFPHY) then return "err 1154"end
		if LuaRet ~= 0 then ret = ret..tipText("�����˺����䣺"..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_REFPHYPCT) then return "err 1156"end
		if LuaRet ~= 0 then ret = ret..tipText("�����˺����䣺"..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_REFMAG) then return "err 1158"end
		if LuaRet ~= 0 then ret = ret..tipText("ħ���˺����䣺"..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_REFMAGPCT) then return "err 1160"end
		if LuaRet ~= 0 then ret = ret..tipText("ħ���˺����䣺"..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_IMMPHY) then return "err 1162"end
		if LuaRet ~= 0 then ret = ret..tipText("�����˺����⣺"..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_IMMPHYPCT) then return "err 1164"end
		if LuaRet ~= 0 then ret = ret..tipText("�����˺����⣺"..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_IMMMAG) then return "err 1166"end
		if LuaRet ~= 0 then ret = ret..tipText("ħ���˺����⣺"..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_IMMMAGPCT) then return "err 1168"end
		if LuaRet ~= 0 then ret = ret..tipText("ħ���˺����⣺"..LuaRet.."%\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_ISPHYIMM) then return "err 1170"end
		if LuaRet ~= 0 then ret = ret..tipText("�������ߣ�"..LuaRet.."\n", 4278190079) end
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_ISMAGIMM) then return "err 1172"end
		if LuaRet ~= 0 then ret = ret..tipText("ħ�����ߣ�"..LuaRet.."\n", 4278190079) end
	end
	----����1,����3,����13,��ָ9,����8,����
	local shux1 = {
		{"��������","ħ��������","����������"},
		{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}},
		{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}},  	
	} 
	----�·�4,����7,Ь��6,ͷ��2,����,���,ħ��
	local shux2 = {
		{{"��������","ħ��������","����������"},"���������","ħ��������"},
		{{{1,1},{1,6},{1,6}},{{2,2},{2,8},{2,8}},{{3,3},{4,10},{3,11}},{{3,4},{5,12},{4,14}},{{4,6},{7,16},{6,17}},{{4,7},{9,21},{7,21}},
		{{5,10},{11,26},{9,26}},{{5,13},{13,32},{9,31}},{{6,17},{14,38},{11,36}},{{8,22},{16,44},{13,43}},{{9,27},{18,51},{15,49}},{{10,33},{22,60},{17,54}}}, 
		{{{2,1},{2,2},{2,2}},{{3,1},{5,4},{4,4}},{{4,1},{7,6},{6,6}},{{4,2},{10,9},{8,8}},{{5,2},{12,11},{10,10}},{{6,3},{16,12},{13,12}},{{7,4},{19,14},{16,15}},
		{{9,6},{23,17},{19,18}},{{11,7},{27,20},{21,20}},{{13,10},{31,24},{25,23}},{{15,12},{38,28},{29,27}},{{44,32},{18,15},{34,30}}},		
	}
	----���� 15    ���,ħ��
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
		if not GetRoleOrHeroProperty32(ROLE_PROP32_JOB) then return "err 1220"end
		local job = tonumber(LuaRet)
		--local Entity = GetTipParam("GUIDATA")
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_LEVEL) then return "err 1217"end
		local level = 	tonumber(LuaRet)	
		local subType = tonumber(GetTipParam("SUBTYPE"))
		local qiangh_num = 0
		local refine = 0
		local zhul_num = 0
		local zhul_lv = 0
		if ehandle ~= 0 then
			if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_REFINELEVEL) then return "err 1597" end
			refine = tonumber(LuaRet)
			qiangh_num = CL:GetItemEntityCustomVarInt(tonumber(ehandle), "xing_num")	
			zhul_num = CL:GetItemEntityCustomVarInt(tonumber(ehandle), "zhul_num")
			zhul_lv = CL:GetItemEntityCustomVarInt(tonumber(ehandle), "zhul_level")
		else
			qiangh_num = 12 	
			zhul_num = 12	
		end
		
		local item_keyname = GetTipParam("KEYNAME")
		if ehandle == 0 and (item_keyname == '���ս��Plus' or item_keyname == 'ħ�귨��Plus' or item_keyname == 'ħ�귨��Plus') then
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
				ret = ret .. tipText("  \n")
				ret = ret .. tipText("�ɶ������ԣ�", "#BE8200") 
				local nextlevel = refine + 1
				ret = ret ..tipSet2(135,0).. tipText("ǿ��+"..nextlevel, "#CD6839")
				local zhul_lvn = 0
				if zhul_num > 0 and zhul_lv < 12 then
					zhul_lvn = zhul_lv + 1
					ret = ret  ..tipSet2(239) .. tipText("�̻�+"..zhul_lvn, "#104E8B")
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
function tipItemsLayoutCrystal(ihandle, ehandle, equip)
	local ret = ""
	local item_keyname = ""
	if ehandle then
		item_keyname = tostring(CL:GetItemEntityCustomVarStr(ehandle, "EquipHole1"))
		if item_keyname ~= "" then
			ret = ret .. tipText("��ʯ��Ƕ��", "#7030A0")
			ret = ret .. tipSet(60,0) .. tipText("��ʯ�����Ѽӳɣ�", "#7030A0")
			ret = ret .. tipText("\n")..tipSet(0,3)
			local property_tb = 
			{  
				["�﹥"] = {"������", 30, 1992000350},
				["ħ��"] = {"ħ������", 32, 1990035331},
				["����"] = {"��������", 34, 1992000037},
				["���"] = {"�������", 36, 1992000349},
				["ħ��"] = {"ħ������", 38, 1992000038},
				["����"] = {"����", 40, 1992000036},
			}
			local Entity = ehandle
			local mi = 0
			local ma = 0
			local blood = 0
			for i = 1 , 4 do 
				item_keyname = tostring(CL:GetItemEntityCustomVarStr(Entity, "EquipHole"..i))
				if item_keyname == "" then
					break
				elseif item_keyname == "2" then
					ret = ret .. tipSet(5,0) .. tipImage(1802900031,19,19) .. tipSet(10,3) .. tipText("ǿ��".. i*3 .."������Ƕ", "#BFCDDB")
				elseif item_keyname == "1" then
					ret = ret .. tipSet(5,0) .. tipImage(1800700057,19,19) .. tipSet(10,3) .. tipText("�����", "#BFCDDB")
				else	
					local stoneType = string.match(item_keyname,"��".."(.-)".."��")
						if stoneType ~= nil then
						local propertyType = property_tb[stoneType][1]
						local a = property_tb[stoneType][2]
						local imageid = property_tb[stoneType][3]
						if propertyType then
							ret = ret .. tipSet(5,0) .. tipImage(imageid,19,19) .. tipSet(10,3) .. tipText(item_keyname, "#7030A0")
							if a == 40 then
								ret = ret .. tipSet2(135) .. tipText(propertyType, "#7030A0")
								blood = CL:GetItemEntityCustomVarInt(Entity, "_dv"..a)
								ret = ret .. tipSet2(239) .. tipText("��ʯ+��".. blood .."��", "#7030A0")
							else
								ret = ret .. tipSet2(135) .. tipText(propertyType, "#7030A0")
								mi = CL:GetItemEntityCustomVarInt(Entity, "_dv".. a)
								ma = CL:GetItemEntityCustomVarInt(Entity, "_dv".. a+1)
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
function tipItemsLayoutZhuangbeihuishou(ihandle, ehandle, equip)
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
	if ehandle then
		local subType = GetTipParam("SUBTYPE")	
		if subType_tb[subType] then 
			local Entity = tonumber(ehandle)
			local hs_jy = tonumber(CL:GetItemEntityCustomVarInt(Entity,"huishou_jy"))
			local hs_xf = tonumber(CL:GetItemEntityCustomVarInt(Entity,"huishou_xf"))
			local item_contri = tonumber(CL:GetItemEntityCustomVarInt(Entity,"item_contri"))
			ret = ret..tipText("\n")
			if item_contri > 0 then 
				ret = ret .. tipText("�蹤��ɵã�", "#A9D18E")
				ret = ret .. tipSet2(100) .. tipText(""..item_contri, "#A9D18E") .. tipText("����ֵ", "#A9D18E")
				ret = ret .. tipText("\n")
			end
			if hs_jy > 0 or hs_xf > 0 then 
				local rein_level = CL:GetItemEntityCustomVarInt(Entity, "item_rein")
				local refine = 0
				if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_REFINELEVEL) then return "err 1212"end
				if LuaRet ~= 0 then
					refine = tonumber(LuaRet)
				end
				local zhul_lv = CL:GetItemEntityCustomVarInt(Entity, "zhul_level")
				if rein_level > 1 or refine > 0 or zhul_lv > 0 then 
					ret = ret .. tipText("���ɻ���", "#A9D18E")
					return ret
				end
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
function tipItemsLayoutZhuangbeiJieshao(ihandle, ehandle, equip)
	local ret = ""
	if ihandle == 0 or not equip then return ret end
	if UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_DESC) and LuaRet ~= "" and LuaRet ~= "0" then
		local desc = LuaRet
		desc = string.gsub(desc, "\"", "\\\"")
		local color = GetTipParam("TITLECOLOR")
		if not UI:Lua_GetItemTemplatePropByHandle(ihandle,ITEM_PROP_BRIEF) and LuaRet == "��ҫװ��" then
			color = 4293050946
		elseif color == nil then
			color = mkcolor("WHITE")
		end
		ret = ret..tipText2(desc.."\n", color)
	end
	if ret ~= "" then ret = tipSet(nil, -2)..ret..tipSet(nil, 8) end; return ret
end

--װ����ħ����----------------------------------------------------------------------------------------------------
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
	if str ~= "" then ret = tipText("��ħ����\n", 4294953984)..str end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--��������----------------------------------------------------------------------------------------------------
function tipItemsLayoutRefine(ihandle, ehandle, equip)
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
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..tipText("�������ԣ�\n", 4287550230)..ret..tipSet(nil, 8) end; return ret
end

--��չ����û�õ�-------------------------------------------------------------------------------------------------
function tipItemsLayoutExtend(ihandle, ehandle, equip)
	local ret = ""
	local __refine = GetTipParam("REFINE")
	if __refine ~= nil and __refine[1][PROPERTY_ATTR_NAME] ~= 0 and __refine[1][PROPERTY_ATTR_VALUE] ~= 0 and UI:Lua_GetAttrProp(__refine[1][PROPERTY_ATTR_NAME],ATT_PROP_CHINANAME) then
		local str = GetAttNameValueStr(LuaRet, __refine[1][PROPERTY_ATTR_VALUE], " +")
		ret = ret..tipText("������"..str.."\n", 4287550230)
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--��������----------------------------------------------------------------------------------------------------
function tipItemsLayoutIdentify(ihandle, ehandle, equip)
	local ret = ""
	if GetTipParam("ITEMIDENTIFIER") == "��Ѫʯ" or GetTipParam("ITEMIDENTIFIER") == "����֮��" then return ret end
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
function tipItemsLayoutSuit(ihandle, ehandle, equip)
	local ret = ""
	if UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_SUIT) and LuaRet ~= 0 then
		local suitid = LuaRet
		local __color = {[true] = 4294953984, [false] = 4287861651}

		local itempos = GetItemGUIDataItemPos()
		if ehandle == 0 then --����ģ��
			if not UI:Lua_GetPlayerSelfEquipData() then return "err 1438"end
		elseif nil ~= GetTipParam("HEROGUID") then
			if not UI:Lua_GetPlayerHeroEquipData() then return "err 1440"end
		elseif itempos > INVALID_POS and itempos <= VISITSTALL_POS then --�Ϸ�����Ʒλ��
			if not UI:Lua_GetPlayerSelfEquipData() then return "err 1442"end
		elseif GetTipParam("SELFID") ~= 0 and GetTipParam("SELFID") ~= GetTipParam("OWNERID") and UI:Lua_GetPlayerTargetEquipData() then --������Ʒ,λ��һ��ΪINVALID_POS
		else --�������
			if not UI:Lua_GetPlayerSelfEquipData() then return "err 1445"end
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
		if not UI:Lua_GetSuitPropByID(suitid, SUIT_PROP_NAME) then return "err 1462"end; local name = LuaRet
        if not UI:Lua_GetSuitItemListByID(suitid) then return "err 1463"end; local suitlist = LuaRet
		if #suitlist == 0 then return ret end
		ret = ret..tipText(name.."("..tcount.."/"..#suitlist..")\n", __color[true])
		--��ʾ��װ��Ŀ--
		for suit,id in pairs(suitlist) do
            if UI:Lua_GetItemTemplatePropByID(id, ITEM_PROP_NAME) then
				ret = ret..tipSet(8)..tipText(LuaRet.."\n", __color[tsuit[id] ~= nil])
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
				ret = ret..tipSet(8)..tipText(suit_prop_size[i][2].."/"..#suitlist.." "..GetAttNameValueStr(LuaRet, suit_prop_value[i][2], "����").."\n", __color[has_attr])
			end
		end
	end
	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--��������-----------------------------------------------------------------------------------------------
function tipItemsLayoutHorse(ihandle, ehandle, equip)
	local ret = ""
	if not equip or GetTipParam("SUBTYPE") ~= 14 or ehandle == 0 then return ret end
	local alive = true
	if ehandle ~= 0 and UI:Lua_GetItemEntityPropByHandle(ehandle,ITEM_PROP_ENTITY_DURABILITY) and LuaRet == 0 then alive = false end
	local __color = {4281843773, 4289309097, 4283453520}
	if alive then ret = ret..tipText("��������\n", __color[1])
	else ret = ret..tipText("��������\n", __color[2]) end

	local level, curexp, maxexp
	if not UI:Lua_GetItemEntityCustomVarInt(ehandle, "h_level")   then return "err 1548"end; level = LuaRet
	if not UI:Lua_GetItemEntityCustomVarInt(ehandle, "h_cur_exp") then return "err 1549"end; curexp = LuaRet
	if not UI:Lua_GetItemEntityCustomVarInt(ehandle, "h_max_exp") then return "err 1550"end; maxexp = LuaRet
	if alive then ret = ret..tipSet(8, 6)..tipText("����ȼ���"..level.."\n", 4294967168)..tipSet(8)..tipText("���ﾭ�飺", 4281843773)..tipText(tostring(curexp), 4294901760)..tipText("/"..maxexp.."\n", 4281843773)
	else ret = ret..tipSet(8, 6)..tipText("����ȼ���"..level.."\n", __color[3])..tipSet(8)..tipText("���ﾭ�飺"..curexp.."/"..maxexp.."\n") end
	if not UI:Lua_GetItemEntityPropByHandle(ehandle, ITEM_PROP_EQUIP_EXT) then return "err 1553"end
	local data = LuaRet
	local tcount = 1
	if UI:Lua_GetItemEntityCustomVarInt(ehandle,"h_type") then
		tcount = LuaRet; if tcount == 0 or tcount > 5 then tcount = 1 end
	end
	local color
	if alive then color = 4283021466 else color = 4283453520 end
	for i=1,tcount do
		if data[i] == nil or data[i][PROPERTY_ATTR_NAME] == nil or data[i][PROPERTY_ATTR_NAME] == 0 or
		not UI:Lua_GetAttrProp(data[i][PROPERTY_ATTR_NAME],ATT_PROP_CHINANAME) then
			ret = ret..tipSet(8)..tipText("��"..i.."��δ����\n", color)
		else
			ret = ret..tipSet(8)..tipText(GetAttNameValueStr(LuaRet, data[i][PROPERTY_ATTR_VALUE]).."\n", color)
		end
	end
	if not alive then ret = ret..tipSet(nil, 6)..tipText("������\n", 4289309097) end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..ret..tipSet(nil, 8) end; return ret
end

--װ��ԭ��-----------------------------------------------------------------------------------------------
function tipItemsLayoutRawName(ihandle, ehandle)
	local ret = ""
	local name = GetTipParam("NAME")
	if string.sub(name, 1, 4) == "(��)" and UI:Lua_GetItemTemplatePropByHandle(ihandle, ITEM_PROP_NAME) then
		name = LuaRet
		if GetTipParam("SUBTYPE") == 14 and UI:Lua_GetItemEntityCustomVarInt(ehandle,"h_type") then
			if LuaRet == 0 or LuaRet > 5 then LuaRet = 1 end
			local __name = { "","*��","*��","*��","*��" }
			name = name..__name[LuaRet]
		end
		ret = ret..tipText("ԭ��:"..name.."\n", GetTipParam("TITLECOLOR"), "SIMLI18")
		ret = ret..tipText(nil, nil, "system")
	end

	if ret ~= "" then ret = tipSet(nil, -8)..tipLine()..tipSet(nil, -4)..ret..tipSet(nil, 8) end; return ret
end

--�۸�����-----------------------------------------------------------------------------------------------
function tipItemsLayoutPrice(ihandle, ehandle, equip)
	local ret = ""
	local itempos = GetItemGUIDataItemPos()
	if itempos == GAMESTALL_POS or itempos == VISITSTALL_POS then
		local __stall = { {name="���",color=4281645312},{name="Ԫ��",color=4294953984} }
		if not GetTipItemGUIDataPropByType(ITEMGUIDATA_ITEMPRICETYPE) then return "err 1598"end
		local price_type = LuaRet + 1
		if __stall[price_type] ~= nil then
			if not GetTipItemGUIDataPropByType(ITEMGUIDATA_ITEMPRICE) then return "err 1601"end
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
			if price_type == 1 then if not UI:Lua_GetPlayerSelfProperty64( ROLE_PROP64_GOLD ) then return "err 1612"end
			else if not UI:Lua_GetPlayerSelfProperty64( ROLE_PROP64_INGOT ) then return "err 1613"end ; end
			_RoleMoney = LuaRet
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

	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_NAME) then return "err 1638"end
	local info = LuaRet
	if not UI:Lua_GetFontStrWidth("SIMLI18",info) then return "err 1640"end
	ret = ret..tipSet(math.floor((202-LuaRet)/2), -4)
	ret = ret..tipText(info.."\n", nil, "SIMLI18")

	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_ICON) then return "err 1644"end
	local id = LuaRet
	if not UI:Lua_IsTextureExists(id) then id = 1990000000 end
	ret = ret..tipSet(nil, 4)
	ret = ret..tipImage2(id, nil, not Enable)
	ret = ret..tipSet2(80)
	__color[true] = 4294417725
	ret = ret..tipText("��Ҫ������", __color[Enable], "system")
	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_NEEDWEAPON) then return "err 1652"end
	info = "��������"; if LuaRet ~= 0 then info = "��" end
	__color[true] = 4286111031
	ret = ret..tipText(info, __color[Enable])
	ret = ret..tipSet(nil, 15)
	ret = ret..tipSet2(80)
	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_TYPE) then return "err 1658"end
	info = "��������"; if LuaRet == 1 or LuaRet == 3 or LuaRet == 5 then info = "��������" end
	__color[true] = 4279755435
	ret = ret..tipText(info, __color[Enable])
	ret = ret..tipSet(nil, 15)
	ret = ret..tipSet2(80)
	__color[true] = 4294417725
	ret = ret..tipText("CD��", __color[Enable])
	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_CD) then return "err 1666"end
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
	ret = ret..tipText(string.format("%."..dot_num.."f��\n", cd_time / 1000), __color[Enable])

	ret = ret..tipSet(nil, 4)
	__color[true] = 4294761476
	ret = ret..tipText("����������", __color[Enable])
	__color[true] = 0xffffffff
	ret = ret..tipText(nil, __color[Enable])
	if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_TIPS) then return "err 1687"end
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
	if not UI:Lua_GetBuffProp(BuffID,BUFF_PROP_NAME) then return "err 1706"end
	local info = LuaRet
	if not UI:Lua_GetFontStrWidth("SIMLI18",info) then return "err 1708"end
	ret = ret..tipSet((tipw - LuaRet) / 2 - 8)
	ret = ret..tipSet(nil, -4)
	ret = ret..tipText(info.."\n", nil, "SIMLI18")
	ret = ret..tipSet(nil, 8)
	if not UI:Lua_GetBuffProp(BuffID,BUFF_PROP_TIPS) then return "err 1713"end
	ret = ret..tipText2(LuaRet.."\n", nil, "system")

	--ʣ��ʱ��
	local LeftTime = GetTipParam("BUFFLEFTTIME")
	if LeftTime ~= nil then
		LeftTime = tonumber(LeftTime)
		if LeftTime > 0 then
			local TimeStr = GetLeaveTimeString(LeftTime)
			ret = ret..tipSet(nil, 4)..tipText("ʣ��ʱ�䣺"..TimeStr.."\n")
		end
	end

	ret = ret..GetTipEnd(); return ret
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
		if Att ~= nil and Val ~= nil and Att ~= 0 and UI:Lua_GetAttrProp(Att, ATT_PROP_CHINANAME) then
			local Name = LuaRet
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
	if UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_NAME) then ret = ret..tipText("�ǳƣ�"..LuaRet.."\n") end
	if UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_LEVEL) then ret = ret..tipText("�ȼ���"..LuaRet.."\n") end
	if UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_JOB) then ret = ret..tipText("ְҵ��"..RDJOBName[LuaRet].."\n") end
	if UI:Lua_GetTeamPropByPlayerGUID(RoleGUID,TEAMINFO_MAPNAME) and UI:Lua_GetMapNameByKeyName(LuaRet) then ret = ret..tipText("λ�ã�"..LuaRet.."\n") end
	ret = ret..GetTipEnd(); return ret
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

	ret = ret..GetTipEnd(); return ret
end


-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------װ����Tip--------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
function tipLayoutFunctionBrokenEquip()
	local ret = GetTipBegin()

	ret = ret..tipAll(150)
	ret = ret..tipText("�����ϵ�����װ���;ò���,�뾡������\n", "WHITE")
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