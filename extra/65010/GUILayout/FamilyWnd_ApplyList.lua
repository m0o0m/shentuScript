FamilyWnd_ApplyList = {}
function FamilyWnd_ApplyList.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"FamilyWnd_ApplyList",1802100022,30,96)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,658, 420)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1800000094,270,390)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.pgUpBtn_LC")
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1800000098,370,390)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.pgDownBtn_LC")
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"pgEditBackImg",1800000279,300,380)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,58, 34)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"pgEdit",310,387,48,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlTitleEdit",45,1,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"等级")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameTitleEdit",200,1,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"申请人")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jobTitleEdit",362,1,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"职业")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"operationTitleEdit",531,1,78,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"操作")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn1",1802100013,5,33)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlEdit1",45,35,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameEdit1",200,35,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jobEdit1",362,35,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"acceptBtn1",1800000039,522,36)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.acceptBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"同意")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"refuseBtn1",1800000039,572,36)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.refuseBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"拒绝")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn2",1802100013,5,67)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlEdit2",45,69,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameEdit2",200,69,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jobEdit2",362,69,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"acceptBtn2",1800000039,522,70)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.acceptBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"同意")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"refuseBtn2",1800000039,572,70)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.refuseBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"拒绝")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn3",1802100013,5,101)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlEdit3",45,103,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameEdit3",200,103,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jobEdit3",362,103,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"acceptBtn3",1800000039,522,104)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.acceptBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"同意")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"refuseBtn3",1800000039,572,104)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.refuseBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"拒绝")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn4",1802100013,5,135)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlEdit4",45,137,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameEdit4",200,137,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jobEdit4",362,137,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"acceptBtn4",1800000039,522,138)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.acceptBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"同意")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"refuseBtn4",1800000039,572,138)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.refuseBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"拒绝")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn5",1802100013,5,169)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlEdit5",45,171,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameEdit5",200,171,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jobEdit5",362,171,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"acceptBtn5",1800000039,522,172)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.acceptBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"同意")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"refuseBtn5",1800000039,572,172)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.refuseBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"拒绝")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn6",1802100013,5,203)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlEdit6",45,205,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameEdit6",200,205,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jobEdit6",362,205,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"acceptBtn6",1800000039,522,206)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.acceptBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"同意")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"refuseBtn6",1800000039,572,206)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.refuseBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"拒绝")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn7",1802100013,5,237)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlEdit7",45,239,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameEdit7",200,239,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jobEdit7",362,239,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"acceptBtn7",1800000039,522,240)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.acceptBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"同意")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"refuseBtn7",1800000039,572,240)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.refuseBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"拒绝")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn8",1802100013,5,271)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlEdit8",45,273,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameEdit8",200,273,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jobEdit8",362,273,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"acceptBtn8",1800000039,522,274)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.acceptBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"同意")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"refuseBtn8",1800000039,572,274)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.refuseBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"拒绝")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn9",1802100013,5,305)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlEdit9",45,307,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameEdit9",200,307,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jobEdit9",362,307,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"acceptBtn9",1800000039,522,308)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.acceptBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"同意")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"refuseBtn9",1800000039,572,308)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.refuseBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"拒绝")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn10",1802100013,5,339)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlEdit10",45,341,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameEdit10",200,341,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jobEdit10",362,341,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"acceptBtn10",1800000039,522,342)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.acceptBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"同意")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"refuseBtn10",1800000039,572,342)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.refuseBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"拒绝")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,41, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check1",1800000176,"",13,38)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.check")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check2",1800000176,"",13,72)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.check")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check3",1800000176,"",13,106)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.check")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check4",1800000176,"",13,140)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.check")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check5",1800000176,"",13,174)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.check")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check6",1800000176,"",13,208)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.check")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check7",1800000176,"",13,242)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.check")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check8",1800000176,"",13,276)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.check")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check9",1800000176,"",13,310)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.check")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check10",1800000176,"",13,344)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.check")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check",1800000176,"全选",13,384)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.checkall")
        GUI:WndSetTextM(_GUIHandle,"全选")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,50, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pass",1800000150,450,381)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.pfall")
        GUI:WndSetTextM(_GUIHandle,"一键通过")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"fail",1800000150,551,381)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_ApplyList.pfall")
        GUI:WndSetTextM(_GUIHandle,"一键拒绝")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    FamilyWnd_ApplyList.UIInit(_Parent)
