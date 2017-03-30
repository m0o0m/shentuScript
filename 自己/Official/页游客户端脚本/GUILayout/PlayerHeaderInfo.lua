if not PlayerHeaderInfo then
	PlayerHeaderInfo = {}
end

if not PlayerHeaderInfo.localString  then
	PlayerHeaderInfo.localString = {}
end
local l = PlayerHeaderInfo.localString
l.activityDegree = "活跃度"
l.vip = "会员"
l.recharge = "充值"
l.walkorrun = "切换[走路/跑步]模式"
l.attackmode = "攻击模式"
l.YB = "元宝"
l.BindYB = "绑定元宝"
l.BindGold = "绑定金币"
PlayerHeaderInfo.arrowWnd = 0

PlayerHeaderInfo.attackModeTable = {
	{"全体", 0},
	{"和平", 1},
	{"组队", 2},
	{"行会", 3},
	{"善恶", 4},
	{"联盟", 5},
	{"阵营", 6}
}

function PlayerHeaderInfo.main()
	local _GUIHandle = 0
	local _Parent = LuaGlobal["AttachPartent"]
	_Parent = GUIWndCreateWnd(_Parent, "PlayerHeaderInfo", 1800500366, 0, 0)
	if _Parent ~= 0 then end


	_GUIHandle = GUIImageCreate( _Parent, "YB", 1806600012, 103, 58)
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.YB)
	end
	
	_GUIHandle = GUIEditCreate(_Parent, "YB_v", 127, 60, 50, 14)
	if _GUIHandle ~= 0 then
		--GUIEditSetFontCenter(_GUIHandle)
		GUIWndSetEnableM(_GUIHandle, false)
		GUIEditSetCanEdit(_GUIHandle, false)
	end
	
	_GUIHandle = GUIImageCreate( _Parent, "BindYB", 1806600013, 173, 58)
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.BindYB)
	end
	
	_GUIHandle = GUIEditCreate(_Parent, "BindYB_v", 197, 60, 50, 14)
	if _GUIHandle ~= 0 then
		--GUIEditSetFontCenter(_GUIHandle)
		GUIWndSetEnableM(_GUIHandle, false)
		GUIEditSetCanEdit(_GUIHandle, false)
	end
	
	_GUIHandle = GUIImageCreate( _Parent, "BindGold", 1806600014, 233, 58)
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.BindGold)
	end
	
	_GUIHandle = GUIEditCreate(_Parent, "BindGold_v", 253, 60, 50, 14)
	if _GUIHandle ~= 0 then
		--GUIEditSetFontCenter(_GUIHandle)
		GUIWndSetEnableM(_GUIHandle, false)
		GUIEditSetCanEdit(_GUIHandle, false)
	end
	
	_GUIHandle = GUIButtonCreate( _Parent, "ActivityDegree", 1800500371, 171, 30)
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.activityDegree)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "PlayerHeaderInfo.OnActivityDgrBtn")
	end
	
	_GUIHandle = GUIButtonCreate( _Parent, "VIP", 1805800021, 218, 30)
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.vip)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "PlayerHeaderInfo.OnVIPBtn")
	end
	
	_GUIHandle = GUIButtonCreate( _Parent, "Recharge", 1805800025, 265, 30)
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.recharge)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "PlayerHeaderInfo.OnRechargeBtn")
	end
	
	_GUIHandle = GUIImageCreate( _Parent, "PortraitImage", 0, 14, -8)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle, 88, 106)
		GUIImageSetFitSize(_GUIHandle, true)
	end
	local _Handle = GUIImageCreate( _Parent, "AttackWin", 0, 44, 98)
	if _Handle ~= 0 then
		GUIWndSetSizeM(_Handle, 42, 150)
		--GUIImageSetFitSize(_GUIHandle, true)
	end
	_GUIHandle = GUIButtonCreate( _Handle, "AttackModeBtn", 1805800013, 0, 0)
	if _GUIHandle ~= 0 then
		PlayerHeaderInfo._attackModeBtn = _GUIHandle
		GUIWndSetSizeM(_GUIHandle, 39, 21)
		GUIWndSetHint(_GUIHandle, l.attackmode)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "PlayerHeaderInfo.OnAttackMode")
		--GUIButtonSetTextFont(_GUIHandle, "SIMLI18")
		GUIWndSetTextColorM(_GUIHandle, CLMakeARGB(255, 232, 216, 99))
		--GUIWndSetTextArrangeType(_GUIHandle, -4, -6, 0, 1)
		GUIWndSetTextM(_GUIHandle, PlayerHeaderInfo.attackModeTable[1][1])
	end
	_GUIHandle = GUIButtonCreate(_Parent, "WalkOrRunBtn", 1805800017, 80, 71)
	if _GUIHandle ~= 0 then
		GUIWndSetHint(_GUIHandle, l.walkorrun)
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "PlayerHeaderInfo.OnWalkOrRunBtn")
	end
	--[[_GUIHandle = GUIImageCreate(_Parent, "LevelBack", 1800500212, 60, 68)
	if _GUIHandle ~= 0 then
		GUIWndSetSizeM(_GUIHandle, 26, 26)
		GUIImageSetFitSize(_GUIHandle, true)
	end--]]
	_GUIHandle = GUIEditCreate(_Parent, "playerLevel", 116, 35, 50, 14)
	if _GUIHandle ~= 0 then
		GUIEditSetFontCenter(_GUIHandle)
		GUIWndSetEnableM(_GUIHandle, false)
		GUIEditSetCanEdit(_GUIHandle, false)
	end
	_GUIHandle = GUIEditCreate(_Parent, "playerName", 120, 10, 90, 14)
	if _GUIHandle ~= 0 then
		GUIWndSetTextColorM(_GUIHandle, CLMakeARGB(255, 194, 182, 160))
		GUIEditSetFontCenter(_GUIHandle)
		GUIWndSetEnableM(_GUIHandle, false)
		GUIEditSetCanEdit(_GUIHandle, false)

		CLGetPlayerSelfPropBase(ROLE_PROP_ROLENAME)
		GUIEditSetTextM(_GUIHandle, as3.tolua(LuaRet))
	end
	
	PlayerHeaderInfo.arrowWnd = GUIWndCreateWnd(0,"GuideDlg_ActDgr", 0, 0, 0)
	if PlayerHeaderInfo.arrowWnd ~= 0 then
		GUIWndSetEnableM(PlayerHeaderInfo.arrowWnd, false)
	end
	
	_GUIHandle = GUIButtonCreate(PlayerHeaderInfo.arrowWnd,"prompt",1804600017,114,66)
	if _GUIHandle ~= 0 then
		GUIWndSetTextM(_GUIHandle,"领取活跃度奖励")
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndSetSizeM(_GUIHandle,157, 76)
		GUIWndSetTextColorM(_GUIHandle, 4292592384)
	end
	
	_GUIHandle = GUIButtonCreate(_Parent,"NewbeeBtn",1800700073,4,80)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,1002, "PlayerHeaderInfo.OnNewbeeBtn")
		GUIWndSetHint(_GUIHandle,"新手宝典")
		GUIWndSetParam(_GUIHandle, 0)
		GUIWndSetSizeM(_GUIHandle,32, 32)
		GUIButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	PlayerHeaderInfo.UIInit(_Parent)
