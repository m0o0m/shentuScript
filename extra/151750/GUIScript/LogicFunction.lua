--Lua�������
function LoadLuaClientCfg()
	UI:Lua_Log("LoadLuaClientCfg")
	LuaGlobal["TeamMemberWindowCols"]  = 2	    --��Ӷ�Ա�������
	LuaGlobal["TeamMemberWindowRows"]  = 5	    --��Ӷ�Ա�������
	LuaGlobal["UseClientCommand"]      = true   --�����ͻ��������
	LuaGlobal["TipMarginX"]            = 1		--����Tip֮��ˮƽ���
	LuaGlobal["TipCmpSameHeight"]      = true	--���Tip�߶�ʹ����ߵ��Ǹ��ĸ߶�
	LuaGlobal["ShowAchieveMsg"]        = true	--���������ʾ��ɳɾ���ʾ
	LuaGlobal["VIPFilterLevelLower"]   = false  --�Ƿ���ʾVIP���˵ȼ����µ�VIP����
	LuaGlobal["ModifyQuiteGameMethod"] = false  --�Ƿ���Ŀͻ��˵��˳���ʽ��������ģ��˳��ص� OnQuiteGame(flag) flag=1����С�� flag=2�������
	LuaGlobal["UseTaskAutoAttackFlag"] = false  --�Ƿ�ʹ�������Զ�Ѱ·��ɺ���Զ���ֱ��(task�е�ATK���)��Ĭ�ϲ�ʹ�á��������Ϊtrue����ʵ���Զ���ֻص��ű�����OnTaskAutoAttack()
	LuaGlobal["ShowBrokenEquipTip"]    = false  --װ����ʱ�������Ƿ���ʾtips��Ĭ�ϲ���ʾ���������Ϊtrue��TipLayout��Ҫ��tipLayoutFunctionBrokenEquip����
	LuaGlobal["UseEquipmentGuide"]     = false  --�Ƿ�ʹ��װ��������壬Ĭ�ϲ�ʹ��
	LuaGlobal["UseSkillGuide"]         = false  --�Ƿ�ʹ�ü���������壬Ĭ�ϲ�ʹ��
	LuaGlobal["PlayerNameType"]        = 0      -- 1 ���л� ���� ����
	LuaGlobal["AttackType"]            = 1      -- 1 ƽ������ģʽ���ȼ��ٵȴ�
	LuaGlobal["ClickAttacLock"]        = true   -- �����������Ƿ񹥻�����
	LuaGlobal["ClickPlayerMove"]       = false  -- ����������Ƿ��ƶ�
	LuaGlobal["AutoSkillLock"]         = true   -- ���������ʱ�Ƿ��Զ���������
	LuaGlobal["PickUpAllItem"]         = false  -- ��Ʒ�ڹ��Ƿ�ȫ��ʰȡ
	LuaGlobal["ShowAllItemName"]       = false  -- ��Ʒ�ڹ��Ƿ�ȫ����ʵ��Ʒ��
    LuaGlobal["ShowOtherTalkString"]   = true   -- �Ƿ���ʾ����ͷ��ð��
    LuaGlobal["PrestigeDataType"]      = true   -- �����ֶ�
    LuaGlobal["MonsterSelectUseRect"]  = true   -- ����ѡ��ʽ��trueΪĬ�ϣ�falseΪѡȡ����
    LuaGlobal["CommonChatBreakTime"]   = 1  	--��ͨ����������
    LuaGlobal["WorldChatBreakTime"]    = 10  	--����Ƶ������������
    LuaGlobal["TitleFontType"]    		= "SIMLI18" --�ƺ���������
    LuaGlobal["ShowMonsterHeaderInfo"] 	= true  --�Ƿ���ʾѡ�����ʱ��Ĺ���ͷ����Ϣ
    LuaGlobal["ShowDigBodyMagic"] 		= true  --�Ƿ���ʾ����������Ч
    LuaGlobal["DelegateSellDesc"] 		= "���۹ҵ���Ҫ5000���������"
    LuaGlobal["ShowPingIP"] 			= true
    LuaGlobal["ShowAccompanyName"] 		= true  -- �Ƿ���ʾ�������
    LuaGlobal["ChatChannelXOffset"] 	= 0     --�ұ�����Ƶ����ƫ�ƣ������37�����Ƶ�Ӣ��ŭ������λ��
    LuaGlobal["SelectUseWeap"] 			= true  --ѡ���ɫʱ�������Ƿ���Ϊѡȡ����
    LuaGlobal["QuickAddPointCount"] 	= 10    --�����޸��������Եĵ���
    LuaGlobal["UseNewWorldMap"] 		= false	--�Ƿ����°�������ͼ

    LuaGlobal["CareStallTitleImageID"] 	= 1902000045 --��̯ͷ����עʱͼƬID
    LuaGlobal["NormalStallTitleImageID"] = 0 --��̯ͷ��ͼƬID
    LuaGlobal["CareStallTitleFontColor"] = "DARKGOLD" --��̯ͷ����עʱ������ɫ
    LuaGlobal["NormalStallTitleFontColor"] = "YELLOW" --��̯ͷ��������ɫ

    LuaGlobal["UseItemNoDelay"] = false

    LuaGlobal["RoleNameX"] = 152 --
    LuaGlobal["RoleNameY"] = 20 --
    LuaGlobal["DrawSelectHalo"] = true --�Ƿ���ʾ����ѡ��ʱ��Ľŵ׹⻷
    LuaGlobal["StallImage"] = 1902000060 --��̯��ʾ��ͼƬ

    LuaGlobal["GameMallVIPTip"] = "���̳���ʹ��Ԫ�������̳���Ʒ���Ի�û��֣�ÿ����1Ԫ�������1���֣�"
    LuaGlobal["DrawWingOnHorse"] = true --������ʱ�Ƿ��軭���
    LuaGlobal["ReconnetType"] = 0 --����ʱ�Ƿ�������Ĭ��0 ������1 ���˳�
    LuaGlobal["HpInfoUseDynamicPos"] = true --����Ѫ���Ƿ�̶��߶�
    LuaGlobal["ManBodyID"] = 25000 --��������ģ��ID
    LuaGlobal["WomenBodyID"] = 25500 --Ů������ģ��ID
    LuaGlobal["ManShadowID"] = 08011 --��������ģ��Ӱ��ID
    LuaGlobal["WomenShadowID"] = 08061 --Ů������ģ��Ӱ��ID
	LuaGlobal["UseMagicWeaponAvatar"] = true --�Ƿ���ʾ����
    LuaGlobal["NpcFontName"] = "SIMLI18"	--npc���ֵ�����
    LuaGlobal["NpcNameColor"] = 4294894158	--npc���ֵ���ɫ
    LuaGlobal["NpcNameVOffset"] = 0	--npc���ֵĴ�ֱ����ƫ��
    LuaGlobal["TipsBackImgID_Normal"] = "1900190004,1900190006,1900190005,1900190007,1900190008,1900190000,1900190001,1900190002,1900190003"--��Ʒװ��Tips�ı���ͼƬ,��ΪĬ��
    LuaGlobal["TipsBackImgID_Focus"] = "1900180004,1900180006,1900180005,1900180007,1900180008,1900180000,1900180001,1900180002,1900180003"--��ǰ��ƷTips����ͼƬ
    LuaGlobal["RefineImage"] = "1096000100,1096000200,1096000300"	--1~5 5~10 10~ ����ǿ���ȼ���ЧID
	LuaGlobal["TipsDrawGrow"] = 1	--��Ʒtips�ı��Ƿ����
	LuaGlobal["AVATAR_EFFECTBLEND1"] = 0	--��������������Ч����,0�Ǽ���,��Ĭ��.1������
	LuaGlobal["AVATAR_EFFECTMASK1"] = MakeARGB(255,255,255,255)		--��������������Ч����,Ĭ��ΪMakeARGB(255,255,255,255)
	LuaGlobal["AVATAR_EFFECTBLEND2"] = 0	--����
	LuaGlobal["AVATAR_EFFECTMASK2"] = MakeARGB(255,255,255,255)		--����
	LuaGlobal["AVATAR_EFFECTBLEND3"] = 0	--����
	LuaGlobal["AVATAR_EFFECTMASK3"] = MakeARGB(255,255,255,255)		--����
	LuaGlobal["AVATAR_EFFECTMASKFORCE"] = 0	--//���ж��Ȼ�ı�ģ����ɫ��������Ƿ�ǿ��ʹ���趨������,0:��ǿ��;1:ǿ��
	LuaGlobal["TaskWindow_AutoQueryTask"] = 1	--��û�н���������ʱ�Զ��Ƽ�һ����������
	LuaGlobal["TaskWindow_AutoQueryTaskElapse"] = 15	--�Զ��Ƽ���ѯ�¼����
	LuaGlobal["AutoMoveItemsStr"] = "��ң��1��,��ң��50��,��ң��20��,��ң��10��,��ң��,��ң��1Сʱ,��ң��500��,��ң��7��,��ң��100��"	--�������ʱ�����жϱ������Ƿ������Щ����
	LuaGlobal["ChatWindowUseGrow"] = 1
	LuaGlobal["PlayerTextPosType"] = 1
	LuaGlobal["RichEdit_RI_ShowUnderline"] = 1
	LuaGlobal["CreateRole_EnterGameWithCreatedRole"] = true
    LuaGlobal["ServantIsMonster"] = false --��ʿ�������߷�ʦ�����Ƿ�����monster   
    LuaGlobal["MakeSureSafeDistance"] = false --�Զ����ʱ ��ʿ�ͷ�ʦ�Ƿ��ⰲȫ����
    LuaGlobal["AutoFightIsAttacPlayer"] = false --�Զ����ʱ�Ƿ� ����������� 
