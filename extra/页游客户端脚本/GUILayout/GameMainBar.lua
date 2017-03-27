GameMainBar = {}

GameMainBar.localString = {}
local l = GameMainBar.localString
l.newMail = "您有新的邮件"
l.setting = "系统设置<font color='#00BBFF'>(Q)</font>"
--l.mail = "邮件<font color='#00BBFF'>(P)</font>"
l.mail = "挂机<font color='#00BBFF'>(Z)</font>"

l.mount = "骑乘/行走<font color='#00BBFF'>(SHIFT + M)</font>"
l.family= "行会<font color='#00BBFF'>(G)</font>"
l.trade = "交易<font color='#00BBFF'>(U)</font>"
l.team = "组队<font color='#00BBFF'>(N)</font>"
l.friend = "好友<font color='#00BBFF'>(F)</font>"
l.achievement = "成就<font color='#00BBFF'>(I)</font>"
l.wing = "翅膀<font color='#00BBFF'>(O)</font>"
l.shenlu = "熔炉<font color='#00BBFF'>(L)</font>"
l.enhance = "精炼<font color='#00BBFF'>(X)</font>"
l.shop = "商城<font color='#00BBFF'>(T)</font>"
l.package = "包裹<font color='#00BBFF'>(B)</font>"
l.skill = "技能<font color='#00BBFF'>(V)</font>"
l.quest = "任务<font color='#00BBFF'>(A)</font>"
l.role = "角色<font color='#00BBFF'>(C)</font>"
l.crystal = "宝石<font color='#00BBFF'>(Y)</font>"
l.vip = "<font color='#00BBFF'>成为Vip，随时随地回收</font>"

GameMainBar.packageFriendWnd_ = {}
GameMainBar.btnBar_ = {
	{"Achievement",	1800500254,	"CLOnAchieveWindow",	l.achievement,1801500177}, 
--	{"Mail",		1800500290, "GameMainBar.OnMailBtn",	l.mail,1801500188}, 
	{"Auto",		1800500238, "GameMainBar.OnAuto",	l.mail,1801500181}, 
	--{"Mount",		1800500274, "CLOnRide",			l.mount,1801500184}, 
	{"Family",		1800500286, [[UI:Lua_SubmitForm("等级判断表单", "OnFamilyWindow", "")]],	l.family,1801500187}, 
	{"Trade",		1800500278, "GameMainBar.OnTradeBtn",l.trade,1801500185}, 
	{"Team",		1800500282, "CLOnTeamBtn",		l.team,1801500186}, 
	{"Friend",		1800500270, "CLOnFriendWindow",	l.friend,1801500183}, 
	--{"Friend",		1800500270, "UI:Lua_OpenWindow(0,\"FriendWindow.lua\")",	l.friend,1801500183}, 
	{"Wing",		1800500246, [[UI:Lua_SubmitForm("等级判断表单", "OnOpenWing", "")]],l.wing,1801500179}, 
	{"Shenlu",		1800500258,	[[UI:Lua_SubmitForm("等级判断表单", "OnOpenFurnace", "")]], l.shenlu,1801500191}, 
	{"Enhance",		1800500242, [[UI:Lua_SubmitForm("等级判断表单", "OnOpenForge", "")]],		l.enhance,1801500192},
	{"Crystal",		1800500298, [[UI:Lua_SubmitForm("等级判断表单", "OnOpenCrystal", "")]], l.crystal, 1801500190}
}


