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
	LuaGlobal["ModifyQuiteGameMethod"] = false --�Ƿ���Ŀͻ��˵��˳���ʽ��������ģ����˻ص� OnQuiteGame(flag) flag=1����С�� flag=2�������
	LuaGlobal["UseTaskAutoAttackFlag"] = false  --�Ƿ�ʹ�������Զ�Ѱ·��ɺ���Զ���ֱ��
	LuaGlobal["DLImageType"] = 1 
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
	{EQUIP_MEDAL	,{"�﹥"  ,"ħ��"  ,"����"}},  --ѫ��
	{EQUIP_SHOULDER	,{"HP����"  ,"MP����"     }},  --����
	{EQUIP_WINGS	,{"���"  ,"ħ��"     }},  --���
	{EQUIP_AMULET	,{"HP����"  ,"MP����"     }},  --�ػ�
{EQUIP_GEM	,{"HP����"  ,"MP����"     }},  --��ʯ
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
	{15, 5000},
	{20, 5000},
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
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#  ע�⣺װ������ʱ������ʧ�ܻ����0��\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#             �������߽���\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#  �����ǣ�����ʱ���룬�������������ĳɹ���\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#  ���׷�������ʱ���룬������ʧ�ܺ󣬾�����װ���ȼ�����½�1��\n"
	_Desc = _Desc.."#OFFSET<X:-3,Y:0>#         #COLORCOLOR_ORANGE#����������������\n"
	_Desc = _Desc.."#OFFSET<X:-3,Y:0>#         ���������Խ��ܩ�\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#���������ة������������ة���������\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#��   #COLORCOLOR_YELLOW#ÿ�ξ�����#OFFSET<X:1,Y:0>#�������+1%~2%#OFFSET<X:3,Y:0>##COLOREND##COLORCOLOR_ORANGE#   ��\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#�������������Щ�������������������\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#��ȫ�׾���+6#OFFSET<X:1,Y:0>#�����⸽�ӣ�����+1%#OFFSET<X:2,Y:0># ��\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#�������������੤������������������\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#��ȫ�׾���+9#OFFSET<X:1,Y:0>#�����⸽�ӣ�����+2%#OFFSET<X:1,Y:0># ��\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#�������������੤������������������\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#��ȫ�׾���+12#OFFSET<X:-4,Y:0>#�����⸽�ӣ�����+4%#OFFSET<X:0,Y:0># ��\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#�������������੤������������������\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#��ȫ�׾���+15#OFFSET<X:-4,Y:0>#�����⸽�ӣ�����+7%#OFFSET<X:1,Y:0># ��\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#�������������ة�������������������\n"
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

function OnQuiteGame(flag)
	if flag == 1 then --С��
		local script = "UI:Lua_QuiteToSelectRole()"
		MessageBox(MESSAGE_STYLE_OKCANCEL, "�Ƿ��˳���ѡ���ɫ����?", script)
	elseif flag == 2 then --����
		local script = "UI:Lua_QuiteGame()"
		MessageBox(MESSAGE_STYLE_OKCANCEL, "�Ƿ��˳���Ϸ?", script)
	end
end