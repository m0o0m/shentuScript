OtherRoleEuiment = {}


OtherRoleEuiment.UseShield = true

function OtherRoleEuiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = _Parent

    local _BackImage = GUI:ImageCreate(_GUIHandle, "GUI_2", 1930200114, 0, 0)
    if _BackImage ~= 0 then
		GUI:WndSetCanRevMsg(_BackImage, false)
    end

	local _ButtonHandle = GUI:ButtonCreate(_GUIHandle, "Close", 1930001002, 243, 12)
	if _ButtonHandle ~= 0 then
		GUI:WndRegistScript(_ButtonHandle, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.CloseBtnUp")
	end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "WingShow", -1, 105, 176, 57, 54)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "翅膀展示")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment1", -1, 211, 146, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "项链")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 1)
    end
	
    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment2", -1, 23, 194, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "翅膀")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 2)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment3", -1, 211, 195, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "勋章")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 3)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment4", -1, 68, 339, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "守护")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 4)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment5", -1, 117, 338, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "腰带")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 5)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment6", -1, 23, 243, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,6)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment7", -1, 211, 243, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "护腕")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 7)
    end    


    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment8", -1, 23, 291, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "戒指")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle,8)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment9", -1, 211, 292, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "戒指")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 9)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment10", -1, 23, 339, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "符咒")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 10)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment11", -1, 166, 339, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "鞋子")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 11)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment12", -1, 211, 339, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "坐骑")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 12)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment14", -1, 142, 240, 57, 54)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "衣服")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 14)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment13", -1, 69, 241, 57, 54)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "武器")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle,13)
    end

	if OtherRoleEuiment.UseShield then
		_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment16",-1,131,224,32,32)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
			GUI:WndSetHint(_GUIHandle,"盾牌")
			GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
			GUI:WndSetParam(_GUIHandle,16)
		end
	end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment15", -1, 211, 99, 34, 34)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "宝石")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 15)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 32, 32)--修改窗口尺寸
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment0", -1, 109, 109, 32, 32)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "头盔")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end

    local _RoleNameEdit = GUI:EditCreate(_Parent, "RoleName", 73, 25, 131, 18)
    if _RoleNameEdit ~= 0 then
        GUI:WndSetEnableM(_RoleNameEdit, false)
        GUI:EditSetFontCenter(_RoleNameEdit)
    end

	local _RoleLevelEdit = GUI:EditCreate(_Parent, "RoleLevel", 16, 59, 25, 17)
    if _RoleLevelEdit ~= 0 then
        GUI:WndSetEnableM(_RoleLevelEdit, false)
        GUI:EditSetFontCenter(_RoleLevelEdit)
    end

    local _FamilyNameEdit = GUI:RichEditCreate(_Parent, "FamilyNameEdit", 41, 59, 187, 16)
    if _FamilyNameEdit ~= 0 then
        GUI:RichEditSetEditEnable(_FamilyNameEdit, false)
        GUI:WndAddFlags(_FamilyNameEdit, 2097152)
    end


    _BackImage = GUI:ImageCreate(_Parent, "EnhanceLv", 0, 123, 83)
    if _BackImage ~= 0 then
    end

    _BackImage = GUI:ImageCreate(_Parent, "EnhanceMagic", 1088400000, 101, 59)
    if _BackImage ~= 0 then
    end

	local _FashionBtn = GUI:ButtonCreate(_Parent, "FashionBtn", 1930200146, 207, 76)
	if _FashionBtn ~= 0 then
		GUI:WndRegistScript(_FashionBtn, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.FashinBtnOnLBTNUp")
    end

	local _TextColor = CL:MakeARGB(255, 194, 182, 160)
	local _FriendBtn = GUI:ButtonCreate(_Parent, "Friend", 1930001006, 39, 391)
	if _FriendBtn ~= 0 then
		GUI:WndRegistScript(_FriendBtn, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.FriendBtnOnLBTNUp")
		GUI:WndSetTextM(_FriendBtn, "好 友")
		GUI:WndSetTextColorM(_FriendBtn, _TextColor)
    end

	local _TradeBtn = GUI:ButtonCreate(_Parent, "Trade", 1930001006, 114, 391)
	if _TradeBtn ~= 0 then
		GUI:WndRegistScript(_TradeBtn, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.TradeBtnOnLBTNUp")
		GUI:WndSetTextM(_TradeBtn, "交 易")
		GUI:WndSetTextColorM(_TradeBtn, _TextColor)
    end

	local _PrivateTalkBtn = GUI:ButtonCreate(_Parent, "PrivateTalk", 1930001006, 189, 391)
	if _PrivateTalkBtn ~= 0 then
		GUI:WndRegistScript(_PrivateTalkBtn, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.PrivateTalkBtnOnLBTNUp")
		GUI:WndSetTextM(_PrivateTalkBtn, "对 话")
		GUI:WndSetTextColorM(_PrivateTalkBtn, _TextColor)
    end

    OtherRoleEuiment.UIInit(_Parent)
end



--UI Logic Code Start

OtherRoleEuiment.WndHandle = 0
function OtherRoleEuiment.UIInit(_Parent)
	OtherRoleEuiment.WndHandle = _Parent
	GUI:WndCalSize(_Parent)
   local _Handle = _Parent
	
	local _Gender = 1
	if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then 
		_Gender = LuaRet
	end

   local _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment0")
   if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 120, 124)
        GUI:WndSetSizeM(_GUIHandle, 34, 34)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 3)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 131, 184)
        GUI:ImageSetDrawCenter(_GUIHandle, true)

		if _Gender == 1 then
			GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401250)
		else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401251)
		end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment13")
    if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 50, 64)
        GUI:WndSetSizeM(_GUIHandle, 50, 240)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 1)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 131, 184)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment14")
    if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 90, 159)
        GUI:WndSetSizeM(_GUIHandle, 80, 170)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 2)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 131, 184)
        GUI:ImageSetDrawCenter(_GUIHandle,true)

        if _Gender == 1 then
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401001)
        else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401002)
        end
    end

	_GUIHandle = GUI:WndFindWindow(_Handle, "Equiment16")
    if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 120, 150)
        GUI:WndSetSizeM(_GUIHandle, 70, 110)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 1)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 131, 184)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end


    _GUIHandle = GUI:WndFindWindow(_Handle, "WingShow")
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle,false)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 4)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 131, 184)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

    local _ShowFashionHandle = GUI:WndFindWindow(_Handle, "ShowFashion")
    if _ShowFashionHandle ~= 0 then
        local _ShowFashion = CL:HeroGetShowFashion()
        GUI:CheckBoxSetCheck(_ShowFashionHandle, _ShowFashion)
    end

    local _EditHandle = GUI:WndFindWindow(_Handle, "RoleName")
    if 0 ~= _EditHandle then
        GUI:WndSetTextColorM(_EditHandle,4290950816)
    end
