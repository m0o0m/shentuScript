--
-- Author: miyezng
-- Date: 2016-08-29 14:09:04
--
VipWnd = {}
function VipWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1912300001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,437, 588)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"Desc",32,40,300,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1910000020,330,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP0",1912300016,39,95)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,31, 19)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP1",1912300017,75,95)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP2",1912300018,112,95)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP3",1912300019,148,95)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP4",1912300020,186,95)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP5",1912300021,223,95)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP6",1912300022,260,95)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP7",1912300023,297,95)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnPrev",1910000033,140,395)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnNext",1910000037,210,395)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"EditPage",163,398,43,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnBuyVip",1912300027,110,430)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,180, 46)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter0",1912300002,35,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter1",1912300002,71,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter2",1912300002,108,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter3",1912300002,144,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter4",1912300002,182,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter5",1912300002,219,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter6",1912300002,256,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter7",1912300002,293,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter0",1912300005,33,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter1",1912300006,69,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter2",1912300007,106,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter3",1912300008,142,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter4",1912300009,180,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter5",1912300010,217,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter6",1912300011,254,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter7",1912300012,291,115)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction0",0,52,219)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction1",0,128,219)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction2",0,204,219)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction3",0,280,219)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction4",0,52,338)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction5",0,128,338)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction6",0,204,338)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction7",0,280,338)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
        VipWnd.UIInit(_Parent)
end

--UI Logic Code Start
function VipWnd.UIInit(_Handle)
    VipWnd.WndHandle = _Handle
    GUI:WndSetMoveWithLBM(VipWnd.WndHandle)
    GUI:WndSetIsESCClose(VipWnd.WndHandle, true)
    GUI:WndSetFlagsM(VipWnd.WndHandle, flg_wndBase_autoTop)
    GUI:WndSetSizeM(VipWnd.WndHandle, 437, 588)
    CenterWnd(VipWnd.WndHandle)

    for i = 0, 7 do
        local _GUIHandle = GUI:WndFindChildM(_Handle, "BtnFilter"..i)
        if 0 ~= _GUIHandle then
            GUI:WndSetVisible(_GUIHandle, false)
            local x, y = 0, 0
            if GUI:WndGetPosM(_GUIHandle) then
                x, y = LuaRet[1], LuaRet[2]
            end
            local image = GUI:WndGetImageID(_GUIHandle)
            local _Image = GUI:ImageCreate(_Handle, "ReBtnFilter"..i, 1912300002, x, y)
            if 0 ~= _Image then
                GUI:WndSetParam(_Image, i)
                GUI:WndRegistScript(_Image, RDWndBaseCL_mouse_lbClick, "VipWnd.onFilterClick")
                local _Img = GUI:WndFindChildM(_Handle, "ImgFilter"..i)
                if 0 ~= _Img then
                    GUI:WndMoveToParentTop(_Img)
                end
            end
        end
    end
    
    UI:Lua_SubmitForm("vip±íµ¥", "GetLevel", "")
end

function VipWnd.getLevel()
    local _GUIHandle = GUI:WndFindChildM(VipWnd.WndHandle, "ReBtnFilter0")
    if 0 ~= _GUIHandle then
        VipWnd.update()
        GUI:WndSetImageID(_GUIHandle, 1912300003)
    end
end

function VipWnd.update()
    for i = 0, 7 do
        local _GUIHandle = GUI:WndFindChildM(VipWnd.WndHandle, "ReBtnFilter"..i)
        if 0 ~= _GUIHandle then
            local image = VipWnd.level >= i and 1912300002 or 1912300004
            GUI:WndSetImageID(_GUIHandle, image)
        end
    end
end

function VipWnd.onFilterClick(_Image)
    VipWnd.update()
    GUI:WndSetImageID(_Image, 1912300003)
    local WndId = GUI:WndGetIDM(_Image)
    WndId = WndId:sub(3)
    local _GUIHandle = GUI:WndFindChildM(VipWnd.WndHandle, WndId)
    if 0 ~= _GUIHandle then
        GUI:WndClick(_GUIHandle)
    end
end

VipWnd.main()