function GameMainBar.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	
	_GUIHandle = GUIImageCreate(_Parent, "PlayerHP", 3000100000, 28, 50)
	if _GUIHandle ~= 0 then 
		--GUIImageSetAnimateEnable(_GUIHandle, true, 150)
		GUIImageSetDrawCenter(_GUIHandle, true)
	end
	_GUIHandle = GUIImageCreate(_Parent, "PlayerMP", 3000100100, 80, 50)
	if _GUIHandle ~= 0 then
		--GUIImageSetAnimateEnable(_GUIHandle, true, 150)
		GUIImageSetDrawCenter(_GUIHandle, true)
	end
	
	_GUIHandle = GUIImageCreate(_Parent, "HPEffect", 3000100200, 3, 50)
	_GUIHandle = GUIImageCreate(_Parent, "MPEffect", 3000100300, 53, 50)
	_GUIHandle = GUIImageCreate(_Parent, "HPEffectMask", 1800500237, 0, 0)
	_GUIHandle = GUIImageCreate(_Parent, "MPEffectMask", 1800500237, 0, 0)
	
	_GUIHandle = GUIImageCreate(_Parent, "GameMainBarUI", 1800500184, 0, 0)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_GUIHandle,false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent, "newMail", 1800500162, 440, -70)	--new邮件
	if _GUIHandle ~= 0 then
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetHint(_GUIHandle, l.newMail)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "GameMainBar.onNewMailBtn")
	end
	
	
	
	for i, v in pairs(GameMainBar.btnBar_) do
		_GUIHandle = GUIButtonCreate(_Parent, v[1], v[2], 570-(i-1)*49, -27)	
		if _GUIHandle ~= 0 then
			GUIWndSetHint(_GUIHandle, v[4])
			GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, v[3])
			--[[if i >= 7 then
				GUIWndSetVisible(_GUIHandle, false)
			end--]]
		end	
		_GUIHandle = GUIImageCreate(_Parent, v[1].."image", v[5], 571-(i-1)*49, 8)
		if _GUIHandle ~= 0 then
			GUIWndSetEnableM(_GUIHandle, false)
			--[[if i >= 7 then
				GUIWndSetVisible(_GUIHandle, false)
			end--]]
		end	
		if i == 3 then  
			
			_GUIHandle = GUIImageCreate(_Parent, "family_applyer1", 0, 500, -35) --数字图片提示个位（申请入行会）
			if _GUIHandle ~= 0 then
				GUIWndSetEnableM(_GUIHandle, false)
				GUIWndSetVisible(_GUIHandle, true)
			end
			--[[
			_GUIHandle = GUIImageCreate(_Parent, "family_applyer2", 1801500170, 485, -35) --数字图片提示十位（申请入行会）
			if _GUIHandle ~= 0 then
				GUIWndSetEnableM(_GUIHandle, false)
				GUIWndSetVisible(_GUIHandle, true)
			end
			
			_GUIHandle = GUIEditCreate(_Parent, "family_applyer", 500, -35, 24, 24)   --数字提示（申请入行会）
			if _GUIHandle ~= 0 then
				GUIEditSetFontM(_GUIHandle, "SIMLI18")
				GUIWndSetTextColorM(_GUIHandle, CLMakeARGB(255, 255, 0, 0))
				GUIWndSetEnableM(_GUIHandle, false)
				GUIEditSetFontCenter(_GUIHandle)
			end
			--]]
		end
	end
	--_GUIHandle = GUIImageCreate(_Parent, "AchieveNum1", 0, 575, -35) -- 成就数字显示
	_GUIHandle = GUIImageCreate(_Parent, "AchieveNum2", 0, 590, -35)
	_GUIHandle = GUIImageCreate(_Parent, "SlNum2", 0, 253, -35)-- 神炉数字显示
	
	
	_GUIHandle = GUIButtonCreate(_Parent, "Shop", 1800500190, 628, 41)	--商城
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.shop)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CLOnGameMallWindow")
	end
	_GUIHandle = GUIButtonCreate(_Parent, "Package", 1800500198, 665,  9)	--背包
	if _GUIHandle ~= 0 then
		--GUIWndSetHint(_GUIHandle, l.package)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CLOnOpenPakage")	
		GUIWndRegistScript(_GUIHandle,1011, "GameMainBar.PackageResEmp")
	end
	
	_GUIHandle = GUIImageCreate(_Parent, "EmptyPackage2", 1800500375, 681, -2)-- 空包裹数字显示
	if _GUIHandle ~= 0 then
		GUIWndSetVisible(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent, "Skill", 1800500202, 692,  37)	--技能
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.skill)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CLOnSkillWindow")
	end	
	_GUIHandle = GUIButtonCreate(_Parent, "Quest", 1800500206, 691, 77)		--任务
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.quest)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CLOnQuestWindow")
	end
	_GUIHandle = GUIButtonCreate(_Parent, "Role", 1800500194, 625, 7)		--角色
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.role)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CLOnRoleWindow")
	end
	
	_GUIHandle = GUIButtonCreate(_Parent, "tip_hook", 1804600015, 465,-112)		--自动挂机提示
	if _GUIHandle ~= 0 then
		GUIWndSetTextM(_GUIHandle,"点击自动挂机") 
		GUIButtonSetTextFont(_GUIHandle,"SIMLI18")
		GUIWndSetTextArrangeType(_GUIHandle,0,-14,0,0)
		GUIWndSetSizeM(_GUIHandle,161, 76)
		GUIButtonSetStateTextColor(_GUIHandle,0,MakeARGB(255, 219, 195, 74))
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
		GUIWndSetCanRevMsg(_GUIHandle,false)    
		GUIWndSetEnableM(_GUIHandle,false)            
		GUIWndSetVisible(_GUIHandle,false)   
	end
	
	
	--_GUIHandle = GUIImageCreate(_Parent, "HPMPBorder", 1800500188, 46, 4)
	_GUIHandle = GUIImageCreate(_Parent, "BarBorder", 1800500183, -65, -20)
	_GUIHandle = GUIImageCreate(_Parent, "PlayerEXP", 1800500187, 104, 97)	--经验条（程序控制）
	--[[_GUIHandle = GUIImageCreate(_Parent, "expStaticHintImg", 0, 104, 93)		--弹出经验条提示
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle, 516, 16)
	end--]]
	for i = 1, 9 do
		_GUIHandle = GUIImageCreate(_Parent, "PlayerEXPCover"..i, 1800500189, 150+(52*(i-1)), 96)
		if _GUIHandle ~= 0 then GUIWndSetEnableM(_GUIHandle, false) end
	end
	
	--_GUIHandle = GUIImageCreate(_Parent, "vipEffect", 3020230000, -42, 95)
	_GUIHandle = GUIButtonCreate(_Parent, "vipEffect", 1800500400, -42, 85)
	if _GUIHandle ~= 0 then 
		--GUIImageSetAnimateEnable(_GUIHandle, true, 150)
		--GUIImageSetDrawCenter(_GUIHandle, true)		
		--GUIWndSetCanRevMsg(_GUIHandle,true)
		--GUIWndSetEnableM(_GUIHandle,true)   
		GUIWndSetHint(_GUIHandle, l.vip) 
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnVipClicked") 
	end
	
	_GUIHandle = GUIImageCreate(_Parent, "vipLevel", 0, -20, 96)
	if _GUIHandle ~= 0 then 
		--GUIImageSetAnimateEnable(_GUIHandle, true, 150)
		GUIImageSetDrawCenter(_GUIHandle, true)
	end
	_GUIHandle = GUIImageCreate(_Parent, "AutoimageMagic",3020301600, 545, 18)
	if _GUIHandle ~= 0 then 
		GUIImageSetAnimateEnable(_GUIHandle, true, 150)
		GUIImageSetDrawCenter(_GUIHandle, true)
		GUIWndSetVisible(_GUIHandle,false) 
	end
	--[[
	_GUIHandle = GUIEditCreate(_Parent, "PlayerLevelEdit", 25, 126, 24, 24)
	if _GUIHandle ~= 0 then
		GUIEditSetFontM(_GUIHandle, "TitleFont1")
		GUIWndSetTextColorM(_GUIHandle, CLMakeARGB(255, 194, 182, 160))
		GUIWndSetEnableM(_GUIHandle, false)
		GUIEditSetFontCenter(_GUIHandle)
	end
	]]
	
	
	GameMainBar.UIInit(_Parent)
