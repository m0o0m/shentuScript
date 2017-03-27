GameMall = {}

function GameMall.main()

    local _Parent = LuaGlobal["AttachPartent"]

    local _GUIHandle = 0

    

    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1801100080,0,-1)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,761, 602)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ModelImage",1801100042,-247,-160)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,512, 1000)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"TitleImage",1801500189,334,18)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,96, 57)

    end

    

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1800000068,683,47)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "GameMall.OnClose")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,32, 32)

    end

    

    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage1",1801100079,69,116)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,623, 411)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"integralEditImage",1801100034,94,549)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,116, 26)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"bindIngotEditImage",1801100034,244,549)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,116, 26)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ingotEditImage",1801100034,394,549)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,116, 26)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage3",1800000055,102,555)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,13, 13)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage6",1800000053,252,555)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,16, 14)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage7",1800000054,402,555)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,16, 14)

    end

    

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"PayMoney",1800000415,520,537)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.PayMoney")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,107, 48)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab0",1801100046,110,86)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,77, 31)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab1",1801100054,187,86)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,77, 31)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab2",1801100058,264,86)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,77, 31)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab3",1801100062,341,86)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,77, 31)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab4",1801100066,418,86)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,77, 31)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab5",1801100050,495,86)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,77, 31)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab6",1801100070,572,86)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,77, 31)

    end

    

    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage8",1801100044,84,86)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,26, 30)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage9",1801100045,650,86)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,26, 30)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd0",1801100078,77,130)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,200, 116)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd1",1801100078,279,130)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,200, 116)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd2",1801100078,481,130)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,200, 116)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd3",1801100078,77,250)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,200, 116)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd4",1801100078,279,250)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,200, 116)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd5",1801100078,481,250)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,200, 116)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd6",1801100078,77,370)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,200, 116)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd7",1801100078,279,370)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,200, 116)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd8",1801100078,481,370)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,200, 116)

    end

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"Name0",93,134,160,21)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetFontCenter(_GUIHandle)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"Name1",296,134,160,21)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetFontCenter(_GUIHandle)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"Name2",499,134,160,21)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetFontCenter(_GUIHandle)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"Name3",93,255,160,21)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetFontCenter(_GUIHandle)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"Name4",296,255,160,21)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetFontCenter(_GUIHandle)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"Name5",499,255,160,21)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetFontCenter(_GUIHandle)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"Name6",93,375,160,21)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetFontCenter(_GUIHandle)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"Name7",296,375,160,21)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetFontCenter(_GUIHandle)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"Name8",499,375,160,21)

    if _GUIHandle ~= 0 then

        GUI:WndSetCanRevMsg(_GUIHandle, false)

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetFontCenter(_GUIHandle)

    end

    

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg0",1800000384,84,167)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,64, 64)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg1",1800000384,288,167)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,64, 64)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg2",1800000384,490,166)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,64, 64)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg3",1800000384,84,288)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,64, 64)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg4",1800000384,288,288)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,64, 64)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg5",1800000384,490,288)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,64, 64)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg6",1800000384,84,409)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,64, 64)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg7",1800000384,288,409)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,64, 64)

    end

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg8",1800000384,490,409)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,64, 64)

    end

    

    

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,91,173,55,55)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,55, 55)

        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

        GUI:WndSetEnableM(_GUIHandle, true)

    end

    

    

    

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,294,173,55,55)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,55, 55)

        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

        GUI:WndSetEnableM(_GUIHandle, true)

    end

    

    

    

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,497,173,55,55)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,55, 55)

        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

        GUI:WndSetEnableM(_GUIHandle, true)

    end

    

    

    

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,91,294,55,55)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,55, 55)

        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

        GUI:WndSetEnableM(_GUIHandle, true)

    end

    

    

    

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,294,294,55,55)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,55, 55)

        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

        GUI:WndSetEnableM(_GUIHandle, true)

    end

    

    

    

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item5",0,497,294,55,55)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,55, 55)

        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

        GUI:WndSetEnableM(_GUIHandle, true)

    end

    

    

    

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item6",0,91,415,55,55)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,55, 55)

        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

        GUI:WndSetEnableM(_GUIHandle, true)

    end

    

    

    

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item7",0,294,415,55,55)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,55, 55)

        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

        GUI:WndSetEnableM(_GUIHandle, true)

    end

    

    

    

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item8",0,497,415,55,55)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,55, 55)

        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)

        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)

        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

        GUI:WndSetEnableM(_GUIHandle, true)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"tipsEdit",79,498,450,20)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetTextColorM(_GUIHandle, 4287456274)

        GUI:EditSetTextM(_GUIHandle,"在商城中使用元宝购买商城物品可以获得积分（每花费1元宝，获得1积分）")

        GUI:EditSetCanEdit(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:ImageCreate(_Parent,"pageEditImage",1801100033,550,498)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,61, 26)

    end

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"PageEdit",529,503,105,15)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetFontCenter(_GUIHandle)

        GUI:EditSetCanEdit(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Left",1800000060,516,495)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnLeftButton")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,32, 32)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Right",1800000064,612,495)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnRightButton")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,32, 32)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy0",1800000081,180,207)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")

        GUI:WndSetTextM(_GUIHandle,"购 买")

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:WndSetSizeM(_GUIHandle,63, 26)

        GUI:WndSetTextColorM(_GUIHandle, 4294939396)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy1",1800000081,384,206)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")

        GUI:WndSetTextM(_GUIHandle,"购 买")

        GUI:WndSetParam(_GUIHandle, 1)

        GUI:WndSetSizeM(_GUIHandle,63, 26)

        GUI:WndSetTextColorM(_GUIHandle, 4294939396)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy2",1800000081,587,206)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")

        GUI:WndSetTextM(_GUIHandle,"购 买")

        GUI:WndSetParam(_GUIHandle, 2)

        GUI:WndSetSizeM(_GUIHandle,63, 26)

        GUI:WndSetTextColorM(_GUIHandle, 4294939396)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy3",1800000081,179,328)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")

        GUI:WndSetTextM(_GUIHandle,"购 买")

        GUI:WndSetParam(_GUIHandle, 3)

        GUI:WndSetSizeM(_GUIHandle,63, 26)

        GUI:WndSetTextColorM(_GUIHandle, 4294939396)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy4",1800000081,382,328)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")

        GUI:WndSetTextM(_GUIHandle,"购 买")

        GUI:WndSetParam(_GUIHandle, 4)

        GUI:WndSetSizeM(_GUIHandle,63, 26)

        GUI:WndSetTextColorM(_GUIHandle, 4294939396)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy5",1800000081,585,328)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")

        GUI:WndSetTextM(_GUIHandle,"购 买")

        GUI:WndSetParam(_GUIHandle, 5)

        GUI:WndSetSizeM(_GUIHandle,63, 26)

        GUI:WndSetTextColorM(_GUIHandle, 4294939396)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy6",1800000081,178,448)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")

        GUI:WndSetTextM(_GUIHandle,"购 买")

        GUI:WndSetParam(_GUIHandle, 6)

        GUI:WndSetSizeM(_GUIHandle,63, 26)

        GUI:WndSetTextColorM(_GUIHandle, 4294939396)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy7",1800000081,381,448)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")

        GUI:WndSetTextM(_GUIHandle,"购 买")

        GUI:WndSetParam(_GUIHandle, 7)

        GUI:WndSetSizeM(_GUIHandle,63, 26)

        GUI:WndSetTextColorM(_GUIHandle, 4294939396)

    end

    

    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy8",1800000081,584,448)

    if _GUIHandle ~= 0 then

        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")

        GUI:WndSetTextM(_GUIHandle,"购 买")

        GUI:WndSetParam(_GUIHandle, 8)

        GUI:WndSetSizeM(_GUIHandle,63, 26)

        GUI:WndSetTextColorM(_GUIHandle, 4294939396)

    end

    

    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice0",164,181,96,14)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:RichEditAppendString(_GUIHandle, "")

        GUI:WndSetEnableM(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice1",367,181,96,14)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:RichEditAppendString(_GUIHandle, "")

        GUI:WndSetEnableM(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice2",570,181,96,14)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:RichEditAppendString(_GUIHandle, "")

        GUI:WndSetEnableM(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice3",164,299,96,14)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:RichEditAppendString(_GUIHandle, "")

        GUI:WndSetEnableM(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice4",367,299,96,14)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:RichEditAppendString(_GUIHandle, "")

        GUI:WndSetEnableM(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice5",570,299,96,14)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:RichEditAppendString(_GUIHandle, "")

        GUI:WndSetEnableM(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice6",164,422,96,14)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:RichEditAppendString(_GUIHandle, "")

        GUI:WndSetEnableM(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice7",367,422,96,14)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:RichEditAppendString(_GUIHandle, "")

        GUI:WndSetEnableM(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice8",570,422,96,14)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:RichEditAppendString(_GUIHandle, "")

        GUI:WndSetEnableM(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"JiFen",122,553,70,15)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetCanEdit(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"BindYuanBao",272,553,70,15)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetCanEdit(_GUIHandle, false)

    end

    

    

    

    _GUIHandle = GUI:EditCreate(_Parent,"YuanBao",422,553,70,15)

    if _GUIHandle ~= 0 then

        GUI:WndSetParam(_GUIHandle, 0)

        GUI:EditSetCanEdit(_GUIHandle, false)

    end

    

    

        GameMall.UIInit(_Parent)

end



--UI Logic Code Start

GameMall.CurPage = 0

GameMall.PageCount = 0

GameMall.CurTab = 0

GameMall.WndHandle = 0

GameMall.ItemCount = 0

GameMall.WndPageCount = 9

function GameMall.UIInit(_Handle)

    GameMall.WndHandle = _Handle

    local _Parent = _Handle

    local _BackHandle = GUI:WndFindChildM(_Parent, "BackImage")

    if _BackHandle ~= 0 then

        GUI:WndSetCanRevMsg(_BackHandle, false);

    end

    _BackHandle = GUI:WndFindChildM(_Parent, "ModelImage")

    if _BackImageHandle ~= 0 then

        GUI:WndSetCanRevMsg(_BackHandle, false);

        GUI:ImageSetCheckPoint(_BackHandle, 1)

    end

    _BackHandle = GUI:WndFindChildM(_Parent, "TitleImage")

    if _BackImageHandle ~= 0 then

        GUI:WndSetCanRevMsg(_BackHandle, false);

    end

    for _Idx = 0, GameMall.WndPageCount do

        local _GUIID = "Item".._Idx

        local _ItemCtrlHandle = GUI:WndFindChildM(_Parent, _GUIID)

        if _ItemCtrlHandle ~= 0 then

            GUI:ItemCtrlSetIconImageType(_ItemCtrlHandle,1) -- 设置显示图标为大图标

        end

        _GUIID = "Name".._Idx

        local _WndHandle = GUI:WndFindChildM(_Parent, _GUIID)

        if 0 ~= _WndHandle then

            GUI:WndSetCanRevMsg(_WndHandle, false)

            GUI:WndAddFlags(_WndHandle, 0x00400000)--flg_dlgEdit_textInCenter

            GUI:WndAddFlags(_WndHandle, 0x00100000)--flg_dlgEdit_textInMid

        end

    end

    local _EditHandle = GUI:WndFindChildM(_Parent, "PageEdit")

    if _EditHandle ~= 0 then

        GUI:EditSetEditImageOffset(_EditHandle, -1, 0)

        GUI:WndAddFlags(_EditHandle, 0x00400000)--flg_dlgEdit_textInCenter

        GUI:WndAddFlags(_EditHandle, 0x00100000)--flg_dlgEdit_textInMid

    end

    _EditHandle = GUI:WndFindChildM(_Parent, "JiFen")

    if _EditHandle ~= 0 then

        GUI:EditSetEditImageOffset(_EditHandle, -3, 0)

    end

    _EditHandle = GUI:WndFindChildM(_Parent, "BindYuanBao")

    if _EditHandle ~= 0 then

        GUI:EditSetEditImageOffset(_EditHandle, -3, 0)

    end

    _EditHandle = GUI:WndFindChildM(_Parent, "YuanBao")

    if _EditHandle ~= 0 then

        GUI:EditSetEditImageOffset(_EditHandle, -3, 0)

    end

    --设置窗口位置

    local _DeviceWidth = CL:GetScreenWidth()

    local _DeviceHeight = CL:GetScreenWidth()

    GUI:WndSetPosM(GameMall.WndHandle, _DeviceWidth / 2 - 300, _DeviceHeight / 2 - 400)

    GUI:WndSetSizeM(GameMall.WndHandle, 761, 602)

end

function GameMall.OnClose(_Handle,_Param)

    GUI:WndClose(GameMall.WndHandle)

end

function GameMall.UpdataItemWndVisible(_Idx, _Visible)

    local _Parent = GameMall.WndHandle

    local _WndID = "ItemBackWnd".._Idx

    local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)

    if _WndHandle ~= 0 then

        GUI:WndSetVisible(_WndHandle, _Visible)

    end

    _WndID = "Item".._Idx

    local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)

    if _WndHandle ~= 0 then

        GUI:WndSetVisible(_WndHandle, _Visible)

    end

    _WndID = "ItemImg".._Idx

    local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)

    if _WndHandle ~= 0 then

        GUI:WndSetVisible(_WndHandle, _Visible)

    end

    _WndID = "Name".._Idx

    local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)

    if _WndHandle ~= 0 then

        GUI:WndSetVisible(_WndHandle, _Visible)

    end

    _WndID = "Buy".._Idx

    local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)

    if _WndHandle ~= 0 then

        GUI:WndSetVisible(_WndHandle, _Visible)

    end

    _WndID = "NowPrice".._Idx

    local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)

    if _WndHandle ~= 0 then

        GUI:WndSetVisible(_WndHandle, _Visible)

    end

    _WndID = "NowPrice".._Idx

    local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)

    if _WndHandle ~= 0 then

        GUI:WndSetVisible(_WndHandle, _Visible)

    end

end

function GameMall.UpdataPage()

    local _PageString = ""..GameMall.CurPage.." / "..GameMall.PageCount

    if 0 == GameMall.PageCount then

        _PageString = "0 / 0"

    end

    local _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, "PageEdit")

    if 0 ~= _WndHandle then

        GUI:EditSetTextM(_WndHandle, _PageString)

    end

