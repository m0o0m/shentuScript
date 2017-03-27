OtherRoleEquiment = {}
function OtherRoleEquiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
	_GUIHandle = GUI:ImageCreate(_Parent,"OtherRoleEquiment",1805900006,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1805900012,177,6)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,96, 29)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"BackImg",1805900007,34,49)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,381, 429)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"NameImg",1805900017,128,59)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,196, 39)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"RoleNameEdit",164,68,122,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292794311)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"FamilyEdit",163,103,123,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292794311)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"JobEdit",319,58,90,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292794311)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"LevelEdit",319,84,90,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292794311)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1805900080,395,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleEquiment.CloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 38)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg0",1805900037,47,164)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg1",1805900036,352,164)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg3",1805900034,352,290)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg4",1805900035,169,416)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg5",1805900032,230,416)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg6",1805900029,47,353)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg7",1805900029,352,353)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg8",1805900030,47,416)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg9",1805900030,352,416)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg10",1805900031,108,416)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg11",1805900033,291,416)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg13",1805900026,47,227)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg14",1805900027,47,290)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg15",1805900038,352,227)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg19",1805900034,108,353)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg16",1805900036,291,353)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,48, 48)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"WingShow",0,166,143,100,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"翅膀展示")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,100, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 215,241)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equimentclothes",0,177,173,80,170)
	if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"衣服")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 14)
        GUI:WndSetSizeM(_GUIHandle,80, 170)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 216,241)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:WndSetMouseEnableIN(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equimentweapons",0,138,138,50,240)
	if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"武器")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 13)
        GUI:WndSetSizeM(_GUIHandle,50, 240)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 246,241)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:WndSetMouseEnableIN(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment14",0,51,295,42,42)
	if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"衣服")
        GUI:WndSetParam(_GUIHandle, 14)
        GUI:WndSetSizeM(_GUIHandle,42,42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equimentshields",0,233,243,48,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetHint(_GUIHandle,"盾牌")
        GUI:WndSetParam(_GUIHandle, 16)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 100,104)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetMouseEnableIN(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ImageCreate(_Parent,"image0",0,103,101)
	if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,265, 304)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment0",0,51,169,42,42)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"头盔")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
       -- GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        --GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 186,198)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
   
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment13",0,51,232,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"武器")
        GUI:WndSetParam(_GUIHandle, 13)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment3",0,356,295,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"勋章")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment6",0,51,358,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment8",0,51,421,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment10",0,112,421,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"符咒")
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment4",0,173,421,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"守护")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment5",0,234,421,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"腰带")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment11",0,295,421,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"鞋子")
        GUI:WndSetParam(_GUIHandle, 11)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment9",0,356,421,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment7",0,356,358,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment15",0,356,232,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"宝石")
        GUI:WndSetParam(_GUIHandle, 15)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment1",0,356,169,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"项链")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment16",0,295,358,42,42)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"盾牌")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,42, 42)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment19",0,112,358,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"吊坠")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    OtherRoleEquiment.UIInit(_Parent)
end

--UI Logic Code Start

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

OtherRoleEquiment.WndHandle = 0
OtherRoleEquiment.UseShield = true
OtherRoleEquiment.ManHairTable = 
{
	1890900000, 
    1890900002,
    1890900004
}


OtherRoleEquiment.WomanHairTable = 
{
	1890900001, 
    1890900003,
    1890900005
}

OtherRoleEquiment.Open = false


function OtherRoleEquiment.UIInit(_Handle)
	OtherRoleEquiment.WndHandle = _Handle
	GUI:WndSetSizeM(_Handle,449, 504)
	GUI:WndSetIsESCClose(_Handle, true)
	GUI:WndSetMoveWithLBM(_Handle)
	GUI:WndSetMagicUI(_Handle,1)
	RegisterUIEvent(LUA_EVENT_OTHERROLEDATA, "OtherRoleEquipment_OtherRoleData", OtherRoleEquiment.propData)		--其他玩家数据
	
	local _GUIHandle = 0
	    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment13")--武器
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

	_GUIHandle = GUI:WndFindWindow(_Handle, "Equiment16")--盾牌
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end
	
    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment2")--翅膀展示
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end
    CL:AddDelayTask("OtherRoleEquiment.UpdateEquipments()", 100, 1)
