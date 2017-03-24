GameMall = {}
function GameMall.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage0",1804100002,1,1)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,916, 621)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage1",1804100024,664,126)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,217, 407)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Back2",1804100000,36,127)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,622, 401)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab0",1804100016,128,97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,78, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab2",1804100020,204,97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,78, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab3",1804100029,280,97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,78, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab4",1804100025,356,97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,78, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab5",1804100034,432,97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,78, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab6",1804100038,508,97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,78, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd0",1804100014,56,149)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd1",1804100014,253,149)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd2",1804100014,450,149)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd3",1804100014,55,268)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd4",1804100014,253,268)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd5",1804100014,450,268)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd6",1804100014,55,386)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd7",1804100014,253,386)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBackWnd8",1804100014,450,386)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Left",1800000094,530,505)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnLeftButton")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Right",1800000098,623,505)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnRightButton")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1800000068,876,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnClose")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,24, 24)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AddYuanBao",1804100006,689,537)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.PayMoney")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,195, 66)
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
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage00",1800000055,102,555)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,13, 13)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage01",1800000053,252,555)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage02",1800000054,402,555)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
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
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg0",1804100033,67,187)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg1",1804100033,271,187)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg2",1804100033,473,185)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg3",1804100033,67,306)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg4",1804100033,271,306)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg5",1804100033,473,307)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg6",1804100033,67,425)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg7",1804100033,271,425)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemImg8",1804100033,473,428)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,71,191,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSelectItem")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,274,191,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSelectItem")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,476,189,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSelectItem")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,71,310,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSelectItem")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,274,310,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSelectItem")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item5",0,476,310,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSelectItem")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item6",0,71,429,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSelectItem")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item7",0,273,429,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSelectItem")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item8",0,476,432,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSelectItem")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SortBackImage0",1804100014,676,174)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SortBackImage1",1804100014,676,293)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SortBackImage2",1804100014,676,412)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,193, 115)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SortItemBackImage0",1804100033,685,216)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SortItemBackImage1",1804100033,685,335)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SortItemBackImage2",1804100033,685,454)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 61)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem0",0,689,220,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.SelectSortItem")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem1",0,689,339,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.SelectSortItem")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem2",0,689,458,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.SelectSortItem")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"PageEdit",560,505,54,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice0",133,194,107,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice1",334,194,107,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice2",535,193,107,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice3",133,323,107,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice4",334,317,107,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice5",535,312,107,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice6",133,435,107,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice7",334,436,107,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice0",754,219,90,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice1",754,338,90,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice2",754,457,90,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name0",108,159,114,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name1",310,159,114,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 1)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name2",515,159,114,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 2)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name3",112,277,114,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 3)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name4",310,277,114,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 4)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name5",515,277,114,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 5)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name6",110,394,114,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 6)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name7",310,394,114,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 7)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"SortName0",752,181,93,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"SortName1",751,296,93,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"SortName2",747,417,93,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipTip",67,503,437,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293827121)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SortMallTitle",1804100005,710,135)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,129, 34)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SortBuy0",1804100010,780,248)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSortButItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SortBuy1",1804100010,764,365)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSortButItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SortBuy2",1804100010,767,483)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSortButItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Back3",1804100003,100,97)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 34)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Back4",1804100004,585,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 34)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Back5",1804100001,412,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,92, 51)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Name8",515,394,114,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 7)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice8",535,431,107,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy0",1804100010,162,223)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy1",1804100010,360,223)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy2",1804100010,560,223)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy3",1804100010,162,342)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy4",1804100010,360,342)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy5",1804100010,560,342)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy6",1804100010,162,461)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy7",1804100010,360,461)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Buy8",1804100010,560,461)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
        GUI:WndSetTextM(_GUIHandle,"购买")
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SortHotImage0",1804100015,676,174)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SortHotImage1",1804100015,675,293)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SortHotImage2",1804100015,674,410)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemHotImage0",1804100015,56,149)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemHotImage1",1804100015,253,149)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemHotImage2",1804100015,450,149)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemHotImage3",1804100015,55,268)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemHotImage4",1804100015,252,268)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemHotImage5",1804100015,449,268)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemHotImage6",1804100015,55,386)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemHotImage7",1804100015,252,386)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemHotImage8",1804100015,449,386)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 50)
    end
    
    
    GameMall.UIInit(_Parent)
end

--UI Logic Code Start




