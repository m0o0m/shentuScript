--Lua�������
function LoadLuaClientCfg()
	UI:Lua_Log("LoadLuaClientCfg")
	LuaGlobal["TeamMemberWindowCols"]  = 2	   --��Ӷ�Ա�������
	LuaGlobal["TeamMemberWindowRows"]  = 5	    --��Ӷ�Ա�������
	LuaGlobal["UseClientCommand"]      = true   --�����ͻ��������
	LuaGlobal["TipMarginX"]            = 1		--����Tip֮��ˮƽ���
	LuaGlobal["TipCmpSameHeight"]      = true	   --���Tip�߶�ʹ����ߵ��Ǹ��ĸ߶�
	LuaGlobal["ShowAchieveMsg"]        = true		   --���������ʾ��ɳɾ���ʾ
	LuaGlobal["VIPFilterLevelLower"]   = false   --�Ƿ���ʾVIP���˵ȼ����µ�VIP����
	LuaGlobal["ModifyQuiteGameMethod"] = false --�Ƿ���Ŀͻ��˵��˳���ʽ��������ģ��˳��ص� OnQuiteGame(flag) flag=1����С�� flag=2�������
	LuaGlobal["UseTaskAutoAttackFlag"] = false  --�Ƿ�ʹ�������Զ�Ѱ·��ɺ���Զ���ֱ��(task�е�ATK���)��Ĭ�ϲ�ʹ�á��������Ϊtrue����ʵ���Զ���ֻص��ű�����OnTaskAutoAttack()
	LuaGlobal["ShowBrokenEquipTip"]    = false    --װ����ʱ�������Ƿ���ʾtips��Ĭ�ϲ���ʾ���������Ϊtrue��TipLayout��Ҫ��tipLayoutFunctionBrokenEquip����
	LuaGlobal["UseEquipmentGuide"]     = false     --�Ƿ�ʹ��װ��������壬Ĭ�ϲ�ʹ��
	LuaGlobal["UseSkillGuide"]         = false        --�Ƿ�ʹ�ü���������壬Ĭ�ϲ�ʹ��
	LuaGlobal["PlayerNameType"]        = 0     -- 1 ���л� ���� ����
	LuaGlobal["AttackType"]            = 1     -- 1 ƽ������ģʽ���ȼ��ٵȴ�
	LuaGlobal["ClickAttacLock"]        = false -- �����������Ƿ񹥻�����
	LuaGlobal["ClickPlayerMove"]       = false -- ����������Ƿ��ƶ�
	LuaGlobal["AutoSkillLock"]         = true  -- ���������ʱ�Ƿ��Զ���������
	LuaGlobal["PickUpAllItem"]         = false -- ��Ʒ�ڹ��Ƿ�ȫ��ʰȡ
	LuaGlobal["ShowAllItemName"]       = false -- ��Ʒ�ڹ��Ƿ�ȫ����ʵ��Ʒ��
    LuaGlobal["ShowOtherTalkString"]   = true           -- �Ƿ���ʾ����ͷ��ð��
    LuaGlobal["PrestigeDataType"]      = true  -- �����ֶ�
    LuaGlobal["MonsterSelectUseRect"]  = true  -- ����ѡ��ʽ��trueΪĬ�ϣ�falseΪѡȡ����
    LuaGlobal["CommonChatBreakTime"]   = 1  	--��ͨ����������
    LuaGlobal["WorldChatBreakTime"]    = 10  	--����Ƶ������������
    LuaGlobal["TitleFontType"]    		= "SIMLI18" --�ƺ���������
    LuaGlobal["ShowMonsterHeaderInfo"] 	= true  --�Ƿ���ʾѡ�����ʱ��Ĺ���ͷ����Ϣ
    LuaGlobal["ShowDigBodyMagic"] 		= true  --�Ƿ���ʾ����������Ч
    LuaGlobal["DelegateSellDesc"] 		= "���۹ҵ���Ҫ5000���������"
    LuaGlobal["ShowPingIP"] 			= true
    LuaGlobal["ShowAccompanyName"] 		= true -- �Ƿ���ʾ�������
    LuaGlobal["ChatChannelXOffset"] 	= 0 --�ұ�����Ƶ����ƫ�ƣ������37�����Ƶ�Ӣ��ŭ������λ��
    LuaGlobal["SelectUseWeap"] 			= true  --ѡ���ɫʱ�������Ƿ���Ϊѡȡ����
    LuaGlobal["QuickAddPointCount"] 	= 10 --�����޸��������Եĵ���
    LuaGlobal["UseNewWorldMap"] 		= false 	--�Ƿ����°�������ͼ

    LuaGlobal["CareStallTitleImageID"] 	= 1902000045 --��̯ͷ����עʱͼƬID
    LuaGlobal["NormalStallTitleImageID"] = 0 --��̯ͷ��ͼƬID
    LuaGlobal["CareStallTitleFontColor"] = "DARKGOLD" --��̯ͷ����עʱ������ɫ
    LuaGlobal["NormalStallTitleFontColor"] = "WHITE" --��̯ͷ��������ɫ

    LuaGlobal["UseItemNoDelay"] = false

    LuaGlobal["RoleNameX"] = 152 --
    LuaGlobal["RoleNameY"] = 20 --
    LuaGlobal["DrawSelectHalo"] = true --�Ƿ���ʾ����ѡ��ʱ��Ľŵ׹⻷
    LuaGlobal["StallImage"] = 1902000060 --��̯��ʾ��ͼƬ

    LuaGlobal["GameMallVIPTip"] = "���̳���ʹ��Ԫ�������̳���Ʒ���Ի�û��֣�ÿ����1Ԫ�������1���֣�"

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
	LuaGlobal["TaskWindow_AutoQueryTask"] = 0	--��û�н���������ʱ�Զ��Ƽ�һ����������
	LuaGlobal["TaskWindow_AutoQueryTaskElapse"] = 15	--�Զ��Ƽ���ѯ�¼����
	LuaGlobal["AutoMoveItemsStr"] = "��ң��1��,��ң��50��,��ң��20��,��ң��10��,��ң��,��ң��1Сʱ,��ң��500��,��ң��7��,��ң��100��"	--�������ʱ�����жϱ������Ƿ������Щ����
	LuaGlobal["ChatWindowUseGrow"] = 0 --������������
	LuaGlobal["PlayerTextPosType"] = 1 --������ɫ�ı����ϵ�����ʾ˳��Ϊ�ƺ� �л��� ����,ͬҳ����ͬ
	--RoleSkillKeyImageStr Ϊ��������Ͽ�ݼ�ͼ��,��һ��Ϊ��,���˳��ΪF1 ~ F8, CtrlF1 ~ CtrlF8
	LuaGlobal["RoleSkillKeyImageStr"] = "1930200099,1930200035,1930200039,1930200043,1930200047,1930200051,1930200055,1930200059,1930200063,1930200067,1930200071,1930200075,1930200079,1930200083,1930200087,1930200091,1930200095"
	LuaGlobal["NpcQuestHeadImage"] = "1043400000, 1043200000, 1043300000"	--npcͷ������ͼ��,1������ɽ���2������ɽӣ�3�������ѽӲ��ɽ�
	LuaGlobal["NpcTalkBkAroundImg"] = "1903700034,1903700035,1903700036,1903700037,1903700039,1903700038,1903700040,1903700041,1903700042,1903700043"	--npctalk�����,�Զ�������Сʱ�Ź��񱳾�.ǰ����Ϊ�Ź���,��ʮ��Ϊ�ָ���
	LuaGlobal["NpcTalkBKNoTaskImg"] = "1903700033"	--npctalk���,û������ʱ���õĵ��ű���ͼ
	LuaGlobal["NpcTalkBkTaskImg"] = "1903700044,1903700015"	--npctalk���,������ʱ����ͼ��ѡ��ʱ����ͼƬ
	LuaGlobal["NpcTalkBkNameBottomImg"] = "1903700020"	--npctalk���,npc���ֵײ�����ͼ
	LuaGlobal["NpcTalkBkTaskStatusImg"] = "1903700016, 1903700018, 1903700017"	--npctalk���,����ѡ���ϵ�ǰ�����ǿɽ�,�ɽӺͲ��ɽ�����״̬ʹ�õ�ͼƬ
	LuaGlobal["BigMapWindow_JumpNameFont"] = "SIMLI18"	--���ͼ��ת���ı�������
	LuaGlobal["BigMapWindow_JumpNameTxtColor"] = MakeARGB(255,255, 240, 0)	--���ͼ��ת���ı�����ɫ
	LuaGlobal["PlayerDigImage"] = 0	--�������ʱͷ����ͼƬ
	LuaGlobal["PlayerTextPosOffset"] = 0	--������ƺ�Ѫ������ƫ����
end
    
LoadLuaClientCfg()
CL:SetCursorColor(MakeARGB(255,255,255,255))	--�趨�༭������ɫ


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

VIPLevelImages =
{
	1903400039,
	1903400040,
	1903400041,
	1903400042,
	1903400043,
	1903400044,
	1903400045,
	1931800025,
	1931800026,
	1931800027
}
function GetVIPLevelImages(level)
	if VIPLevelImages[level] == nil then
		return 0
	else
		return VIPLevelImages[level]
	end
end