end


--UI Logic Code Start
GameMainBar._wnd = 0
GameMainBar.time_id = 0
function GameMainBar.UIInit(_Parent)
	GameMainBar._wnd = _Parent
	UI:Lua_LoadLuaFile("MsgBox")	--加载提示框
	UI:Lua_LoadLuaFile("PackageWndInteraction")	--窗口与背包互动脚本
	
	--UI:Lua_OpenWindow(0,"SystemTeach.lua")
	
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "GameMainBar_分辨率改变", GameMainBar.UpdataScreenSize)
	RegisterUIEvent(LUA_EVENT_P2PINVITE, "GameMainBar_交易邀请", GameMainBar.tradeInvite)
	RegisterUIEvent(LUA_EVENT_ONNEWMAIL, "GameMainBar_新邮件", GameMainBar.newMail)
	RegisterUIEvent(LUA_EVENT_OBJDISPEAR, "NPC从场景消失", GameMainBar.FarAwayFromNPC)
	
	
	
	local _GUIHandle = GUIWndCreateWnd(0, "EquipInfo", 0, 5854, 550)	 --装备提示（程序控制）
	if _GUIHandle ~= 0 then GameMainBar._equipInfo = _GUIHandle end
	GUI:WndSetVisible(_GUIHandle, false)
	_GUIHandle = GUIWndCreateWnd(0, "MessageInfo", 0, 854, 670)  --消息提示（程序控制）
	if _GUIHandle ~= 0 then GameMainBar._messageInfo = _GUIHandle end
	
	CLHotKeyRegister("Y", "打开宝石窗口", "UI:Lua_OpenWindow(0,\"CrystalSystem.lua\")");  --注册宝石热键Y
	--CLHotKeyRegister("X", "打开锻造窗口", "CLOnOpenForge()"); --注册锻造热键X
	--CLHotKeyRegister("L", "打开神炉窗口", "UI:Lua_OpenWindow(0,\"ShenLuWnd.lua\")"); --注册神炉热键L
	--CLHotKeyRegister("O", "打开翅膀窗口", [[UI:Lua_SubmitForm("等级判断表单", "OnOpenWing", "")]]); --注册翅膀热键O
	
	CLHotKeyRegister("P", "打开邮件窗口", "GameMainBar.OnMailBtn()"); --注册邮件热键P
	CLHotKeyRegister("Z", "自动挂机", [[UI:Lua_SubmitForm("NPC_IsNotInScene", "AutoFight", "")]]); --挂机
	
	--CLAddDelayTask("GameMainBar.JudgeLv();", 680, 1)
	CLAddDelayTask("GameMainBar.SetHotKey();", 2000, 1)
	GameMainBar.UpdataScreenSize()
	CLSetSystemColor(7,"RED")
end

function GameMainBar.OnVipClicked()
	UI:Lua_SubmitForm("Vip表单", "IsVip", "")
	--UI:Lua_OpenWindow(0, "VIPWnd.lua")
end

--根据等级设置部分功能的热键
function GameMainBar.SetHotKey()
	local level = 0
	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		level = tonumber(as3.tolua(LuaRet))
	end
	if level >= 60 then
		CLHotKeyRegister("X", "打开锻造窗口", "CLOnOpenForge()"); --注册锻造热键X
	end
	if level >= 61 then
		CLHotKeyRegister("O", "打开翅膀窗口", [[UI:Lua_SubmitForm("等级判断表单", "OnOpenWing", "")]]); --注册翅膀热键O
	end
	if level >= 62 then
		CLHotKeyRegister("L", "打开神炉窗口", "CLOnOpenFurnace()"); --注册神炉热键L
	end
	if CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
		local self_reinLevel = CLGetPlayerCustomIntData(as3.tolua(LuaRet),"reinLevel")  
		if self_reinLevel >= 5 then
			CLHotKeyRegister("Y", "打开宝石窗口", "UI:Lua_OpenWindow(0,\"CrystalSystem.lua\")");  --注册宝石热键Y
		end
	end
	

end
--vip等级显示 已注释
--[[function GameMainBar.ShowVip(level)
	local vipLevel = tonumber(level)
	--msg(""..vipLevel)
	local image1 = {1801500002,1801500003,1801500004,1801500005,1801500006,1801500007,1801500008,1801500009,1801500010,1801500011}
	--local image1 = {1800500238,1800500254,1800500286,1800500278,1800500282,1800500270,1800500246,1800500258,1800500242,1800500298}
	if vipLevel > 0 then
		ImageSetImageID(GameMainBar._wnd,"vipLevel",image1[vipLevel])
	end
	
	if vipLevel == 10 then
		local handle = GetWindow(GameMainBar._wnd, "vipLevel")
		if handle ~= 0 then
			GUI:WndSetPosM(handle, -15, 95)
		end
	end
end--]]

