--UI界面用装备索引
--	site_helmet,   /// 头盔0
--	site_necklace, /// 项链1
--	site_wings,    /// 翅膀2
--	site_medal,    /// 勋章3
--	site_amulet,   /// 守护4
--	site_shoulder, /// 护肩5
--	site_wrist_0,  /// 护腕0 6
--	site_wrist_1,  /// 护腕1 7
--	site_ring_0,   /// 戒指0 8
--	site_ring_1,   /// 戒指1 9
--	site_juju,     /// 符咒10
--	site_shoes,    /// 鞋子11
--	site_mount,    /// 坐骑12
--	site_weapon,   /// 武器13
--	site_armor,    /// 衣服14
--	site_gem,      /// 宝石15
--	site_shield,   /// 盾牌16
--	site_jewelry,   /// 时装17
--	site_hat,       /// 斗笠18
--	site_gloves,    /// 手套19
--	site_jewelry,   /// 珠宝20



RoleEuiment = {}

RoleEuiment.ManHairTable = 
{
    1990401250, 
    1990401250,
    1990401250, 
    1990401250,
    1990401250, 
    1990401250,
    1990401250, 
    1990401250,    
    1990401250, 
    1990401250
}


RoleEuiment.WomanHairTable = 
{
    1990401251, 
    1990401251,
    1990401251, 
    1990401251,
    1990401251, 
    1990401251,
    1990401251, 
    1990401251,    
    1990401251, 
    1990401251
}

RoleEuiment.UseShield = true

function RoleEuiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = _Parent

    local _BackImage = GUI:ImageCreate(_GUIHandle, "GUI_2", 1930200105, 0, -2)
    if _BackImage ~= 0 then
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment1",-1,196,88,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"项链")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,1)
    end
	
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment2",-1,8,136,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"翅膀")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,2)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment3",-1,196,136,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"勋章")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,3)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment4",-1,53,280,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"玉佩")  --2015/5/10 守护改玉佩--
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,4)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment5",-1,102,280,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"腰带")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,5)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment6",-1,8,184,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,6)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment7",-1,196,184,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,7)
    end    


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment8",-1,8,233,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,8)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment9",-1,196,232,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,9)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment10",-1,8,280,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"符咒")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,10)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment11",-1,151,280,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"鞋子")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,11)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment12",-1,196,280,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"坐骑")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,12)
    end    

--    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment17",-1,8,100,34,34)
--    if _GUIHandle ~= 0 then
--        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
--        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
--        GUI:WndSetHint(_GUIHandle,"时装")
--        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
--        GUI:WndSetParam(_GUIHandle,17)
--    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"WingShow",-1,105,168,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"翅膀展示")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment14",-1,131,224,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"衣服")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,14)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment13",-1,33,223,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"武器")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,13)
    end

--	if RoleEuiment.UseShield then
--		_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment16",-1,131,224,32,32)
--		if _GUIHandle ~= 0 then
--			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
--			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
--			GUI:WndSetHint(_GUIHandle,"盾牌")
--			GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
--			GUI:WndSetParam(_GUIHandle,16)
--		end
--	end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment15",-1,196,41,34,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"宝石")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,15)
    end


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment0",-1,106,112,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"头盔")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,0)
    end

    local _RoleNameEdit = GUI:EditCreate(_Parent, "RoleName", 55, -63, 131, 19)
    if _RoleNameEdit ~= 0 then
        GUI:EditSetCanEdit(_RoleNameEdit, false)
        GUI:EditSetFontCenter(_RoleNameEdit)
    end

	local _RoleLevelEdit = GUI:EditCreate(_Parent, "RoleLevel", 3, 4, 34, 19)
    if _RoleLevelEdit ~= 0 then
        GUI:EditSetCanEdit(_RoleLevelEdit, false)
        GUI:EditSetFontCenter(_RoleLevelEdit)
    end

    local _FamilyNameEdit = GUI:RichEditCreate(_Parent, "FamilyNameEdit", 46, 5, 151, 16)
    if _FamilyNameEdit ~= 0 then
        GUI:RichEditSetEditEnable(_FamilyNameEdit, false)
        GUI:WndAddFlags(_FamilyNameEdit, 2097152)
    end


    _BackImage = GUI:ImageCreate(_Parent, "EnhanceLv", 0, 111, 30)
    if _BackImage ~= 0 then
    end

    _BackImage = GUI:ImageCreate(_Parent, "EnhanceMagic", 1088400000, 89, 3)
    if _BackImage ~= 0 then
    end

--   _GUIHandle = GUI:CheckBoxCreate(_Parent,"ShowFashion",1900112013,"显示时装",117,300)
--    if _GUIHandle ~= 0 then
--        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "HeroEuiment.FashionShowChange")
--        GUI:WndSetTextM(_GUIHandle,"显示时装")
--        GUI:WndSetTextColorM(_GUIHandle,4290950816)
--        GUI:CheckBoxSetAutoChange(_GUIHandle,true)
--    end

	local _FashionBtn = GUI:ButtonCreate(_Parent, "FashionBtn", 1930200146, 195, 4)
	if _FashionBtn ~= 0 then
		GUI:WndRegistScript(_FashionBtn, RDWndBaseCL_mouse_lbUp, "RoleEuiment.FashinBtnOnLBTNUp")
    end


    RoleEuiment.UIInit(_Parent)
end



--UI Logic Code Start

RoleEuiment.WndHandle = 0
function RoleEuiment.UIInit(_Parent)
	RoleEuiment.WndHandle = _Parent
   local _Handle = _Parent
	
	local _Gender = 1
	if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then 
		_Gender = LuaRet
	end

    local _HairIndex = 1
    if CL:GetPlayerSelfPropBase(ROLE_PROP_HAIRSTYLE) then 
        _HairIndex = LuaRet + 1
        if _HairIndex > #RoleEuiment.ManHairTable then
            _HairIndex = 1
        end
    end

   local _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment0")
   if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 98, 67)
        GUI:WndSetSizeM(_GUIHandle, 34, 34)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 3)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 114, 127)
        GUI:ImageSetDrawCenter(_GUIHandle,true)

		if _Gender == 1 then
			GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEuiment.ManHairTable[_HairIndex])
		else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEuiment.WomanHairTable[_HairIndex])
		end
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment13")
    if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 33, 7)
        GUI:WndSetSizeM(_GUIHandle, 50, 240)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 1)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 114, 127)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

	_GUIHandle = GUI:WndFindWindow(_Handle, "Equiment16")
    if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 120, 150)
        GUI:WndSetSizeM(_GUIHandle, 70, 110)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 1)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 114, 127)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment14")
    if _GUIHandle ~= 0 then
        GUI:WndSetPosM(_GUIHandle, 73, 102)
        GUI:WndSetSizeM(_GUIHandle, 80, 170)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 2)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 114, 127)
        GUI:ImageSetDrawCenter(_GUIHandle,true)

        if _Gender == 1 then
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401001)
        else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990401002)
        end
    end


    _GUIHandle = GUI:WndFindWindow(_Handle, "WingShow")
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle,false)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 4)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 114, 127)
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

function RoleEuiment.FashionShowChange(_Handle,_Param)
end

function RoleEuiment.FashinBtnOnLBTNUp()
	UI:Lua_OpenWindow(RoleEuiment.WndHandle, "FashionEquiment.lua")
end

function RoleEuiment.ItemOnRBTNUp()
	
end

function RoleEuiment.ItemOnLBTNUp()
	
end

RoleEuiment.main()