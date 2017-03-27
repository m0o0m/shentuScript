RoleProperty = {}
function RoleProperty.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"RoleProperty",0,38,64)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1832500025,0,-16)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"PhyDefEdit",70,43,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MagicDefineEdit",70,77,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"PhyAttacEdit",70,111,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MagicAttacEdit",70,145,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"DaoAttacEdit",70,179,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"RoleLucky",70,214,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"WeightEdit",245,41,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"RoleWareWeightEdit",245,74,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HandPowerEdit",245,109,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MissEdit",245,142,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HitEdit",245,176,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"ExtremAtcEdit",245,209,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"HPEdit",245,243,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MPEdit",245,276,0,0)
    if _GUIHandle ~= 0 then
    end


    RoleProperty.UIInit(_Parent)
end

--UI Logic Code Start
function RoleProperty.UIInit(_Handle)
end

RoleProperty.main()