end
function PlayerHeaderInfo.UIInit(_Parent)
	PlayerHeaderInfo._wnd = _Parent
	PlayerHeaderInfo.ybH = GetWindow(PlayerHeaderInfo._wnd, "YB_v")
	PlayerHeaderInfo.bindgoldH = GetWindow(PlayerHeaderInfo._wnd, "BindGold_v")
	PlayerHeaderInfo.bindybH = GetWindow(PlayerHeaderInfo._wnd, "BindYB_v")
	--RegisterUIEvent(LUA_EVENT_CHANGEATTACMODE, "PlayerHeaderInfo_头像攻击模式改变", PlayerHeaderInfo.amChange) 
	RegisterUIEvent(LUA_EVENT_ONPLAYERAPPEAR, "PlayerHeaderInfo_玩家出现", PlayerHeaderInfo.playerAppear)
	--RegisterUIEvent(LUA_EVENT_PROPERTYDATALIST, "PlayerHeaderInfo_32位属性变换", PlayerHeaderInfo.prop32DataChange)
	RegisterUIEvent(LUA_EVENT_PLAYERATTREXTREF, "PlayerHeaderInfo_64位属性变换", PlayerHeaderInfo.prop64DataChange)
	RegisterUIEvent(LUA_EVENT_SETTINGPROPCHANGE, "PlayerHeaderInfo_游戏基本属性变化", PlayerHeaderInfo.settingDataChange)	
	
	CLSetLuaGlobal("BuffIconDrawSizeX",24)
	CLSetLuaGlobal("BuffIconDrawSizeY",24)
	CLSetLuaGlobal("BuffIconDrawPosX",127)
	CLSetLuaGlobal("BuffIconDrawPosY",89)
	
	
	
	local _menu = 0
	local handle = GetWindow(PlayerHeaderInfo._wnd, "AttackWin")
	_menu = GUIWndCreateWnd(handle, "menu", 0, 35, -21)
	if _menu ~= 0 then
		PlayerHeaderInfo._menu = _menu
		GUIWndSetVisible(_menu, false)
		--GUIWndRegistScript(_menu, RDWndBaseCL_wnd_visible, "PlayerHeaderInfo.menuVisibleChange")
		_GUIHandle = GUIImageCreate(_menu, "backImg", 1805800010, -37, 42)
		if _GUIHandle ~= 0 then 
			GUIWndSetTextOffset(_GUIHandle, 0, 2)
			GUIWndSetEnableM(_GUIHandle, false)
			GUIImageSetFitSize(_GUIHandle, true)
			GUIWndSetSizeM(_GUIHandle, 42, 129)
		end
		for i = 1, #(PlayerHeaderInfo.attackModeTable) do
			_GUIHandle = GUIButtonCreate(_menu, "btn"..i, 1805800011, -31, 50+(i-1)*17)
			if _GUIHandle ~= 0 then  
				GUIWndSetSizeM(_GUIHandle, 32, 17)
				GUIWndSetTextColorM(_GUIHandle, webColor.normalText)
				GUIButtonSetStateTextColor(_GUIHandle, 1, webColor.greenText)
				GUIWndSetTextM(_GUIHandle, PlayerHeaderInfo.attackModeTable[i][1])
				GUIWndSetParam(_GUIHandle, PlayerHeaderInfo.attackModeTable[i][2])
				GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "PlayerHeaderInfo.menuBtnLC")
			end
		end
	end
	
	CLAddDelayTask("PlayerHeaderInfo.DelayInitial()", 2000, 1)
	
	UI:Lua_SubmitForm("玩家攻击模式初始化","GetAttackMode","")
