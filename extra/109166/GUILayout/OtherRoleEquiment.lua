--
-- Author: miyezng
-- Date: 2016-09-26 13:13:12
-- Last Modified by:   miyezng
-- Last Modified time: 2016-11-03 10:53:04
--
OtherRoleEuiment = {}

OtherRoleEuiment.Items =
{
    {1910300008, 316, 260, 1, "项链"},
    {1910300006, 53, 260, 2, "翅膀"},
    {1910300007, 316, 212, 3, "勋章"},
    --{1910300017, 316, 164, 4, "守护"},
    {1910300014, 210, 402, 5, "腰带"},
    {1910300009, 53, 308, 6, "护腕"},
    {1910300009, 316, 308, 7, "护腕"},
    {1910300010, 53, 355, 8, "戒指"},
    {1910300010, 316, 355, 9, "戒指"},
    {1910300012, 53, 402, 10, "符咒"},
    {1910300016, 264, 402, 11, "鞋子"},
    {1910300011, 316, 402, 12, "坐骑"},
    {1910300013, 105, 402, 15, "宝石"},
    {1910300015, 158, 402, 18, "血石"},
    {0, 85,178, "WingShow", "翅膀展示", 4, 32, 32},
    {0, 153, 180, 14, "衣服", 2, 80, 170},
    {0, 88, 80, 13, "武器", 1, 50, 240},
    {0, 220, 237, 16, "盾牌", 1, 70, 110},
    {0, 180, 140, 0, "头盔", 3, 34, 34},
    {1910300017, 316, 164, "Fashion", "时装"},
};

function OtherRoleEuiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = _Parent

    local _BackImage = GUI:ImageCreate(_GUIHandle, "GUI_2", 1910300005, 0, 0)
    if _BackImage ~= 0 then
        GUI:WndSetCanRevMsg(_BackImage, false)
    end

    local _ButtonHandle = GUI:ButtonCreate(_GUIHandle, "Close", 1910000020, 360, 30)
    if _ButtonHandle ~= 0 then
        GUI:WndRegistScript(_ButtonHandle, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.CloseBtnUp")
    end

    local _Gender = CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) and LuaRet or 1;

    for k, v in ipairs(OtherRoleEuiment.Items) do
        if v[1] ~= 0 then
            GUI:ImageCreate(_Parent, "ItemBack"..k, v[1], v[2]-3, v[3]-3);
        end

        local wnd = type(v[4]) == "number" and "Equiment"..v[4] or v[4];
        local param = tonumber(v[4]) or 1;
        local _GUIHandle = GUI:ItemCtrlCreate(_Parent,wnd,-1,v[2],v[3],36,36);
        if _GUIHandle ~= 0 then
            GUI:WndSetHint(_GUIHandle,v[5]);
            GUI:ItemCtrlSetRBtnUse(_GUIHandle,false);
            GUI:WndSetParam(_GUIHandle,param-1);
            GUI:ItemCtrlSetIconSize(_GUIHandle, 36, 36)

            if v[6] ~= nil then
                GUI:WndSetSizeM(_GUIHandle, v[7], v[8]);
                GUI:ItemCtrlSetBigIcon(_GUIHandle, v[6]);
                GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 200, 260);
                GUI:ImageSetDrawCenter(_GUIHandle,true);

                if v[4] == 0 then
                    if _Gender == 1 then
                        GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990400003)
                    else
                        GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1990400004)
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
                GUI:WndRegistScript(_GUIHandle, RDWnd2DItemCtrl_ItemIn, "OtherRoleEuiment.OnItemIn");
                GUI:WndRegistScript(_GUIHandle, RDWnd2DItemCtrl_ItemOut, "OtherRoleEuiment.OnItemOut");
            end
        end
    end

    -- local _HairHandle = GUI:ImageCreate(_Parent, "Hair", 1990400003, 50, 60)
    -- if 0 ~= _HairHandle then
    --     GUI:WndSetCanRevMsg(_HairHandle, false)
    -- end

    local _RoleNameEdit = GUI:EditCreate(_Parent, "RoleName", 130, 25, 131, 18)
    if _RoleNameEdit ~= 0 then
        GUI:WndSetEnableM(_RoleNameEdit, false)
        GUI:EditSetFontCenter(_RoleNameEdit)
    end

    local _RoleLevelEdit = GUI:EditCreate(_Parent, "RoleLevel", 50, 55, 25, 17)
    if _RoleLevelEdit ~= 0 then
        GUI:WndSetEnableM(_RoleLevelEdit, false)
        GUI:EditSetFontCenter(_RoleLevelEdit)
    end

    local _FamilyNameEdit = GUI:RichEditCreate(_Parent, "FamilyNameEdit", 100, 80, 187, 16)
    if _FamilyNameEdit ~= 0 then
        GUI:RichEditSetEditEnable(_FamilyNameEdit, false)
        GUI:WndAddFlags(_FamilyNameEdit, 2097152)
    end


    _BackImage = GUI:ImageCreate(_Parent, "EnhanceLv", 0, 183, 110)
    if _BackImage ~= 0 then
    end

    _BackImage = GUI:ImageCreate(_Parent, "EnhanceMagic", 1088400000, 161, 86)
    if _BackImage ~= 0 then
    end

    local _FashionBtn = GUI:CheckBoxCreate(_Parent, "FashionBtn", 1910300102, "", 313, 143)
    if _FashionBtn ~= 0 then
        GUI:WndRegistScript(_FashionBtn, RDWnd2DCheckCL_check_change, "OtherRoleEuiment.FashinBtnOnLBTNUp")
    end

    local _TextColor = CL:MakeARGB(199, 203, 223, 232)
    local _FriendBtn = GUI:ButtonCreate(_Parent, "Friend", 1910000001, 65, 465)
    if _FriendBtn ~= 0 then
        GUI:WndRegistScript(_FriendBtn, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.FriendBtnOnLBTNUp")
        GUI:WndSetTextM(_FriendBtn, "好 友")
        GUI:WndSetTextColorM(_FriendBtn, _TextColor)
    end

    local _TradeBtn = GUI:ButtonCreate(_Parent, "Trade", 1910000001, 170, 465)
    if _TradeBtn ~= 0 then
        GUI:WndRegistScript(_TradeBtn, RDWndBaseCL_mouse_lbUp, "OtherRoleEuiment.TradeBtnOnLBTNUp")
        GUI:WndSetTextM(_TradeBtn, "交 易")
        GUI:WndSetTextColorM(_TradeBtn, _TextColor)
    end

    local _PrivateTalkBtn = GUI:ButtonCreate(_Parent, "PrivateTalk", 1910000001, 275, 465)
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
    OtherRoleEuiment.Gender = 1
    RegisterUIEvent(LUA_EVENT_OTHERROLEDATA, "OtherRoleEquipment_OtherRoleData", OtherRoleEuiment.propData)
    GUI:WndSetMagicUI(_Parent, 1);
    OtherRoleEuiment.WndHandle = _Parent
    GUI:WndCalSize(_Parent)
    local _Handle = _Parent

    local _ShowFashionHandle = GUI:WndFindWindow(_Handle, "ShowFashion")
    if _ShowFashionHandle ~= 0 then
        local _ShowFashion = CL:HeroGetShowFashion()
        GUI:CheckBoxSetCheck(_ShowFashionHandle, _ShowFashion)
    end

    local _EditHandle = GUI:WndFindWindow(_Handle, "RoleName")
    if 0 ~= _EditHandle then
        GUI:WndSetTextColorM(_EditHandle,4290950816)
    end
    CL:AddDelayTask("OtherRoleEuiment.DelayInit(".._Parent..")", 0, 1);
end

function OtherRoleEuiment.DelayInit(_Parent)
    local _Fashion = GUI:WndFindChildM(_Parent, "Fashion");
    if 0 ~= _Fashion then
        GUI:ItemCtrlSetItemDataAutoManager(_Fashion,true)
        GUI:WndAddTimerBrief(_Fashion,30,"OtherRoleEuiment.OnUpdata")
        if CL:GetPlayerTargetEquipData() then
            local _FashionItemHandle = LuaRet[18]
            if _FashionItemHandle ~= 0 then
                GUI:ItemCtrlSetGUIData(_Fashion, _FashionItemHandle)
            end
        end
    end
end

function OtherRoleEuiment.OnUpdata(_Fashion)
    if CL:GetPlayerTargetEquipData() then
        local _FashionItemHandle = LuaRet[18]
        if _FashionItemHandle ~= 0 then
            GUI:ItemCtrlSetGUIData(_Fashion, _FashionItemHandle)
        end
    end
end

function OtherRoleEuiment.FashinBtnOnLBTNUp(_FashionBtn)
    local _Parent = GUI:WndGetParentM(_FashionBtn);
    if _Parent == 0 then
        return;
    end

    if GUI:CheckBoxGetCheck(_FashionBtn) then
        UI:Lua_OpenWindow(_Parent, "OtherFashionEquiment.lua");
    else
        local _GUIHandle = GUI:WndFindChildM(_Parent, "Equiment0");
        if 0 ~= _GUIHandle then
            GUI:WndSetVisible(_GUIHandle, true);
        end

        _GUIHandle = GUI:WndFindChildM(_Parent, "WingShow");
        if 0 ~= _GUIHandle then
            GUI:WndSetVisible(_GUIHandle, true);
        end

        _GUIHandle = GUI:WndFindChildM(_Parent, "Equiment14");
        if 0 ~= _GUIHandle then
            GUI:WndSetVisible(_GUIHandle, true);
        end

        local _Fashion = GUI:WndFindChildM(_Parent, "FashionWnd");
        if 0 ~= _Fashion then
            GUI:WndClose(_Fashion);
        end
    end
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

function OtherRoleEuiment.OnItemIn(_Handle)
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

function OtherRoleEuiment.OnItemOut(_Handle)
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

function OtherRoleEuiment.propData()
    local _Gender = LuaParam[1]
    OtherRoleEuiment.Gender = _Gender
    local _Handle = GUI:WndFindChildM(OtherRoleEuiment.WndHandle, "Equiment0")
    if 0 ~= _Handle then
        local hair = _Gender == 1 and 1990400003 or 1990400004
        GUI:ItemCtrlSetDefaultImage(_Handle, hair)
    end
end

OtherRoleEuiment.main()