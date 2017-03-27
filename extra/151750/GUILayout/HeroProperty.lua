HeroProperty = {}
function HeroProperty.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"HeroProperty",0,260,100)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HandPowerEdit",73,333,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HitEdit",73,241,57,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MissEdit",73,264,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"ExtremAtcEdit",73,310,58,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"PhyDefEdit",73,195,138,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"PhyAttacEdit",73,126,137,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MagicAttacEdit",73,149,137,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DaoAttacEdit",73,172,137,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MagicDefineEdit",73,218,137,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"RoleLucky",73,287,137,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ExpImage",1906200040,81,44)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,101, 9)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"HPImage",1906200039,80,67)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,101, 9)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"MPImage",1906200038,80,88)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,101, 9)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",14,13,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",14,39,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit2",14,62,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit3",14,84,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit4",12,130,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit5",12,153,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit6",12,176,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit7",12,199,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit8",12,222,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit9",12,245,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"JobEdit",74,10,105,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_1",1906200016,29,111)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,155, 5)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit10",12,267,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit11",12,290,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit12",12,313,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit13",12,336,48,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    HeroProperty.UIInit(_Parent)
end

--UI Logic Code Start
function HeroProperty.UIInit(_Handle)
end
HeroProperty.main()