end

function PlayerHeaderInfo.DelayInitial()
	
	
	
	local wrBtnID = 0

	if CLGetBasicSetting(1018, false) then
		wrBtnID = 1805800029
	else
		wrBtnID = 1805800017
	end
	local _GUIHandle = 0
	_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._wnd, "WalkOrRunBtn")
	if _GUIHandle ~= 0 then
		GUIWndSetImageID(_GUIHandle, wrBtnID)
	end
	
	PlayerHeaderInfo.InitPlayerFundInfo()
end

function PlayerHeaderInfo.ModeEditUpdate(mode)
	local index = tonumber(mode) + 1
	GUIWndSetTextM(PlayerHeaderInfo._attackModeBtn, PlayerHeaderInfo.attackModeTable[index][1])
end	

function PlayerHeaderInfo.OnVIPBtn(_handle)
    UI:Lua_OpenWindow(0, "VIPWnd.lua")
	--CLOpenGameFormDlg("VIP", -1, -1)
	local handle = GetWindow(PlayerHeaderInfo._wnd, "VIP")
	if handle ~= 0 then
		GUIWndSetEnableM(handle, false)
		CLAddDelayTask("PlayerHeaderInfo.EnableVipBtn()", 500, 1)
	end
end

function PlayerHeaderInfo.EnableVipBtn()
	local handle = GetWindow(PlayerHeaderInfo._wnd, "VIP")
	if handle ~= 0 then
		GUIWndSetEnableM(handle, true)
	end
