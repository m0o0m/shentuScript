FamilyListWnd = {}
function FamilyListWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931000013,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,306, 420)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"PrevBtn",1930900001,112,384)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NextBtn",1930900005,184,384)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"NumEdit",81,46,24,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,274,4)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PageEdit",134,386,47,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"LBSplit1",0,119,100)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,6, 139)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"FamilyLB",20,100,207,281)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ApplyBtn_0",1901400122,231,107)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ApplyBtn_1",1901400122,231,135)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ApplyBtn_2",1901400122,231,163)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ApplyBtn_3",1901400122,231,191)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ApplyBtn_4",1901400122,231,219)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ApplyBtn_5",1901400122,231,247)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ApplyBtn_6",1901400122,231,275)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ApplyBtn_7",1901400122,231,303)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ApplyBtn_8",1901400122,231,331)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ApplyBtn_9",1901400122,231,359)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
    end
        FamilyListWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyListWnd.UIInit(_Handle)
    FamilyListWnd.WndHandle = _Handle
    local _GUIHandle = GUI:WndFindChildM(FamilyListWnd.WndHandle, "GUI_2")
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    GUI:WndSetMoveWithLBM(FamilyListWnd.WndHandle)
    GUI:WndSetIsESCClose(FamilyListWnd.WndHandle,true)
    GUI:WndSetSizeM(FamilyListWnd.WndHandle, 306, 420)
    CenterWnd(FamilyListWnd.WndHandle)
end
FamilyListWnd.main()