--等级判断，隐藏部分功能
function GameMainBar.JudgeLv(level,reinlevel)
	local handle = 0
	local level = tonumber(level)
--[[	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		level = tonumber(as3.tolua(LuaRet))
	end
	if level == 0 then
		return
	end	--]]
	if level >= 61 then
		handle = GetWindow(GameMainBar._wnd, "Wing")      --隐藏翅膀，61级开启
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		handle = GetWindow(GameMainBar._wnd, "Wingimage")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
	end
	
	if level >= 62 then
		local handle = GetWindow(GameMainBar._wnd, "Shenlu")  --隐藏神炉，62级开启
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		handle = GetWindow(GameMainBar._wnd, "Shenluimage")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
	end
	
	if level >= 60 then
		local handle = GetWindow(GameMainBar._wnd, "Enhance")  --隐藏锻造，60级开启
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		handle = GetWindow(GameMainBar._wnd, "Enhanceimage")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		handle = GetWindow("", "Boss_tip")  --关闭boss提示
		if handle ~= 0 then
			GUIWndClose(handle)
		end
	end

	--if CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
		--local self_reinLevel = CLGetPlayerCustomIntData(as3.tolua(LuaRet),"reinLevel")  
		--if tonumber(reinlevel) >= 4 then --隐藏宝石，转5开启
		if tonumber(level) >= 75 then --隐藏宝石，转5开启
			handle = GetWindow(GameMainBar._wnd, "Crystal")
			if handle ~= 0 then
				GUIWndSetVisible(handle, true)
			end
			handle = GetWindow(GameMainBar._wnd, "Crystalimage")
			if handle ~= 0 then
				GUIWndSetVisible(handle, true)
			end
		end
	--end
end

--显示翅膀，关闭提示
function GameMainBar.OpenWingFun()
	local handle = GetWindow(GameMainBar._wnd, "Wing")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
	handle = GetWindow(GameMainBar._wnd, "Wingimage")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
	handle = GetWindow(nil, "Wing_tip")
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

--显示神炉
function GameMainBar.OpenSLFun()
	local handle = GetWindow(GameMainBar._wnd, "Shenlu")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
	handle = GetWindow(GameMainBar._wnd, "Shenluimage")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
end

--显示宝石
function GameMainBar.OpenCrtstalFun()
	local handle = GetWindow(GameMainBar._wnd, "Crystal")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
	handle = GetWindow(GameMainBar._wnd, "Crystalimage")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
end

--显示锻造
function GameMainBar.OpenEnhanceFun()
	local handle = GetWindow(GameMainBar._wnd, "Enhance")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
	handle = GetWindow(GameMainBar._wnd, "Enhanceimage")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
end

--NPC从场景消失
function GameMainBar.FarAwayFromNPC()
--[[	local npcGuid = as3.tolua(LuaParam[1])
	UI:Lua_SubmitForm("NPC_IsNotInScene","MatchNpc",npcGuid)--]]
	if as3.tolua(LuaParam[1]) == 3 then
		local NpcKeyname = tostring(as3.tolua(LuaParam[2]))
		local KeynameArr = {
			["巫山城传送员"] = "transmit", ["巫山城暗殿引路人"] = "TempleGuider", ["巫山BOSS传送员"] = "BOSS_Hall_Guider",
			["巫山城副本使节"] = "Daily_FB_Dlg", ["巫山城除魔使节"] = "TitleWnd", ["巫山城物品回收员"] = "Recycle",
			["巫山城仓库"] = "WareHouse",["神威狱传送员"] = "EndlessUI",
			["玛雅神殿使者"] = "mayaTemple",
			["转生神殿使者"] = "ReinTemple",
			["土城夺宝奇兵"] = "xldb_NPCShow",
			["土城魔族入侵"] = "DemonWnd",
			["土城夜战比奇城"] = "NightWnd",
			["土城谁与争锋"] = "ArenaNPC",
			["龙魂之刃"] = "LongHunZL_outside",
			["土城传送员"] = "transmit",
			["巫山城矿主"] = "OreWnd",
			["膜拜城主"] = "CastlellanWorshipWnd",
			["膜拜城主金"] = "CastlellanWorshipWnd",
		}
		local handle = 0
		if KeynameArr[NpcKeyname] == nil then
			return
		else
			if NpcKeyname == "巫山城物品回收员" then
				if Recycle ~= nil then
					Recycle.Close() 
				end	
			else
				handle = GetWindow(nil, KeynameArr[NpcKeyname])
				if handle ~= 0 then
					GUIWndClose(handle)
				end
				if NpcKeyname == "巫山城副本使节" then
					handle = GetWindow(nil, "Dailyone")
					if handle ~= 0 then
						GUIWndClose(handle)
					end
				elseif NpcKeyname == "巫山城除魔使节" then
					handle = GetWindow(nil, "Achieve") 
					if handle ~= 0 then
						GUIWndClose(handle)
					end
				end
			end
		end
	end
end

--交易邀请
function GameMainBar.tradeInvite()
	local pGuid = as3.tolua(LuaParam[1])
	local pName = as3.tolua(LuaParam[2])
	luaMsgBox.new("交易邀请", pName, {"接受", "拒绝"}, {"GameMainBar.confirmTradeInvite", "GameMainBar.cancelTradeInvite"}, pGuid)
	GameMainBar.pName = pName
end
function GameMainBar.confirmTradeInvite(h)
	CLAcceptP2pInvite(luaMsgBox.param["交易邀请"], 1)
	luaWndClose(h)
end
function GameMainBar.cancelTradeInvite(h)
	CLAcceptP2pInvite(luaMsgBox.param["交易邀请"], 0)
	luaWndClose(h)
