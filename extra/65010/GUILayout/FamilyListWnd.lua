FamilyListWnd = {}
function FamilyListWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _GUIHandle = GUI:ImageCreate(_Parent,"FamilyListWnd",1806500000,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,722,504)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"wndTitleImg",1807700000,328,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,65,26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"wndBackImg2",1802100001,32,76)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,658, 420)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1803700030,667,6)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.Close")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,30, 36)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyListBtn",1806500017,49,47)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"行会列表")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1806700029,302,465)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.pgUpBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 22)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1806700033,401,465)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.pgDownBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 22)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"pgEditBackImg",1800000279,332,457)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,58, 34)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"pgEdit",344,463,48,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlTitleEdit",47,77,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"行会等级")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameTitleEdit",175,77,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"行会名称")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderTitleEdit",318,77,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"行会会长")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit",451,77,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"行会人数")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"operationTitleEdit",580,77,78,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"操作")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"createFamilyBtn",1800000150,555,457)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.createFamilyBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"创建行会")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn1",1807700002,37,109)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit1",28,111,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit1",156,111,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit1",299,111,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit1",432,111,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operationBtn1",1806400136,584,113)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.operationBtn_LC")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn2",1807700002,37,143)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit2",28,145,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit2",156,145,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit2",299,145,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit2",432,145,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operationBtn2",1806400136,584,147)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.operationBtn_LC")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn3",1807700002,37,177)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit3",28,179,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit3",156,179,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit3",299,179,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit3",432,179,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operationBtn3",1806400136,584,181)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.operationBtn_LC")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn4",1807700002,37,211)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit4",28,213,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit4",156,213,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit4",299,213,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit4",432,213,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operationBtn4",1806400136,584,215)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.operationBtn_LC")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn5",1807700002,37,245)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit5",28,247,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit5",156,247,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit5",299,247,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit5",432,247,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operationBtn5",1806400136,584,249)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.operationBtn_LC")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn6",1807700002,37,279)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit6",28,281,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit6",156,281,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit6",299,281,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit6",432,281,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operationBtn6",1806400136,584,283)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.operationBtn_LC")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn7",1807700002,37,313)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit7",28,315,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit7",156,315,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit7",299,315,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit7",432,315,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operationBtn7",1806400136,584,317)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.operationBtn_LC")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn8",1807700002,37,347)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit8",28,349,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit8",156,349,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit8",299,349,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit8",432,349,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operationBtn8",1806400136,584,351)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.operationBtn_LC")
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn9",1807700002,37,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit9",28,383,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit9",156,383,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit9",299,383,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit9",432,383,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operationBtn9",1806400136,584,385)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.operationBtn_LC")
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn10",1807700002,37,415)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit10",28,417,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit10",156,417,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit10",299,417,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit10",432,417,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operationBtn10",1806400136,584,419)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyListWnd.operationBtn_LC")
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    FamilyListWnd.UIInit(_Parent)
end

--UI Logic Code Start
FamilyListWnd.localString = {}
local l = FamilyListWnd.localString
l.familyCountPrefix = "行会数量:"
l.familyLvl = "行会等级"
l.familyName = "行会名称"
l.familyLeader = "行会会长"
l.familyMembersNumber = "行会人数"
l.operation = "操作"
l.operation_ = {"申请入会", "取消申请",}
l.createFamily = "创建行会"
l.familyList = "行会列表"

FamilyListWnd.FAMILY_LIST_PAGE_SIZE = 10
FamilyListWnd._familyBtn_ = {}
FamilyListWnd._familyLeaderEdit_ = {}
FamilyListWnd._familyLvlEdit_ = {}
FamilyListWnd._familyMembersNumberEdit_ = {}
FamilyListWnd._familyNameEdit_ = {}
FamilyListWnd._operationBtn_ = {}
FamilyListWnd.nowPage = 1