end

--UI Logic Code Start
FamilyWnd_ApplyList.localString = {}
local l = FamilyWnd_ApplyList.localString
l.lvl = "等级"
l.name = "申请人"
l.job = "职业"
l.operation = "操作"
l.accept = "同意"
l.refuse = "拒绝"

FamilyWnd_ApplyList._playerBtn_ = {}
FamilyWnd_ApplyList._lvlEdit_ = {}
FamilyWnd_ApplyList._nameEdit_ = {}
FamilyWnd_ApplyList._jobEdit_ = {}
FamilyWnd_ApplyList._acceptBtn_ = {}
FamilyWnd_ApplyList._refuseBtn_ = {}
FamilyWnd_ApplyList.nowPage = 1
FamilyWnd_ApplyList.applyList_ = {}
FamilyWnd_ApplyList._passtab = {}	--这个table里面记录（玩家name，是否勾选）
FamilyWnd_ApplyList._check = {}
function FamilyWnd_ApplyList.UIInit(_Handle)
	local _handle1 = GetWindow(GameMainBar._wnd,"family_applyer")
	GUI:WndSetVisible(_handle1,false)   ----清空按钮右上角提示申请入会人数
	FamilyWnd_ApplyList._wnd = _Handle
	FamilyWnd._nowPage = _Handle

	--CL:FamilyInfoRequest(64,"FamilyWnd_ApplyList_申请列表", "FamilyWnd_ApplyList.getApplyList")
	CL:GetApplyPlayerList(0, 10, "FamilyWnd_ApplyList_申请列表", "FamilyWnd_ApplyList.getApplyList")
	
	local _GUIHandle = 0
	for i = 1, 10 do
		_GUIHandle = GUI:WndFindChildM(_Handle, "playerBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._playerBtn_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Handle, "nameEdit"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._nameEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Handle, "lvlEdit"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._lvlEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Handle, "jobEdit"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._jobEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Handle, "acceptBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._acceptBtn_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Handle, "refuseBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._refuseBtn_[i] = _GUIHandle
		end
        _GUIHandle = GUI:WndFindChildM(_Handle, "check"..i)
        if _GUIHandle ~= 0 then
            FamilyWnd_ApplyList._check[i] = _GUIHandle
        end
	end
	
	local commonUI_ = {
		"pgEdit",
		"pgUpBtn",
		"pgDownBtn"
	} 
	for i = 1, #commonUI_ do
		_GUIHandle = GUI:WndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
end

function FamilyWnd_ApplyList.getApplyList()
	--1.totalNum;2.first_index;3.num;     4-1 guid 4-2 playername 4-3 level 4-4 job
	FamilyWnd_ApplyList.totalNum = LuaParam[1]
	FamilyWnd_ApplyList.curList = LuaParam[4]
	local first_index = LuaParam[2]	--当前获取的第一个数据相对于全部数据的偏移
	for i = 1, 10 do
		if i <= LuaParam[3] then
			FamilyWnd_ApplyList.applyList_[first_index + i] = FamilyWnd_ApplyList.curList[i]	--更新当前获取到的一页数据
		else
			FamilyWnd_ApplyList.applyList_[first_index + i] = nil	--如果本页没有填满的话，后面也不会再有了
		end
	end

	local tab = {"check","pass","fail"}
	for i=1,#tab do 
		local _Handle = GUI:WndFindChildM(FamilyWnd_ApplyList._wnd, tab[i])
		if #FamilyWnd_ApplyList.applyList_ ~= 0 and _Handle ~= 0  then  
			GUI:WndSetVisible(_Handle,true) 
		else 
			GUI:WndSetVisible(_Handle,false) 
		end
	end
	
	FamilyWnd_ApplyList.updataPage()
end

function FamilyWnd_ApplyList.updataPage()
	local index = i
	for i = 1, 10 do
		index = (FamilyWnd_ApplyList.nowPage - 1)*10 + i
		local _Handle = GUI:WndFindChildM(FamilyWnd_ApplyList._wnd, "check"..i)
		if _Handle ~= 0 then 
			GUI:WndSetVisible(_Handle,false) 
			GUI:CheckBoxSetCheck(_Handle, false)
		end
		if FamilyWnd_ApplyList.applyList_[index] then
			FamilyWnd_ApplyList.setBtnVisible(i, true)
			GUI:EditSetTextM(FamilyWnd_ApplyList._lvlEdit_[i], tostring(FamilyWnd_ApplyList.applyList_[index][3]))
			GUI:EditSetTextM(FamilyWnd_ApplyList._nameEdit_[i], tostring(FamilyWnd_ApplyList.applyList_[index][2]))
			GUI:EditSetTextM(FamilyWnd_ApplyList._jobEdit_[i], tostring(RDJOBName[FamilyWnd_ApplyList.applyList_[index][4]]))
			
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle,true)
                local guid = FamilyWnd_ApplyList.applyList_[index][1]
				if FamilyWnd_ApplyList._passtab[guid] == true then
					GUI:CheckBoxSetCheck(_Handle, true)
				else
					GUI:CheckBoxSetCheck(_Handle, false)
				end
			end
		else
			FamilyWnd_ApplyList.setBtnVisible(i, false)
		end
	end
	
	FamilyWnd_ApplyList.updatePgBtn()