end

function GameMainBar.UpdataScreenSize()
	local newX = CLGetScreenWidth()
	
	local newY = CLGetScreenHeight()

	local _GUIHandle = 0
	
	if ChatWindowEX ~= nil then
		_GUIHandle = ChatWindowEX.WndHandle
	elseif ChatWindow ~= nil then
		_GUIHandle = ChatWindow.WndHandle
	end
	if _GUIHandle ~= 0 then
		if newX < 1151 then
			GUIWndSetPosM(_GUIHandle, 16, newY - 333)
		else
			GUIWndSetPosM(_GUIHandle, 16, newY - 203)
		end
	end
	if ChatWindowEX ~= nil then
		_GUIHandle = ChatWindowEX._hideWnd
	elseif ChatWindow ~= nil then
		_GUIHandle = ChatWindow._hideWnd
	end
	if _GUIHandle ~= 0 then
		if newX < 1151 then
			GUIWndSetPosM(_GUIHandle, 0, newY - 232)
		else
			GUIWndSetPosM(_GUIHandle, 0, newY - 102)
		end
	end
	
	_GUIHandle = GameMainBar._wnd
	if _GUIHandle ~= 0 then
		local GameMainBarPosX = 0
		local GameMainBarPosY = 0
		if newX > 1151 and newX < 1490 then
			GameMainBarPosX = 410
			GameMainBarPosY = newY - 110
		else
			GameMainBarPosX = newX/2 - 335
			GameMainBarPosY = newY - 110
		end	
		LuaGlobal["GameMainBarPosX"] = GameMainBarPosX
		LuaGlobal["GameMainBarPosY"] = GameMainBarPosY
		CLSetLuaGlobal("GameMainBarPosX",GameMainBarPosX)
		CLSetLuaGlobal("GameMainBarPosY",GameMainBarPosY)
		GUIWndSetPosM(_GUIHandle, GameMainBarPosX, GameMainBarPosY)
	end
	
	
	_GUIHandle = TaskWindow._wnd
	if _GUIHandle ~= 0 then
		if GUIWndGetVisible(_GUIHandle) then
			GUIWndSetPosM(_GUIHandle, newX-208, 250)
		else
			GUIWndSetPosM(_GUIHandle, newX, 250)
		end
	end
	
	if TaskWindow._hideWnd ~= 0 then
		GUIWndSetPosM(TaskWindow._hideWnd, newX-31, 251)
	end
	
	--[[	_GUIHandle = SystemTeach._wnd
	if _GUIHandle ~= 0 then
		if GUIWndGetVisible(_GUIHandle) then
			GUIWndSetPosM(_GUIHandle, newX-208, 550)
		else
			GUIWndSetPosM(_GUIHandle, newX, 550)
		end
	end
	
	if SystemTeach._hideWnd ~= 0 then
		GUIWndSetPosM(SystemTeach._hideWnd, newX-31, 551)
	end--]]
	
	local handle = GetWindow(nil,"LittleMap")
	if handle ~= 0 then
	
		GUIWndSetPosM(handle, newX-152, 0)
	end
	
	local handle = GetWindow(nil,"ae_show")
	if handle ~= 0 then
		local ae_showPosX = 0
		if newX > 1151 and newX < 1490 then
			ae_showPosX = 640
		else
			ae_showPosX = newX/2 - 60
		end	
		GUIWndSetPosM(handle, ae_showPosX, newY - 245)
	end
	
	if OtherRoleHeadInfo._wnd ~= 0 then
		
		local GameMainBarPosX = 0
		if newX > 1151 and newX < 1490 then
			GameMainBarPosX = 410
		else
			GameMainBarPosX = newX/2 - 335
		end	
		GUIWndSetPosM(OtherRoleHeadInfo._wnd, GameMainBarPosX, 15)
	end
	
	_GUIHandle = GameMainBar._wnd
	if _GUIHandle ~= 0 then
		if newX > 1151 and newX < 1271 then
			GUIWndGetPosM(GameMainBar._equipInfo)
			GUIWndSetPosM(GameMainBar._equipInfo, newX-170, newY-318)
			
			GUIWndGetPosM(GameMainBar._messageInfo)
			GUIWndSetPosM(GameMainBar._messageInfo, newX-170, newY-198)	
		else
			GUIWndGetPosM(GameMainBar._equipInfo)
			GUIWndSetPosM(GameMainBar._equipInfo, newX-170, newY-218)
			
			GUIWndGetPosM(GameMainBar._messageInfo)
			GUIWndSetPosM(GameMainBar._messageInfo, newX-170, newY-98)
		end
	end
end
--成就完成数量统计
function GameMainBar.AchNum(num)
	local image1 = {1804600026,1804600027,1804600028,1804600029,1804600030,1804600031,1804600032,1804600033,1804600034,1804600026}
	local sum = tonumber(num)
	if sum == 0 then	
		if GameMainBar.MedalNum == 1 then 
			ImageSetImageID(GameMainBar._wnd,"AchieveNum2",image1[1])  
		else
			--ImageSetImageID(GameMainBar._wnd,"AchieveNum1",0)  
			ImageSetImageID(GameMainBar._wnd,"AchieveNum2",0)  
		end
	else	
		if sum < 10 then
			ImageSetImageID(GameMainBar._wnd,"AchieveNum2",image1[sum])  
			--ImageSetImageID(GameMainBar._wnd,"AchieveNum1",0)  	
		else
			sum = 9
			ImageSetImageID(GameMainBar._wnd,"AchieveNum2",image1[sum])  
			--ImageSetImageID(GameMainBar._wnd,"AchieveNum2",image1[b])  
		end	
	end	
