--Lua�������
function LoadLuaClientCfg()
	UI:Lua_Log("LoadLuaClientCfg")
	CLSetLuaGlobal("TeamMemberWindowCols", 2)	   --��Ӷ�Ա�������
	CLSetLuaGlobal("TeamMemberWindowRows", 5)	    --��Ӷ�Ա�������
	CLSetLuaGlobal("UseClientCommand", true)   --�����ͻ��������
	CLSetLuaGlobal("TipMarginX", 1	)	--����Tip֮��ˮƽ���
	CLSetLuaGlobal("TipCmpSameHeight", true)	   --���Tip�߶�ʹ����ߵ��Ǹ��ĸ߶�
	CLSetLuaGlobal("ShowAchieveMsg", true)		   --���������ʾ��ɳɾ���ʾ
	CLSetLuaGlobal("VIPFilterLevelLower", false)   --�Ƿ���ʾVIP���˵ȼ����µ�VIP����
	CLSetLuaGlobal("ModifyQuiteGameMethod", false) --�Ƿ���Ŀͻ��˵��˳���ʽ��������ģ��˳��ص� OnQuiteGame(flag) flag=1����С�� flag=2�������
	CLSetLuaGlobal("UseTaskAutoAttackFlag", false)  --�Ƿ�ʹ�������Զ�Ѱ·��ɺ���Զ���ֱ��(task�е�ATK���)��Ĭ�ϲ�ʹ�á��������Ϊtrue����ʵ���Զ���ֻص��ű�����OnTaskAutoAttack()
	CLSetLuaGlobal("ShowBrokenEquipTip", false)    --װ����ʱ�������Ƿ���ʾtips��Ĭ�ϲ���ʾ���������Ϊtrue��TipLayout��Ҫ��tipLayoutFunctionBrokenEquip����
	CLSetLuaGlobal("UseEquipmentGuide", false)     --�Ƿ�ʹ��װ��������壬Ĭ�ϲ�ʹ��
	CLSetLuaGlobal("UseSkillGuide", false)        --�Ƿ�ʹ�ü���������壬Ĭ�ϲ�ʹ��
	CLSetLuaGlobal("PlayerNameType", 0)     -- 1 ���л� ���� ����
	CLSetLuaGlobal("AttackType",1)     -- 1 ƽ������ģʽ���ȼ��ٵȴ�
	CLSetLuaGlobal("ClickAttacLock", false) -- �����������Ƿ񹥻�����
	CLSetLuaGlobal("ClickPlayerMove", false) -- ����������Ƿ��ƶ�
	CLSetLuaGlobal("AutoSkillLock", true)  -- ���������ʱ�Ƿ��Զ���������
	CLSetLuaGlobal("PickUpAllItem", false) -- ��Ʒ�ڹ��Ƿ�ȫ��ʰȡ
	CLSetLuaGlobal("ShowAllItemName", false) -- ��Ʒ�ڹ��Ƿ�ȫ����ʵ��Ʒ��
	CLSetLuaGlobal("ShowOtherTalkString", true)           -- �Ƿ���ʾ����ͷ��ð��
	CLSetLuaGlobal("PrestigeDataType", true)  -- �����ֶ�
	CLSetLuaGlobal("MonsterSelectUseRect",true)  -- ����ѡ��ʽ��trueΪĬ�ϣ�falseΪѡȡ����
	CLSetLuaGlobal("CommonChatBreakTime", 1)  	--��ͨ����������
	CLSetLuaGlobal("WorldChatBreakTime", 10)  	--����Ƶ������������
	CLSetLuaGlobal("TitleFontType", "SIMLI18") --�ƺ���������
	CLSetLuaGlobal("ShowMonsterHeaderInfo", true)  --�Ƿ���ʾѡ�����ʱ��Ĺ���ͷ����Ϣ
	CLSetLuaGlobal("ShowDigBodyMagic", true)  --�Ƿ���ʾ����������Ч
	CLSetLuaGlobal("DelegateSellDesc", "���۹ҵ���Ҫ5000���������")
	CLSetLuaGlobal("ShowPingIP", true)
	CLSetLuaGlobal("ShowAccompanyName", true) -- �Ƿ���ʾ�������
	CLSetLuaGlobal("ChatChannelXOffset", 0) --�ұ�����Ƶ����ƫ�ƣ������37�����Ƶ�Ӣ��ŭ������λ��
	CLSetLuaGlobal("SelectUseWeap", true)  --ѡ���ɫʱ�������Ƿ���Ϊѡȡ����
	CLSetLuaGlobal("QuickAddPointCount", 10) --�����޸��������Եĵ���
	CLSetLuaGlobal("UseNewWorldMap", false) 	--�Ƿ����°�������ͼ
	
	CLSetLuaGlobal("CareStallTitleImageID", 1902000045) --��̯ͷ����עʱͼƬID
	CLSetLuaGlobal("NormalStallTitleImageID", 0) --��̯ͷ��ͼƬID
	CLSetLuaGlobal("CareStallTitleFontColor", "DARKGOLD") --��̯ͷ����עʱ������ɫ
	CLSetLuaGlobal("NormalStallTitleFontColor", "WHITE") --��̯ͷ��������ɫ
	
	CLSetLuaGlobal("UseItemNoDelay", false)
	
	CLSetLuaGlobal("RoleNameX", 152) --
	CLSetLuaGlobal("RoleNameY", 20) --
	CLSetLuaGlobal("DrawSelectHalo", true) --�Ƿ���ʾ����ѡ��ʱ��Ľŵ׹⻷
	CLSetLuaGlobal("StallImage", 1902000060) --��̯��ʾ��ͼƬ
	CLSetLuaGlobal("UseCampColor", false) --�Ƿ�������Ӫ��ɫ
	CLSetLuaGlobal("GameMallVIPTip", "���̳���ʹ��Ԫ�������̳���Ʒ���Ի�û��֣�ÿ����1Ԫ�������1���֣�")
	CLSetLuaGlobal("DrawWingOnHorse", true) --������ʱ�Ƿ��軭���
	CLSetLuaGlobal("ManBodyID", 25000) --��������ģ��ID
    CLSetLuaGlobal("WomenBodyID", 25500) --Ů������ģ��ID
	CLSetLuaGlobal("PickUpAllItems", true) --�Ƿ��ȡ����item
	CLSetLuaGlobal("NameShow", 1) --��ɫ�ϵ�������ʾ��ʽ��1��ʾҳ����ʾ��ʽ����ͷ����
	CLSetLuaGlobal("RefineImage", "1096000100,1096000200,1096000300") --�����ȼ���Ч
	CLSetLuaGlobal("DestroyBagItem", -1) --���������Ƿ���ʾ��Ч
	CLSetLuaGlobal("ItemBetter", 1804600059) --��Ʒ�Ƿ���ʾ��������Ʒ�Ƚϵ�ͼƬ��������þ���ʾ��ͼƬ
	CLSetLuaGlobal("ItemRefineShow", true) --��Ʒ�Ƿ���ʾ�����ȼ�
	CLSetLuaGlobal("ItemZhulingShow", true) --��Ʒ�Ƿ���ʾע��ȼ�
	CLSetLuaGlobal("MonsterMagic", true) --�����Ƿ���ʾ����
	CLSetLuaGlobal("TopBackImg", 1806200019) --���ֱ�����
	CLSetLuaGlobal("QuestShowChange", true) --��������Ƿ��ı��С
	CLSetLuaGlobal("AchieveCount", 1804600035) --�ɾ�������ʼͼƬ
	CLSetLuaGlobal("MoveGreedyMode", true) --�ƶ�̰��ģʽ��true��ʾ�����ƶ������ܻ�׷����΢��
	CLSetLuaGlobal("Logo", 1805400008) --LOGO
	CLSetLuaGlobal("LoadRide", false) --�Ƿ����������
	CLSetLuaGlobal("ItemColor", true) --�Ƿ���ʾƷ����ɫ
	CLSetLuaGlobal("AttrUpdateType", 1) --���ֱ��ַ�ʽ0��Ĭ��ֱ������1����Ծ
	CLSetLuaGlobal("ItemNameBackColor", false) --�Ƿ���ʾ������Ʒ���ֱ�����ɫ
	CLSetLuaGlobal("RefineEffectWidth", 70)--������Ч����Ч���
	CLSetLuaGlobal("HpBorderImage", 1805900214)--�߿�
	CLSetLuaGlobal("HpImage", 1805900215)--Ѫ��
	CLSetLuaGlobal("InnerImage", 1805900216)--�ڹ��������������������ã���ɫ�Ͳ�����ʾ�ڹ���
end
    
LoadLuaClientCfg()

--ҳ�ι���ģʽ����
function UserGetAttacModeBtnText(_CurrenAttackMode)
	if _CurrenAttackMode == atk_mode_all then
      return "ȫ\n��"
  elseif _CurrenAttackMode == atk_mode_peace then
      return "��\nƽ"
  elseif _CurrenAttackMode == atk_mode_team then
      return "��\n��"
  elseif _CurrenAttackMode == atk_mode_guild then
      return "��\n��"
  elseif _CurrenAttackMode == atk_mode_pk then
      return "��\n��"
  elseif _CurrenAttackMode == atk_mode_alliance then
      return "��\n��"
  elseif _CurrenAttackMode == atk_mode_camp then
      return "��\nӪ"
  end
  return ""
end

--�������ֻ�ȡ��ɫ
function GetColorByName(_ColorName)
	local _Color = MakeARGB(255,255,255,255)
  	if _ColorName == "����ս�ҷ�" then
  		_Color = MakeARGB(255,41,67,243)
  	elseif _ColorName == "����ս�з�" then
  		_Color = MakeARGB(255,249,108,15)
  	elseif _ColorName == "����ս������" then
  		_Color = MakeARGB(255,72,249,28)
  	elseif _ColorName == "�л�ս�ҷ�" then
  		_Color = MakeARGB(255,41,67,243)
  	elseif _ColorName == "�л�ս�з�" then
  		_Color = MakeARGB(255,249,108,15)
  	elseif _ColorName == "�л�ս������" then
  		_Color = MakeARGB(255,72,249,28)
  	else
  	end
  	return _Color