end

function PlayerHeaderInfo.OnRechargeBtn()
	CLOpenUrlUseIEByType(3)
end

function PlayerHeaderInfo.menuVisibleChange(_h)
	if GUIWndGetVisible(_h) then
		PlayerHeaderInfo.menuFlag = true
	else
		PlayerHeaderInfo.menuFlag = false
	end
end

function PlayerHeaderInfo.OnAttackMode()
	
	
	local kname = CLGetCurMapKeyName()
	--msg(''..kname)
	if kname == "夜袭巫山城" or kname == "寻龙夺宝" or kname == "谁与争锋" then
		window_msg_up(PlayerHeaderInfo._wnd, "当前地图不能切换模式", 73, 119, 30, MakeARGB(255,255,0,0), 2)
		return
	end
	
	if GUIWndGetVisible(PlayerHeaderInfo._menu) then
		GUIWndSetVisible(PlayerHeaderInfo._menu, false)
	else
		GUIWndSetVisible(PlayerHeaderInfo._menu, true)
		local handle = GetWindow(PlayerHeaderInfo._wnd, "AttackWin")
		GUISetPopupMenu(PlayerHeaderInfo._menu,handle)
	end
end

function PlayerHeaderInfo.onInAmsWnd(_h)
	if PlayerHeaderInfo._selAmsWnd == _h then return end
	
	local _GUIHandle = GUIWndFindChildM(_h, "amsBtnEdit")
	GUIWndSetTextColorM(_GUIHandle, CLMakeARGB(255, 0, 254, 0))
	_GUIHandle = GUIWndFindChildM(_h, "amsBtnBackImage")
	GUIWndSetVisible(_GUIHandle, true)
	
	if PlayerHeaderInfo._selAmsWnd then
		_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._selAmsWnd, "amsBtnEdit")
		GUIWndSetTextColorM(_GUIHandle, CLMakeARGB(255, 198, 165, 10))
		_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._selAmsWnd, "amsBtnBackImage")
		GUIWndSetVisible(_GUIHandle, false)
	end
	
	PlayerHeaderInfo._selAmsWnd = _h
end

function PlayerHeaderInfo.menuBtnLC(_h)
	CLSetAttackMode(GUIWndGetParam(_h))
	GUIWndSetVisible(PlayerHeaderInfo._menu, false)
end

function PlayerHeaderInfo.OnWalkOrRunBtn(_btn)
	local wrBtnID = 0
	if CLGetBasicSetting(1018) then
		wrBtnID = 1805800017
		CLChangeBasicSetting(1018, false)
	else
		wrBtnID = 1805800029
		CLChangeBasicSetting(1018, true)
	end


	GUIWndSetImageID(_btn, wrBtnID)
