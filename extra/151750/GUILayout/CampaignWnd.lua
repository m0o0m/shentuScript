CampaignWnd = {}
function CampaignWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"CampaignWnd",0,_DeviceSizeX / 2 - 400,80)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1831100001,31,95)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle,740, 410)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD",1831100000,31,0)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle,740, 95)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Img",1832700000,310,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,152, 32)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BACK",1832700004,50,110)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,703, 341)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"AllCampaign",1832600004,55,84)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"全部活动")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"LiveCampaign",1832600004,155,84)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"可参与")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"NpcEdit",575,150,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:RichEditCreate(_Parent,"CampaignDesc",570,180,160,130)
    if _GUIHandle ~= 0 then
        GUI:RichEditSetEditEnable(_GUIHandle, false)
    end

    _GUIHandle = GUI:RichEditCreate(_Parent,"CampaignAward",570,360,160,70)
    if _GUIHandle ~= 0 then
        GUI:RichEditSetEditEnable(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"PrevBtn",1833000014,200,456)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"NextBtn",1833000016,320,456)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"PageEdit",260,461,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"1")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1832500014,710,0)
    if _GUIHandle ~= 0 then
    end

    CampaignWnd.UIInit(_Parent)
end

--UI Logic Code Start
function CampaignWnd.UIInit(_Handle)
end
CampaignWnd.main()




