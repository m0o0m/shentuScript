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
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"FamilyEdit",165,95,123,20)
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
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg0",1805900037,45,163)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg1",1805900036,45,226)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg3",1805900034,45,289)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg4",1805900035,167,415)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg5",1805900032,228,415)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg6",1805900029,45,353)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg7",1805900029,350,353)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg8",1805900030,45,415)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg9",1805900030,350,415)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg10",1805900031,106,415)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg11",1805900033,289,415)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg12",1800900114,350,289)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
        
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg15",1805900038,350,226)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    --[[_GUIHandle = GUI:ItemCtrlCreate(_Parent,"WingShow",0,119,80,100,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"���չʾ")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,100, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 172,168)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end--]]
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment2",0,164,120,100,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"���չʾ")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,100, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 212,230)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment14",0,175,190,80,170)
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetHint(_GUIHandle,"�·�")
        GUI:WndSetParam(_GUIHandle, 14)
        GUI:WndSetSizeM(_GUIHandle,80, 170)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 215,243)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment13",0,141,120,50,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"����")
        GUI:WndSetParam(_GUIHandle, 13)
        GUI:WndSetSizeM(_GUIHandle,50, 240)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 215,243)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment16",0,241,243,49,62)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"����")
        GUI:WndSetParam(_GUIHandle, 16)
        GUI:WndSetSizeM(_GUIHandle,49, 62)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 232,255)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image0",0,83,90)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,265, 304)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment0",0,49,167,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"ͷ��")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment1",0,49,230,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"����")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
        _GUIHandle = GUI:ImageCreate(_Parent, "HatShowBkImg", 1805900039, 350, 170)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 48, 48)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "HatShow", -1, 53, 233, 32, 32)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "����")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 4)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 212, 230)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment18", -1, 355, 173, 42, 42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "����")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,18)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 32, 32)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment3",0,49,293,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"ѫ��")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment6",0,49,357,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"����")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment8",0,49,419,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"��ָ")
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment10",0,110,419,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"����")
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment4",0,171,419,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"�ػ�")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment5",0,232,419,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"����")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment11",0,293,419,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"Ь��")
        GUI:WndSetParam(_GUIHandle, 11)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment9",0,354,419,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"��ָ")
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment7",0,354,357,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"����")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment12",0,354,293,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"����")
        GUI:WndSetParam(_GUIHandle, 12)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment15",0,354,230,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"��ʯ")
        GUI:WndSetParam(_GUIHandle, 15)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1805900080,395,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleEquiment.CloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 38)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    OtherRoleEquiment.UIInit(_Parent)
end

--UI Logic Code Start

--UI������װ������
--	site_helmet,   /// ͷ��0
--	site_necklace, /// ����1
--	site_wings,    /// ���2
--	site_medal,    /// ѫ��3
--	site_amulet,   /// �ػ�4
--	site_shoulder, /// ����5
--	site_wrist_0,  /// ����0 6
--	site_wrist_1,  /// ����1 7
--	site_ring_0,   /// ��ָ0 8
--	site_ring_1,   /// ��ָ1 9
--	site_juju,     /// ����10
--	site_shoes,    /// Ь��11
--	site_mount,    /// ����12
--	site_weapon,   /// ����13
--	site_armor,    /// �·�14
--	site_gem,      /// ��ʯ15
--	site_shield,   /// ����16
--	site_jewelry,   /// ʱװ17
--	site_hat,       /// ����18
--	site_gloves,    /// ����19
--	site_jewelry,   /// �鱦20

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
	RegisterUIEvent(LUA_EVENT_OTHERROLEDATA, "OtherRoleEquipment_OtherRoleData", OtherRoleEquiment.propData)		--�����������
	
	local _GUIHandle = 0
	    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment13")--����
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

	_GUIHandle = GUI:WndFindWindow(_Handle, "Equiment16")--����
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end
	
    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment2")--���չʾ
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end
end

function OtherRoleEquiment.propData()
	local _Gender = LuaParam[1]
	local _Name = LuaParam[2]
	local _Level = LuaParam[3]
	local _Job = LuaParam[4]
	local _Family = LuaParam[5]
	OtherRoleEquiment.WndHandle = GUI:WndFindWindow(0, "OtherRoleEquiment")
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "image0")--ͷ��
	if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
		if _Gender == 1 then
			GUI:WndSetImageID(_GUIHandle, OtherRoleEquiment.ManHairTable[_Job])
		else
            GUI:WndSetImageID(_GUIHandle, OtherRoleEquiment.WomanHairTable[_Job])
		end
    end
	
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "Equiment14")--�·�
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
		GUI:EditSetTextM(_GUIHandle,"ְҵ��"..RDJOBName[_Job])
    end
	
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "LevelEdit")
    if 0 ~= _GUIHandle then
		GUI:EditSetTextM(_GUIHandle,"�ȼ���".._Level)
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