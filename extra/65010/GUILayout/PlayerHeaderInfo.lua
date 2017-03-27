if not PlayerHeaderInfo then
	PlayerHeaderInfo = {}
end

if not PlayerHeaderInfo.localString  then
	PlayerHeaderInfo.localString = {}
end
local l = PlayerHeaderInfo.localString
l.vip = "会员"
l.recharge = "充值"
l.attackmode = "攻击模式"
l.YB = "元宝"
l.BindYB = "绑定元宝"
l.BindGold = "绑定金币"

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
	_Parent = GUI:WndCreateWnd(_Parent, "PlayerHeaderInfo", 1805800000, 0, 0)
	if _Parent ~= 0 then end
		
	_GUIHandle = GUI:ImageCreate( _Parent, "YB", 1805800007, 103, 58)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle, l.YB)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent, "YB_v", 127, 60, 50, 14)
	if _GUIHandle ~= 0 then
		--GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate( _Parent, "BindYB", 1805800008, 173, 58)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle, l.BindYB)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent, "BindYB_v", 197, 60, 50, 14)
	if _GUIHandle ~= 0 then
		--GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate( _Parent, "BindGold", 1805800009, 233, 58)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle, l.BindGold)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent, "BindGold_v", 253, 60, 50, 14)
	if _GUIHandle ~= 0 then
		--GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate( _Parent, "VIP", 1805800021, 213, 30)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle, l.vip)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "PlayerHeaderInfo.OnVIPBtn")
	end
	
	_GUIHandle = GUI:ButtonCreate( _Parent, "Recharge", 1805800025, 265, 30)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle, l.recharge)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "PlayerHeaderInfo.OnRechargeBtn")
	end
	
	_GUIHandle = GUI:ImageCreate( _Parent, "PortraitImage", 0, 14, -8)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 88, 106)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	local _Handle = GUI:ImageCreate( _Parent, "AttackWin", 0, 83, 0)
	if _Handle ~= 0 then
		--GUI:WndSetSizeM(_GUIHandle, 68, 68)
		--GUI:ImageSetFitSize(_GUIHandle, true)
	end
	_GUIHandle = GUI:ButtonCreate( _Handle, "AttacTypeButton", 1805800013, -39, 98)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle, l.attackmode)
		GUI:WndSetTextColorM(_GUIHandle, CL:MakeARGB(255, 232, 216, 99))
		GUI:WndSetTextM(_GUIHandle, PlayerHeaderInfo.attackModeTable[1][1])	
		PlayerHeaderInfo._attackModeBtn = _GUIHandle
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "PlayerHeaderInfo.OnAttacButtonDown")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "PlayerHeaderInfo.OnAttacButton")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 20)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
	
	_GUIHandle = GUI:EditCreate(_Parent, "playerLevel", 142, 35, 50, 14)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	_GUIHandle = GUI:EditCreate(_Parent, "playerName", 104, 10, 90, 14)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, CL:MakeARGB(255, 194, 182, 160))
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetCanEdit(_GUIHandle, false)

		CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME)
		GUI:EditSetTextM(_GUIHandle, LuaRet)
	end
	
	PlayerHeaderInfo.UIInit(_Parent)