end

LoadLuaClientCfg()


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
	local _EquipData = LuaRet

	local _Amount = #RefineEquip
	local _List = {}
	for i = 1, _Amount do
		_List[i] = 0
		local _Site = RefineEquip[i]
		if _EquipData[_Site] ~= nil and _EquipData[_Site] ~= "0" then
			local _GUID = _EquipData[_Site]
			if UI:Lua_GetItemEntityPropByGUID(_GUID, ITEM_PROP_EQUIP_REFINELEVEL) then
				_List[i] = LuaRet
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
	}

	if IsSelfEquip then
		if not UI:Lua_GetPlayerSelfEquipData() then return 0 end
	else
		if not UI:Lua_GetPlayerTargetEquipData() then return 0 end
	end
	local _EquipData = LuaRet

	local _Amount = #RefineEquip
	local _List = {}
	for i = 1, _Amount do
		_List[i] = 0
		local _Site = RefineEquip[i]
		if _EquipData[_Site] ~= nil and _EquipData[_Site] ~= "0" then
			local _GUID = _EquipData[_Site]
			if UI:Lua_GetItemEntityPropByGUID(_GUID, ITEM_PROP_EQUIP_REFINELEVEL) then
				_List[i] = LuaRet
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
	local guid = LuaParam[2]
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
	local guid = LuaParam[2]
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


