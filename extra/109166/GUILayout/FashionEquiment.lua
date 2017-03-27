--
-- Author: miyezng
-- Date: 2016-09-26 12:02:03
-- Last Modified by:   miyezng
-- Last Modified time: 2016-09-26 13:16:33
--
FashionEquiment = {}
function FashionEquiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = GUI:ItemCtrlCreate(_Parent,"FashionEquiment",-1,150,140,80,170)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "FashionEquiment.ItemOnRBTNUp")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FashionEquiment.ItemOnLBTNUp")
        GUI:WndSetHint(_GUIHandle,"ʱװ")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetVisible(_GUIHandle, false)

        local _Handle = GUI:ImageCreate(_GUIHandle, "Hair", 1990400003, -111, -130)
        if 0 ~= _Handle then
            GUI:WndSetCanRevMsg(_Handle, false)
        end
    end

    FashionEquiment.UIInit(_Parent)
end

--UI Logic Code Start
FashionEquiment.WndHandle = 0
FashionEquiment.CurFashionItemGUID = ""
FashionEquiment.FashionSite = 18



function FashionEquiment.UIInit(_Handle)
    FashionEquiment.WndHandle = _Handle
    local _FashionEquimentHandle = GUI:WndFindWindow(_Handle, "FashionEquiment")
    if _FashionEquimentHandle ~= 0 then
        GUI:ItemCtrlSetItemDataAutoManager(_FashionEquimentHandle,true)
        GUI:ItemCtrlSetBigIcon(_FashionEquimentHandle, 2)
        GUI:ImageSetDrawCenter(_FashionEquimentHandle, true)
        GUI:WndSetSizeM(_FashionEquimentHandle, 80, 170)
        GUI:WndAddTimerBrief(_FashionEquimentHandle,30,"FashionEquiment.OnUpdata")
        GUI:ItemCtrlSetBigIconOffset(_FashionEquimentHandle, 189, 210)

        local _Gender = 1
        if CL:GetPlayerSelfProperty32(181) then
            _Gender = LuaRet
            if _Gender == 1 then
                GUI:ItemCtrlSetDefaultImage(_FashionEquimentHandle, 1990400001)
            else
                GUI:ItemCtrlSetDefaultImage(_FashionEquimentHandle, 1990400002)
            end
        end

        local _HairHandle = GUI:WndFindChildM(_FashionEquimentHandle, "Hair")
        if 0 ~= _HairHandle then
            local hair = _Gender == 1 and 1990400003 or 1990400004
            GUI:WndSetImageID(_HairHandle, hair)
        end

        local _FashionItemDataHandle = CL:GetEquimentItemDataPart(FashionEquiment.FashionSite)
        if _FashionItemDataHandle ~= 0 then
            GUI:ItemCtrlSetGUIData(_FashionEquimentHandle, _FashionItemDataHandle)
        end

        local _FashionEquimentGUID = CL:GetPlayerSelfEquipGUID(FashionEquiment.FashionSite)
        if _FashionEquimentGUID ~= "" then
            local _FashionBtn = GUI:WndFindChildM(_Handle, "FashionBtn");
            if 0 ~= _FashionBtn then
                GUI:CheckBoxSetCheck(_FashionBtn, CL:GetShowFashion());
                RoleEuiment.FashinBtnOnLBTNUp(_FashionBtn);
            end
        else
            CL:ShowFashion(false);
        end
    end
end

FashionEquiment.main()

function FashionEquiment.OnUpdata()
    local _FashionEquimentHandle = GUI:WndFindWindow(FashionEquiment.WndHandle, "FashionEquiment")
    if _FashionEquimentHandle ~= 0 then
        local _FashionEquimentGUID = CL:GetPlayerSelfEquipGUID(FashionEquiment.FashionSite)
        if _FashionEquimentGUID ~= "" then
            if FashionEquiment.CurFashionItemGUID ~= _FashionEquimentGUID then
                FashionEquiment.CurFashionItemGUID = _FashionEquimentGUID
                local _FashionItemDataHandle = CL:GetEquimentItemDataPart(FashionEquiment.FashionSite)
                GUI:ItemCtrlSetGUIData(_FashionEquimentHandle, _FashionItemDataHandle)
            end
        else
            GUI:ItemCtrlClearItemData(_FashionEquimentHandle)
            FashionEquiment.CurFashionItemGUID = 0
        end
    end
end

function FashionEquiment.ItemOnLBTNUp(_Handle,_Param)
    local ItemGUIData = CL:GetMouseGUIItemData()
    if ItemGUIData ~= 0 then
        CL:GetItemGUIDataPropByType(ItemGUIData, ITEMGUIDATA_ITEMGUID)
        local _ItemGUID = LuaRet
        CL:PlayerMoveItem(_ItemGUID, FashionEquiment.FashionSite)
        CL:ClearMouseGUIItemData()
    else
        local _FashionItemDataHandle = CL:GetEquimentItemDataPart(FashionEquiment.FashionSite)
        CL:SetMouseGUIItemData(_FashionItemDataHandle)
    end
end


function FashionEquiment.ItemOnRBTNUp(_Handle,_Param)
    local _FashionItemDataHandle = CL:GetEquimentItemDataPart(FashionEquiment.FashionSite)
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