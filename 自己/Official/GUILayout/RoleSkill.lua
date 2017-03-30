RoleSkill = {}
function RoleSkill.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1930200108,0,-1)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,240, 326)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill0",0,13,38,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill1",0,13,86,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill2",0,13,134,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill3",0,13,182,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill4",0,13,230,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RightBtn",1930200027,240,174)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 55)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"LeftBtn",1930200031,240,121)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 53)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name0",52,30,112,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level0",184,34,16,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name1",52,78,110,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level1",184,82,16,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name2",52,126,110,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level2",184,130,16,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name3",52,174,113,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level3",184,178,16,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name4",52,222,112,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level4",184,226,16,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image0",1930200026,53,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,141, 6)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image1",1930200026,53,108)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,141, 6)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image2",1930200026,53,156)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,141, 6)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image3",1930200026,53,203)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,141, 6)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image4",1930200026,53,251)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,141, 6)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image5",1930200026,53,299)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,141, 6)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey0",1930200035,208,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,25, 32)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey1",1930200035,208,88)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,25, 32)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey2",1930200035,208,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,25, 32)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey3",1930200035,208,184)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,25, 32)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey4",1930200035,208,232)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,25, 32)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",70,55,80,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",70,103,80,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit2",70,151,80,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit3",70,199,80,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit4",70,247,80,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit5",70,295,80,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey5",1930200035,207,277)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,25, 32)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level5",184,274,16,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill5",0,13,278,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name5",52,270,112,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    RoleSkill.UIInit(_Parent)
end
    
    

--UI Logic Code Start
function RoleSkill.UIInit(_Handle)
    LuaGlobal["RoleSkillItemCount"] = 6
end
    
    
RoleSkill.main()




