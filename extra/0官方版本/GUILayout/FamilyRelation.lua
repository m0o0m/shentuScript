FamilyRelation = {}
function FamilyRelation.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931000003,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,568, 322)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AllyAddBtn",1930001006,418,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"行会结盟")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"EnemyAddBtn",1930001006,490,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"行会敌对")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AllyDelBtn",1930001006,418,229)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消结盟")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"EnemyDelBtn",1930001006,490,229)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消敌对")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"InfoRE",13,203,364,102)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"CreateTimeEdit",474,291,92,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"InfoVScrBar",1930001010,1930001014,1930001022,1931100021,386,200,110)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,110, 14)
        GUI:ScrollBarSetSetp(_GUIHandle,2)
    end
    
    _GUIHandle = GUI:ListBoxCreate(_Parent, "AllyLB", 13, 31, 243, 134)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ListBoxCreate(_Parent, "EnemyLB", 292, 31, 243, 132)
    if _GUIHandle ~= 0 then
    end
    
    FamilyRelation.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyRelation.UIInit(_Handle)
end
FamilyRelation.main()