end
--[[
function PlayerHeaderInfo.amChange()
	--msg('攻击模式改变触发回调')
	local text = PlayerHeaderInfo.attackModeTable[as3.tolua(LuaParam[1])+1][1]
	--msg('攻击模式改变触发回调text='..text)
	GUIWndSetTextM(PlayerHeaderInfo._attackModeBtn, text)
end
--]]
function PlayerHeaderInfo.playerAppear()
	local roleID = as3.tolua(LuaParam[1])
	CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID)
	if roleID ~= as3.tolua(LuaRet) then return end
	
	local _GUIHandle = 0 
	_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._wnd, "playerLevel")
	if _GUIHandle ~= 0 then
		CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL)
		GUIEditSetTextM(_GUIHandle, "Lv."..tostring(as3.tolua(LuaRet)))
	end

	_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._wnd, "playerName")
	if _GUIHandle ~= 0 then
		CLGetPlayerSelfPropBase(ROLE_PROP_ROLENAME)
		GUIEditSetTextM(_GUIHandle, tostring(as3.tolua(LuaRet)))
	end
	
	_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._wnd, "PortraitImage")
	--local  = {{1800500231,1800500234},{1800500232,1800500235},{1800500233,1800500236}}
	--local  image_Id = {{1802700050,1802700051},{1802700052,1802700053},{1802700054,1800500236}}
	local  image_Id = {{1805800001,1805800004},{1805800002,1805800005},{1805800003,1805800006}}
	if _GUIHandle ~= 0 then
		
		CLGetPlayerSelfPropBase(ROLE_PROP_JOB)
		local jobID = tonumber(as3.tolua(LuaRet))
		CLGetPlayerSelfPropBase(ROLE_PROP_SEX)
		local genderID = tonumber(as3.tolua(LuaRet))
		--local headID = GetHeadImageID(jobID,genderID)
		local headID = image_Id[jobID][genderID]
		--[[if jobID == 3 and genderID == 2 then
			GUIWndSetSizeM(_GUIHandle, 69, 84)
			GUIWndSetPosM(_GUIHandle, 9, -9)
		else
			GUIWndSetSizeM(_GUIHandle, 71, 71)
			GUIWndSetPosM(_GUIHandle, 9, 8)
		end--]]
		GUIWndSetImageID(_GUIHandle, tonumber(headID))
	end
end

function PlayerHeaderInfo.prop32DataChange()
	local _GUIHandle = 0 
	
	local tab = getTable(as3.tolua(LuaParam[1]))
	for i = 1 , #tab do 
		local preTab = getTable(tab[i])
			if as3.tolua(preTab[1]) == ROLE_PROP32_LEVEL then
				_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._wnd, "playerLevel")
				if _GUIHandle ~= 0 then
					GUIEditSetTextM(_GUIHandle, "Lv."..tostring(as3.tolua(preTab[2])))
				end	
				break
			elseif as3.tolua(preTab[1]) == ROLE_PROP32_ATK_MODE then
				--msg('攻击模式改变触发回调')
				local text = PlayerHeaderInfo.attackModeTable[tonumber(as3.tolua(preTab[2]))+1][1]
				--msg('攻击模式改变触发回调text='..text)
				GUIWndSetTextM(PlayerHeaderInfo._attackModeBtn, text)
				break
			end
	end	
end

function PlayerHeaderInfo.OnNewbeeBtn()
	CL:OnOpenNewBee()
end