end



function GameMall.OnItemUpdata()

    GameMall.ItemCount = LuaParam[1]

    if GameMall.ItemCount % GameMall.WndPageCount == 0 then

        GameMall.PageCount = math.floor(GameMall.ItemCount / GameMall.WndPageCount)

    else

        GameMall.PageCount =  math.floor(GameMall.ItemCount / GameMall.WndPageCount) + 1

    end

    GameMall.CurSelectIdx = -1

    GameMall.CurPage = 1

    GameMall.UpdataPage()

    GameMall.UpdataItem()

end

function GameMall.UpdataItem()

    GameMall.ClearItem()

    if CL:GetMallItemInfo() then

        local _MallInfoTable = LuaRet

        for _Idx = 0, GameMall.WndPageCount do

            local _MallIndex = (GameMall.CurPage - 1) * GameMall.WndPageCount + _Idx

            GameMall.UpdataItemWndVisible(_Idx, true)

            if _MallIndex < #_MallInfoTable then

                local _ItemID = _MallInfoTable[_MallIndex + 1][1]

                local _Count = _MallInfoTable[_MallIndex + 1][3]

                local _PriceUinit = _MallInfoTable[_MallIndex + 1][4]

                local _Price = _MallInfoTable[_MallIndex + 1][5]

                local _DisCountPrice = _MallInfoTable[_MallIndex + 1][6]

                local _GUIIDString = "Item".._Idx

                local _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)

                if 0 ~= _WndHandle then

                    local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)

                    if 0 ~= _ItemDataHandle then

                        LuaArg = _ItemID

                        CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID)

                        LuaArg = true

                        CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)

                        LuaArg = 0xFFFF

                        CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)

                        

                        local _ItemTemplateHandle = CL:GetItemTemplateHandleByID(_ItemID)

                        if _ItemTemplateHandle ~= 0 then

                            if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_TIPSICON) then

                                LuaArg = LuaRet

                                CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)

                            end

                            

                            if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_NAME) then

                                local _ItemName = LuaRet

                                _GUIIDString = "Name".._Idx

                                _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)

                                if 0 ~= _WndHandle then

                                    GUI:EditSetTextM(_WndHandle, _ItemName)

                                end

                            end

                        end

                    end

                end

                

                _GUIIDString = "NowPrice".._Idx

                _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)

                if 0 ~= _WndHandle then

                    local _UintString = GameMall.PriceTypeString(_PriceUinit)

                    local _PriceString = "#COLORCOLOR_GOLD#现价：#COLORCOLOR_WHITE#".._DisCountPrice.." ".._UintString.."#COLORCOLOR_END#"

                    GUI:RichEditAppendString(_WndHandle, _PriceString)

                end                                                                       

            else

                GameMall.UpdataItemWndVisible(_Idx, false)

            end

        end

    end

