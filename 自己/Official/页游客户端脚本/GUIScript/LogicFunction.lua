--Lua相关设置
function LoadLuaClientCfg()
	UI:Lua_Log("LoadLuaClientCfg")
	CLSetLuaGlobal("TeamMemberWindowCols", 2)	   --组队队员面板列数
	CLSetLuaGlobal("TeamMemberWindowRows", 5)	    --组队队员面板行数
	CLSetLuaGlobal("UseClientCommand", true)   --开启客户端命令功能
	CLSetLuaGlobal("TipMarginX", 1	)	--两个Tip之间水平间距
	CLSetLuaGlobal("TipCmpSameHeight", true)	   --多个Tip高度使用最高的那个的高度
	CLSetLuaGlobal("ShowAchieveMsg", true)		   --在聊天框显示完成成就提示
	CLSetLuaGlobal("VIPFilterLevelLower", false)   --是否显示VIP过滤等级以下的VIP功能
	CLSetLuaGlobal("ModifyQuiteGameMethod", false) --是否更改客户端的退出方式，如果更改，退出回调 OnQuiteGame(flag) flag=1代表小退 flag=2代表大退
	CLSetLuaGlobal("UseTaskAutoAttackFlag", false)  --是否使用任务自动寻路完成后的自动打怪标记(task中的ATK标记)，默认不使用。如果设置为true，须实现自动打怪回调脚本函数OnTaskAutoAttack()
	CLSetLuaGlobal("ShowBrokenEquipTip", false)    --装备损坏时，控制是否显示tips，默认不显示，如果设置为true，TipLayout中要有tipLayoutFunctionBrokenEquip函数
	CLSetLuaGlobal("UseEquipmentGuide", false)     --是否使用装备引导面板，默认不使用
	CLSetLuaGlobal("UseSkillGuide", false)        --是否使用技能引导面板，默认不使用
	CLSetLuaGlobal("PlayerNameType", 0)     -- 1 是行会 别名 人名
	CLSetLuaGlobal("AttackType",1)     -- 1 平滑攻击模式，先减少等待
	CLSetLuaGlobal("ClickAttacLock", false) -- 点击其他玩家是否攻击锁定
	CLSetLuaGlobal("ClickPlayerMove", false) -- 左键点击玩家是否移动
	CLSetLuaGlobal("AutoSkillLock", true)  -- 物理攻击玩家时是否自动技能锁定
	CLSetLuaGlobal("PickUpAllItem", false) -- 物品内挂是否全部拾取
	CLSetLuaGlobal("ShowAllItemName", false) -- 物品内挂是否全部现实物品名
	CLSetLuaGlobal("ShowOtherTalkString", true)           -- 是否显示他人头顶冒泡
	CLSetLuaGlobal("PrestigeDataType", true)  -- 声望字段
	CLSetLuaGlobal("MonsterSelectUseRect",true)  -- 怪物选择方式，true为默认，false为选取像素
	CLSetLuaGlobal("CommonChatBreakTime", 1)  	--普通聊天间隔秒数
	CLSetLuaGlobal("WorldChatBreakTime", 10)  	--世界频道聊天间隔秒数
	CLSetLuaGlobal("TitleFontType", "SIMLI18") --称号字体类型
	CLSetLuaGlobal("ShowMonsterHeaderInfo", true)  --是否显示选择怪物时候的怪物头像信息
	CLSetLuaGlobal("ShowDigBodyMagic", true)  --是否显示怪物挖肉特效
	CLSetLuaGlobal("DelegateSellDesc", "寄售挂单需要5000金币手续费")
	CLSetLuaGlobal("ShowPingIP", true)
	CLSetLuaGlobal("ShowAccompanyName", true) -- 是否显示随从名字
	CLSetLuaGlobal("ChatChannelXOffset", 0) --右边聊天频道的偏移，如果是37就是移到英雄怒气条的位子
	CLSetLuaGlobal("SelectUseWeap", true)  --选择角色时，武器是否作为选取区域
	CLSetLuaGlobal("QuickAddPointCount", 10) --快速修改人物属性的点数
	CLSetLuaGlobal("UseNewWorldMap", false) 	--是否用新版的世界地图
	
	CLSetLuaGlobal("CareStallTitleImageID", 1902000045) --摆摊头顶关注时图片ID
	CLSetLuaGlobal("NormalStallTitleImageID", 0) --摆摊头顶图片ID
	CLSetLuaGlobal("CareStallTitleFontColor", "DARKGOLD") --摆摊头顶关注时字体颜色
	CLSetLuaGlobal("NormalStallTitleFontColor", "WHITE") --摆摊头顶字体颜色
	
	CLSetLuaGlobal("UseItemNoDelay", false)
	
	CLSetLuaGlobal("RoleNameX", 152) --
	CLSetLuaGlobal("RoleNameY", 20) --
	CLSetLuaGlobal("DrawSelectHalo", true) --是否显示怪物选中时候的脚底光环
	CLSetLuaGlobal("StallImage", 1902000060) --摆摊显示的图片
	CLSetLuaGlobal("UseCampColor", false) --是否启用阵营颜色
	CLSetLuaGlobal("GameMallVIPTip", "在商城中使用元宝购买商城物品可以获得积分（每花费1元宝，获得1积分）")
	CLSetLuaGlobal("DrawWingOnHorse", true) --骑坐骑时是否描画翅膀
	CLSetLuaGlobal("ManBodyID", 25000) --男人物裸模的ID
    CLSetLuaGlobal("WomenBodyID", 25500) --女人物裸模的ID
	CLSetLuaGlobal("PickUpAllItems", true) --是否捡取所有item
	CLSetLuaGlobal("NameShow", 1) --角色上的名字显示方式，1表示页游显示方式，在头顶的
	CLSetLuaGlobal("RefineImage", "1096000100,1096000200,1096000300") --精炼等级特效
	CLSetLuaGlobal("DestroyBagItem", -1) --背包销毁是否显示特效
	CLSetLuaGlobal("ItemBetter", 1804600059) --物品是否显示跟身上物品比较的图片，如果更好就显示该图片
	CLSetLuaGlobal("ItemRefineShow", true) --物品是否显示精炼等级
	CLSetLuaGlobal("ItemZhulingShow", true) --物品是否显示注灵等级
	CLSetLuaGlobal("MonsterMagic", true) --怪物是否显示出现
	CLSetLuaGlobal("TopBackImg", 1806200019) --滚字背景框
	CLSetLuaGlobal("QuestShowChange", true) --快捷任务是否会改变大小
	CLSetLuaGlobal("AchieveCount", 1804600035) --成就数字起始图片
	CLSetLuaGlobal("MoveGreedyMode", true) --移动贪婪模式，true表示允许移动误差，可能会追不上微端
	CLSetLuaGlobal("Logo", 1805400008) --LOGO
	CLSetLuaGlobal("LoadRide", false) --是否加载骑马动作
	CLSetLuaGlobal("ItemColor", true) --是否显示品质颜色
	CLSetLuaGlobal("AttrUpdateType", 1) --浮字表现方式0是默认直线上升1是跳跃
	CLSetLuaGlobal("ItemNameBackColor", false) --是否显示掉落物品名字背景颜色
	CLSetLuaGlobal("RefineEffectWidth", 70)--精炼特效的有效宽度
	CLSetLuaGlobal("HpBorderImage", 1805900214)--边框
	CLSetLuaGlobal("HpImage", 1805900215)--血条
	CLSetLuaGlobal("InnerImage", 1805900216)--内功条，如果这个参数不设置，角色就不会显示内功条