function PlayerHeaderInfo.prop64DataChange()
	local changeType = as3.tolua(LuaParam[2])
	if changeType == ROLE_PROP64_INGOT then
		if CLGetPlayerSelfProperty64(ROLE_PROP64_INGOT) then
			local yb = tonumber(as3.tolua(LuaRet))
			local _f = ""
			local _dw = ""
			if yb >= 10000 then
				_f = math.floor((yb/1000)%10)
				yb = math.floor(yb/10000)
				_dw = "万"
				if tonumber(yb) >= 10000 then
					--yb = string.format('%.1f', yb/10000)
					_f = math.floor((yb/1000)%10)
					yb = math.floor(yb/10000)
					_dw = "亿"
				end
			end
			if PlayerHeaderInfo.ybH ~= 0 then
				local _p = ""
				if _dw ~= "" then
					_p = "."
				end
				GUIEditSetTextM(PlayerHeaderInfo.ybH, tostring(yb).._p.._f.._dw)
			end
		end
	end
	
	if changeType == ROLE_PROP64_BIND_INGOT then
		if CLGetPlayerSelfProperty64(ROLE_PROP64_BIND_INGOT) then
			local Bind_yb = tonumber(as3.tolua(LuaRet))
			local _f = ""
			local _dw = ""
			if Bind_yb >= 10000 then
				_f = math.floor((Bind_yb/1000)%10)
				Bind_yb = math.floor(Bind_yb/10000)
				_dw = "万"
				if tonumber(Bind_yb) >= 10000 then
					--Bind_yb = string.format('%.1f', Bind_yb/10000)
					_f = math.floor((Bind_yb/1000)%10)
					Bind_yb = math.floor(Bind_yb/10000)
					_dw = "亿"
				end
			end
			if PlayerHeaderInfo.bindybH ~= 0 then
				local _p = ""
				if _dw ~= "" then
					_p = "."
				end
				GUIEditSetTextM(PlayerHeaderInfo.bindybH, tostring(Bind_yb).._p.._f.._dw)
			end
		end
	end
	
	if changeType == ROLE_PROP64_BIND_GOLD then
		if CLGetPlayerSelfProperty64(ROLE_PROP64_BIND_GOLD) then
			local BindGold = tonumber(as3.tolua(LuaRet))
			local _f = ""
			local _dw = ""
			if BindGold >= 10000 then
				BindGold = math.floor(BindGold/10000)
				_dw = "万"
				if tonumber(BindGold) >= 10000 then
					--BindGold = string.format('%.1f', BindGold/10000)
					_f = math.floor((BindGold/1000)%10)
					BindGold = math.floor(BindGold/10000)
					_dw = "亿"
				end
			end
			if PlayerHeaderInfo.bindgoldH ~= 0 then
				local _p = ""
				if _dw == "亿" then
					_p = "."
				end
				GUIEditSetTextM(PlayerHeaderInfo.bindgoldH, tostring(BindGold).._p.._f.._dw)
			end
		end
	end
end

function PlayerHeaderInfo.InitPlayerFundInfo()
	if CLGetPlayerSelfProperty64(ROLE_PROP64_INGOT) then
		local yb = tonumber(as3.tolua(LuaRet))
		local _f = ""
		local _dw = ""
		if yb >= 10000 then
			_f = math.floor((yb/1000)%10)
			yb = math.floor(yb/10000)
			_dw = "万"
			if tonumber(yb) >= 10000 then
				--yb = string.format('%.1f', yb/10000)
				_f = math.floor((yb/1000)%10)
				yb = math.floor(yb/10000)
				_dw = "亿"
			end
		end
		if PlayerHeaderInfo.ybH ~= 0 then
			local _p = ""
			if _dw ~= "" then
				_p = "."
			end
			GUIEditSetTextM(PlayerHeaderInfo.ybH, tostring(yb).._p.._f.._dw)
		end
	end
	if CLGetPlayerSelfProperty64(ROLE_PROP64_BIND_INGOT) then
		local Bind_yb = tonumber(as3.tolua(LuaRet))
		local _f = ""
		local _dw = ""
		if Bind_yb >= 10000 then
			_f = math.floor((Bind_yb/1000)%10)
			Bind_yb = math.floor(Bind_yb/10000)
			_dw = "万"
			if tonumber(Bind_yb) >= 10000 then
				--Bind_yb = string.format('%.1f', Bind_yb/10000)
				_f = math.floor((Bind_yb/1000)%10)
				Bind_yb = math.floor(Bind_yb/10000)
				_dw = "亿"
			end
		end
		if PlayerHeaderInfo.bindybH ~= 0 then
			local _p = ""
			if _dw ~= "" then
				_p = "."
			end
			GUIEditSetTextM(PlayerHeaderInfo.bindybH, tostring(Bind_yb).._p.._f.._dw)
		end
	end

	if CLGetPlayerSelfProperty64(ROLE_PROP64_BIND_GOLD) then
		local BindGold = tonumber(as3.tolua(LuaRet))
		local _f = ""
		local _dw = ""
		if BindGold >= 10000 then
			BindGold = math.floor(BindGold/10000)
			_dw = "万"
			if tonumber(BindGold) >= 10000 then
				--BindGold = string.format('%.1f', BindGold/10000)
				_f = math.floor((BindGold/1000)%10)
				BindGold = math.floor(BindGold/10000)
				_dw = "亿"
			end
		end
		if PlayerHeaderInfo.bindgoldH ~= 0 then
			local _p = ""
			if _dw == "亿" then
				_p = "."
			end
			GUIEditSetTextM(PlayerHeaderInfo.bindgoldH, tostring(BindGold).._p.._f.._dw)
		end
	end