function FamilyListWnd.UIInit(_Handle)
	FamilyListWnd._wnd = _Handle
	GUI:WndSetIsESCClose(FamilyListWnd._wnd, true)
	GUI:WndSetMoveWithLBM(FamilyListWnd._wnd)
	GUI:WndSetSizeM(_Handle, 722,504)
	CenterWnd(FamilyListWnd._wnd)

	local _handle = GUI:WndFindChildM(_Handle, "familyListBtn")
	if _handle~= 0 then
		GUI:ButtonSetIsActivePageBtn(_handle, true)
	end	
	local _GUIHandle, _btn = 0, 0
	for i = 1, 10 do
		_btn = GUI:WndFindChildM(_Handle, "familyBtn"..i)
		FamilyListWnd._familyBtn_[i] = _btn
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyLvlEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyListWnd._familyLvlEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyNameEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyListWnd._familyNameEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyLeaderEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyListWnd._familyLeaderEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyMembersNumberEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyListWnd._familyMembersNumberEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "operationBtn"..i)
		if _GUIHandle ~= 0 then 
			FamilyListWnd._operationBtn_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Handle, "acceptBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._acceptBtn_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Handle, "refuseBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_ApplyList._refuseBtn_[i] = _GUIHandle
		end
	end
    _GUIHandle = GUI:WndFindChildM(FamilyListWnd._wnd, "FamilyListWnd")
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end

	local commonUI_ ={
		"pgEdit",
		"pgUpBtn",
		"pgDownBtn",
	} 
	for i = 1, #commonUI_ do
		_GUIHandle = GUI:WndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyListWnd[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
	
    CL:GetFamilyList(0, 10, "FamilyListWnd_获取行会列表","FamilyListWnd.getFamilyList")
end

function FamilyListWnd.pgUpBtn_LC(_Handle)
    if FamilyListWnd.nowPage > 1 then
        FamilyListWnd.nowPage = FamilyListWnd.nowPage - 1
        CL:GetFamilyList((FamilyListWnd.nowPage - 1) * FamilyListWnd.FAMILY_LIST_PAGE_SIZE, 10, "FamilyListWnd_获取行会列表","FamilyListWnd.getFamilyList")
        --FamilyListWnd.fillPageWnd()
    end
end

function FamilyListWnd.pgDownBtn_LC(_Handle)
    if FamilyListWnd.nowPage <= FamilyListWnd.pgCount then
        FamilyListWnd.nowPage = FamilyListWnd.nowPage + 1
        CL:GetFamilyList((FamilyListWnd.nowPage - 1) * FamilyListWnd.FAMILY_LIST_PAGE_SIZE, 10, "FamilyListWnd_获取行会列表","FamilyListWnd.getFamilyList")
        --FamilyListWnd.fillPageWnd()
    end
end

function FamilyListWnd.updatePgBtn()
	FamilyListWnd.pgCount = math.floor((FamilyListWnd.ListTotalNum + FamilyListWnd.FAMILY_LIST_PAGE_SIZE - 1) / FamilyListWnd.FAMILY_LIST_PAGE_SIZE)
	if FamilyListWnd.pgCount <= 0 then
		FamilyListWnd.pgCount = 1
	end

	FamilyListWnd.nowPage = math.floor(FamilyListWnd.ListFirstIndex / FamilyListWnd.FAMILY_LIST_PAGE_SIZE) + 1
	if FamilyListWnd.nowPage <= 0 then
		FamilyListWnd.nowPage = 1
	end
	GUI:EditSetTextM(FamilyListWnd._pgEdit, FamilyListWnd.nowPage.." / "..FamilyListWnd.pgCount)

	if FamilyListWnd.nowPage <= 1 then
		GUI:WndSetEnableM(FamilyListWnd._pgUpBtn, false)
	else
		GUI:WndSetEnableM(FamilyListWnd._pgUpBtn, true)
	end
	
	if FamilyListWnd.nowPage >= FamilyListWnd.pgCount then
		GUI:WndSetEnableM(FamilyListWnd._pgDownBtn, false)
	else
		GUI:WndSetEnableM(FamilyListWnd._pgDownBtn, true)
	end
end

function FamilyListWnd.createFamilyBtn_LC()
	UI:Lua_SubmitForm("行会", "CreateFamilySelf", "")
end

function FamilyListWnd.getFamilyList()
    FamilyListWnd.ListTotalNum = LuaParam[1]    --所有行会数量
    FamilyListWnd.ListFirstIndex = LuaParam[2]  --当前起始序号
    FamilyListWnd.ListNum = LuaParam[3]         --本页数量
	FamilyListWnd.FamilyList = {}
	FamilyListWnd.FamilyList = LuaParam[4]    --列表数据
	for i = 1, #FamilyListWnd.FamilyList do
		FamilyListWnd.FamilyList[i] = FamilyListWnd.FamilyList[i]
	end
	FamilyListWnd.fillPageWnd()
end

function FamilyListWnd.fillPageWnd()
	local index, familyGUID_ = 0 , {}
    for i = 1, 10 do
        if FamilyListWnd.FamilyList[i] then
            GUI:WndSetVisible(FamilyListWnd._familyBtn_[i], true)
            GUI:WndSetVisible(FamilyListWnd._familyNameEdit_[i], true)
            GUI:WndSetVisible(FamilyListWnd._familyLeaderEdit_[i], true)
            GUI:WndSetVisible(FamilyListWnd._familyMembersNumberEdit_[i], true)
            GUI:WndSetVisible(FamilyListWnd._operationBtn_[i], true)
            GUI:WndSetVisible(FamilyListWnd._familyLvlEdit_[i], true)
            GUI:EditSetTextM(FamilyListWnd._familyNameEdit_[i], FamilyListWnd.FamilyList[i][1])
            GUI:EditSetTextM(FamilyListWnd._familyLeaderEdit_[i], FamilyListWnd.FamilyList[i][2])
            GUI:EditSetTextM(FamilyListWnd._familyMembersNumberEdit_[i], tostring(FamilyListWnd.FamilyList[i][3]))
            GUI:WndSetTextM(FamilyListWnd._operationBtn_[i], l.operation_[(FamilyListWnd.FamilyList[i][4]+1)])
            table.insert(familyGUID_, FamilyListWnd.FamilyList[i][5])
        end
    end

    for i = FamilyListWnd.ListNum + 1, FamilyListWnd.FAMILY_LIST_PAGE_SIZE do
        GUI:WndSetVisible(FamilyListWnd._familyBtn_[i], false)
        GUI:WndSetVisible(FamilyListWnd._familyNameEdit_[i], false)
        GUI:WndSetVisible(FamilyListWnd._familyLeaderEdit_[i], false)
        GUI:WndSetVisible(FamilyListWnd._familyMembersNumberEdit_[i], false)
        GUI:WndSetVisible(FamilyListWnd._operationBtn_[i], false)
        GUI:WndSetVisible(FamilyListWnd._familyLvlEdit_[i], false)
    end

	UI:Lua_SubmitForm("行会", "updateFamilyLvlTable", serialize(familyGUID_).."#".."FamilyListWnd")
	FamilyListWnd.updatePgBtn()
end

function FamilyListWnd.operationBtn_LC(_Handle)
	local index = GUI:WndGetParam(_Handle)	
	if GUI:WndGetText(_Handle) == l.operation_[2] then
		--取消申请
		CL:FamilyCancelJoinReq(FamilyListWnd.FamilyList[index][5],"FamilyListWnd_取消申请","FamilyListWnd.cancelJoinCB")
		GUI:WndSetTextM(_Handle, l.operation_[1])
		return
	end
	GUI:WndSetTextM(_Handle, l.operation_[2])
	CL:FamilyJoinRequest(FamilyListWnd.FamilyList[index][5])
end

function FamilyListWnd.cancelJoinCB()
	local family_cancel_guidstr = LuaParam[1]
	local result = LuaParam[2]
end

function FamilyListWnd.wndClose()
	local _GUIHandle = GUI:WndFindWindow(0, "FamilyListWnd") 
	if _GUIHandle == 0 then
		FamilyListWnd = nil
	end
end

--form client
function FamilyListWnd_updateFamiyLvl(lvl_)
	if not FamilyListWnd then return end
	for i, v in pairs(lvl_) do
		GUI:EditSetTextM(FamilyListWnd._familyLvlEdit_[i], tostring(v))
	end
end

function FamilyListWnd.Close(_Handle,_Param)
	GUI:WndClose(FamilyListWnd._wnd)
end

function CLOnFamilyWindow()
	GUI:WndClose(FamilyListWnd._wnd)
--	CL:AddDelayTask("CL:OnFamilyWindow()", 1000, 1)
end

FamilyListWnd.main()