GameMall.CurPage = 0
GameMall.PageCount = 0
GameMall.CurTab = 0
GameMall.WndHandle = 0
GameMall.ItemCount = 0
GameMall.CurSelectIdx = -1
GameMall.WndPageCount = 9


function GameMall.UIInit(_Handle)
	GameMall.WndHandle = _Handle
	local _ItemCount = GameMall.WndPageCount
	GUI:WndCalSize(GameMall.WndHandle)
	local _Parent = _Handle
	local _BackHandle = GUI:WndFindChildM(_Parent, "BackImage0")
	if _BackHandle ~= 0 then
		GUI:WndSetCanRevMsg(_BackHandle, false);
	end

	_BackHandle = GUI:WndFindChildM(_Parent, "Back5")
	if _BackHandle ~= 0 then
		GUI:WndSetCanRevMsg(_BackHandle, false);
	end

	local _EditHandle = GUI:WndFindChildM(_Parent, "PageEdit")
    if _EditHandle ~= 0 then
        GUI:EditSetEditImageOffset(_EditHandle, -1, 0)
        GUI:WndAddFlags(_EditHandle, 0x00400000)--flg_dlgEdit_textInCenter
        GUI:WndAddFlags(_EditHandle, 0x00100000)--flg_dlgEdit_textInMid
    end

	_EditHandle = GUI:WndFindChildM(_Parent,"JiFen")
	if _EditHandle ~= 0 then
		GUI:WndSetCanRevMsg(_EditHandle, false)
	end

	_EditHandle = GUI:WndFindChildM(_Parent,"BindYuanBao")
	if _EditHandle ~= 0 then
		GUI:WndSetCanRevMsg(_EditHandle, false)
	end

	_EditHandle = GUI:WndFindChildM(_Parent,"YuanBao")
	if _EditHandle ~= 0 then
		GUI:WndSetCanRevMsg(_EditHandle, false)
	end
	
	local _VipTipHandle = GUI:WndFindChildM(_Parent, "VipTip")
	if _VipTipHandle ~= 0 then
		if LuaGlobal["GameMallVIPTip"] ~= nil then
			GUI:EditSetTextM(_VipTipHandle, LuaGlobal["GameMallVIPTip"]);
		end
		GUI:WndSetTextColorM(_VipTipHandle, GUI:MakeARGB(255,238,154,49))
		GUI:WndAddFlags(_VipTipHandle, 0x00400000)--flg_dlgEdit_textInCenter
		GUI:WndAddFlags(_VipTipHandle, 0x00100000)--flg_dlgEdit_textInMid
		GUI:EditSetCanEdit(_VipTipHandle,false)
		GUI:WndSetCanRevMsg(_VipTipHandle,false)
	end

	for _Idx = 0, 2 do
		local _GUIIDString = "SortItem".._Idx
		local _WndHandle = GUI:WndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:ItemCtrlSetIconImageType(_WndHandle, 1) -- 设置显示图标为大图标
			GUI:ItemCtrlSetHighlightImageID(_WndHandle, 1804100043)
		end
	end

	for _Idx = 0, _ItemCount do
		local _GUIIDString = "Name".._Idx
		local _WndHandle = GUI:WndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:WndSetCanRevMsg(_WndHandle, false)
			GUI:EditSetTextColor(_WndHandle, GUI:MakeARGB(255, 234, 229, 99))
		end

		_GUIIDString = "Image".._Idx
		_WndHandle = GUI:WndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:WndRegistScript(_WndHandle, 1002, "GameMall.OnSelectItem")
		end

		_GUIIDString = "Item".._Idx
		_WndHandle = GUI:WndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:WndRegistScript(_WndHandle, 1002, "GameMall.OnSelectItem")
			GUI:ItemCtrlSetIconImageType(_WndHandle, 1) -- 设置显示图标为大图标
			GUI:ItemCtrlSetHighlightImageID(_WndHandle, 1804100043)
		end

		_GUIIDString = "Price".._Idx
		_WndHandle = GUI:WndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:WndSetCanRevMsg(_WndHandle, false)
		end

		_GUIIDString = "NowPrice".._Idx
		_WndHandle = GUI:WndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:WndSetCanRevMsg(_WndHandle, false)
		end
	end

	--设置窗口位置
	local _DeviceWidth = CL:GetScreenWidth()
	local _DeviceHeight = CL:GetScreenHeight()
	GUI:WndSetSizeM(GameMall.WndHandle, 900, 600)
	GUI:WndSetPosM(GameMall.WndHandle, _DeviceWidth / 2 - 400, _DeviceHeight / 2 - 340)
	