end
    
LoadLuaClientCfg()

--页游攻击模式文字
function UserGetAttacModeBtnText(_CurrenAttackMode)
	if _CurrenAttackMode == atk_mode_all then
      return "全\n体"
  elseif _CurrenAttackMode == atk_mode_peace then
      return "和\n平"
  elseif _CurrenAttackMode == atk_mode_team then
      return "组\n队"
  elseif _CurrenAttackMode == atk_mode_guild then
      return "行\n会"
  elseif _CurrenAttackMode == atk_mode_pk then
      return "善\n恶"
  elseif _CurrenAttackMode == atk_mode_alliance then
      return "联\n盟"
  elseif _CurrenAttackMode == atk_mode_camp then
      return "阵\n营"
  end
  return ""
end

--根据名字获取颜色
function GetColorByName(_ColorName)
	local _Color = MakeARGB(255,255,255,255)
  	if _ColorName == "攻城战我方" then
  		_Color = MakeARGB(255,41,67,243)
  	elseif _ColorName == "攻城战敌方" then
  		_Color = MakeARGB(255,249,108,15)
  	elseif _ColorName == "攻城战第三方" then
  		_Color = MakeARGB(255,72,249,28)
  	elseif _ColorName == "行会战我方" then
  		_Color = MakeARGB(255,41,67,243)
  	elseif _ColorName == "行会战敌方" then
  		_Color = MakeARGB(255,249,108,15)
  	elseif _ColorName == "行会战第三方" then
  		_Color = MakeARGB(255,72,249,28)
  	else
  	end
  	return _Color
end