end

--神炉可升级数量统计
function GameMainBar.SlNum(num)
	local level = 0
	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		level = tonumber(as3.tolua(LuaRet))
	end
	--[[
	if level < 62 then
		return
	end
	--]]
	local image1 = {1804600026,1804600027,1804600028,1804600029,1804600030,1804600031,1804600032,1804600033,1804600034,1804600026}
	local sum = tonumber(num)
	if sum == 0 then	
		ImageSetImageID(GameMainBar._wnd,"SlNum2",0)  
	else	
		ImageSetImageID(GameMainBar._wnd,"SlNum2",image1[sum])  	
	end	
end

--空背包数量统计
function GameMainBar.PackageIsFull()

	--msg("empty number is "..tostring(num))
	--[[local image1 = {1804600026,1804600027,1804600028,1804600029,1804600030,1804600031,0}
	local sum = tonumber(num)
	if sum < 0 then	
		ImageSetImageID(GameMainBar._wnd,"EmptyPackage2",0)  
	else
		if sum == 0 then 
			sum = 7
		end
		ImageSetImageID(GameMainBar._wnd,"EmptyPackage2",image1[sum])  	
	end	--]]
	local handle = GetWindow(GameMainBar._wnd, "EmptyPackage2")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
		GUIWndMoveToParentTop(handle)
	end
end


function GameMainBar.newMail()
	local btn = GUIWndFindChildM(GameMainBar._wnd, "Mail")
	if btn ~= 0 then
		GUIButtonSetShine(btn, true)
	end
	btn = GUIWndFindChildM(GameMainBar._wnd, "newMail")
	if btn ~= 0 then
		GUIWndSetVisible(btn, true)
	end
end
function GameMainBar.OnTradeBtn(h)
	CLOnTradeBtn("")
end
function GameMainBar.OnMailBtn(h)
	CLOnMailWindow()
	
	local btn = GUIWndFindChildM(GameMainBar._wnd, "newMail")
	if btn ~= 0 then
		GUIWndSetVisible(btn, false)
	end
	GUIButtonSetShine(h, false)
end	

function GameMainBar.onNewMailBtn(h)
	CLOnMailWindow()
	GUIWndSetVisible(h, false)
	local btn = GUIWndFindChildM(GameMainBar._wnd, "Mail")
	if btn ~= 0 then
		GUIButtonSetShine(btn, false)
	end
end