end

function FamilyWnd_ApplyList.setBtnVisible(i, bool)
    GUI:WndSetVisible(FamilyWnd_ApplyList._check[i], bool)
	GUI:WndSetVisible(FamilyWnd_ApplyList._playerBtn_[i], bool)
	GUI:WndSetVisible(FamilyWnd_ApplyList._lvlEdit_[i], bool)
	GUI:WndSetVisible(FamilyWnd_ApplyList._nameEdit_[i], bool)
	GUI:WndSetVisible(FamilyWnd_ApplyList._jobEdit_[i], bool)
	GUI:WndSetVisible(FamilyWnd_ApplyList._acceptBtn_[i], bool)
	GUI:WndSetVisible(FamilyWnd_ApplyList._refuseBtn_[i], bool)
	local _GUIHandle = GUI:WndFindChildM(FamilyWnd_ApplyList._wnd, "check"..i)
	GUI:WndSetVisible(_GUIHandle, bool)
end

function FamilyWnd_ApplyList.playerBtn_LC(_Handle)
	FamilyWnd_ApplyList.selBtnIndex = GUI:WndGetParam(_Handle)
	GUI:GetWndMousePos(FamilyWnd_ApplyList._wnd)
	UI:Lua_OpenWindow(FamilyWnd_ApplyList._wnd, "Menu.lua")
	GUI:WndSetPosM(Menu._wnd["FamilyWnd_ApplyList"],  LuaRet[1], LuaRet[2])
	GUI:WndSetVisible(Menu._wnd["FamilyWnd_ApplyList"], true)
end

function FamilyWnd_ApplyList.acceptBtn_LC(_Handle)
	local param = GUI:WndGetParam(_Handle)
	local index = (FamilyWnd_ApplyList.nowPage - 1)*10 + param
    local guid = FamilyWnd_ApplyList.applyList_[index][1]
	if CL:FamilyJoinDenyOrAccept(1, guid) then
        FamilyWnd_ApplyList._passtab[guid] = nil
		FamilyWnd_ApplyList.setBtnVisible(param, false)
	end
end

function FamilyWnd_ApplyList.refuseBtn_LC(_Handle)
	local param = GUI:WndGetParam(_Handle)
	local index = (FamilyWnd_ApplyList.nowPage - 1)*10 + param
    local guid = FamilyWnd_ApplyList.applyList_[index][1]
	if CL:FamilyJoinDenyOrAccept(0, guid) then
        FamilyWnd_ApplyList._passtab[guid] = nil
		FamilyWnd_ApplyList.setBtnVisible(param, false)
	end
end

function FamilyWnd_ApplyList.pgUpBtn_LC(_Handle)
	FamilyWnd_ApplyList.nowPage = FamilyWnd_ApplyList.nowPage - 1
	CL:GetApplyPlayerList((FamilyWnd_ApplyList.nowPage-1)*10, 10, "FamilyWnd_ApplyList_申请列表", "FamilyWnd_ApplyList.getApplyList")
    local _GUIHandle = GUI:WndFindChildM(FamilyWnd_ApplyList._wnd, "check")
    if _GUIHandle ~= 0 then
        GUI:CheckBoxSetCheck(_GUIHandle, false)
    end
	FamilyWnd_ApplyList.updataPage()