end
function PlayerHeaderInfo.UIInit(_Parent)
	PlayerHeaderInfo._wnd = _Parent
	RegisterUIEvent(LUA_EVENT_CHANGEATTACMODE, "PlayerHeaderInfo_头像攻击模式改变", PlayerHeaderInfo.amChange) 
	RegisterUIEvent(LUA_EVENT_PROPERTYDATA, "PlayerHeaderInfo_32位属性变换", PlayerHeaderInfo.prop32DataChange)
	RegisterUIEvent(LUA_EVENT_PROPERTYDATA64, "PlayerHeaderInfo_64位属性变换", PlayerHeaderInfo.prop64DataChange)
	
    LuaGlobal["BuffIconDrawSizeX"] = 24
    LuaGlobal["BuffIconDrawSizeY"] = 24
    LuaGlobal["BuffIconDrawPosX"] = 127
    LuaGlobal["BuffIconDrawPosY"] = 89
	
	local _menu = 0
	local handle = GetWindow(PlayerHeaderInfo._wnd, "AttackWin")
	_menu = GUI:WndCreateWnd(handle, "menu", 0, -4, 75)
	if _menu ~= 0 then
		PlayerHeaderInfo._menu = _menu
		GUI:WndSetVisible(_menu, false)
		--GUI:WndRegistScript(_menu, RDWndBaseCL_wnd_visible, "PlayerHeaderInfo.menuVisibleChange")
		_GUIHandle = GUI:ImageCreate(_menu, "backImg", 1805800010, -37, 42)
		if _GUIHandle ~= 0 then 
			GUI:WndSetTextOffset(_GUIHandle, 0, 2)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:ImageSetFitSize(_GUIHandle, true)
			GUI:WndSetSizeM(_GUIHandle, 42, 129)
		end
		for i = 1, #(PlayerHeaderInfo.attackModeTable) do
			_GUIHandle = GUI:ButtonCreate(_menu, "btn"..i, 1805800011, -31, 50+(i-1)*17)
			if _GUIHandle ~= 0 then  
				GUI:WndSetSizeM(_GUIHandle, 32, 17)
				GUI:WndSetTextColorM(_GUIHandle, 4290950816)
				GUI:ButtonSetStateTextColor(_GUIHandle, 1, 4280656732)
				GUI:WndSetTextM(_GUIHandle, PlayerHeaderInfo.attackModeTable[i][1])
				GUI:WndSetParam(_GUIHandle, PlayerHeaderInfo.attackModeTable[i][2])
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "PlayerHeaderInfo.menuBtnLC")
			end
		end
	end
	
	CL:AddDelayTask("PlayerHeaderInfo.DelayInitial()", 1000, 1)
	PlayerHeaderInfo.playerAppear()
	UI:Lua_SubmitForm("玩家攻击模式初始化","GetAttackMode","")
end

function PlayerHeaderInfo.DelayInitial()
	PlayerHeaderInfo.prop64DataChange()
end

function PlayerHeaderInfo.ModeEditUpdate(mode)
	local index = tonumber(mode) + 1
	GUI:WndSetTextM(PlayerHeaderInfo._attackModeBtn, PlayerHeaderInfo.attackModeTable[index][1])
end	

function PlayerHeaderInfo.OnVIPBtn(_handle)
    UI:Lua_OpenWindow(0, "VipWnd.lua")
end

function PlayerHeaderInfo.OnRechargeBtn()
	CL:OpenUrlUseIEByType(3)
end

function PlayerHeaderInfo.menuVisibleChange(_h)
	if GUI:WndGetVisible(_h) then
		PlayerHeaderInfo.menuFlag = true
	else
		PlayerHeaderInfo.menuFlag = false
	end
end

function PlayerHeaderInfo.OnAttackMode()
	
	if GUI:WndGetVisible(PlayerHeaderInfo._menu) then
		GUI:WndSetVisible(PlayerHeaderInfo._menu, false)
	else
		GUI:WndSetVisible(PlayerHeaderInfo._menu, true)
		local handle = GetWindow(PlayerHeaderInfo._wnd, "AttackWin")
		GUI:SetPopupMenu(PlayerHeaderInfo._menu,handle)
	end
end

function PlayerHeaderInfo.onInAmsWnd(_h)
	if PlayerHeaderInfo._selAmsWnd == _h then return end
	
	local _GUIHandle = GUI:WndFindChildM(_h, "amsBtnEdit")
	GUI:WndSetTextColorM(_GUIHandle, CL:MakeARGB(255, 0, 254, 0))
	_GUIHandle = GUI:WndFindChildM(_h, "amsBtnBackImage")
	GUI:WndSetVisible(_GUIHandle, true)
	
	if PlayerHeaderInfo._selAmsWnd then
		_GUIHandle = GUI:WndFindChildM(PlayerHeaderInfo._selAmsWnd, "amsBtnEdit")
		GUI:WndSetTextColorM(_GUIHandle, CL:MakeARGB(255, 198, 165, 10))
		_GUIHandle = GUI:WndFindChildM(PlayerHeaderInfo._selAmsWnd, "amsBtnBackImage")
		GUI:WndSetVisible(_GUIHandle, false)
	end
	
	PlayerHeaderInfo._selAmsWnd = _h
end

function PlayerHeaderInfo.menuBtnLC(_h)
	CL:SetAttackMode(GUI:WndGetParam(_h))
	GUI:WndSetVisible(PlayerHeaderInfo._menu, false)
