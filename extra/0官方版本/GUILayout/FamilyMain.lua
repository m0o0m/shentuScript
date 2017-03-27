FamilyMain = {}
function FamilyMain.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931000002,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,568, 322)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NoticeEditBtn",1930001006,418,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"公告编辑")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"FamilyDismissBtn",1930001006,490,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"解散行会")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"CreateTimeEdit",474,291,92,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NoticeRE",12,30,518,135)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"InfoRE",13,203,364,101)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"NotiVScrBar",1930001010,1930001014,1930001022,1931100021,538,24,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,150, 14)
        GUI:ScrollBarSetSetp(_GUIHandle,2)
    end
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"InfoVScrBar",1930001010,1930001014,1930001022,1931100021,386,200,110)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        --GUI:WndSetSizeM(_GUIHandle,110, 14)
        GUI:ScrollBarSetSetp(_GUIHandle,2)
    end
    
    FamilyMain.UIInit(_Parent)
end

--UI Logic Code Start
FamilyMain.WndHandle = 0
function FamilyMain.UIInit(_Handle)
    FamilyMain.WndHandle = _Handle
    GUI:WndSetSizeM(FamilyMain.WndHandle, 568, 322)
    CenterWnd(FamilyMain.WndHandle)
end
FamilyMain.main()




