--
-- Author: miyezng
-- Date: 2016-09-26 12:02:03
-- Last Modified by:   miyezng
-- Last Modified time: 2016-10-09 14:40:23
--
--UI������װ������
--  site_helmet,   /// ͷ��0
--  site_necklace, /// ����1
--  site_wings,    /// ���2
--  site_medal,    /// ѫ��3
--  site_amulet,   /// �ػ�4
--  site_shoulder, /// ����5
--  site_wrist_0,  /// ����0 6
--  site_wrist_1,  /// ����1 7
--  site_ring_0,   /// ��ָ0 8
--  site_ring_1,   /// ��ָ1 9
--  site_juju,     /// ����10
--  site_shoes,    /// Ь��11
--  site_mount,    /// ����12
--  site_weapon,   /// ����13
--  site_armor,    /// �·�14
--  site_gem,      /// ��ʯ15
--  site_shield,   /// ����16
--  site_jewelry,   /// ʱװ17
--  site_hat,       /// ����18
--  site_gloves,    /// ����19
--  site_jewelry,   /// �鱦20



RoleEuiment = {}

RoleEuiment.ManHairTable =
{
    1990400003,
    1990400003,
    1990400003,
    1990400003,
    1990400003,
    1990400003,
    1990400003,
    1990400003,
    1990400003,
    1990400003
}


RoleEuiment.WomanHairTable =
{
    1990400004,
    1990400004,
    1990400004,
    1990400004,
    1990400004,
    1990400004,
    1990400004,
    1990400004,
    1990400004,
    1990400004
}

RoleEuiment.Items =
{
    {1910300008, 303, 205, 1, "����"},
    {1910300006, 38, 205, 2, "���"},
    {1910300007, 303, 155, 3, "ѫ��"},
    --{1910300017, 303, 100, 4, "�ػ�"},
    {1910300014, 195, 355, 5, "����"},
    {1910300009, 38, 255, 6, "����"},
    {1910300009, 303, 255, 7, "����"},
    {1910300010, 38, 305, 8, "��ָ"},
    {1910300010, 303, 305, 9, "��ָ"},
    {1910300012, 38, 355, 10, "����"},
    {1910300016, 250, 355, 11, "Ь��"},
    {1910300011, 303, 355, 12, "����"},
    {1910300013, 90, 355, 15, "��ʯ"},
    {1910300015, 142, 355, 20, "Ѫʯ"},
    {0, 85,178, "WingShow", "���չʾ", 4, 32, 32},
    {0, 150, 140, 14, "�·�", 2, 80, 170},
    {0, 88, 37, 13, "����", 1, 50, 240},
    {0, 215, 180, 16, "����", 1, 70, 110},
    {0, 168, 90, 0, "ͷ��", 3, 34, 34},
    {1910300017, 303, 100, "Fashion", "ʱװ"},
    --{0, 168, 90, 18, "����", 3, 34, 34},
};

RoleEuiment.CurFashionItemGUID = ""
RoleEuiment.FashionSite = 18

function RoleEuiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    RoleEuiment.Parent = GUI:WndGetParentM(_Parent)

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

    for k, v in ipairs(RoleEuiment.Items) do
        if v[1] ~= 0 then
            GUI:ImageCreate(_Parent, "ItemBack"..k, v[1], v[2]-3, v[3]-3);
        end

        local wnd = type(v[4]) == "number" and "Equiment"..v[4] or v[4];
        local param = tonumber(v[4]) or 1;
        local _GUIHandle = GUI:ItemCtrlCreate(_Parent,wnd,-1,v[2],v[3],36,36);
        if _GUIHandle ~= 0 then
            GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "RoleEuiment.ItemOnRBTNUp");
            GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleEuiment.ItemOnLBTNUp");
            GUI:WndSetHint(_GUIHandle,v[5]);
            GUI:ItemCtrlSetRBtnUse(_GUIHandle,false);
            GUI:WndSetParam(_GUIHandle,param-1);
            GUI:ItemCtrlSetIconSize(_GUIHandle, 36, 36)

            if v[6] ~= nil then
                GUI:WndSetSizeM(_GUIHandle, v[7], v[8]);
                GUI:ItemCtrlSetBigIcon(_GUIHandle, v[6]);
                GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 189, 210);
                GUI:ImageSetDrawCenter(_GUIHandle,true);

                if v[4] == 0 then
                    if _Gender == 1 then
                        GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEuiment.ManHairTable[_HairIndex]);
                    else
                        GUI:ItemCtrlSetDefaultImage(_GUIHandle, RoleEuiment.WomanHairTable[_HairIndex]);
                    end
                elseif v[4] == 14 then
                    if _Gender == 1 then
                        GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990400001);
                    else
                        GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990400002);
                    end
                elseif v[4] == "WingShow" then
                    GUI:WndSetCanRevMsg(_GUIHandle,false);
                end
            end

            if v[1] ~= 0 then
                GUI:WndAddProperty(_GUIHandle, "ImageIndex", tostring(k));
                GUI:WndRegistScript(_GUIHandle, RDWnd2DItemCtrl_ItemIn, "RoleEuiment.OnItemIn");
                GUI:WndRegistScript(_GUIHandle, RDWnd2DItemCtrl_ItemOut, "RoleEuiment.OnItemOut");
            end
        end
    end

    local _RoleLevelEdit = GUI:EditCreate(_Parent, "RoleLevel", 35, 10, 34, 19)
    if _RoleLevelEdit ~= 0 then
        GUI:EditSetCanEdit(_RoleLevelEdit, false)
        GUI:EditSetFontCenter(_RoleLevelEdit)
    end

    local _FamilyNameEdit = GUI:RichEditCreate(_Parent, "FamilyNameEdit", 118, 10, 151, 16)
    if _FamilyNameEdit ~= 0 then
        GUI:RichEditSetEditEnable(_FamilyNameEdit, false)
        GUI:WndAddFlags(_FamilyNameEdit, 2097152)
    end


    GUI:ImageCreate(_Parent, "EnhanceLv", 1900800055, 200, 55)
    GUI:ImageCreate(_Parent, "EnhanceMagic", 1088400000, 160, 28)

    local _FashionBtn = GUI:CheckBoxCreate(_Parent, "FashionBtn", 1910300102, "", 300, 80)
    if _FashionBtn ~= 0 then
        GUI:WndRegistScript(_FashionBtn, RDWnd2DCheckCL_check_change, "RoleEuiment.FashinBtnOnLBTNUp")
    end

    UI:Lua_OpenWindow(_Parent, "FashionEquiment.lua");

    local _EnhanceBtn = GUI:ButtonCreate(_Parent, "EnhanceBtn", 1910000054, 303, 10)
    if _EnhanceBtn ~= 0 then
        GUI:WndRegistScript(_EnhanceBtn, RDWndBaseCL_mouse_lbUp, "RoleEuiment.OnEnhanceBtn")
    end

    local _Fashion = GUI:WndFindChildM(_Parent, "Fashion");
    if 0 ~= _Fashion then
        GUI:WndRegistScript(_Fashion,RDWndBaseCL_mouse_rbUp, "RoleEuiment.FashionOnRBTNUp")
        GUI:WndRegistScript(_Fashion,RDWndBaseCL_mouse_lbUp, "RoleEuiment.FashionOnLBTNUp")
        GUI:ItemCtrlSetItemDataAutoManager(_Fashion,true)
        GUI:WndAddTimerBrief(_Fashion,30,"RoleEuiment.OnUpdata")
        local _FashionItemDataHandle = CL:GetEquimentItemDataPart(RoleEuiment.FashionSite)
        if _FashionItemDataHandle ~= 0 then
            GUI:ItemCtrlSetGUIData(_Fashion, _FashionItemDataHandle)
        end
    end
end

function RoleEuiment.OnUpdata(_Fashion)
    local _FashionEquimentGUID = CL:GetPlayerSelfEquipGUID(RoleEuiment.FashionSite)
    if _FashionEquimentGUID ~= "" then
        if RoleEuiment.CurFashionItemGUID ~= _FashionEquimentGUID then
            RoleEuiment.CurFashionItemGUID = _FashionEquimentGUID
            local _FashionItemDataHandle = CL:GetEquimentItemDataPart(RoleEuiment.FashionSite)
            GUI:ItemCtrlSetGUIData(_Fashion, _FashionItemDataHandle)
        end
    else
        GUI:ItemCtrlClearItemData(_Fashion)
        RoleEuiment.CurFashionItemGUID = 0
    end