end

--װ������������ѡ��
EnhanceTypeStr =
{
	{"HP����"	,ROLE_PROP32_MAX_HP_PCT},
	{"MP����"	,ROLE_PROP32_MAX_MP_PCT},
	{"���"		,ROLE_PROP32_MAX_PHY_DEF_PCT},
	{"ħ��"		,ROLE_PROP32_MAX_MAG_DEF_PCT},
	{"�﹥"		,ROLE_PROP32_MAX_PHY_ATK_PCT},
	{"ħ��"		,ROLE_PROP32_MAX_MAG_ATK_PCT},
	{"����"		,ROLE_PROP32_MAX_TAO_ATK_PCT}
}

ItemCanEnhanceTypes =
{
	{EQUIP_WEAPON	,{"�﹥"  ,"ħ��"  ,"����"}}, --����
	{EQUIP_RING		,{"�﹥"  ,"ħ��"  ,"����"}}, --��ָ
	{EQUIP_NECKLACE	,{"HP����","MP����"       }}, --����
	{EQUIP_WRIST	,{"HP����","MP����"       }}, --����
	{EQUIP_HELMET	,{"���"  ,"ħ��"         }}, --ͷ��
	{EQUIP_ARMOR	,{"���"  ,"ħ��"         }}, --�·�
	{EQUIP_SHOES	,{"���"  ,"ħ��"         }},  --Ь��
	{EQUIP_MOUNT	,{"HP����"  ,"MP����"     }}  --����
}

function GetEnhanceTypeStrByType(_EnhanceType)
	for k,v in pairs(EnhanceTypeStr) do
		if _EnhanceType == v[2] then
			return v[1]
		end
	end
	return ""
end

PreloadSkills =
{
	1065,
	48
}
function GetSkillIsPreload(skillLinkAge)
	for i = 1, #PreloadSkills do
		if PreloadSkills[i] == skillLinkAge then
			return true
		end
	end
	return false
end

VIPLevelImages =
{
	1903400039,
	1903400040,
	1903400041,
	1903400042,
	1903400043,
	1903400044,
	1903400045,
	1903400061,
	1903400062,
	1903400063,
	1903400063,
	1903400063
}
function GetVIPLevelImages(level)
	if VIPLevelImages[level] == nil then
		return 0
	else
		return VIPLevelImages[level]
	end
