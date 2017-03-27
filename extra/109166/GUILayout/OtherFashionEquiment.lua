--
-- Author: miyezng
-- Date: 2016-09-26 13:13:22
-- Last Modified by:   miyezng
-- Last Modified time: 2016-11-03 10:54:17
--
OtherFashionEquiment = {}
function OtherFashionEquiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _GUIHandle = GUI:WndCreateWnd(_Parent,"FashionWnd",0,0,0)
    if _GUIHandle ~= 0 then
    end
    _Parent = _GUIHandle


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"FashionEquiment",-1,153,180,80,170)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"&#689;&#1520;")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
    end

    local hair = OtherRoleEuiment.Gender == 1 and 1990400003 or 1990400004
    _GUIHandle = GUI:ImageCreate(_Parent, "Hair", hair, 50, 60)
    if 0 ~= _Handle then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end

    OtherFashionEquiment.UIInit(_Parent)
end

--UI Logic Code Start

OtherFashionEquiment.FashionSite = 18
function OtherFashionEquiment.UIInit(_Handle)
    local _FashionEquimentHandle = GUI:WndFindWindow(_Handle, "FashionEquiment")
    if _FashionEquimentHandle ~= 0 then
        GUI:ItemCtrlSetItemDataAutoManager(_FashionEquimentHandle,true)
        GUI:ItemCtrlSetBigIcon(_FashionEquimentHandle, 2)
        GUI:ImageSetDrawCenter(_FashionEquimentHandle, true)
        GUI:WndSetSizeM(_FashionEquimentHandle, 80, 170)
        GUI:ItemCtrlSetBigIconOffset(_FashionEquimentHandle, 200, 260)
        GUI:WndAddTimerBrief(_FashionEquimentHandle,30,"OtherFashionEquiment.OnUpdata")
    end

    local _Parent = GUI:WndGetParentM(_Handle);
    if 0 ~= _Parent then
        local _GUIHandle = GUI:WndFindChildM(_Parent, "Equiment0");
        if 0 ~= _GUIHandle then
            GUI:WndSetVisible(_GUIHandle, false);
        end

        _GUIHandle = GUI:WndFindChildM(_Parent, "WingShow");
        if 0 ~= _GUIHandle then
            GUI:WndSetVisible(_GUIHandle, false);
        end

        _GUIHandle = GUI:WndFindChildM(_Parent, "Equiment14");
        if 0 ~= _GUIHandle then
            GUI:WndSetVisible(_GUIHandle, false);
        end

        _GUIHandle = GUI:WndFindChildM(_Parent, "Equiment13");
        if 0 ~= _GUIHandle then
            GUI:WndMoveToParentTop(_GUIHandle);
        end

        _GUIHandle = GUI:WndFindChildM(_Parent, "Equiment16");
        if 0 ~= _GUIHandle then
            GUI:WndMoveToParentTop(_GUIHandle);
        end
    end
end

function OtherFashionEquiment.OnUpdata(_FashionEquimentHandle)
    if OtherRoleEuiment.Gender == 1 then
        GUI:ItemCtrlSetDefaultImage(_FashionEquimentHandle, 1990400001)
    else
        GUI:ItemCtrlSetDefaultImage(_FashionEquimentHandle, 1990400002)
    end
    if CL:GetPlayerTargetEquipData() then
        local _FashionItemHandle = LuaRet[OtherFashionEquiment.FashionSite]
        if _FashionItemHandle ~= 0 then
            GUI:ItemCtrlSetGUIData(_FashionEquimentHandle, _FashionItemHandle)
        end
    end
    local _Parent = GUI:WndGetParentM(_FashionEquimentHandle);
    if 0 ~= _Parent then
        _Parent = GUI:WndGetParentM(_Parent);
        if 0 ~= _Parent then
            _GUIHandle = GUI:WndFindChildM(_Parent, "Equiment13");
            if 0 ~= _GUIHandle then
                GUI:WndMoveToParentTop(_GUIHandle);
            end

            _GUIHandle = GUI:WndFindChildM(_Parent, "Equiment16");
            if 0 ~= _GUIHandle then
                GUI:WndMoveToParentTop(_GUIHandle);
            end
        end
    end
end

OtherFashionEquiment.main()