end

function OtherRoleEquiment.UpdateEquipments()
    if CL:GetPlayerTargetEquipData() then
        guid_tb  = LuaRet
        local res_number = 0
        local Is_weap = 0
        for i = 1, #guid_tb do
            CL:GetItemGUIDataPropByType(guid_tb[i] , ITEMGUIDATA_ITEMGUID)
            local guid = LuaRet
            local item_handle = CL:GetItemTemplateHandleByGUID(guid) 
            if CL:GetItemTemplatePropByHandle(item_handle, ITEM_PROP_SUBTYPE) then
                if LuaRet == 4 then                     
                    RDItemCtrlSetGUIDataPropByGUID(OtherRoleEquiment.WndHandle,"Equimentclothes", guid)
                    if CL:GetItemTemplatePropByHandle(item_handle, ITEM_PROP_BIGICON) then
                        res_number = LuaRet
                        res_number = math.floor(tonumber(res_number)/100000000)
                        if tonumber(res_number) == 19 then
                            local handle = GetWindow(OtherRoleEquiment.WndHandle, "image0")
                            if handle ~= 0 then
                                GUI:WndSetPosM(handle, 83, 91) 
                            end
                        else
                            local handle = GetWindow(OtherRoleEquiment.WndHandle, "image0")
                            if handle ~= 0 then
                                GUI:WndSetPosM(handle, 83, 85) 
                            end
                        end
                    end 
                elseif LuaRet == 1 then
                    RDItemCtrlSetGUIDataPropByGUID(OtherRoleEquiment.WndHandle,"Equimentweapons" , guid)   
                    Is_weap = 1     
                elseif LuaRet == 15 then
                    RDItemCtrlSetGUIDataPropByGUID(OtherRoleEquiment.WndHandle,"Equimentshields" , guid)      
                end 
            end
        end
        if Is_weap == 1 then
            local handle = GetWindow(OtherRoleEquiment.WndHandle, "Equimentweapons")
            if tonumber(res_number) == 19  then     
                if handle ~= 0 then
                    if _Gender == 1 then
                        GUI:ItemCtrlSetBigIconOffset(handle, 216,241)
                    else
                        GUI:ItemCtrlSetBigIconOffset(handle, 216+1, 241+1)
                    end
                end 
            else
                if handle ~= 0 then
                    if _Gender == 1 then
                        GUI:ItemCtrlSetBigIconOffset(handle, 216-10, 241-4)
                    else
                        GUI:ItemCtrlSetBigIconOffset(handle, 216-1, 241-2)
                    end
                end                 
            end
        end 
    end
end

function OtherRoleEquiment.propData()
	local _Gender = LuaParam[1]
	local _Name = LuaParam[2]
	local _Level = LuaParam[3]
	local _Job = LuaParam[4]
	local _Family = LuaParam[5]
	CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME)
	if _Name == LuaRet then return end
	OtherRoleEquiment.WndHandle = GUI:WndFindWindow(0, "OtherRoleEquiment")
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "image0")--头盔
	if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
		if _Gender == 1 then
			GUI:WndSetImageID(_GUIHandle, OtherRoleEquiment.ManHairTable[_Job])
		else
            GUI:WndSetImageID(_GUIHandle, OtherRoleEquiment.WomanHairTable[_Job])
		end
    end
	
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "Equiment14")--衣服
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)

        if _Gender == 1 then
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900006)
        else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900007)
        end
    end
	
	local _GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "JobEdit")
    if 0 ~= _GUIHandle then
		GUI:EditSetTextM(_GUIHandle,"职业："..RDJOBName[_Job])
    end
	
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "LevelEdit")
    if 0 ~= _GUIHandle then
		GUI:EditSetTextM(_GUIHandle,"等级：".._Level)
    end
	
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "FamilyEdit")
    if 0 ~= _GUIHandle then
		GUI:EditSetTextM(_GUIHandle,_Family)
    end
	
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "RoleNameEdit")
    if 0 ~= _GUIHandle then
		GUI:EditSetTextM(_GUIHandle,_Name)
    end
end

function OtherRoleEquiment.CloseBtn()
	GUI:WndClose(OtherRoleEquiment.WndHandle)
end

OtherRoleEquiment.main()