end
SlotKeyCodes =
{
	49,
	50,
	51,
	52,
	53,
	54,
	81,
	87,
	69,
	82
}
function GetSlotKeyCodes()
	return as3.toarray(SlotKeyCodes)
end

--װ����������ʯͷ����Ԫ��
EquipmentEnhanceParam =
{
	{1, 5000},
	{2, 5000},
	{4, 5000},
	{6, 5000},
	{8, 5000},
	{10, 5000},
	{12, 5000},
	{14, 5000},
	{16, 5000},
}

function GetEquipmentEnhanceStoneByLevel(level)
	level = level + 1
	if EquipmentEnhanceParam[level] == nil then
		return 0
	else
		return EquipmentEnhanceParam[level][1]
	end
end

function GetEquipmentEnhanceGoldByLevel(level)
	level = level + 1
	if EquipmentEnhanceParam[level] == nil then
		return 0
	else
		return EquipmentEnhanceParam[level][2]
	end
end

function GetEquipmentIdentifyGold()
	return 6000
end

function GetEnhanceTransferGold()
	return 5000
end

function GetEnhanceChangeGold()
	return 5000
end

function GetHorseIdentifyGold()
	return 100000
end

function GetHorseRestoreGold()
	return 100000
end

--��ȡӢ����װ����ȫ��װ������;����ȼ�
function GetHeroEquipedBaseRefineLevel()
	local RefineEquip =
	{
	SITE_WEAPON, --����
	SITE_HELMET, --ͷ��
	SITE_WRIST_0, --����0
	SITE_WRIST_1, --����1
	SITE_ARMOR,   --�·�
	SITE_JUJU,    --����
	SITE_SHOES,   --Ь��
	SITE_SHOULDER,--����
	SITE_NECKLACE,--����
	SITE_RING_0,  --��ָ0
	SITE_RING_1,  --��ָ1
	SITE_MEDAL,   --ѫ��
	SITE_GEM,     --��ʯ
	SITE_WINGS,   --���
	SITE_AMULET,  --�ػ�
	SITE_MOUNT,   --����
	}

	if not UI:Lua_GetPlayerHeroEquipData() then
		return 0
	end
	local _EquipData = as3.tolua(LuaRet)

	local _Amount = #RefineEquip
	local _List = {}
	for i = 1, _Amount do
		_List[i] = 0
		local _Site = RefineEquip[i]
		if _EquipData[_Site] ~= nil and _EquipData[_Site] ~= "0" then
			local _GUID = _EquipData[_Site]
			if UI:Lua_GetItemEntityPropByGUID(_GUID, ITEM_PROP_EQUIP_REFINELEVEL) then
				_List[i] = as3.tolua(LuaRet)
			end
		end
	end

	table.sort(_List, function(l, r)
		return l > r
	end)

	return _List[9]
end

--��ȡ��װ����ȫ��װ������;����ȼ�
function GetEquipedBaseRefineLevel(IsSelfEquip)
	local RefineEquip =
	{
	SITE_WEAPON, --����
	SITE_HELMET, --ͷ��
	SITE_WRIST_0, --����0
	SITE_WRIST_1, --����1
	SITE_ARMOR,   --�·�
	SITE_JUJU,    --����
	SITE_SHOES,   --Ь��
	SITE_SHOULDER,--����
	SITE_NECKLACE,--����
	SITE_RING_0,  --��ָ0
	SITE_RING_1,  --��ָ1
	SITE_MEDAL,   --ѫ��
	SITE_GEM,     --��ʯ
	SITE_WINGS,   --���
	SITE_AMULET,  --�ػ�
	SITE_MOUNT,   --����
	SITE_SHIELD,	--����
	SITE_FASHION,	--ʱװ
	SITE_HAT,		--����
	SITE_GLOVES,	--����
	SITE_JEWELRY,	--�鱦
	}

	if IsSelfEquip then
		if not UI:Lua_GetPlayerSelfEquipData() then return 0 end
	else
		if not UI:Lua_GetPlayerTargetEquipData() then return 0 end
	end
	local _EquipData = as3.tolua(LuaRet)

	local _Amount = #RefineEquip
	local _List = {}
	for i = 1, _Amount do
		_List[i] = 0
		local _Site = RefineEquip[i]
		if _EquipData[_Site] ~= nil and _EquipData[_Site] ~= "0" then
			local _GUID = _EquipData[_Site]
			if UI:Lua_GetItemEntityPropByGUID(_GUID, ITEM_PROP_EQUIP_REFINELEVEL) then
				_List[i] = as3.tolua(LuaRet)
			end
		end
	end

	table.sort(_List, function(l, r)
		return l > r
	end)

	return _List[9]
