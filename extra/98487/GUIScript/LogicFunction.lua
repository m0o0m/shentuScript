--Lua�������
function LoadLuaClientCfg()
	UI:Lua_Log("LoadLuaClientCfg")
	LuaGlobal["TeamMemberWindowCols"] = 2	   --��Ӷ�Ա�������
	LuaGlobal["TeamMemberWindowRows"] = 5	   --��Ӷ�Ա�������
	LuaGlobal["UseClientCommand"] = true 	   --�����ͻ��������
	LuaGlobal["TipMarginX"] = 1				   --����Tip֮��ˮƽ���
	LuaGlobal["TipCmpSameHeight"] = true	   --���Tip�߶�ʹ����ߵ��Ǹ��ĸ߶�
	LuaGlobal["ShowAchieveMsg"] = true		   --���������ʾ��ɳɾ���ʾ
	LuaGlobal["VIPFilterLevelLower"] = false   --�Ƿ���ʾVIP���˵ȼ����µ�VIP����
	LuaGlobal["ModifyQuiteGameMethod"] = false --�Ƿ���Ŀͻ��˵��˳���ʽ��������ģ��˳��ص� OnQuiteGame(flag) flag=1����С�� flag=2�������
	LuaGlobal["UseTaskAutoAttackFlag"] = false  --�Ƿ�ʹ�������Զ�Ѱ·��ɺ���Զ���ֱ��(task�е�ATK���)��Ĭ�ϲ�ʹ�á��������Ϊtrue����ʵ���Զ���ֻص��ű�����OnTaskAutoAttack()
	LuaGlobal["ShowBrokenEquipTip"] = false    --װ����ʱ�������Ƿ���ʾtips��Ĭ�ϲ���ʾ���������Ϊtrue��TipLayout��Ҫ��tipLayoutFunctionBrokenEquip����
	LuaGlobal["UseEquipmentGuide"] = false     --�Ƿ�ʹ��װ��������壬Ĭ�ϲ�ʹ��
	LuaGlobal["UseSkillGuide"] = false        --�Ƿ�ʹ�ü���������壬Ĭ�ϲ�ʹ��
	LuaGlobal["PlayerNameType"] = 1        -- 1 ���л� ���� ����
        LuaGlobal["InputMoneyMaxCharNum"] = 10
    LuaGlobal["ShowAccompanyName"] 		= true -- �Ƿ���ʾ�������
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
	{EQUIP_MOUNT	,{"HP����"  ,"MP����"     }},  --����
	{EQUIP_SHOULDER	,{"���"  ,"ħ��"     }},  --����
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
	return 1000
end

function GetHorseRestoreGold()
	return 1000
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
				{9000, 5000, 1},
				{7000, 10000, 1},
				{5000, 15000, 2},
				{4000, 20000, 2},
				{3000, 20000, 3},
				{3000, 20000, 3},
				{3000, 20000, 4},
				{2000, 20000, 4},
				{2000, 20000, 5},

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
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#    ע�⣺װ������ʧ��ʱ���1��\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#             �������߽���\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#  �����ǣ�����ʱ���룬���������ɹ���\n"
	_Desc = _Desc.."#OFFSET<X:-3,Y:0>#         #COLORCOLOR_ORANGE#����������������\n"
	_Desc = _Desc.."#OFFSET<X:-3,Y:-5>#         ���������Խ��ܩ�\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#���������ة������������ة�����������\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#��#COLOREND##COLORCOLOR_YELLOW#����1~9����#OFFSET<X:1,Y:0>#ÿ���������+1%#OFFSET<X:3,Y:0>##COLOREND##COLORCOLOR_ORANGE##OFFSET<X:2,Y:0>#     ��\n"
	

    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#������������������������������������\n"
    _Desc = _Desc.."#OFFSET<X:51,Y:0>##COLORCOLOR_ORANGE#��������������������\n"
    _Desc = _Desc.."#OFFSET<X:51,Y:-5>#��ȫ�׾������Խ��ܩ�\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#���������ة����Щ����������ة�������\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#��ȫ�׾���+6#OFFSET<X:12,Y:0>#�����⸽�ӣ�����+2%#OFFSET<X:2,Y:0>##OFFSET<X:4,Y:0>#��\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#���������������੤������������������\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#��ȫ�׾���+7#OFFSET<X:12,Y:0>#�����⸽�ӣ�����+3%#OFFSET<X:1,Y:0># #OFFSET<X:-1,Y:0>#��\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#���������������੤������������������\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#��ȫ�׾���+8 #OFFSET<X:6,Y:0>#�����⸽�ӣ�����+4%#OFFSET<X:0,Y:0># ��\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#���������������੤������������������\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#��ȫ�׾���+9 #OFFSET<X:6,Y:0>#�����⸽�ӣ�����+5%#OFFSET<X:1,Y:0># #OFFSET<X:-1,Y:0>#��\n"
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
	if UI:Lua_MoveItemToHeroPackage(guid) then
		return true
	end
	return false
end


function OnPlayerSelfCreate()
	UI:Lua_SetHeroColorRGB(154,205,222)
end
RegisterUIEvent(LUA_EVENT_ONPLAYERAPPEAR, "����", OnPlayerSelfCreate)

function OnPlayerAddBuff()
	local BuffID = LuaParam[1]
	if BuffID > 1018 and BuffID < 1023 then
		local message = "�޼�������Ч����������"
		UI:Lua_ChatMsg(message)
	end	
end

function OnHeroAddBuff()
	local BuffID = LuaParam[1]
	if BuffID > 1018 and BuffID < 1023 then
		local message = "Ӣ�ۣ��޼�������Ч����������"
		UI:Lua_ChatMsg(message)
	end	
end

function OnPlayerDestoryBuff()
	local BuffID = LuaParam[1]
	if BuffID > 1018 and BuffID < 1023 then
		local message = "�޼�������ʧ�������ָ�����"
		UI:Lua_ChatMsg(message)
	end	
end

function OnHeroDestoryBuff()
	local BuffID = LuaParam[1]
	if BuffID > 1018 and BuffID < 1023 then
		local message = "Ӣ�ۣ��޼�������ʧ�������ָ�����"
		UI:Lua_ChatMsg(message)
	end	
end

RegisterUIEvent(LUA_EVENT_PLAYERADDBUFF, "����", OnPlayerAddBuff)
RegisterUIEvent(LUA_EVENT_PLAYERDESTORYBUFF, "����", OnPlayerDestoryBuff)
RegisterUIEvent(LUA_EVENT_HEROADDBUFF, "����", OnHeroAddBuff)
RegisterUIEvent(LUA_EVENT_HERODESTORYBUFF, "����", OnHeroDestoryBuff)


function SetChatWindowChannelParam()
	--1,		��ǰ
	--2,		���
	--3,		�л�
	--4,		����
	--5,		С����
	--6,               ˽��
	UI:Lua_InitChannelTextColor(3, 10, 90, 0, 255);
	--UI:Lua_InitChannelFillBackColor(3, 255, 255, 255, 255);
end