end

function GameMall.PayMoney(_Handle,_Param)

    CL:OpenUrlUseIEByType(3)--打开充值页面

end

function GameMall.OnTabChange(_CurTab)

    if _CurTab ~= GameMall.CurTab then

        GameMall.PageCount = 0

        GameMall.CurPage = 1

    end

end

function GameMall.OnLeftButton(_Handle,_Param)

    if GameMall.CurPage > 1 then

        GameMall.CurPage = GameMall.CurPage - 1

        GameMall.UpdataPage()

        GameMall.UpdataItem()

    end 

end

function GameMall.OnRightButton(_Handle,_Param)

    if GameMall.CurPage < GameMall.PageCount then

        GameMall.CurPage = GameMall.CurPage + 1

        GameMall.UpdataPage()

        GameMall.UpdataItem()

    end

end

function GameMall.ClearItem()

    for _Idx = 0, GameMall.WndPageCount do

        local _GUIIDString = "Item".._Idx

        local _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)

        if 0 ~= _WndHandle then

            local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)

            if 0 ~= _ItemDataHandle then

                LuaArg = false

                CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE) 

            end

        end

        _GUIIDString = "Name".._Idx

        _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)

        if 0 ~= _WndHandle then

            GUI:EditSetTextM(_WndHandle, "")

        end

        _GUIIDString = "NowPrice".._Idx

        _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)

        if 0 ~= _WndHandle then

            GUI:RichEditClear(_WndHandle)

        end

    end

end

function GameMall.OnBuyItem(_Handle, _Param)

    if 0~= _Handle then

        local _Param = GUI:WndGetParam(_Handle)

        local _MallIndex = (GameMall.CurPage - 1) * GameMall.WndPageCount + _Param

        CL:BuyMallItemByIndex(_MallIndex, 1, false)

		--CL:BuyMallItemUseBulkWnd(_MallIndex)

    end

end

function GameMall.PriceTypeString(_PriceType)

    if _PriceType == 0 then

        return "元宝"

    elseif _PriceType == 1 then

        return "绑元"

    elseif _PriceType == 2 then

        return "积分"

    elseif _PriceType == 3 then

        return "金币"

    elseif _PriceType == 4 then

        return "绑金"

    end

    return ""

end



GameMall.main()

RegisterUIEvent(LUA_EVENT_UPDATAMALLITEM, EVENT_DEFAULT_TAG, GameMall.OnItemUpdata)