end

function GameMall.OnClose(_Handle,_Param)
	GUI:WndClose(GameMall.WndHandle)
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



function GameMall.UpdataHotImage()
	local _HotImageVisible = false
	if 0 == GameMall.CurTab then
		_HotImageVisible = true
	end

	local _ItemCount = GameMall.WndPageCount
	for _Idx = 0, _ItemCount do
		local _GUIIDString = "ItemHotImage".._Idx
		local _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:WndSetVisible(_WndHandle, _HotImageVisible)
		end	
	end
end

function GameMall.PayMoney(_Handle,_Param)
	CL:OpenUrlUseIEByType(3)--打开充值页面
end

function GameMall.OnSelectItem(_Handle,_Param)
	if 0 ~= _Handle then
		local _ItemIdx =  GUI:WndGetParam(_Handle)
		GameMall.CurSelectIdx = _ItemIdx
		CL:ResetSortMallSelect()
	end
end

function GameMall.UpdataItem()
	GameMall.ClearItem()
	GameMall.UpdataHotImage()
	local _ItemCount = GameMall.WndPageCount
	if CL:GetMallItemInfo() then 
		local _MammInfoTable = LuaRet
		for _Idx = 0, _ItemCount - 1 do
			local _MallIndex = (GameMall.CurPage - 1) * _ItemCount	+ _Idx
			GameMall.UpdataItemWndVisible(_Idx, true)
			if _MallIndex < #_MammInfoTable then
				local _ItemID = _MammInfoTable[_MallIndex + 1][1]
				local _Count = _MammInfoTable[_MallIndex + 1][3]
				local _PriceUinit = _MammInfoTable[_MallIndex + 1][4]
				local _Price = _MammInfoTable[_MallIndex + 1][5]
				local _DisCountPrice = _MammInfoTable[_MallIndex + 1][6]
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
	else
		for _Idx = 0, _ItemCount do
			GameMall.UpdataItemWndVisible(_Idx, false)
		end
	end
end


function GameMall.DoBuyItem(_Handle,_Param)
	if GameMall.CurSelectIdx ~= -1 then
		local _WndID = "Item"..GameMall.CurSelectIdx
		local _MallWndHandle = GUI:WndFindWindow(0, "GameMall")
		if _MallWndHandle ~= 0 then
			local _MallIndex = (GameMall.CurPage - 1) * GameMall.WndPageCount + GameMall.CurSelectIdx
			CL:BuyMallItemUseBulkWnd(_MallIndex)
		end
	end
end

function GameMall.UpdataItemWndVisible(_Idx, _Visible)
	local _Parent = GameMall.WndHandle
	local _WndID = "ItemBackWnd".._Idx
	local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUI:WndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "Item".._Idx
	_WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUI:WndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "Name".._Idx
	_WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUI:WndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "NowPrice".._Idx
	_WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUI:WndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "Buy".._Idx
	_WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUI:WndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "ItemImg".._Idx
	_WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUI:WndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "ItemHotImage".._Idx
	_WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		if _Visible == true then
			if GameMall.CurTab ~= 0 then
				GUI:WndSetVisible(_WndHandle, false)
			end	
		else
			GUI:WndSetVisible(_WndHandle, false)
		end
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


function GameMall.SelectSortItem(_Handle,_Param)
	GameMall.CurSelectIdx = -1	
end


function GameMall.OnBuyItem(_Handle, _Param)
    if 0~= _Handle then
        local _Param = GUI:WndGetParam(_Handle)
        local _MallIndex = (GameMall.CurPage - 1) * GameMall.WndPageCount + _Param
        --CL:BuyMallItemByIndex(_MallIndex, 1, true)--单个购买
		CL:BuyMallItemUseBulkWnd(_MallIndex)
    end
end

function GameMall.OnSortButItem(_Handle, _Param)
    if 0~= _Handle then
	    local _Param = GUI:WndGetParam(_Handle)
        CL:BuySortMallItemByIndex(_Param, true, true)
    end
end


function GameMall.OnTabChange(_Handle, _Param)
	local _CurTab = GUI:WndGetParam(_Handle)
    if _CurTab ~= GameMall.CurTab then
        GameMall.PageCount = 0
        GameMall.CurPage = 1
		GameMall.CurTab = _CurTab
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

LuaGlobal["GameMallItemPageCount"] = 9

GameMall.main()
RegisterUIEvent(LUA_EVENT_UPDATAMALLITEM, EVENT_DEFAULT_TAG, GameMall.OnItemUpdata)