end

function PlayerHeaderInfo.settingDataChange()
	local id = as3.tolua(LuaParam[1])
	local value = as3.tolua(LuaParam[2])
	local wrBtnID = 0
	if tonumber(id) == 1018 then
		if tonumber(value) == 1 then
			wrBtnID = 1805800017
		else
			wrBtnID = 1805800029
		end
	else
		return ""
	end
	_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._wnd, "WalkOrRunBtn")	
	GUIWndSetImageID(_GUIHandle, wrBtnID)
end

function PlayerHeaderInfo.OnActivityDgrBtn()
	if 0 ~= GetWindow("", "ActivityDegree") then
		ActivityDegree.closeWnd()
	else
		UI:Lua_SubmitForm("ActivityDegree_s","ActivityDegree_openUI","")
	end
end

function PlayerHeaderInfo.addEffectToActivityDgr()
	_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._wnd, "ActivityDegree")
	if 0 ~= _GUIHandle then
		WndAddEffect(_GUIHandle,"ActivityDegree",3020100200,-1, -2,150,0)
		--if not GUIButtonGetShine(_GUIHandle) then
			--GUIButtonSetShine(_GUIHandle,true)
		--end
	end
end

function PlayerHeaderInfo.delEffectToActivityDgr()
	_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._wnd, "ActivityDegree")
	if 0 ~= _GUIHandle then
		WndDelEffect(_GUIHandle, "ActivityDegree")
		--if GUIButtonGetShine(_GUIHandle) then
			--GUIButtonSetShine(_GUIHandle,false)
		--end
	end
end

function PlayerHeaderInfo.addEffectToVIP()
	_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._wnd, "VIP")
	if 0 ~= _GUIHandle then
		WndAddEffect(_GUIHandle,"VIP",3020100200,-1, -2,150,0)
		--if not GUIButtonGetShine(_GUIHandle) then
			--GUIButtonSetShine(_GUIHandle,true)
		--end
	end
end

function PlayerHeaderInfo.delEffectToVIP()
	_GUIHandle = GUIWndFindChildM(PlayerHeaderInfo._wnd, "VIP")
	if 0 ~= _GUIHandle then
		WndDelEffect(_GUIHandle, "VIP")
		--if GUIButtonGetShine(_GUIHandle) then
			--GUIButtonSetShine(_GUIHandle,false)
		--end
	end
end
function PlayerHeaderInfo.ArrowToActivityDgr()
	local handle = GetWindow(PlayerHeaderInfo.arrowWnd, "prompt")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
		GUIButtonSetTextFont(handle,"SIMLI18")
		GUIWndSetTextArrangeType(handle,0,17,0,0)
		PlayerHeaderInfo.itemTweenUp01(handle) 
		--GUIWndSetEnableM(handle, false)
	end
end

function PlayerHeaderInfo.delArrow()
	local handle = GetWindow(PlayerHeaderInfo.arrowWnd, "prompt")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
end
function PlayerHeaderInfo.itemTweenUp01(handle) 
	GUIWndTween(handle, "<Tween><Frame time='1' y='72' /></Tween>", "PlayerHeaderInfo.itemTweenDown01("..handle..")")
end 

function PlayerHeaderInfo.itemTweenDown01(handle) 
	GUIWndTween(handle, "<Tween><Frame time='1' y='82' /></Tween>" , "PlayerHeaderInfo.itemTweenUp01("..handle..")")
end



PlayerHeaderInfo.main()