end

function RoleEuiment.FashionOnLBTNUp(_Handle,_Param)
    local ItemGUIData = CL:GetMouseGUIItemData()
    if ItemGUIData ~= 0 then
        CL:GetItemGUIDataPropByType(ItemGUIData, ITEMGUIDATA_ITEMGUID)
        local _ItemGUID = LuaRet
        CL:PlayerMoveItem(_ItemGUID, RoleEuiment.FashionSite)
        CL:ClearMouseGUIItemData()
    else
        local _FashionItemDataHandle = CL:GetEquimentItemDataPart(RoleEuiment.FashionSite)
        CL:SetMouseGUIItemData(_FashionItemDataHandle)
    end
end


function RoleEuiment.FashionOnRBTNUp(_Handle,_Param)
    local _FashionItemDataHandle = CL:GetEquimentItemDataPart(RoleEuiment.FashionSite)
    if _FashionItemDataHandle ~= 0 then
        if CL:GetItemGUIDataPropByType(_FashionItemDataHandle,ITEMGUIDATA_ITEMGUID) then
            local _ItemGUID = LuaRet
            if  _ItemGUID ~= "" then
                local _PackageFreeSiteIdx = CL:PlayerGetPakageFreeSiteIdx()
                if _PackageFreeSiteIdx > 0 then
                    CL:PlayerMoveItem(_ItemGUID, _PackageFreeSiteIdx + 22)
                end
            end
        end
    end
end

function RoleEuiment.FashinBtnOnLBTNUp(_FashionBtn)
    local _Parent = GUI:WndGetParentM(_FashionBtn);
    if _Parent == 0 then
        return;
    end

    local show = GUI:CheckBoxGetCheck(_FashionBtn);
    local _FashionEquimentGUID = CL:GetPlayerSelfEquipGUID(18)
    if show and _FashionEquimentGUID == "" then
        GUI:CheckBoxSetCheck(_FashionBtn, false);
        UI:Lua_ShowTypeMsg(2, "����װ��ʱװ");
        return;
    end

    local _GUIHandle = GUI:WndFindChildM(_Parent, "FashionEquiment");
    if 0 ~= _GUIHandle then
        GUI:WndSetVisible(_GUIHandle, show);
    end

    _GUIHandle = GUI:WndFindChildM(_Parent, "Equiment0");
    if 0 ~= _GUIHandle then
        GUI:WndSetVisible(_GUIHandle, not show);
    end

    _GUIHandle = GUI:WndFindChildM(_Parent, "WingShow");
    if 0 ~= _GUIHandle then
        GUI:WndSetVisible(_GUIHandle, not show);
    end
    _GUIHandle = GUI:WndFindChildM(_Parent, "Equiment14");
    if 0 ~= _GUIHandle then
        GUI:WndSetVisible(_GUIHandle, not show);
    end
    CL:ShowFashion(show);
end

function RoleEuiment.EnhanceBtnOnLBTNUp()
    CL:OnEhanceRolePreperyWindow()
end

function RoleEuiment.ItemOnRBTNUp()

end

function RoleEuiment.ItemOnLBTNUp()

end

function RoleEuiment.OnEnhanceBtn()
    CL:OnEhanceRolePreperyWindow();
end

function RoleEuiment.OnItemIn(_Handle)
    local _Idx = GUI:WndGetProperty(_Handle, "ImageIndex");
    _Idx = tonumber(_Idx);
    if _Idx == nil then
        return;
    end
    local _Image = GUI:WndFindWindow(_Handle, "parent,ItemBack".._Idx);
    if 0 ~= _Image then
        GUI:WndSetImageID(_Image, 1910300017);
    end
end

function RoleEuiment.OnItemOut(_Handle)
    local _Idx = GUI:WndGetProperty(_Handle, "ImageIndex");
    _Idx = tonumber(_Idx);
    if _Idx == nil then
        return;
    end
    local _Image = GUI:WndFindWindow(_Handle, "parent,ItemBack".._Idx);
    if 0 ~= _Image then
        local t = RoleEuiment.Items[_Idx];
        if t ~= nil then
            local image = t[1];
            if image ~= nil and image ~= 0 then
                GUI:WndSetImageID(_Image, image);
            end
        end
    end
end

RoleEuiment.main()