--打开元宝充值窗口
function GameMainBar.YbTopUP_Dlg()
	luaMsgBox.new("元宝", "    很抱歉，您的元宝不足", {"前往充值", "取消"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
end

function GameMainBar.CommonRechage(str)
	local message = tostring(str)
	luaMsgBox.new("元宝", " "..message, {"前往充值", "取消"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
end

function GameMainBar.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function GameMainBar.out(h)
	luaWndClose(h)
end

---------------------------------- 组队部分 -----------------------------------------------------------


RegisterUIEvent(LUA_EVENT_ONTEAMINVITE, "GameMainBar_组队邀请", "GameMainBar.teamInvite")
RegisterUIEvent(LUA_EVENT_JOINTEAM, "GameMainBar_申请入队", "GameMainBar.joinTeam")


--有组队邀请
function GameMainBar.teamInvite()
	local name = as3.tolua(LuaParam[1])		
	if CLGetRoleTeamStatus() then
		if as3.tolua(LuaRet) == 1 then -- auto 
			CLAcceptTeamInvite(name, 1)
		elseif as3.tolua(LuaRet) == 2 then -- manual
			luaMsgBox.new("组队邀请", name, {"接受", "拒绝"}, {"GameMainBar.confirmTeamInvite", "GameMainBar.cancelTeamInvite"}, name)
		end
	end		
end

function GameMainBar.confirmTeamInvite(h)
	CLAcceptTeamInvite(luaMsgBox.param["组队邀请"], 1)
	luaWndClose(h)
end
function GameMainBar.cancelTeamInvite(h)
	CLAcceptTeamInvite(luaMsgBox.param["组队邀请"], 0)
	luaWndClose(h)
end

--有人申请入队
function GameMainBar.joinTeam()
	local name = as3.tolua(LuaParam[1])
	if CLGetRoleTeamStatus() then
		if as3.tolua(LuaRet) == 1 then
			CLAcceptApplyTeam(name, true)
		elseif as3.tolua(LuaRet) == 2 then
			luaMsgBox.new("申请入队", name, {"接受", "拒绝"}, {"GameMainBar.confirmJoinTeam", "GameMainBar.cancelJoinTeam"}, name)
		end
	end
end
function GameMainBar.confirmJoinTeam(h)
	CLAcceptApplyTeam(luaMsgBox.param["申请入队"], true)
	luaWndClose(h)
end
function GameMainBar.cancelJoinTeam(h)
	CLAcceptApplyTeam(luaMsgBox.param["申请入队"], false)
	luaWndClose(h)
end
--有人申请入行会
function GameMainBar.ApplyFamily()
	CLFamilyInfoRequest(64,"入会申请列表", "GameMainBar.getApplyList")
end
function GameMainBar.getApplyList()
	--CLFamilyInfoRequest(64,"入会申请列表", "GameMainBar.getApplyList")
	local _handle = GetWindow(GameMainBar._wnd, "family_applyer1");
	local applyer_tb = getTable(as3.tolua(LuaParam[4]))
	local applyer_num = #applyer_tb
	if applyer_num == 0 then
		GUIWndSetVisible(_handle,false)
	else
		GUIWndSetVisible(_handle,true);
		if applyer_num > 9 then 
			applyer_num = 9;
		end
		local RES = 
		{
			1804600026,1804600027,1804600028,1804600029,1804600030,1804600031,1804600032,1804600033,1804600034,
		}
		ImageSetImageID(GameMainBar._wnd,"family_applyer1", RES[applyer_num]) 
		--EditSetText(GameMainBar._wnd,"family_applyer","+" .. applyer_num)
	end
end

function GameMainBar.OnAuto()
	GameMainBar.TweenMiss() 
	UI:Lua_SubmitForm("NPC_IsNotInScene", "AutoFight", "")
end

function GameMainBar.Taskitem(num)
	local img_tab = {
					1899800000,
					1899800001,
					1899800005,
					1899800003,
					1800500364,
					1899800016,
					1899800019,   -- 7 乾坤囊增加20格
					1899800006,   -- 8 累计登录游戏可获得丰厚奖励
					1899800007,   -- 9 装备回收可获得海量经验 
					1899800008,   -- 10 BOSS刷新会在聊天栏公布，时刻关注BOSS动态
					1899800009,   -- 11 方向键可操作任务行走
					1899800010,   -- 12 召唤强力神将，让你打怪PK更加轻松
					1899800011,   -- 13 除魔任务可获得海量经验，升级称号提高属性
					1899800012,   -- 14 装备精炼让你所向无敌 
					1899800013,   -- 15 加入行会重现当年激情
					1899800014,   -- 16 组队打怪可以加快任务完成速度
					1899800015,   -- 17 充值任意金额可获得超值礼包
					}
	
	UI:Lua_GetScreenSize()
	local _SW = as3.tolua(LuaRet[1])
	local _SH = as3.tolua(LuaRet[2])
	local _GUIHandle = GUIImageCreate(0, "image", img_tab[tonumber(num)], _SW/2+50,_SH-160)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_GUIHandle, false)
		GameMainBar.itemTweenUp(_GUIHandle) 
		GUIImageSetDrawCenter(_GUIHandle, true)
	end
	RegisterUIEvent(LUA_EVENT_WNDLOADLAYOUT, "dingcen", "GameMainBar.Dingcen")
	CLAddDelayTask("GameMainBar.Cimage()", 5000, 1)
end 

function GameMainBar.Dingcen()
	local handle = GetWindow(0, "image")
	if handle ~= 0 then
		GUIWndMoveToParentTop(handle)
	end	
end

function GameMainBar.Cimage()
	local handle = GetWindow(0, "image")
	if handle ~= 0 then
		GUIWndTween(handle, "<Tween><Frame time='0.3' alpha='0.5' /></Tween>", "GameMainBar.itemTweenUp1()")
	end	
end

function GameMainBar.itemTweenUp1()
	local handle = GetWindow(0, "image")
	if handle ~= 0 then
		GUIWndSetVisible(handle,false)
	end
end 

function GameMainBar.itemTweenUp(hand)
	GUIWndTween(hand, "<Tween><Frame time='0.01' alpha='0.1'  /></Tween>", "GameMainBar.itemTweenDown("..hand..")")
end 

function GameMainBar.itemTweenDown(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.5'  alpha='1' /></Tween>" , "")
end 

function GameMainBar.itemTweenUp01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' y='-122' /></Tween>", "GameMainBar.itemTweenDown01("..hand..")")
end 

function GameMainBar.itemTweenDown01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' y='-112' /></Tween>" , "GameMainBar.itemTweenUp01("..hand..")")
end 

function GameMainBar.TweenDown() 
	local handle = GetWindow(GameMainBar._wnd, "tip_hook")
	if handle ~= 0 then 
		GUIWndSetVisible(handle,true)  
		GameMainBar.itemTweenUp01(handle) 
	end
	CLAddDelayTask("GameMainBar.OnAutoFight()", 10000, 1) 
end

function GameMainBar.OnAutoFight()
	GameMainBar.TweenMiss() 
	UI:Lua_SubmitForm("NPC_IsNotInScene", "isAutoFight", "")
end
	
function GameMainBar.TweenMiss() 
	local handle = GetWindow(GameMainBar._wnd, "tip_hook")
	if handle ~= 0 then 
		GUIWndSetVisible(handle,false)  
	end
end

function GameMainBar.ParticleEffect(index,gameindex,percentage) 	--经验丹=4   金币=3    元宝= 5   绑元= 6
	index = tonumber(index) - 1
	--msg("gameindex"..gameindex)
	local x , y = 0 , 0
	local color = 0xCD2626
	local times = 500
	local handle = GetWindow(Package.WndHandle,"Item"..index)
	if handle ~= 0 then
		GUIWndGetPosM(handle)
		x = as3.tolua(LuaRet[1]) 
		y = as3.tolua(LuaRet[2]) 
	end
	GUIWndGetPosM(Package.WndHandle)
	local packageX = as3.tolua(LuaRet[1]) + x + 24
	local packageY = as3.tolua(LuaRet[2]) + y + 24
	GUIWndGetPosM(GameMainBar._wnd)
	--msg("GameMainBar.ParticleEffect: x="..x.."; y="..y..";packageX="..packageX..";packageY="..packageY)
	local gamemainbarX = as3.tolua(LuaRet[1]) + 250
	local gamemainbarY = as3.tolua(LuaRet[2]) - 4
	if tonumber(gameindex) == 2 then
		gamemainbarX = gamemainbarX - 49
	elseif tonumber(gameindex) == 3 then
		gamemainbarX = 260
		gamemainbarY = 40
		color = 0xff9000
		--times = 600
	elseif tonumber(gameindex) == 4 then
		gamemainbarX = gamemainbarX - 176 + 510*tonumber(percentage)
		gamemainbarY = gamemainbarY + 95 
		color = 0x0a5b0a
		--times = 650
	elseif tonumber(gameindex) == 5 then
		gamemainbarX = 138
		gamemainbarY = 40
		--times = 600
	elseif tonumber(gameindex) == 6 then
		gamemainbarX = 210
		gamemainbarY = 40
		--times = 600
	elseif tonumber(gameindex) == 7 then
		local newX = CLGetScreenWidth()
		gamemainbarX = newX - 260
		gamemainbarY = 50	
		color = 0xFF0000 
	elseif tonumber(gameindex) == 8 then
		gamemainbarX = gamemainbarX + 343
	elseif tonumber(gameindex) == 9 then
		gamemainbarX = gamemainbarX + 393
		gamemainbarY = gamemainbarY + 20
	end
	--msg("gamemainbarX="..gamemainbarX..";gamemainbarY="..gamemainbarY)
	if tonumber(gameindex) == 4 then
		--GUIBezierParticleEffect(packageX,packageY,gamemainbarX,gamemainbarY,color,100,times,0.7,"GameMainBar.callback("..gameindex..","..percentage..") ")
		GUIBezierParticleEffect(packageX,packageY,gamemainbarX,gamemainbarY,color,100,times,0.7,"")
	elseif tonumber(gameindex) == 8 then
		GUIBezierParticleEffect(packageX,packageY,gamemainbarX,gamemainbarY,color,100,times,0.7,"GameMainBar.callback("..gameindex..") ")
	elseif tonumber(gameindex) == 9 then
		GUIBezierParticleEffect(packageX,packageY,gamemainbarX,gamemainbarY,color,100,times,0.7,"GameMainBar.callback("..gameindex..") ")
	else
		GUIBezierParticleEffect(packageX,packageY,gamemainbarX,gamemainbarY,color,100,times,0.7,"GameMainBar.callback("..gameindex..") ")
	end
end
function GameMainBar.callback(gameindex,percentage) 
	--local handle = GetWindow(GameMainBar._wnd,"Shenlu")

	if tonumber(gameindex) == 2 then
		if WndAddEffect(GameMainBar._wnd,"Enhance", 3007100000, -230, -220, 150, 1) then

		end
	elseif tonumber(gameindex) == 1 then
		if WndAddEffect(GameMainBar._wnd,"Shenlu", 3007100000, -230, -220, 150, 1) then

		end
	elseif tonumber(gameindex) == 8 then

		if WndAddEffect(GameMainBar._wnd,"Achievement", 3007100000, -230, -220, 150, 1) then

		end
	
	--[[elseif tonumber(gameindex) == 3 then
		WndAddEffect(PlayerHeaderInfo._wnd,"BindGold", 3007100000, -223, -239, 150, 1)
	elseif tonumber(gameindex) == 4 then
		WndAddEffect(GameMainBar._wnd,"Shenlu", 3007100000, -367+510*tonumber(percentage), -125, 150, 1)
	elseif tonumber(gameindex) == 5 then
		WndAddEffect(PlayerHeaderInfo._wnd,"YB_v", 3007100000, -238, -239, 150, 1)
	elseif tonumber(gameindex) == 6 then	
		WndAddEffect(PlayerHeaderInfo._wnd,"BindYB_v", 3007100000, -238, -239, 150, 1)--]]
	end	
	
end	

function GameMainBar.PackageResEmp(this)
	local v0,v1,v2,v3,v4 = 0, 0, 0, 0, 0
	local cur = 0
	if CLGetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_0) then 
		v0 = tonumber(as3.tolua(LuaRet))
	end
	if CLGetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_1) then 
		v1 = tonumber(as3.tolua(LuaRet))
	end
	if CLGetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_2) then 
		v2 = tonumber(as3.tolua(LuaRet))
	end
	if CLGetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_3) then 
		v3 = tonumber(as3.tolua(LuaRet))
	end
	if CLGetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_4) then 
		v5 = tonumber(as3.tolua(LuaRet))
	end
	if CL:GetPackageItemGUIDList() then
		local a = getTable(as3.tolua(LuaRet))
		cur = #a
	end
	if (v0+v1+v2+v3+v4) ~= 0 and cur ~= 0 then
		if this ~= 0 then
			GUIWndSetHint(this, l.package.." 剩余"..((v0+v1+v2+v3+v4)-cur).."个空位")
		end
	end
end


function GameMainBar.ClientCenterMessage(str)
	UI:Lua_GetScreenSize()
	local x = as3.tolua(LuaRet[1])/2-191
	local y = as3.tolua(LuaRet[2])-200
	msg_tip(str,x,y)
end

function GameMainBar.AutoMagic(isTrue)
	if isTrue == 1 then
		local handle = GetWindow(GameMainBar._wnd, "Autoimage")
		if handle ~= 0 then
			GUIWndSetVisible(handle,false)  
		end
		handle = GetWindow(GameMainBar._wnd, "AutoimageMagic")
		if handle ~= 0 then
			GUIWndSetVisible(handle,true)  
		end
	else
		local handle = GetWindow(GameMainBar._wnd, "Autoimage")
		if handle ~= 0 then
			GUIWndSetVisible(handle,true)  
		end
		handle = GetWindow(GameMainBar._wnd, "AutoimageMagic")
		if handle ~= 0 then
			GUIWndSetVisible(handle,false)  
		end
	end
end

GameMainBar.main()