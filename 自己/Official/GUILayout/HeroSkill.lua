HeroSkill = {}
function HeroSkill.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Back0",1906200019,6,4)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,232, 52)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Back1",1906200019,6,67)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,232, 52)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Back2",1906200019,6,130)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,232, 52)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Back3",1906200019,6,193)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,232, 52)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Back4",1906200019,6,256)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,232, 52)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill0",0,18,17,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill1",0,18,80,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill2",0,18,142,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill3",0,18,205,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill4",0,18,268,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RightBtn",1906300026,141,328)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"LeftBtn",1906300022,34,328)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PageEdit",57,326,80,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name0",57,8,89,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level0",69,27,15,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name1",56,71,91,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level1",69,92,15,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name2",56,135,92,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level2",69,155,13,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name3",56,198,92,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level3",69,218,15,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name4",56,261,91,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level4",69,281,15,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image0",1906200042,84,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,86, 9)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image1",1906200042,84,103)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,86, 9)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image2",1906200042,84,166)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,86, 5)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image3",1906200042,84,229)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,86, 9)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Image4",1906200042,84,292)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,86, 9)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillEnable0",1906300133,152,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 35)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillEnable1",1906300133,152,79)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 35)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillEnable2",1906300133,152,140)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 35)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillEnable3",1906300133,152,205)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 35)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillEnable4",1906300133,152,268)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 35)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    HeroSkill.UIInit(_Parent)
end

--UI Logic Code Start
function HeroSkill.UIInit(_Handle)
end
HeroSkill.main()