end

function PlayerHeaderInfo.amChange()
	local text = PlayerHeaderInfo.attackModeTable[LuaParam[1]+1][1]
	GUI:WndSetTextM(PlayerHeaderInfo._attackModeBtn, text)
end

function PlayerHeaderInfo.playerAppear()
	local _GUIHandle = 0 
	_GUIHandle = GUI:WndFindChildM(PlayerHeaderInfo._wnd, "playerLevel")
	if _GUIHandle ~= 0 then
		CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL)
		GUI:EditSetTextM(_GUIHandle, "Lv."..tostring(LuaRet))
	end

	_GUIHandle = GUI:WndFindChildM(PlayerHeaderInfo._wnd, "playerName")
	if _GUIHandle ~= 0 then
		CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME)
		GUI:EditSetTextM(_GUIHandle, tostring(LuaRet))
	end
	
	_GUIHandle = GUI:WndFindChildM(PlayerHeaderInfo._wnd, "PortraitImage")
	local  image_Id = {{1805800001,1805800004},{1805800002,1805800005},{1805800003,1805800006}}
	if _GUIHandle ~= 0 then
		CL:GetPlayerSelfPropBase(ROLE_PROP_JOB)
		local jobID = tonumber(LuaRet)
		CL:GetPlayerSelfPropBase(ROLE_PROP_SEX)
		local genderID = tonumber(LuaRet)
		local headID = image_Id[jobID][genderID]
		GUI:WndSetImageID(_GUIHandle, tonumber(headID))
	end
end

function PlayerHeaderInfo.prop32DataChange()
    CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID)
    if LuaParam[1] == LuaRet then
        if LuaParam[2] == ROLE_PROP32_LEVEL then
            local uih = GUI:WndFindChildM(PlayerHeaderInfo._wnd, "playerLevel")
            if uih ~= 0 then
                GUI:EditSetTextM(uih, "Lv."..tostring(LuaParam[3]))
            end
        end
    end
end

function PlayerHeaderInfo.prop64DataChange()
	if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then
		local yb = tonumber(LuaRet)
		local handle = GetWindow(PlayerHeaderInfo._wnd, "YB_v")
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
		if handle ~= 0 then
			local _p = ""
			if _dw ~= "" then
				_p = "."
			end
			GUI:EditSetTextM(handle, tostring(yb).._p.._f.._dw)
		end
	end
	
	if CL:GetPlayerSelfProperty64(ROLE_PROP64_BIND_INGOT) then
		local Bind_yb = tonumber(LuaRet)
		local handle = GetWindow(PlayerHeaderInfo._wnd, "BindYB_v")
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
		if handle ~= 0 then
			local _p = ""
			if _dw ~= "" then
				_p = "."
			end
			GUI:EditSetTextM(handle, tostring(Bind_yb).._p.._f.._dw)
		end
	end
	
	if CL:GetPlayerSelfProperty64(ROLE_PROP64_BIND_GOLD) then
		local BindGold = tonumber(LuaRet)
		local handle = GetWindow(PlayerHeaderInfo._wnd, "BindGold_v")
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
		if handle ~= 0 then
			local _p = ""
			if _dw == "亿" then
				_p = "."
			end
			GUI:EditSetTextM(handle, tostring(BindGold).._p.._f.._dw)
		end
	end
end

--控制点击时创建和关闭列表，因为popupmenu的问题,在按下时检测列表是否存在
PlayerHeaderInfo.Switch = false
function PlayerHeaderInfo.OnAttacButtonDown(_Handle,_Param)
    local _HAttacTypeSelect = GUI:WndFindChildM(PlayerHeaderInfo._wnd, "AttacTypeSelect")
    if _HAttacTypeSelect ~= 0 then
        if GUI:WndGetVisible(_HAttacTypeSelect) then
            PlayerHeaderInfo.Switch = true
        else
            PlayerHeaderInfo.Switch =false  --隐藏被视为不存在
        end
    else
        PlayerHeaderInfo.Switch =false
    end
end

function PlayerHeaderInfo.OnAttacButton(_Handle,_Param)
    if not PlayerHeaderInfo.Switch then
        UI:Lua_OpenWindow(PlayerHeaderInfo._wnd, "AttacTypeSelect.lua")
    end
end

PlayerHeaderInfo.main()