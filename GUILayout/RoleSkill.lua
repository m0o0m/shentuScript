RoleSkill = {}
function RoleSkill.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1805900009,265,-40)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,62, 28)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage0",1805900015,9,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg0",1805900039,19,23)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name0",71,28,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill0",0,23,27,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level0",184,27,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey0",1805900108,214,27)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage0",1805900025,72,48)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image0",1805900024,74,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",74,48,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage1",1805900015,9,84)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg1",1805900039,19,93)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name1",71,98,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill1",0,23,97,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level1",184,97,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey1",1805900108,214,97)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage1",1805900025,72,118)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image1",1805900024,74,120)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",74,118,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage2",1805900015,9,154)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg2",1805900039,19,163)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name2",71,168,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill2",0,23,167,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level2",184,167,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey2",1805900108,214,167)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage2",1805900025,72,188)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image2",1805900024,74,190)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit2",74,188,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage3",1805900015,9,224)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg3",1805900039,19,233)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name3",71,238,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill3",0,23,237,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level3",184,237,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey3",1805900108,214,237)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage3",1805900025,72,258)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image3",1805900024,74,260)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit3",74,258,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage4",1805900015,9,294)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg4",1805900039,19,303)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name4",71,308,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill4",0,23,307,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level4",184,307,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey4",1805900108,214,307)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage4",1805900025,72,328)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image4",1805900024,74,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit4",74,328,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage5",1805900015,9,364)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg5",1805900039,19,373)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name5",71,378,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill5",0,23,377,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level5",184,377,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey5",1805900108,214,377)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage5",1805900025,72,398)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image5",1805900024,74,400)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit5",74,398,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage6",1805900015,283,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg6",1805900039,293,23)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name6",345,28,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill6",0,297,27,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level6",458,27,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey6",1805900108,488,27)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage6",1805900025,346,48)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image6",1805900024,348,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit6",349,48,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage7",1805900015,283,84)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg7",1805900039,293,93)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name7",345,98,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill7",0,297,97,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level7",458,97,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey7",1805900108,488,97)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage7",1805900025,346,118)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image7",1805900024,348,120)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit7",349,118,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage8",1805900015,283,154)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg8",1805900039,293,163)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name8",345,168,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill8",0,297,167,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level8",458,167,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey8",1805900108,488,167)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage8",1805900025,346,188)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image8",1805900024,348,190)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit8",349,188,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage9",1805900015,283,224)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg9",1805900039,293,233)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name9",345,238,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill9",0,297,237,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level9",458,237,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey9",1805900108,488,237)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage9",1805900025,346,258)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image9",1805900024,348,260)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit9",349,258,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage10",1805900015,283,294)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg10",1805900039,293,303)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name10",345,308,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill10",0,297,307,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level10",458,307,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey10",1805900108,488,307)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage10",1805900025,346,328)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image10",1805900024,348,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit10",349,328,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"CellBackImage11",1805900015,283,364)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,255, 62)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg11",1805900039,293,373)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name11",345,378,65,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill11",0,297,377,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level11",458,377,35,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey11",1805900108,488,377)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage11",1805900025,346,398)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 17)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image11",1805900024,348,400)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 13)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit11",349,398,130,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"LeftBtn",1805900084,554,146)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RoleSkill.up_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 70)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RightBtn",1805900088,554,225)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RoleSkill.down_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 70)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc0",154,29,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc1",154,99,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc2",154,169,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc3",154,239,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc4",154,309,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc5",154,379,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc6",428,29,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc7",428,99,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc8",428,169,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc9",428,239,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc10",428,309,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelDesc11",428,379,54,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294940928)
        GUI:EditSetTextM(_GUIHandle,"等级：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
        RoleSkill.UIInit(_Parent)
end

--UI Logic Code Start
RoleSkill.num = 12  --每页技能栏数目
RoleSkill.page = 1 --当前是第几页
RoleSkill.WndHandle = 0
RoleSkill.skill_list = {}

RoleSkill.Open = false

function RoleSkill.UIInit(_Handle)
    RoleSkill.WndHandle = _Handle

    for i = 1, 12 do
        local _HSkillNameEdit = GUI:WndFindChildM(RoleSkill.WndHandle, "Name"..i-1)
        if _HSkillNameEdit ~= 0 then
            GUI:WndSetEnableM(_HSkillNameEdit, false)
            GUI:WndSetTextColorM(_HSkillNameEdit, 4294940928)
        end 
        local _HSkillLevelEdit = GUI:WndFindChildM(RoleSkill.WndHandle, "Level"..i-1)
        if _HSkillLevelEdit ~= 0 then
            GUI:WndSetEnableM(_HSkillLevelEdit, false)
            GUI:WndSetTextColorM(_HSkillLevelEdit, 4294940928)
        end
        local _HSkillLevelDesc = GUI:WndFindChildM(RoleSkill.WndHandle, "LevelDesc"..i-1)
        if _HSkillLevelDesc ~= 0 then
            GUI:WndSetEnableM(_HSkillLevelDesc, false)
            GUI:WndSetTextColorM(_HSkillLevelDesc, 4294940928)
        end
        local _HSkillProficiencyEdit = GUI:WndFindChildM(RoleSkill.WndHandle, "Edit"..i-1)
        if _HSkillProficiencyEdit ~= 0 then
            GUI:WndSetEnableM(_HSkillProficiencyEdit, false)
            GUI:EditSetFontCenter(_HSkillProficiencyEdit)
        end
    end

    RegisterUIEvent(LUA_EVENT_ONADDSKILL, "RoleSkill_技能升级", RoleSkill.OnUpdateLevel)
	RoleSkill.OnUpdateLevel()
    RoleSkill.Open = true
end

function RoleSkill.OnUpdateLevel()
    if CL:GetPlayerSelfSkillList() then
        local i = 1
        for k, v in pairs(LuaRet) do
            RoleSkill.skill_list[i] = {}
            RoleSkill.skill_list[i][1] = k
            RoleSkill.skill_list[i][2] = v
            i = i + 1
        end
    end
    RoleSkill.empty()
    RoleSkill.show_page()
end

function RoleSkill.empty()
    for i = 1 , RoleSkill.num do 
        RoleSkill.setCellVisible(i, false)
    end
end

function RoleSkill.show_page()
    local index = (RoleSkill.page - 1 ) * RoleSkill.num + 1
    local i = 1
    local _GUIHandle = 0
    for a = 1  , #(RoleSkill.skill_list) do 
        if a >= index then
            RoleSkill.setCellVisible(i, true)
            i = i + 1
        end
    end
end

function RoleSkill.setCellVisible( i, visible )
    i = i -1
    --[[local _HSkillBackImg = GUI:WndFindChildM(RoleSkill.WndHandle, "CellBackImage"..i)
    if _HSkillBackImg ~= 0 then
        GUI:WndSetVisible(_HSkillBackImg,visible)
    end 
    local _HSkillNameEdit = GUI:WndFindChildM(RoleSkill.WndHandle, "Name"..i)
    if _HSkillNameEdit ~= 0 then
        GUI:WndSetVisible(_HSkillNameEdit,visible)
    end 
    local _HSkill = GUI:WndFindChildM(RoleSkill.WndHandle, "Skill"..i)
    if _HSkill ~= 0 then
        GUI:WndSetVisible(_HSkill,visible)
    end
    local _HSkillLevelDesc = GUI:WndFindChildM(RoleSkill.WndHandle, "LevelDesc"..i)
    if _HSkillLevelDesc ~= 0 then
        GUI:WndSetVisible(_HSkillLevelDesc,visible)
    end
    local _HSkillLevelEdit = GUI:WndFindChildM(RoleSkill.WndHandle, "Level"..i)
    if _HSkillLevelEdit ~= 0 then
        GUI:WndSetVisible(_HSkillLevelEdit,visible)
    end
    local _HSkillBtn = GUI:WndFindChildM(RoleSkill.WndHandle, "HotKey"..i)
    if _HSkillBtn ~= 0 then
        GUI:WndSetVisible(_HSkillBtn,visible)
    end
    local _HSkillProficiencyBackImg = GUI:WndFindChildM(RoleSkill.WndHandle, "BackImage"..i)
    if _HSkillProficiencyBackImg ~= 0 then
        GUI:WndSetVisible(_HSkillProficiencyBackImg,visible)
    end--]]
    local _HSkillProficiencyImg = GUI:WndFindChildM(RoleSkill.WndHandle, "Image"..i)
    if _HSkillProficiencyImg ~= 0 then
        GUI:WndSetVisible(_HSkillProficiencyImg,visible)
    end
    local _HSkillProficiencyEdit = GUI:WndFindChildM(RoleSkill.WndHandle, "Edit"..i)
    if _HSkillProficiencyEdit ~= 0 then
        GUI:WndSetVisible(_HSkillProficiencyEdit,visible)
    end
end

function RoleSkill.up_page(_handle)
    if RoleSkill.page == 1 then
        return
    end
    RoleSkill.empty()
    RoleSkill.page = RoleSkill.page - 1
    RoleSkill.show_page()
end

function RoleSkill.down_page(_handle)
    local page_max = math.ceil((#RoleSkill.skill_list) / RoleSkill.num)
    if RoleSkill.page == page_max then
        return
    end
    RoleSkill.empty()
    RoleSkill.page = RoleSkill.page + 1
    RoleSkill.show_page()
end

RoleSkill.quicbarImg = {1800900054,1800900058,1800900062,1800900066,1800900070,1800900074,1800900078,1800900082,1800900086,1800900050}

function RoleSkill.CheckButton(skillid,index)
    local quickbar={}
    for a = 1  , #(RoleSkill.quickbar_list) do 
        quickbar = RoleSkill.quickbar_list[a]
        if quickbar[2] == 2 and quickbar[3] == skillid then
            local _GUIHandle = GUI:WndFindWindow(RoleSkill.WndHandle, "HotKey"..index)
            if _GUIHandle ~= 0 then
                GUI:WndSetImageID(_GUIHandle, RoleSkill.quicbarImg[quickbar[1]+1])
                return
            end
        else
            local _GUIHandle = GUI:WndFindWindow(RoleSkill.WndHandle, "HotKey"..index)
            if _GUIHandle ~= 0 then
                GUI:WndSetImageID(_GUIHandle, 1805900108)
            end
        end
    end
end

function RoleSkill.wndClose()
    RoleSkill.Open = false
    --RoleSkill.WndHandle = 0
end

function RoleSkill.SkillBarLeftBtnUp(_Handle,_Param)

end
RoleSkill.main()