--装备精炼的属性选择
EnhanceTypeStr =
{
	{"HP上限"	,ROLE_PROP32_MAX_HP_PCT},
	{"MP上限"	,ROLE_PROP32_MAX_MP_PCT},
	{"物防"		,ROLE_PROP32_MAX_PHY_DEF_PCT},
	{"魔防"		,ROLE_PROP32_MAX_MAG_DEF_PCT},
	{"物攻"		,ROLE_PROP32_MAX_PHY_ATK_PCT},
	{"魔法"		,ROLE_PROP32_MAX_MAG_ATK_PCT},
	{"道术"		,ROLE_PROP32_MAX_TAO_ATK_PCT}
}

ItemCanEnhanceTypes =
{
	{EQUIP_WEAPON	,{"物攻"  ,"魔法"  ,"道术"}}, --武器
	{EQUIP_RING		,{"物攻"  ,"魔法"  ,"道术"}}, --戒指
	{EQUIP_NECKLACE	,{"HP上限","MP上限"       }}, --项链
	{EQUIP_WRIST	,{"HP上限","MP上限"       }}, --护腕
	{EQUIP_HELMET	,{"物防"  ,"魔防"         }}, --头盔
	{EQUIP_ARMOR	,{"物防"  ,"魔防"         }}, --衣服
	{EQUIP_SHOES	,{"物防"  ,"魔防"         }},  --鞋子
	{EQUIP_MOUNT	,{"HP上限"  ,"MP上限"     }}  --坐骑
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

--装备精炼所需石头和灵元珠
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

--获取英雄已装备的全套装备的最低精炼等级
function GetHeroEquipedBaseRefineLevel()
	local RefineEquip =
	{
	SITE_WEAPON, --武器
	SITE_HELMET, --头盔
	SITE_WRIST_0, --护腕0
	SITE_WRIST_1, --护腕1
	SITE_ARMOR,   --衣服
	SITE_JUJU,    --符咒
	SITE_SHOES,   --鞋子
	SITE_SHOULDER,--护肩
	SITE_NECKLACE,--项链
	SITE_RING_0,  --戒指0
	SITE_RING_1,  --戒指1
	SITE_MEDAL,   --勋章
	SITE_GEM,     --宝石
	SITE_WINGS,   --翅膀
	SITE_AMULET,  --守护
	SITE_MOUNT,   --坐骑
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

--获取已装备的全套装备的最低精炼等级
function GetEquipedBaseRefineLevel(IsSelfEquip)
	local RefineEquip =
	{
	SITE_WEAPON, --武器
	SITE_HELMET, --头盔
	SITE_WRIST_0, --护腕0
	SITE_WRIST_1, --护腕1
	SITE_ARMOR,   --衣服
	SITE_JUJU,    --符咒
	SITE_SHOES,   --鞋子
	SITE_SHOULDER,--护肩
	SITE_NECKLACE,--项链
	SITE_RING_0,  --戒指0
	SITE_RING_1,  --戒指1
	SITE_MEDAL,   --勋章
	SITE_GEM,     --宝石
	SITE_WINGS,   --翅膀
	SITE_AMULET,  --守护
	SITE_MOUNT,   --坐骑
	SITE_SHIELD,	--盾牌
	SITE_FASHION,	--时装
	SITE_HAT,		--斗笠
	SITE_GLOVES,	--手套
	SITE_JEWELRY,	--珠宝
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

--精炼2

--装备精炼的成功概率，花费金币，花费灵元珠
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
	if ItemID == 20443 then --幸运星
		return 1000
	elseif ItemID == 20444 then
		return 1500
	else
		return 0
	end
end

function GetEquipmentEnhanceDesc()
	local _Desc = ""
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#    注意：装备精炼失败时会掉到0级\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#             辅助道具介绍\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#  幸运星：精炼时放入，可以提升成功率\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#  护炼符：精炼时放入，可保证精炼失败后，装备精炼等级最多下降1级\n"
	_Desc = _Desc.."#OFFSET<X:-3,Y:0>#         #COLORCOLOR_ORANGE#┌──────┐\n"
	_Desc = _Desc.."#OFFSET<X:-3,Y:-5>#         │精炼属性介绍│\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#┌───┴──────┴────┐\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#│#COLOREND##COLORCOLOR_YELLOW#精炼1~8级：#OFFSET<X:1,Y:0>#每级属性随机+1%~2%#OFFSET<X:3,Y:0>##COLOREND##COLORCOLOR_ORANGE##OFFSET<X:2,Y:0>#│\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#├───────────────┤\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#│#COLOREND##COLORCOLOR_YELLOW#精炼9~11级：每级属性随机+1%~3%#COLOREND##COLORCOLOR_ORANGE#│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#├───────────────┤\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#│#COLOREND##COLORCOLOR_YELLOW#精炼12以上：每级属性随机+2%~4%#COLOREND##COLORCOLOR_ORANGE#│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#└───────────────┘\n"
    _Desc = _Desc.."#OFFSET<X:51,Y:0>##COLORCOLOR_ORANGE#┌────────┐\n"
    _Desc = _Desc.."#OFFSET<X:51,Y:-5>#│全套精炼属性介绍│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#┌───┴──┬─────┴───┐\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+6#OFFSET<X:12,Y:0>#│额外附加：属性+1%#OFFSET<X:2,Y:0>##OFFSET<X:4,Y:0>#│\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#├──────┼─────────┤\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+9#OFFSET<X:12,Y:0>#│额外附加：属性+2%#OFFSET<X:1,Y:0># #OFFSET<X:-1,Y:0>#│\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#├──────┼─────────┤\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+12#OFFSET<X:6,Y:0>#│额外附加：属性+4%#OFFSET<X:0,Y:0># │\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#├──────┼─────────┤\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+15#OFFSET<X:6,Y:0>#│额外附加：属性+7%#OFFSET<X:1,Y:0># #OFFSET<X:-1,Y:0>#│\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#└──────┴─────────┘#COLOREND#\n"
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

	if name == "攻击力倍数" then
		return "攻击效果"..mid..value.."%"
	end

	if name == "防御力倍数" then
		return "防御效果"..mid..value.."%"
	end

	if name == "幸运诅咒" then
		if value > 0 then
			return "幸运"..mid..value
		elseif value < 0 then
			return "诅咒"..mid..(-value)
		end
	end

	local beg = string.find(name, "百分比$")
	if beg ~= nil then
		return string.sub(name, 1, beg - 1)..mid..value.."%"
	end

	beg = string.find(name, "倍数$")
	if beg ~= nil then
		return string.sub(name, 1, beg - 1)..mid..value.."%"
	end
	return name..mid..value
end

--ModifyQuiteGameMethod 辅助函数
function OnQuiteGame(flag)
	if flag == 1 then --小退
		local script = "UI:Lua_QuiteToSelectRole()"
		MessageBox(MESSAGE_STYLE_OKCANCEL, "是否退出到选择角色界面?", script)
	elseif flag == 2 then --大退
		local script = "UI:Lua_QuiteGame()"
		MessageBox(MESSAGE_STYLE_OKCANCEL, "是否退出游戏?", script)
	end
end
----

--UseTaskAutoAttackFlag 辅助函数
function OnTaskAutoAttack()
	UI:Lua_SubmitForm("自动打怪", "guaji", "1")
end
----

--UseEquipmentGuide 辅助函数--
function HandleEquipmentGuide()
	if LuaGlobal["UseEquipmentGuide"] == true then
		RegisterUIEvent(LUA_EVENT_ONADDITEM, "装备引导2", "OnEuipmentGuide")
	end
end; HandleEquipmentGuide()

function OnEuipmentGuide()
	local guid = as3.tolua(LuaParam[2])
	GenForm("装备引导2#"..guid)
end
----

--UseSkillGuide 辅助函数--
function HandleSkillGuide()
	if LuaGlobal["UseSkillGuide"] == true then
		RegisterUIEvent(LUA_EVENT_ONADDITEM, "技能引导", "OnSkillGuide")
	end
end; HandleSkillGuide()

function OnSkillGuide()
	local guid = as3.tolua(LuaParam[2])
	GenForm("技能引导#"..guid)
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
RegisterUIEvent(LUA_EVENT_ONPLAYERAPPEAR, "设置", OnPlayerSelfCreate)


function SetChatWindowChannelParam()
	--0 		自定义
	--1,		当前
	--2,		组队
	--3,		行会
	--4,		世界
	--5,		小喇叭
	--7,               私聊
	--UI:Lua_InitChannelTextColor(1, 0, 0, 0, 255);
	--UI:Lua_InitChannelFillBackColor(1, 255, 255, 255, 255);
end


-- UserOnPlayerAddBuff = function ()
--         UI:Lua_InitChannelTextColor(0, 255, 255, 255, 255);
--         UI:Lua_InitChannelFillBackColor(0, 0, 0, 0, 0);
--         local BuffID = LuaParam[1]
--         local BuffLife = LuaParam[2]
--         if BuffID > 1018 and BuffID < 1023 then
--             local message = "太极玄清术生效：道术提高"..BuffLife.."秒"
--             UI:Lua_ShowTypeMsg(4, message)
--         end 

--         if BuffID == 36 or BuffID == 37 or BuffID == 38 or BuffID == 103 then
--             local message = "物理防御增加"..BuffLife.."秒"
--             UI:Lua_ShowTypeMsg(4, message)
--         end 

--         if BuffID == 33 or BuffID == 34 or BuffID == 35 or BuffID == 102 then
--             local message = "魔法防御增加"..BuffLife.."秒"
--             UI:Lua_ShowTypeMsg(4, message)
--         end
-- end