function OnAutoFight()
	--UI:Lua_SubmitForm("NPC_IsNotInScene", "AutoFight", "")
end
RegisterUIEvent(LUA_EVENT_AUTOMOVEEND, "�Զ�Ѱ·�������Զ����", OnAutoFight)

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


function ConvertSkillIconIdimageId(imageId)
	if imageId == 1990501000 then
		return 1833700051
	elseif imageId == 1990501010 then
		return 1833700052
	
	elseif imageId == 1990501020 then
		return 1833700053
	
	elseif imageId == 1990501030 then
		return 1833700000
	
	elseif imageId == 1990501040 then
		return 1833700001
	
	elseif imageId == 1990501010 then
		return 1833700052
	
	elseif imageId == 1990501010 then
		return 1833700052
	
	elseif imageId == 1990501050 then
		return 1833700002
	
	elseif imageId == 1990501060 then
		return 1833700003
	
	elseif imageId == 1990501070 then
		return 1833700004
	
	elseif imageId == 1990501080 then
		return 1833700005
	
	elseif imageId == 1990502000 then
		return 1833700006
	
	elseif imageId == 1990502010 then
		return 1833700007
	
	elseif imageId == 1990502020 then
		return 1833700008
	
	elseif imageId == 1990502030 then
		return 1833700009
	
	elseif imageId == 1990502040 then
		return 1833700010
	
	elseif imageId == 1990502050 then
		return 1833700011
	
	elseif imageId == 1990502060 then
		return 1833700012
	
	elseif imageId == 1990502070 then
		return 1833700013
	
	elseif imageId == 1990502080 then
		return 1833700014
	
	elseif imageId == 1990502090 then
		return 1833700015
	
	elseif imageId == 1990502100 then
		return 1833700016
	
	elseif imageId == 1990502110 then
		return 1833700017
	
	elseif imageId == 1990502120 then
		return 1833700018
	
	elseif imageId == 1990502130 then
		return 1833700019
	
	elseif imageId == 1990502140 then
		return 1833700020
	
	elseif imageId == 1990503000 then
		return 1833700021
	
	elseif imageId == 1990503010 then
		return 1833700022
	
	elseif imageId == 1990503020 then
		return 1833700023
	
	elseif imageId == 1990503030 then
		return 1833700024
	
	elseif imageId == 1990503040 then
		return 1833700025
	
	elseif imageId == 1990501010 then
		return 1833700052
	
	elseif imageId == 1990503050 then
		return 1833700026
	
	elseif imageId == 1990503060 then
		return 1833700027
	
	elseif imageId == 1990503070 then
		return 1833700028
	
	elseif imageId == 1990503080 then
		return 1833700029
	
	elseif imageId == 1990503090 then
		return 1833700030
	
	elseif imageId == 1990503100 then
		return 1833700031
	
	elseif imageId == 1990503110 then
		return 1833700032
	
	elseif imageId == 1990503120 then
		return 1833700033
	
	elseif imageId == 1990503130 then
		return 1833700034
	
	elseif imageId == 1990503140 then
		return 1833700035
	
	elseif imageId == 1990503150 then
		return 1833700036
	
	elseif imageId == 1990504000 then
		return 1833700037
	
	elseif imageId == 1990504010 then
		return 1833700038
	
	elseif imageId == 1990504021 then
		return 1833700039
	
	elseif imageId == 1990504022 then
		return 1833700040
	
	elseif imageId == 1990504023 then
		return 1833700041
	
	elseif imageId == 1990504024 then
		return 1833700042
	
	elseif imageId == 1990504025 then
		return 1833700043
	
	elseif imageId == 1990504026 then
		return 1833700044
	
	elseif imageId == 1990504027 then
		return 1833700045
	
	elseif imageId == 1990504028 then
		return 1833700046
	
	elseif imageId == 1990504029 then
		return 1833700047
	
	elseif imageId == 1990504030 then
		return 1833700048
	
	elseif imageId == 1990504031 then
		return 1833700049
	
	--սʿ����
	elseif imageId == 1892000000 then
		return 1850200006
	
	elseif imageId == 1892000001 then
		return 1850200004
	
	elseif imageId == 1892000002 then
		return 1850200003
	
	elseif imageId == 1892000003 then
		return 1850200028
	
	elseif imageId == 1892000004 then
		return 1850200010
	
	elseif imageId == 1892000005 then
		return 1850200026
	
	elseif imageId == 1892000007 then
		return 1850200031
	
	--��ʿ����
	elseif imageId == 1892000209 then
		return 1850200037
	
	elseif imageId == 1892000206 then
		return 1850200021
	
	elseif imageId == 1892000210 then
		return 1850200007
	
	elseif imageId == 1892000200 then
		return 1850200032
	
	elseif imageId == 1892000208 then
		return 1850200036
	
	elseif imageId == 1892000212 then
		return 1850200022
	
	elseif imageId == 1892000211 then
		return 1850200002
	
	elseif imageId == 1892000207 then
		return 1850200035
	
	elseif imageId == 1892000203 then
		return 1850200034
	
	elseif imageId == 1892000201 then
		return 1850200033
	
	elseif imageId == 1892000202 then
		return 1850200005
	
	elseif imageId == 1892000204 then
		return 1850200030
	
	elseif imageId == 1892000206 then
		return 1850200021
	
	--��ʦ����
	elseif imageId == 1892000115 then
		return 1850200029
	
	elseif imageId == 1892000106 then
		return 1850200000
	
	elseif imageId == 1892000105 then
		return 1850200013
	
	elseif imageId == 1892000108 then
		return 1850200008
	
	elseif imageId == 1892000110 then
		return 1850200017
	
	elseif imageId == 1892000104 then
		return 1850200041
	
	elseif imageId == 1892000114 then
		return 1850200038
	
	elseif imageId == 1892000107 then
		return 1850200040
	
	elseif imageId == 1892000103 then
		return 1850200042
	
	elseif imageId == 1892000112 then
		return 1850200024
	
	elseif imageId == 1892000100 then
		return 1850200025
	end
	return imageId
end
