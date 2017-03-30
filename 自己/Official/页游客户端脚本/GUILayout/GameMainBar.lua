GameMainBar = {}

GameMainBar.localString = {}
local l = GameMainBar.localString
l.newMail = "�����µ��ʼ�"
l.setting = "ϵͳ����<font color='#00BBFF'>(Q)</font>"
--l.mail = "�ʼ�<font color='#00BBFF'>(P)</font>"
l.mail = "�һ�<font color='#00BBFF'>(Z)</font>"

l.mount = "���/����<font color='#00BBFF'>(SHIFT + M)</font>"
l.family= "�л�<font color='#00BBFF'>(G)</font>"
l.trade = "����<font color='#00BBFF'>(U)</font>"
l.team = "���<font color='#00BBFF'>(N)</font>"
l.friend = "����<font color='#00BBFF'>(F)</font>"
l.achievement = "�ɾ�<font color='#00BBFF'>(I)</font>"
l.wing = "���<font color='#00BBFF'>(O)</font>"
l.shenlu = "��¯<font color='#00BBFF'>(L)</font>"
l.enhance = "����<font color='#00BBFF'>(X)</font>"
l.shop = "�̳�<font color='#00BBFF'>(T)</font>"
l.package = "����<font color='#00BBFF'>(B)</font>"
l.skill = "����<font color='#00BBFF'>(V)</font>"
l.quest = "����<font color='#00BBFF'>(A)</font>"
l.role = "��ɫ<font color='#00BBFF'>(C)</font>"
l.crystal = "��ʯ<font color='#00BBFF'>(Y)</font>"
l.vip = "<font color='#00BBFF'>��ΪVip����ʱ��ػ���</font>"