end

--����2

--װ�������ĳɹ����ʣ����ѽ�ң�������Ԫ��
EquipmentEnhanceParam2 =
{
				{10000, 5000, 1},
				{8000, 5000, 1},
				{6000, 5000, 1},
				{5500, 5000, 2},
				{5000, 5000, 2},
				{4500, 5000, 2},
				{4000, 5000, 3},
				{3500, 5000, 3},
				{3000, 5000, 3},
				{2500, 5000, 4},
				{2000, 5000, 4},
				{1500, 5000, 4},
				{1500, 5000, 5},
				{1500, 5000, 5},
				{1500, 5000, 5},
}

function GetXinyunPctAddByItemID(ItemID)
	if ItemID == 20443 then --������
		return 1000
	elseif ItemID == 20444 then
		return 1500
	else
		return 0
	end
end

function GetEquipmentEnhanceDesc()
	local _Desc = ""
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#    ע�⣺װ������ʧ��ʱ�����0��\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#             �������߽���\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#  �����ǣ�����ʱ���룬���������ɹ���\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#  ������������ʱ���룬�ɱ�֤����ʧ�ܺ�װ�������ȼ�����½�1��\n"
	_Desc = _Desc.."#OFFSET<X:-3,Y:0>#         #COLORCOLOR_ORANGE#����������������\n"
	_Desc = _Desc.."#OFFSET<X:-3,Y:-5>#         ���������Խ��ܩ�\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#���������ة������������ة���������\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#��#COLOREND##COLORCOLOR_YELLOW#����1~8����#OFFSET<X:1,Y:0>#ÿ���������+1%~2%#OFFSET<X:3,Y:0>##COLOREND##COLORCOLOR_ORANGE##OFFSET<X:2,Y:0>#��\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#����������������������������������\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#��#COLOREND##COLORCOLOR_YELLOW#����9~11����ÿ���������+1%~3%#COLOREND##COLORCOLOR_ORANGE#��\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#����������������������������������\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#��#COLOREND##COLORCOLOR_YELLOW#����12���ϣ�ÿ���������+2%~4%#COLOREND##COLORCOLOR_ORANGE#��\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#����������������������������������\n"
    _Desc = _Desc.."#OFFSET<X:51,Y:0>##COLORCOLOR_ORANGE#��������������������\n"
    _Desc = _Desc.."#OFFSET<X:51,Y:-5>#��ȫ�׾������Խ��ܩ�\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#���������ة����Щ����������ة�������\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#��ȫ�׾���+6#OFFSET<X:12,Y:0>#�����⸽�ӣ�����+1%#OFFSET<X:2,Y:0>##OFFSET<X:4,Y:0>#��\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#���������������੤������������������\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#��ȫ�׾���+9#OFFSET<X:12,Y:0>#�����⸽�ӣ�����+2%#OFFSET<X:1,Y:0># #OFFSET<X:-1,Y:0>#��\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#���������������੤������������������\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#��ȫ�׾���+12#OFFSET<X:6,Y:0>#�����⸽�ӣ�����+4%#OFFSET<X:0,Y:0># ��\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#���������������੤������������������\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#��ȫ�׾���+15#OFFSET<X:6,Y:0>#�����⸽�ӣ�����+7%#OFFSET<X:1,Y:0># #OFFSET<X:-1,Y:0>#��\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#���������������ة�������������������#COLOREND#\n"
	CLSetAsRet(_Desc)
	return _Desc
end

function GetEquipmentEnhance2SuccessPctByLevel(level)
	level = level + 1
	if EquipmentEnhanceParam2[level] == nil then
		return 0
	else
		return EquipmentEnhanceParam2[level][1]
	end
end

function GetEquipmentEnhance2GoldByLevel(level)
	level = level + 1
	if EquipmentEnhanceParam2[level] == nil then
		return 0
	else
		return EquipmentEnhanceParam2[level][2]
	end
end

