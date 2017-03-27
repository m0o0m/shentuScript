GloryWnd = {}
function GloryWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"GloryWnd",0,_DeviceSizeX / 2 - 420,50)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1831100001,31,95)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle, 780, 425)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD",1831100000,31,0)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle,780, 95)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"IMG1",1831300000,380,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,79, 31)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"IMG2",1831300002,85,80)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,699, 411)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1832500014,760,10)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"EditExp",315,409,150,30)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"0")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"EditGlod",355,437,150,30)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"0")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"EditBGlod",375,470,150,30)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"0")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"EditName",250,155,150,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255, 255, 215, 0))
    end

    _GUIHandle = GUI:RichEditCreate(_Parent,"EditDesc",360,200,380,60)
    if _GUIHandle ~= 0 then
        GUI:RichEditSetEditEnable(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"EditState",250,285,100,30)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,374,274,0,0)
    if _GUIHandle ~= 0 then
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_Parent, true)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,474,274,0,0)
    if _GUIHandle ~= 0 then
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_Parent, true)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,574,274,0,0)
    if _GUIHandle ~= 0 then
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_Parent, true)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,674,274,0,0)
    if _GUIHandle ~= 0 then
        --GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        --GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_Parent, true)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"GetButton",1831300003,590,430)
    if _GUIHandle ~= 0 then
    end

    GloryWnd.UIInit(_Parent)
end

--UI Logic Code Start
function GloryWnd.UIInit(_Handle)
end
GloryWnd.main()




