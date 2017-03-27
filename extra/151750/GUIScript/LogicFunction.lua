--Lua相关设置
function LoadLuaClientCfg()
	UI:Lua_Log("LoadLuaClientCfg")
	LuaGlobal["TeamMemberWindowCols"]  = 2	    --组队队员面板列数
	LuaGlobal["TeamMemberWindowRows"]  = 5	    --组队队员面板行数
	LuaGlobal["UseClientCommand"]      = true   --开启客户端命令功能
	LuaGlobal["TipMarginX"]            = 1		--两个Tip之间水平间距
	LuaGlobal["TipCmpSameHeight"]      = true	--多个Tip高度使用最高的那个的高度
	LuaGlobal["ShowAchieveMsg"]        = true	--在聊天框显示完成成就提示
	LuaGlobal["VIPFilterLevelLower"]   = false  --是否显示VIP过滤等级以下的VIP功能
	LuaGlobal["ModifyQuiteGameMethod"] = false  --是否更改客户端的退出方式，如果更改，退出回调 OnQuiteGame(flag) flag=1代表小退 flag=2代表大退
	LuaGlobal["UseTaskAutoAttackFlag"] = false  --是否使用任务自动寻路完成后的自动打怪标记(task中的ATK标记)，默认不使用。如果设置为true，须实现自动打怪回调脚本函数OnTaskAutoAttack()
	LuaGlobal["ShowBrokenEquipTip"]    = false  --装备损坏时，控制是否显示tips，默认不显示，如果设置为true，TipLayout中要有tipLayoutFunctionBrokenEquip函数
	LuaGlobal["UseEquipmentGuide"]     = false  --是否使用装备引导面板，默认不使用
	LuaGlobal["UseSkillGuide"]         = false  --是否使用技能引导面板，默认不使用
	LuaGlobal["PlayerNameType"]        = 0      -- 1 是行会 别名 人名
	LuaGlobal["AttackType"]            = 1      -- 1 平滑攻击模式，先减少等待
	LuaGlobal["ClickAttacLock"]        = true   -- 点击其他玩家是否攻击锁定
	LuaGlobal["ClickPlayerMove"]       = false  -- 左键点击玩家是否移动
	LuaGlobal["AutoSkillLock"]         = true   -- 物理攻击玩家时是否自动技能锁定
	LuaGlobal["PickUpAllItem"]         = false  -- 物品内挂是否全部拾取
	LuaGlobal["ShowAllItemName"]       = false  -- 物品内挂是否全部现实物品名
    LuaGlobal["ShowOtherTalkString"]   = true   -- 是否显示他人头顶冒泡
    LuaGlobal["PrestigeDataType"]      = true   -- 声望字段
    LuaGlobal["MonsterSelectUseRect"]  = true   -- 怪物选择方式，true为默认，false为选取像素
    LuaGlobal["CommonChatBreakTime"]   = 1  	--普通聊天间隔秒数
    LuaGlobal["WorldChatBreakTime"]    = 10  	--世界频道聊天间隔秒数
    LuaGlobal["TitleFontType"]    		= "SIMLI18" --称号字体类型
    LuaGlobal["ShowMonsterHeaderInfo"] 	= true  --是否显示选择怪物时候的怪物头像信息
    LuaGlobal["ShowDigBodyMagic"] 		= true  --是否显示怪物挖肉特效
    LuaGlobal["DelegateSellDesc"] 		= "寄售挂单需要5000金币手续费"
    LuaGlobal["ShowPingIP"] 			= true
    LuaGlobal["ShowAccompanyName"] 		= true  -- 是否显示随从名字
    LuaGlobal["ChatChannelXOffset"] 	= 0     --右边聊天频道的偏移，如果是37就是移到英雄怒气条的位子
    LuaGlobal["SelectUseWeap"] 			= true  --选择角色时，武器是否作为选取区域
    LuaGlobal["QuickAddPointCount"] 	= 10    --快速修改人物属性的点数
    LuaGlobal["UseNewWorldMap"] 		= false	--是否用新版的世界地图

    LuaGlobal["CareStallTitleImageID"] 	= 1902000045 --摆摊头顶关注时图片ID
    LuaGlobal["NormalStallTitleImageID"] = 0 --摆摊头顶图片ID
    LuaGlobal["CareStallTitleFontColor"] = "DARKGOLD" --摆摊头顶关注时字体颜色
    LuaGlobal["NormalStallTitleFontColor"] = "YELLOW" --摆摊头顶字体颜色

    LuaGlobal["UseItemNoDelay"] = false

    LuaGlobal["RoleNameX"] = 152 --
    LuaGlobal["RoleNameY"] = 20 --
    LuaGlobal["DrawSelectHalo"] = true --是否显示怪物选中时候的脚底光环
    LuaGlobal["StallImage"] = 1902000060 --摆摊显示的图片

    LuaGlobal["GameMallVIPTip"] = "在商城中使用元宝购买商城物品可以获得积分（每花费1元宝，获得1积分）"
    LuaGlobal["DrawWingOnHorse"] = true --骑坐骑时是否描画翅膀
    LuaGlobal["ReconnetType"] = 0 --断线时是否重连，默认0 重连，1 则退出
    LuaGlobal["HpInfoUseDynamicPos"] = true --人物血条是否固定高度
    LuaGlobal["ManBodyID"] = 25000 --男人物裸模的ID
    LuaGlobal["WomenBodyID"] = 25500 --女人物裸模的ID
    LuaGlobal["ManShadowID"] = 08011 --男人物裸模的影子ID
    LuaGlobal["WomenShadowID"] = 08061 --女人物裸模的影子ID
	LuaGlobal["UseMagicWeaponAvatar"] = true --是否显示法宝
    LuaGlobal["NpcFontName"] = "SIMLI18"	--npc名字的字体
    LuaGlobal["NpcNameColor"] = 4294894158	--npc名字的颜色
    LuaGlobal["NpcNameVOffset"] = 0	--npc名字的垂直方向偏移
    LuaGlobal["TipsBackImgID_Normal"] = "1900190004,1900190006,1900190005,1900190007,1900190008,1900190000,1900190001,1900190002,1900190003"--物品装备Tips的背景图片,空为默认
    LuaGlobal["TipsBackImgID_Focus"] = "1900180004,1900180006,1900180005,1900180007,1900180008,1900180000,1900180001,1900180002,1900180003"--当前物品Tips背景图片
    LuaGlobal["RefineImage"] = "1096000100,1096000200,1096000300"	--1~5 5~10 10~ 三种强化等级特效ID
	LuaGlobal["TipsDrawGrow"] = 1	--物品tips文本是否描边
	LuaGlobal["AVATAR_EFFECTBLEND1"] = 0	--绘制人物身体特效参数,0是加亮,即默认.1是正常
	LuaGlobal["AVATAR_EFFECTMASK1"] = MakeARGB(255,255,255,255)		--绘制人物身体特效参数,默认为MakeARGB(255,255,255,255)
	LuaGlobal["AVATAR_EFFECTBLEND2"] = 0	--武器
	LuaGlobal["AVATAR_EFFECTMASK2"] = MakeARGB(255,255,255,255)		--武器
	LuaGlobal["AVATAR_EFFECTBLEND3"] = 0	--坐骑
	LuaGlobal["AVATAR_EFFECTMASK3"] = MakeARGB(255,255,255,255)		--坐骑
	LuaGlobal["AVATAR_EFFECTMASKFORCE"] = 0	--//在中毒等会改变模型颜色的情况下是否强制使用设定的遮罩,0:非强制;1:强制
	LuaGlobal["TaskWindow_AutoQueryTask"] = 1	--在没有接主线任务时自动推荐一个主线任务
	LuaGlobal["TaskWindow_AutoQueryTaskElapse"] = 15	--自动推荐查询事件间隔
	LuaGlobal["AutoMoveItemsStr"] = "逍遥游1天,逍遥游50次,逍遥游20次,逍遥游10次,逍遥游,逍遥游1小时,逍遥游500次,逍遥游7天,逍遥游100次"	--点击传送时额外判断背包中是否存在这些道具
	LuaGlobal["ChatWindowUseGrow"] = 1
	LuaGlobal["PlayerTextPosType"] = 1
	LuaGlobal["RichEdit_RI_ShowUnderline"] = 1
	LuaGlobal["CreateRole_EnterGameWithCreatedRole"] = true
    LuaGlobal["ServantIsMonster"] = false --道士宝宝或者法师宝宝是否视作monster   
    LuaGlobal["MakeSureSafeDistance"] = false --自动打怪时 道士和法师是否检测安全距离
    LuaGlobal["AutoFightIsAttacPlayer"] = false --自动打怪时是否 攻击其他玩家 
end

LoadLuaClientCfg()


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
	local guid = LuaParam[2]
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
	local guid = LuaParam[2]
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


function OnAutoFight()
	--UI:Lua_SubmitForm("NPC_IsNotInScene", "AutoFight", "")
end
RegisterUIEvent(LUA_EVENT_AUTOMOVEEND, "自动寻路结束后自动打怪", OnAutoFight)

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
	
	--战士技能
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
	
	--道士技能
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
	
	--法师技能
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