function GetEquipmentEnhance2StoneByLevel(level)
	level = level + 1
	if EquipmentEnhanceParam2[level] == nil then
		return 0
	else
		return EquipmentEnhanceParam2[level][3]
	end
end

function GetAttNameValueStr(name, value, mid)
	if mid == nil then
		mid = "+"
	end

	if name == "����������" then
		return "����Ч��"..mid..value.."%"
	end

	if name == "����������" then
		return "����Ч��"..mid..value.."%"
	end

	if name == "��������" then
		if value > 0 then
			return "����"..mid..value
		elseif value < 0 then
			return "����"..mid..(-value)
		end
	end

	local beg = string.find(name, "�ٷֱ�$")
	if beg ~= nil then
		return string.sub(name, 1, beg - 1)..mid..value.."%"
	end

	beg = string.find(name, "����$")
	if beg ~= nil then
		return string.sub(name, 1, beg - 1)..mid..value.."%"
	end
	return name..mid..value
end

--ModifyQuiteGameMethod ��������
function OnQuiteGame(flag)
	if flag == 1 then --С��
		local script = "UI:Lua_QuiteToSelectRole()"
		MessageBox(MESSAGE_STYLE_OKCANCEL, "�Ƿ��˳���ѡ���ɫ����?", script)
	elseif flag == 2 then --����
		local script = "UI:Lua_QuiteGame()"
		MessageBox(MESSAGE_STYLE_OKCANCEL, "�Ƿ��˳���Ϸ?", script)
	end
end
----

--UseTaskAutoAttackFlag ��������
function OnTaskAutoAttack()
	UI:Lua_SubmitForm("�Զ����", "guaji", "1")
end
----

--UseEquipmentGuide ��������--
function HandleEquipmentGuide()
	if LuaGlobal["UseEquipmentGuide"] == true then
		RegisterUIEvent(LUA_EVENT_ONADDITEM, "װ������2", "OnEuipmentGuide")
	end
end; HandleEquipmentGuide()

function OnEuipmentGuide()
	local guid = as3.tolua(LuaParam[2])
	GenForm("װ������2#"..guid)
end
----

--UseSkillGuide ��������--
function HandleSkillGuide()
	if LuaGlobal["UseSkillGuide"] == true then
		RegisterUIEvent(LUA_EVENT_ONADDITEM, "��������", "OnSkillGuide")
	end
end; HandleSkillGuide()

function OnSkillGuide()
	local guid = as3.tolua(LuaParam[2])
	GenForm("��������#"..guid)
end
----

function OnGUIItemUse(guid)
	--if UI:Lua_MoveItemToHeroPackage(guid) then
	--	return true
	--end
	return false
end

function OnPlayerSelfCreate()
	UI:Lua_SetHeroColorRGB(154,205,222)
end
RegisterUIEvent(LUA_EVENT_ONPLAYERAPPEAR, "����", OnPlayerSelfCreate)


function SetChatWindowChannelParam()
	--0 		�Զ���
	--1,		��ǰ
	--2,		���
	--3,		�л�
	--4,		����
	--5,		С����
	--7,               ˽��
	--UI:Lua_InitChannelTextColor(1, 0, 0, 0, 255);
	--UI:Lua_InitChannelFillBackColor(1, 255, 255, 255, 255);
end


-- UserOnPlayerAddBuff = function ()
--         UI:Lua_InitChannelTextColor(0, 255, 255, 255, 255);
--         UI:Lua_InitChannelFillBackColor(0, 0, 0, 0, 0);
--         local BuffID = LuaParam[1]
--         local BuffLife = LuaParam[2]
--         if BuffID > 1018 and BuffID < 1023 then
--             local message = "̫����������Ч���������"..BuffLife.."��"
--             UI:Lua_ShowTypeMsg(4, message)
--         end 

--         if BuffID == 36 or BuffID == 37 or BuffID == 38 or BuffID == 103 then
--             local message = "�����������"..BuffLife.."��"
--             UI:Lua_ShowTypeMsg(4, message)
--         end 

--         if BuffID == 33 or BuffID == 34 or BuffID == 35 or BuffID == 102 then
--             local message = "ħ����������"..BuffLife.."��"
--             UI:Lua_ShowTypeMsg(4, message)
--         end
-- end