end


function OtherRoleEuiment.FashinBtnOnLBTNUp()
	UI:Lua_OpenWindow(OtherRoleEuiment.WndHandle, "OtherFashionEquiment.lua")
end

function OtherRoleEuiment.CloseBtnUp(_Handle,_Param)
	local _ParentHandle = GUI:WndGetParentM(_Handle)
	if _ParentHandle ~= 0 then 
		GUI:WndClose(_ParentHandle)
	end
end

function OtherRoleEuiment.FriendBtnOnLBTNUp(_Handle,_Param)
	local _EditHandle = GUI:WndFindWindow(OtherRoleEuiment.WndHandle, "RoleName")
    if 0 ~= _EditHandle then
		local _PlayerName = GUI:EditGetTextM(_EditHandle)
		CL:LogicAddFriend(_PlayerName)
    end
end

function OtherRoleEuiment.TradeBtnOnLBTNUp(_Handle,_Param)
	local _ViewPlayerGUID = CL:GetViewEquipTarPlayerGUID()
	if _ViewPlayerGUID ~= "" then
		CL:DoTrade(_ViewPlayerGUID)
	end
end

function OtherRoleEuiment.PrivateTalkBtnOnLBTNUp(_Handle,_Param)
	local _EditHandle = GUI:WndFindWindow(OtherRoleEuiment.WndHandle, "RoleName")
    if 0 ~= _EditHandle then
		local _PlayerName = GUI:EditGetTextM(_EditHandle)
		CL:LogicSendPrivateTalk(_PlayerName)
    end
end

OtherRoleEuiment.main()