end

function FamilyWnd_ApplyList.pgDownBtn_LC(_Handle)
	FamilyWnd_ApplyList.nowPage = FamilyWnd_ApplyList.nowPage + 1
	CL:GetApplyPlayerList((FamilyWnd_ApplyList.nowPage-1)*10, 10, "FamilyWnd_ApplyList_申请列表", "FamilyWnd_ApplyList.getApplyList")
	FamilyWnd_ApplyList.updataPage()
end

function FamilyWnd_ApplyList.updatePgBtn()
	local pgCount = math.ceil(FamilyWnd_ApplyList.totalNum/10)
	if pgCount == 0 then
		pgCount = 1
	end
	GUI:EditSetTextM(FamilyWnd_ApplyList._pgEdit, FamilyWnd_ApplyList.nowPage.." / "..pgCount)
	
	if FamilyWnd_ApplyList.nowPage <= 1 then
		GUI:WndSetEnableM(FamilyWnd_ApplyList._pgUpBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_ApplyList._pgUpBtn, true)
	end
	
	if FamilyWnd_ApplyList.nowPage >= pgCount then
		GUI:WndSetEnableM(FamilyWnd_ApplyList._pgDownBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_ApplyList._pgDownBtn, true)
	end
end

function FamilyWnd_ApplyList.wndClose()
	local _GUIHandle = GUI:WndFindWindow(0, "FamilyWnd_ApplyList") 
	if _GUIHandle == 0 then
		FamilyWnd_ApplyList = nil
	end
end

function FamilyWnd_ApplyList.check(_Handle)
	local param = GUI:WndGetParam(_Handle)
	local index = (FamilyWnd_ApplyList.nowPage - 1)*10 + param
	if _Handle ~= 0 then 
		local t_f = GUI:CheckBoxGetCheck(_Handle)
        local guid = FamilyWnd_ApplyList.applyList_[index][1]
		FamilyWnd_ApplyList._passtab[guid] = t_f
	end
end 

function FamilyWnd_ApplyList.checkall(_Handle)
	local t_f = false
	if _Handle ~= 0 then 
		t_f = GUI:CheckBoxGetCheck(_Handle)
	end
	for i=1,10 do 
		local hand = GetWindow(FamilyWnd_ApplyList._wnd, "check"..i)
		if hand  ~= 0 then 
			GUI:CheckBoxSetCheck(hand,t_f)
		end
	end
    --选中全部时，勾选上本页全部数据
	local startIdx = (FamilyWnd_ApplyList.nowPage - 1)*10 + 1
    local endIdx = startIdx + 9
	for i = startIdx , endIdx do
		if FamilyWnd_ApplyList.applyList_[i] ~= nil then
			local guid = FamilyWnd_ApplyList.applyList_[i][1]
			FamilyWnd_ApplyList._passtab[guid] = t_f
		end
	end
end

function FamilyWnd_ApplyList.pfall(_Handle)
	local param = GUI:WndGetParam(_Handle)
    for k, v in pairs(FamilyWnd_ApplyList._passtab) do
        if v == true then
            CL:FamilyJoinDenyOrAccept(tonumber(param), k)
        end
    end
    FamilyWnd_ApplyList._passtab = {}
    local _GUIHandle = GUI:WndFindChildM(FamilyWnd_ApplyList._wnd, "check")
    if _GUIHandle ~= 0 then
        GUI:CheckBoxSetCheck(_GUIHandle, false)
    end
	--[[for i=1,#FamilyWnd_ApplyList._passtab do
		if FamilyWnd_ApplyList._passtab[i] == true then
			CL:FamilyJoinDenyOrAccept(tonumber(param),FamilyWnd_ApplyList.applyList_[i][2])
		end
	end--]]
	--CL:FamilyInfoRequest(64,"FamilyWnd_ApplyList_申请列表", "FamilyWnd_ApplyList.getApplyList")
    CL:GetApplyPlayerList((FamilyWnd_ApplyList.nowPage-1)*10, 10, "FamilyWnd_ApplyList_申请列表", "FamilyWnd_ApplyList.getApplyList")
end

FamilyWnd_ApplyList.main()