GameMainBar.packageFriendWnd_ = {}
GameMainBar.btnBar_ = {
	{"Achievement",	1800500254,	"CLOnAchieveWindow",	l.achievement,1801500177}, 
--	{"Mail",		1800500290, "GameMainBar.OnMailBtn",	l.mail,1801500188}, 
	{"Auto",		1800500238, "GameMainBar.OnAuto",	l.mail,1801500181}, 
	--{"Mount",		1800500274, "CLOnRide",			l.mount,1801500184}, 
	{"Family",		1800500286, [[UI:Lua_SubmitForm("�ȼ��жϱ�", "OnFamilyWindow", "")]],	l.family,1801500187}, 
	{"Trade",		1800500278, "GameMainBar.OnTradeBtn",l.trade,1801500185}, 
	{"Team",		1800500282, "CLOnTeamBtn",		l.team,1801500186}, 
	{"Friend",		1800500270, "CLOnFriendWindow",	l.friend,1801500183}, 
	--{"Friend",		1800500270, "UI:Lua_OpenWindow(0,\"FriendWindow.lua\")",	l.friend,1801500183}, 
	{"Wing",		1800500246, [[UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenWing", "")]],l.wing,1801500179}, 
	{"Shenlu",		1800500258,	[[UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenFurnace", "")]], l.shenlu,1801500191}, 
	{"Enhance",		1800500242, [[UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenForge", "")]],		l.enhance,1801500192},
	{"Crystal",		1800500298, [[UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenCrystal", "")]], l.crystal, 1801500190}
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
	
	_GUIHandle = GUIButtonCreate(_Parent, "newMail", 1800500162, 440, -70)	--new�ʼ�
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
			
			_GUIHandle = GUIImageCreate(_Parent, "family_applyer1", 0, 500, -35) --����ͼƬ��ʾ��λ���������лᣩ
			if _GUIHandle ~= 0 then
				GUIWndSetEnableM(_GUIHandle, false)
				GUIWndSetVisible(_GUIHandle, true)
			end
			--[[
			_GUIHandle = GUIImageCreate(_Parent, "family_applyer2", 1801500170, 485, -35) --����ͼƬ��ʾʮλ���������лᣩ
			if _GUIHandle ~= 0 then
				GUIWndSetEnableM(_GUIHandle, false)
				GUIWndSetVisible(_GUIHandle, true)
			end
			
			_GUIHandle = GUIEditCreate(_Parent, "family_applyer", 500, -35, 24, 24)   --������ʾ���������лᣩ
			if _GUIHandle ~= 0 then
				GUIEditSetFontM(_GUIHandle, "SIMLI18")
				GUIWndSetTextColorM(_GUIHandle, CLMakeARGB(255, 255, 0, 0))
				GUIWndSetEnableM(_GUIHandle, false)
				GUIEditSetFontCenter(_GUIHandle)
			end
			--]]
		end
	end
	--_GUIHandle = GUIImageCreate(_Parent, "AchieveNum1", 0, 575, -35) -- �ɾ�������ʾ
	_GUIHandle = GUIImageCreate(_Parent, "AchieveNum2", 0, 590, -35)
	_GUIHandle = GUIImageCreate(_Parent, "SlNum2", 0, 253, -35)-- ��¯������ʾ
	
	
	_GUIHandle = GUIButtonCreate(_Parent, "Shop", 1800500190, 628, 41)	--�̳�
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.shop)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CLOnGameMallWindow")
	end
	_GUIHandle = GUIButtonCreate(_Parent, "Package", 1800500198, 665,  9)	--����
	if _GUIHandle ~= 0 then
		--GUIWndSetHint(_GUIHandle, l.package)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CLOnOpenPakage")	
		GUIWndRegistScript(_GUIHandle,1011, "GameMainBar.PackageResEmp")
	end
	
	_GUIHandle = GUIImageCreate(_Parent, "EmptyPackage2", 1800500375, 681, -2)-- �հ���������ʾ
	if _GUIHandle ~= 0 then
		GUIWndSetVisible(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent, "Skill", 1800500202, 692,  37)	--����
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.skill)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CLOnSkillWindow")
	end	
	_GUIHandle = GUIButtonCreate(_Parent, "Quest", 1800500206, 691, 77)		--����
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.quest)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CLOnQuestWindow")
	end
	_GUIHandle = GUIButtonCreate(_Parent, "Role", 1800500194, 625, 7)		--��ɫ
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.role)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "CLOnRoleWindow")
	end
	
	_GUIHandle = GUIButtonCreate(_Parent, "tip_hook", 1804600015, 465,-112)		--�Զ��һ���ʾ
	if _GUIHandle ~= 0 then
		GUIWndSetTextM(_GUIHandle,"����Զ��һ�") 
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
	_GUIHandle = GUIImageCreate(_Parent, "PlayerEXP", 1800500187, 104, 97)	--��������������ƣ�
	--[[_GUIHandle = GUIImageCreate(_Parent, "expStaticHintImg", 0, 104, 93)		--������������ʾ
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
	UI:Lua_LoadLuaFile("MsgBox")	--������ʾ��
	UI:Lua_LoadLuaFile("PackageWndInteraction")	--�����뱳�������ű�
	
	--UI:Lua_OpenWindow(0,"SystemTeach.lua")
	
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "GameMainBar_�ֱ��ʸı�", GameMainBar.UpdataScreenSize)
	RegisterUIEvent(LUA_EVENT_P2PINVITE, "GameMainBar_��������", GameMainBar.tradeInvite)
	RegisterUIEvent(LUA_EVENT_ONNEWMAIL, "GameMainBar_���ʼ�", GameMainBar.newMail)
	RegisterUIEvent(LUA_EVENT_OBJDISPEAR, "NPC�ӳ�����ʧ", GameMainBar.FarAwayFromNPC)
	
	
	
	local _GUIHandle = GUIWndCreateWnd(0, "EquipInfo", 0, 5854, 550)	 --װ����ʾ��������ƣ�
	if _GUIHandle ~= 0 then GameMainBar._equipInfo = _GUIHandle end
	GUI:WndSetVisible(_GUIHandle, false)
	_GUIHandle = GUIWndCreateWnd(0, "MessageInfo", 0, 854, 670)  --��Ϣ��ʾ��������ƣ�
	if _GUIHandle ~= 0 then GameMainBar._messageInfo = _GUIHandle end
	
	CLHotKeyRegister("Y", "�򿪱�ʯ����", "UI:Lua_OpenWindow(0,\"CrystalSystem.lua\")");  --ע�ᱦʯ�ȼ�Y
	--CLHotKeyRegister("X", "�򿪶��촰��", "CLOnOpenForge()"); --ע������ȼ�X
	--CLHotKeyRegister("L", "����¯����", "UI:Lua_OpenWindow(0,\"ShenLuWnd.lua\")"); --ע����¯�ȼ�L
	--CLHotKeyRegister("O", "�򿪳�򴰿�", [[UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenWing", "")]]); --ע�����ȼ�O
	
	CLHotKeyRegister("P", "���ʼ�����", "GameMainBar.OnMailBtn()"); --ע���ʼ��ȼ�P
	CLHotKeyRegister("Z", "�Զ��һ�", [[UI:Lua_SubmitForm("NPC_IsNotInScene", "AutoFight", "")]]); --�һ�
	
	--CLAddDelayTask("GameMainBar.JudgeLv();", 680, 1)
	CLAddDelayTask("GameMainBar.SetHotKey();", 2000, 1)
	GameMainBar.UpdataScreenSize()
	CLSetSystemColor(7,"RED")
end

function GameMainBar.OnVipClicked()
	UI:Lua_SubmitForm("Vip��", "IsVip", "")
	--UI:Lua_OpenWindow(0, "VIPWnd.lua")
end

--���ݵȼ����ò��ֹ��ܵ��ȼ�
function GameMainBar.SetHotKey()
	local level = 0
	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		level = tonumber(as3.tolua(LuaRet))
	end
	if level >= 60 then
		CLHotKeyRegister("X", "�򿪶��촰��", "CLOnOpenForge()"); --ע������ȼ�X
	end
	if level >= 61 then
		CLHotKeyRegister("O", "�򿪳�򴰿�", [[UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenWing", "")]]); --ע�����ȼ�O
	end
	if level >= 62 then
		CLHotKeyRegister("L", "����¯����", "CLOnOpenFurnace()"); --ע����¯�ȼ�L
	end
	if CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
		local self_reinLevel = CLGetPlayerCustomIntData(as3.tolua(LuaRet),"reinLevel")  
		if self_reinLevel >= 5 then
			CLHotKeyRegister("Y", "�򿪱�ʯ����", "UI:Lua_OpenWindow(0,\"CrystalSystem.lua\")");  --ע�ᱦʯ�ȼ�Y
		end
	end
	

end
--vip�ȼ���ʾ ��ע��
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

--�ȼ��жϣ����ز��ֹ���
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
		handle = GetWindow(GameMainBar._wnd, "Wing")      --���س��61������
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		handle = GetWindow(GameMainBar._wnd, "Wingimage")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
	end
	
	if level >= 62 then
		local handle = GetWindow(GameMainBar._wnd, "Shenlu")  --������¯��62������
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		handle = GetWindow(GameMainBar._wnd, "Shenluimage")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
	end
	
	if level >= 60 then
		local handle = GetWindow(GameMainBar._wnd, "Enhance")  --���ض��죬60������
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		handle = GetWindow(GameMainBar._wnd, "Enhanceimage")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		handle = GetWindow("", "Boss_tip")  --�ر�boss��ʾ
		if handle ~= 0 then
			GUIWndClose(handle)
		end
	end

	--if CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
		--local self_reinLevel = CLGetPlayerCustomIntData(as3.tolua(LuaRet),"reinLevel")  
		--if tonumber(reinlevel) >= 4 then --���ر�ʯ��ת5����
		if tonumber(level) >= 75 then --���ر�ʯ��ת5����
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

--��ʾ��򣬹ر���ʾ
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

--��ʾ��¯
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

--��ʾ��ʯ
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

--��ʾ����
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

--NPC�ӳ�����ʧ
function GameMainBar.FarAwayFromNPC()
--[[	local npcGuid = as3.tolua(LuaParam[1])
	UI:Lua_SubmitForm("NPC_IsNotInScene","MatchNpc",npcGuid)--]]
	if as3.tolua(LuaParam[1]) == 3 then
		local NpcKeyname = tostring(as3.tolua(LuaParam[2]))
		local KeynameArr = {
			["��ɽ�Ǵ���Ա"] = "transmit", ["��ɽ�ǰ�����·��"] = "TempleGuider", ["��ɽBOSS����Ա"] = "BOSS_Hall_Guider",
			["��ɽ�Ǹ���ʹ��"] = "Daily_FB_Dlg", ["��ɽ�ǳ�ħʹ��"] = "TitleWnd", ["��ɽ����Ʒ����Ա"] = "Recycle",
			["��ɽ�ǲֿ�"] = "WareHouse",["����������Ա"] = "EndlessUI",
			["�������ʹ��"] = "mayaTemple",
			["ת�����ʹ��"] = "ReinTemple",
			["���Ƕᱦ���"] = "xldb_NPCShow",
			["����ħ������"] = "DemonWnd",
			["����ҹս�����"] = "NightWnd",
			["����˭������"] = "ArenaNPC",
			["����֮��"] = "LongHunZL_outside",
			["���Ǵ���Ա"] = "transmit",
			["��ɽ�ǿ���"] = "OreWnd",
			["Ĥ�ݳ���"] = "CastlellanWorshipWnd",
			["Ĥ�ݳ�����"] = "CastlellanWorshipWnd",
		}
		local handle = 0
		if KeynameArr[NpcKeyname] == nil then
			return
		else
			if NpcKeyname == "��ɽ����Ʒ����Ա" then
				if Recycle ~= nil then
					Recycle.Close() 
				end	
			else
				handle = GetWindow(nil, KeynameArr[NpcKeyname])
				if handle ~= 0 then
					GUIWndClose(handle)
				end
				if NpcKeyname == "��ɽ�Ǹ���ʹ��" then
					handle = GetWindow(nil, "Dailyone")
					if handle ~= 0 then
						GUIWndClose(handle)
					end
				elseif NpcKeyname == "��ɽ�ǳ�ħʹ��" then
					handle = GetWindow(nil, "Achieve") 
					if handle ~= 0 then
						GUIWndClose(handle)
					end
				end
			end
		end
	end
end

--��������
function GameMainBar.tradeInvite()
	local pGuid = as3.tolua(LuaParam[1])
	local pName = as3.tolua(LuaParam[2])
	luaMsgBox.new("��������", pName, {"����", "�ܾ�"}, {"GameMainBar.confirmTradeInvite", "GameMainBar.cancelTradeInvite"}, pGuid)
	GameMainBar.pName = pName
end
function GameMainBar.confirmTradeInvite(h)
	CLAcceptP2pInvite(luaMsgBox.param["��������"], 1)
	luaWndClose(h)
end
function GameMainBar.cancelTradeInvite(h)
	CLAcceptP2pInvite(luaMsgBox.param["��������"], 0)
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
--�ɾ��������ͳ��
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

--��¯����������ͳ��
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

--�ձ�������ͳ��
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

--��Ԫ����ֵ����
function GameMainBar.YbTopUP_Dlg()
	luaMsgBox.new("Ԫ��", "    �ܱ�Ǹ������Ԫ������", {"ǰ����ֵ", "ȡ��"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
end

function GameMainBar.CommonRechage(str)
	local message = tostring(str)
	luaMsgBox.new("Ԫ��", " "..message, {"ǰ����ֵ", "ȡ��"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
end

function GameMainBar.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function GameMainBar.out(h)
	luaWndClose(h)
end

---------------------------------- ��Ӳ��� -----------------------------------------------------------


RegisterUIEvent(LUA_EVENT_ONTEAMINVITE, "GameMainBar_�������", "GameMainBar.teamInvite")
RegisterUIEvent(LUA_EVENT_JOINTEAM, "GameMainBar_�������", "GameMainBar.joinTeam")


--���������
function GameMainBar.teamInvite()
	local name = as3.tolua(LuaParam[1])		
	if CLGetRoleTeamStatus() then
		if as3.tolua(LuaRet) == 1 then -- auto 
			CLAcceptTeamInvite(name, 1)
		elseif as3.tolua(LuaRet) == 2 then -- manual
			luaMsgBox.new("�������", name, {"����", "�ܾ�"}, {"GameMainBar.confirmTeamInvite", "GameMainBar.cancelTeamInvite"}, name)
		end
	end		
end

function GameMainBar.confirmTeamInvite(h)
	CLAcceptTeamInvite(luaMsgBox.param["�������"], 1)
	luaWndClose(h)
end
function GameMainBar.cancelTeamInvite(h)
	CLAcceptTeamInvite(luaMsgBox.param["�������"], 0)
	luaWndClose(h)
end

--�����������
function GameMainBar.joinTeam()
	local name = as3.tolua(LuaParam[1])
	if CLGetRoleTeamStatus() then
		if as3.tolua(LuaRet) == 1 then
			CLAcceptApplyTeam(name, true)
		elseif as3.tolua(LuaRet) == 2 then
			luaMsgBox.new("�������", name, {"����", "�ܾ�"}, {"GameMainBar.confirmJoinTeam", "GameMainBar.cancelJoinTeam"}, name)
		end
	end
end
function GameMainBar.confirmJoinTeam(h)
	CLAcceptApplyTeam(luaMsgBox.param["�������"], true)
	luaWndClose(h)
end
function GameMainBar.cancelJoinTeam(h)
	CLAcceptApplyTeam(luaMsgBox.param["�������"], false)
	luaWndClose(h)
end
--�����������л�
function GameMainBar.ApplyFamily()
	CLFamilyInfoRequest(64,"��������б�", "GameMainBar.getApplyList")
end
function GameMainBar.getApplyList()
	--CLFamilyInfoRequest(64,"��������б�", "GameMainBar.getApplyList")
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
					1899800019,   -- 7 Ǭ��������20��
					1899800006,   -- 8 �ۼƵ�¼��Ϸ�ɻ�÷����
					1899800007,   -- 9 װ�����տɻ�ú������� 
					1899800008,   -- 10 BOSSˢ�»���������������ʱ�̹�עBOSS��̬
					1899800009,   -- 11 ������ɲ�����������
					1899800010,   -- 12 �ٻ�ǿ���񽫣�������PK��������
					1899800011,   -- 13 ��ħ����ɻ�ú������飬�����ƺ��������
					1899800012,   -- 14 װ���������������޵� 
					1899800013,   -- 15 �����л����ֵ��꼤��
					1899800014,   -- 16 ��Ӵ�ֿ��Լӿ���������ٶ�
					1899800015,   -- 17 ��ֵ������ɻ�ó�ֵ���
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

function GameMainBar.ParticleEffect(index,gameindex,percentage) 	--���鵤=4   ���=3    Ԫ��= 5   ��Ԫ= 6
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
			GUIWndSetHint(this, l.package.." ʣ��"..((v0+v1+v2+v3+v4)-cur).."����λ")
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