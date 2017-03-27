HandBook = {}
function HandBook.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"HandBook",1804000006,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,738, 526)
        GUI:WndSetIsESCClose(_Parent, true)
        GUI:WndSetMoveWithLBM(_Parent)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1804000008,334,466)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_2",1804000009,337,6)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,71, 24)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"check",1804000010,"��ʾȫ��",593,471)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "HandBook.CheckChange")
        GUI:WndSetTextM(_GUIHandle,"��ʾȫ��")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,75, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button1",1803900026,-10,66)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HandBook.KindClick")
        GUI:WndSetTextM(_GUIHandle,"����־")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,34, 76)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button2",1803900026,-10,129)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HandBook.KindClick")
        GUI:WndSetTextM(_GUIHandle,"���־")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,34, 76)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"left",1800000094,306,470)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HandBook.TurnPage")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"right",1800000098,393,470)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HandBook.TurnPage")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"page",345,471,34,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"close",1803700030,674,7)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HandBook.closed")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,30, 36)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_15",1804000005,28,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_22",1804000005,163,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_26",1804000005,298,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_29",1804000005,433,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_32",1804000005,568,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_59",1804000005,28,173)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_60",1804000005,163,173)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_61",1804000005,298,173)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_62",1804000005,433,173)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_63",1804000005,568,173)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_79",1804000005,28,304)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_80",1804000005,163,304)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_81",1804000005,298,304)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_82",1804000005,433,304)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_83",1804000005,568,304)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,145, 140)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg1",1804000007,60,55)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg2",1804000007,196,55)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg3",1804000007,332,55)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg4",1804000007,468,55)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg5",1804000007,604,55)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg6",1804000007,60,189)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg7",1804000007,196,189)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg8",1804000007,332,189)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg9",1804000007,468,189)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg10",1804000007,604,189)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg11",1804000007,60,320)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg12",1804000007,196,320)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg13",1804000007,332,320)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg14",1804000007,468,320)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg15",1804000007,604,320)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,69, 70)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl1",0,65,61,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl2",0,202,61,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl3",0,339,61,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl4",0,473,61,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl5",0,608,61,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl6",0,65,195,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl7",0,202,195,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl8",0,339,195,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl9",0,473,195,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl10",0,608,195,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl11",0,65,326,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl12",0,202,326,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl13",0,339,326,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl14",0,473,326,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemctrl15",0,608,326,59,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,59, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level1",28,138,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level2",163,138,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level3",298,138,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level4",433,138,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level5",568,138,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level6",28,272,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level7",163,272,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level8",298,272,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level9",433,272,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level10",568,272,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level11",28,403,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level12",163,403,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level13",298,403,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level14",433,403,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"level15",568,403,145,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name1",28,150,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name2",163,150,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name3",298,150,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name4",433,150,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name5",568,150,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name6",28,284,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name7",163,284,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name8",298,284,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name9",433,284,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name10",568,284,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name11",28,415,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name12",163,415,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name13",298,415,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name14",433,415,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name15",568,415,145,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image1",0,55,49)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image2",0,193,49)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image3",0,330,49)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image4",0,462,49)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image5",0,598,49)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image6",0,55,183)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image7",0,193,183)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image8",0,330,183)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image9",0,462,183)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image10",0,598,183)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image11",0,55,314)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image12",0,193,314)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image13",0,330,314)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image14",0,462,314)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image15",0,598,314)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 84)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head1",0,74,71)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head2",0,212,71)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head3",0,349,71)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head4",0,481,71)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head5",0,617,71)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head6",0,74,205)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head7",0,212,205)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head8",0,349,205)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head9",0,481,205)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head10",0,617,205)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head11",0,74,336)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head12",0,212,336)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head13",0,349,336)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head14",0,481,336)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"head15",0,617,336)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    HandBook.UIInit(_Parent)
end

--UI Logic Code Start
local Sboss_tab = {
	{"���ִ�","��","��","С��","��Щ�������������ֿɵõ�ʳ�ı鲼������������䡣"},
	{"���ִ�","¹","¹","С��","�����Ϻõ�Ƥë���׽ǵ�¹�����۴��������˼��˶��ᶯ�ġ�"},
	{"���ִ�","��é��","������","С��","�ڿ󶴷����ڰ�����Ŀ���֮��һЩ������������ĵ������ܵ���ħ������ɵķ���Ȼ���"},
	{"���ִ�","��Ƥ��","�๳è","С��","��Щ�ɰ���Ƥ�ĺ��Ӿ�����Ⱥ��͵ʳ���������ʳ��"},
	{"��","ʬ��","ʬ��","С��","���ڰ�������а������������������ʬ����Ĺ�ͷ�������Ⱦ�̶������ӵ�зǳ��ֲ���������"},
	{"��","������ʬ","ĹѨ��ʬ","С��","���ڰ�������а������������������ʬ����Ŀ󹤣���Щ�����ʬ����������Ϊ�Լ���������"},
	{"��","���ؽ�ʬ","��֫��ʬ","С��","���ڰ�������а������������������ʬ����Ŀ󹤣������ж����ض���������Ϣ��ʱ��׼��������һλ�ܺ��ߡ�"},
	{"��","��ʬ","��ʬ","С��","���ڰ�������а������������������ʬ����Ŀ󹤣���Ⱥ���Ե���ʬ����ǿ�ҵļ����У����еؿ������ʵ����⡣"},
	{"��","������","���þ���","С��","���ڰ�������а���������������ȥ���ľ���ħ�����ã�ͳ�����������ô����"},
	{"��","�󶴷ɶ�","ɽ������","С��","���ڰ�������а���������������þ޴󻯵�а��ɶ꣬�ܹ����׽�һ���������˵���"},
	{"��","������ʿ","����ս��","С��","���ڰ�������а���������������ȥ����ħ�����ã���ǰ����С��������ϰ��֮�ˡ�"},
	{"��","����սʿ","����սʿ","С��","���ڰ�������а���������������ȥ����ħ�����ã���ǰ������ʳ���׵�׳����"},
	{"��","������","����","С��","��ʳ�˿��ڱ�������������������棬ֻ������һҧ���Ϳ��Խ����˵�С����ȫ��ҧ����"},
	{"��","Ы��","Ы��","С��","��ʳ�˿��ڱ����������������Ы�ӣ�֫��ʬ�������ǵĳ��"},
	{"��","����","����","С��","���ڰ�������а���������������ȥ����ħ�����ã���Щ���������Ѿ����õ���ȫ�����������԰׹ǵ���̬�����ǻ��ڿ��ڡ�"},
	
	{"��ɽ��","���","���","С��","��Ƥ����������ӣ�����͵��ʳ���Լ���Ϸ·������Ů��"},
	{"��ɽ��","��éħ��","��é��","С��","���ڰ�����Ӱ�����İ�é�ˣ�ħ�������Ƕ������ŷǱ�Ѱ������������"},
	{"��ɽ��","��é����","��é����","С��","������������������Ǻ��Ե������������Ȼ�ӵ������𣬶Բ�����������������һ����"},
	{"��ɽ��","ľ����","ľ����","С��","�ڿ󶴷����ڰ�����Ŀ���֮��һЩԭ��������ʦ����֮�õ�ľ�߻�������Щ����ħ�Եķ���Ȼ���"},
	
	{"���涴","�ڰ�����","ǯ��","С��","���Ⱦ���ֵ̼����ڶ��ڵĹƶ������ľ޴����棬ӵ��һ�������޴��ǯ�ӡ�"},
	{"���涴","ɱ�˷�","������","С��","���Ⱦ���ֵ̼����ڶ��ڵĹƶ������Ķ��䣬���Ǳ����β������ڴ����ܺ�������֮���ٴΰγ�����"},
	{"���涴","���","���","С��","���Ⱦ���ֵ̼����ڶ��ڵĹƶ������ľ޴���򼣬ֻ������һ�ڣ��Ϳ��Խ�һֻˮţ˲�������"},
	{"���涴","�ڰ�������","а��ǯ��","С��","�ڰ�������������ͬ��Ͷ�����������Ⱦ��������������α���Ĺ��ǯ�ӵ�����֮�󣬿��Խ���ʯҧ�顣"},
	{"���涴","��ɫ����","��ɫ����","С��","���Ⱦ���ֵ̼����ڶ��ڵĹƶ����������棬����˶�������֮�⣬����ͻ��������Ĵ̿������׵ش̴����ɡ�"},
	{"���涴","�ڰ����","�������","С��","���Ⱦ���ֵ̼����ڶ��ڵĹƶ���������棬����һ��ԭ�ȵ���ʳϰ��ת��ϲ����ʳ���ʵ�Ѫ�⡣"},
	
	{"ʳ�˶�Ѩ","ʳ������","ʳ������","С��","��Щϲ����������Ĺ��ﾭ�����������������֮�����˷�ָ��"},
	{"ʳ�˶�Ѩ","ʳ�˶�ħ","ʳ�˶�ħ","С��","���ڶ�����������Ⱥã����಻�ò���������һ֧�������ר�ŶԸ���Щ���˵Ĺ��"},
	{"ʳ�˶�Ѩ","ʳ��Ы��","ʳ��Ы��","С��","��Щ���Ե�����Ы��״�Ķ�ħӵ�м�̹⻬������������к�ħ�����޷���͸��"},
	{"ʳ�˶�Ѩ","����","ʳ�˶���","С��","����ԭ�������ڶ��ڵĶ����ܵ���ħ�����ĸ�Ⱦ�������Ѿ��ɳ�Ϊ�����ž޳�ɢ���Ŷ��۵Ĺ��"},
	
	{"�����","�����ʿ","�����ʿ","С��","��Щ���ڰ�ɱ�͹�ƵĴ̿��ܵ���Ľ����Ĺƻ�һ���ػ��������"},
	{"�����","��Ļ���","��Ļ���","С��","�������ʿ��ѡ��������һ����Ӣ������ӵ����һ��ʮ��ʵ����"},
	{"�����","���ս��","���ս��","С��","ս���պյĴ̿�ͷĿ��Ϊ���µ�������Ľ��"},
	{"�����","��Ķ�ͳ","��Ķ�ͳ","С��","�����Ľ��������ͳ�켶�̿ͣ��������飬���������¶�����������һ����һ�ε���Ϯ��"},
	{"�����","�����ʿ","�����ʿ","С��","ӵ�����ϵ������ػ��Ŵ���Լ���Ľ�������ʵ��ʿ��"},
	
	{"а��","а������","���깭����","С��","�ٲ������а�����ֶ��Բ�����ʲôֵ�ÿ�ҫ���£����Ǿ�տ�ļ����ܹ�׼ȷ�����������˵���­��"},
	{"а��","а�����","�������","С��","��а�ʹ�ע��ǿ������֮�»��������������һ������������ʯ����˲���ɱ�����ߡ�"},
	{"а��","а����ʿ","������ʿ","С��","�ڽ����˺ڰ���а��֮��ڤ�����ʿ��������������ؽ��ÿһ�������ĵ��ˡ�"},
	{"а��","������","�������Ӭ","С��","��Щԭ��������а���ڵ�ԭס�����ܵ�ħ�������ĸ�ʴ������˼��˾�ҧ�Ĺ��"},
	
	{"ħ��Ͽ��","����֩��","����֩��","С��","����֩���ܵ���������ħ�Ĺƻ��÷���ұ��꣬��Ҫɱ��һ�������ߡ�"},
	{"ħ��Ͽ��","����֩��","����֩��","С��","����֩��ͨ���������Ǽ����ޱȵ�����˺����ǰ�������ߡ�"},
	{"ħ��Ͽ��","��Ӱ֩��","��Ӱ֩��","С��","���ֺ�������ʹ���޷����������֩�������ڲ�����֮��ʹ̴����ܺ��ߵĺ�����"},
	{"ħ��Ͽ��","����֩��","����֩��","С��","���������������С֩��ۼ�������Χ��ʱ�򣬾ͻᷢ�����ǻ����͵�������С������ɱʽ�ı�ըϮ���ݻ�һ������֮�С�"},
	{"ħ��Ͽ��","��ħ֩��","��ħ֩��","С��","�����ܹ������¹⻯Ϊ������֩��ԭ����һ�ַǳ���ϡ��֩�룬���Ǳ�������ħ��Ⱦ֮�����ͳ����������ȷ档"},
	{"ħ��Ͽ��","����֩��","����֩��","С��","����֩���ܹ������Լ����������Ѹ�ٵ�˺����һͷ����"},
	{"ħ��Ͽ��","Ѫ����","Ѫ����","С��","�ܵ�������ħ��Ӱ�죬��Щԭ��������˳��Գ������ŭĿԲ�������鱩��Ĺ��"},
	{"ħ��Ͽ��","Ѫ���","˫ͷ���","С��","һЩǿ׳��Ѫ�����ٶȱ�������ħħ�����޴�������������˲���������"},
	{"ħ��Ͽ��","Ѫħ","˫ͷѪħ","С��","Ѫħ��������ħ��Ϊ���ص�צ�������ǲ������飬�޼᲻�ݣ�������ħ�������Ժ����Ĵ��ڡ�"},
		

	{"ţħ��","ţ��ʿ","ţħսʿ","С��","ţ��ʿ��׼�����ս��������ʸ񣬼�ʹ������������Ҳӵ�в��׵�ʵ����"},
	{"ţħ��","ţսʿ","ţħ����","С��","��Щ��������һ����ս�ֿ�ħ�����ֵ�ţ��ʿӵ��ǿ�������ǣ����ڳ������е���ǰ�ߡ�"},
	{"ţħ��","ţ����","ţħ����","С��","ţ���������˽�ս��������·����Ϊ����Զ������������Ч�������������Ч����Ⱥ��"},
	{"ţħ��","ţ��ʦ","ţħ��ʦ","С��","��Щ������������ţͷ��ʦͬ���Ȱ���ƽ��ֻ�����ܵ���ħ�����������һֱ�����෨ʦ�Է����໥���⡣"},
	{"ţħ��","ţ����","ţͷħ","С��","ţ������������ǧ������۳��ݺ����֮�䣬Ϊ���˵����ɺ�����ɨƽ�ϰ������Ĳ�����ά����ţħ����"},
	{"ţħ��","ţ��ʦ","ţħ��˾","С��","��Щ��ʦ�Ǽ�˾�Ǿ���ħ���Ľ�������ǲ�����ͨռ�������ģ�Ҳѧ���������ޱȵķ�����"},
	
	{"��ҹ֮��","��Ѫ��ʬ","���齩ʬ","С��","��Щ������ս�����������ʬ�屻ħ��ע����Թ�������˽�ʬ��������Ҫ�����������ߡ�"},
	{"��ҹ֮��","����ʬ��","����ʬ��","С��","��Щ��ǰ����ǿ��սʿ��ʬ�壬��ħ������󲻶ϵ�Ѱ�����ʵĹ��⣬���������������ھ׽���ͷʱ����������Ц�⡣"},
	
	{"���Ƕ�","ħ���б�","���ô���","С��","��ǰ����ǿ׳�����Ŀ󹤣�����ɳ����֮���ֱ����޽�������������"},
	{"���Ƕ�","ħʬū��","���ó�ǹ��","С��","ɳ����������Щ���ǿ󹤵����ǣ�����ɳ����һֻֻ�����������ִӵص����˳�����"},
	{"���Ƕ�","ħ�ǿ���","���ù�����","С��","��������û��Թ��þò�ɢ���ڱ����޽���ע����ǰ��ʬ�����Щ�������ߵĿ�������վ��������"},
	{"���Ƕ�","ħ����ʿ","���õ�����","С��","ħ����ʿ�����޽�����Ϊ��������£����ǲб��Ҳ����赲�����ڽ��������������ƴӡ�"},
	
	{"��ħ����","Ұ����ʿ","��ħЫ��","С��","׷��������ħ���������ߣ�����ӵ�й����������ֻ������һȭ���ܹ����ұڴ��һ��������"},
	{"��ħ����","��ħ����","ǧ������","С��","����������ħ������ħ����һֱ�Ǳز����ٵ�ս����ʦ��������Ϊ���ǵĴ��ڣ�����ħ���ӵ���˿ֲ���������"},
	{"��ħ����","��ħ����","��ħ����","С��","һЩ��Զ��ԱȽϾ��ݵĶ�ʿ����ѡ����ʹ��Զ��������ħ��Ҳ��ϲ�ط�����Ч���ˡ�"},
	{"��ħ����","��ħ��ʿ","��ħ����","С��","��ս���µ���ħ��ʿһֱ����ħ������������������νý��������������������ս���и����������ǳ�����׼���"},
	
	{"���ĳ�","���Ķ���","ħ������","С��","���ּ��˾�ҧ�Ķ���һ���˼��˶����˱����֣���Ϊ�����������Ŀ��������д��̵Ĺ�צ��"},
	{"���ĳ�","��������","ħ��Ѫ��","С��","������֮������ʳ���ѷ��ĵط�����������������˵û��ʲô�����ǲ����ԳԵģ����ǻ�һ���Զ���ӵ�������ʳ����Ѫ�⡣"},
	{"���ĳ�","���ĵ���","ħ������","С��","ӵ����쵶���ĵ��������Ƿ�ɱ����ǰ�ߣ��������ǿ����õ����Ľ�������κ͹ػ���"},
	{"���ĳ�","��������","ħ������","С��","������֮��������ˣ��������Ѿ�������һ����ŷ�ɳҲ����׼���˵ı��졣"},
	{"���ĳ�","����ս��","ħ��ս��","С��","��Щ��ǿ��׳��ӵ�ж���ָ�Ӳ��ܵ�ս�������Ľ�����Ϊ��������¡�"},
	{"���ĳ�","������ʿ","ħ����ʿ","С��","�ܿ�����ҵ�������ʿ��Ƣ���ǳ����꣬���ǻ�˺���κ���֮���Ƶ���������������ǵ�ͬ�ࡣ"},
	{"���ĳ�","���ľ޶�","ħ���޶�","С��","���Ľ�����һЩ���ӹ�����ħ���Ժ���Щ���Ӿͱ�þ޴��ҷǳ����й����ԣ����ǵ���ʶҲ�����Ľ��������ơ�"},
	{"���ĳ�","���Ļ���","ħ��а��","С��","ͬ���Ǳ����Ľ���ע��ħ�ܵĲ�����Ļ�������ǿ���ͻ�������������"},
	{"���ĳ�","�����Ƽױ�","ħ���Ƽױ�","С��","�������������Ĺ����ܹ����׵ز�������˵����㣬ת�����ٰ��ڿ��ٴ��������Ĳ�λ����ͬɱ¾������Ч�ʡ�"},
	
	{"ɳĮ�ع�","ɳ��","���»���","С��","����β������ͨ��֮���ٻ�����ɳĮ�����ɱ���κο���ɳĮ�ع����������"},
	{"ɳĮ�ع�","ɳ��","���½ǳ�","С��","���ֱ���β����ͨ��֮���ٻ�����ɳĮ�����ڹ���������ʱ������������ʱʧ����"},
	{"ɳĮ�ع�","ɳĮ��ʿ","�ں�","С��","��ɳĮ���Ӷ����������ֵ̼Ĳ���Ϊ����ǿ���Ż���²������鲻����ڡ�"},
	{"ɳĮ�ع�","ɳ����","���","С��","���ڽӴ���β������������þ޴󻯵�ɳĮ�ߣ�һ�ھ�������һͷ��"},
	{"ɳĮ�ع�","ɳ��������","�غ�","С��","������׼�ޱȵļ�������ǿ���Ż�����������࣬�ڷ�ɳ��Ҳ�ܹ������ȶ���׼ȷ�ʡ�"},
	
	{"��Ѫħ��","��ѪͻϮ��","���Ȼ�����","С��","����Ѹ�ݶ������͵���������Ѫ��۵Ĵ���г������Ĳ�����ѡ��"},
	{"��Ѫħ��","��Ѫ��ʦ","����֩��","С��","��Щ���صļ�˾����Ѫ�����޾��Ŀ��ȣ�����Ѫ��ħ�������ǿ�������Ѫ��۵�����ͳ������ǹ���δ����"},
	{"��Ѫħ��","��ѪѲ��","����֩��","С��","��Щ����Ͱ����ƶ���������Ѫħ�����ҳϵ��ػ�����Ѫ��ۣ��κ���Ҫ��������ʿ�������г���Ƭ��"},
	{"��Ѫħ��","��Ѫ��ͽ","ʥ����ʿ","С��","��Ѫ��ͽ����Ѫ�����Ϊ���ε����£����Ƿ���ɱ¾�����ܹ���������ս�����������ҡ�"},
	
	{"������","��ԭ��ʦ","ѩ����ʿ","С��","��Щ��ͨ��ϵħ���������ܹ����κλ��ﶳס�����ñ�׶�������ǡ�"},
	{"������","��ԭ����","ѩ��ս��","С��","���͵����˽���ס�˷�˪����Ϯ�������Խ��������ٶȳ����˺��ص�Ƥë��"},
	{"������","ѩ�����","ѩ����ʿ","С��","�ⲿ����ս�ҷ׷�����Щ����Ϊ�˵ñӻ��׷�������������Ч���˱���"},
	{"������","ѩ��ʳ����","ѩ������","С��","�ɱ����������ʳ����Ѹ���׺ݣ��ܹ�����˺�������ߵ����塣"},
	{"������","��ԭǯ����","ѩ���콫","С��","һЩ����֮�ص����˱���������׷ɱ����Ч�ұ���֮�����ǻ���˼�����ǵĻ��ף����ǵ��ֱ�Ҳ��Ϊ�����þ޴��ܹ�����ǯ�Ͼ�����"},
	
	{"������","��ѪҰ��","�����ػ���","С��","��Щϲ�������������������ҽ��п��������ӵ�м򵥵�������ȴӵ��ǿ׳�����ǹ��Ӷ���ɱ֮�á�"},
	{"������","ʳʬ����","��ħ����","С��","����̰���������̳��˱������ս���ʬ����������죬����������£����������ʳ��ǰ���κ����"},
	{"������","ʳʬ��","�������","С��","��ѪҰ����ʳ����ʮ��ʬ��������˾��ҵı��죬���ǵ��°ͳ��ž޴����״����Ӳ�̶ȿ��Եֿ����ֵ����Ļӿ���"},
	
	{"�������","ţħ����","������","С��","��ħ��ս��һ���ֱ���ɢ��ţͷ�˵õ�������ħ���ıӻ��Ӷ���ת����ţħ����Щ�����ҳ������͵��ػ���������"},
	{"�������","����ţħ","������","С��","������ħ��ת����ţħ��ţͷ��սʿ�������ǿ�������������ħ����ţħ�����ܱ������ǡ�"},
	{"�������","����ţħ","������","С��","��Ȼ��˵ţħ�������Ųв�����ţħ�����������߻����𣬵�����Щţħ�������Ѿ������ǻز�ȥ��ԭ�硣"},
	{"�������","ţħ��ʿ","��ͷ����","С��","ţħ��ʿ��л����ħ�����������ǵ�����������������Ч��������"},
	
	{"��ڤ���","�������","��������","С��","������ħ֮սħ�������ö���ڤ���ͷ����ݳ����ļ���ǳ��ó��ڰ���ħ��������ϲ����Ц�Ŵ�ɢ���˵���ꡣ"},
	{"��ڤ���","Ѫɫ����","ħ������","С��","�����ž������������ڤ�����ܹ����׵ؽ�����Ĵ�����һ��ͻ�ƿڡ�"},
	{"��ڤ���","�ɻ�����","��Ӱ����","С��","��������ڤ��Ĺ���ϲ���������ߵ���꣬��ڤ�类˺��ͨ�򷲼�����ʱ�����Ǵ���ӿ�˳�����"},
	
	{"��������","�ǯ��","�з","С��","�ܵ�ڤԨ֮��Ӱ��ĺ��з����þ޴��Ҽ��߹����ԡ�"},
	{"��������","��Ԩ֮��","��Ϻ����","С��","�����˺���һ����й¶��ħ��֮���������˶��̵����࣬���������쳣��"},
	{"��������","ʯ������","����","С��","��Ϊ��ʳ�˱�ڤԨ������ܵ���ʿ�ǵ�ʬ�壬��Щ������˳����������������"},
	{"��������","������","��ͷ����1","С��","ԭ���Ǻ�Ԩ����ͨ����Ϻ��ֻ���������ٲ��ֵ�ڤԨ֮���ͱ�����м��ǻ��������쳣�����"},
	
	{"���µ���","������ʿ","ħ��������ʿ","С��","���µ���ԭ�������ж����죬�������أ��ܹ��мƻ��ذ�ɱ�κ������ߡ�"},
	{"���µ���","���»���","ħ�����껤��","С��","���µ���ԭ�������̷���һ�����ܽ��ɵĵ������ƺ��ػ���һ���������ܡ�"},
	{"���µ���","������ʿ","ħ��������ʿ","С��","���µ���ԭ����������ֻ�ܴ�һЩ���ߵ��˺��Ͽ������ǵĵ������֮�죬�ƺ�û����֪��������һ�γ��ֻ���ʲô��ʽ��"}
}

local Mboss_tab = {
	{"��ɽ��","��é����","��Ӣ��é����","�ӳ�","��é��������һЩ�����������γɵ���һ�ָ�����в�Եķ���Ȼ���ڣ������ε��ڶ��ڻ��߽��⣬�Ժ���֪���·����������һ����"},
	{"��ɽ��","�Ӻ�","��Ӣ���","�ӳ�","���Ӳ��������������·�������ʳ��ĺ��ӣ���˵����Ƥ���ͷ�졣"},
	{"��ɽ��","��é����","��Ӣ��é��","�ӳ�","��é��������һ�������߾�������һ�ַ���Ȼ���ڡ�"},
	{"��ɽ��","ľ������","��Ӣľ����","�ӳ�","ľ�������յ����������γɵ���һ�ַ���Ȼ��̬�����Ǻ���ʹ�У�ֱ�����Ҳ����ֹͣ�����ߵ�׷����"}
}

local Lboss_tab = {
	{"���涴","߱Ѫ���","������","BOSS","�������������ڱ���Ⱦ�Ķ���֮���γɵĹƳ�֮��������Ѫ���ŷ��Ŀ�����ӵ���޿ɱ�����ƻ�����"},
	{"ʳ�˶�Ѩ","ʳ��ͳ��","��ɫ����","BOSS","��ħ��ս����ħ����˺��ڤ�����˼�Ľ���֮����Щ�����ޱȵĹ����������ʳ�˴�����������ǵ�������"},
	{"�����","��Ľ���","�������","BOSS","���ͽ���������Լ������ħѪ�Ա㹮���Լ�ͳ�ε�ħ����ӵ�й����ħ������׾ٵ�˺�����塣"},
	{"а��","а��","�������","BOSS","а�����Թ������ʹ�����а���ڵ�а�������˵��������ͨħ����Ҳ�����˲��������������ܹ����Լ��Լ�צ�����������ࡣ"},
	{"ħ��Ͽ��","������ħ","���¶�ħ","BOSS","��ס��Ͽ�������������ħ�ǳ��ó�������ƣ����������¹�ȴ�����Բ����������һ�ν��������������"},
	{"ţħ��","ţħ��","ţħ��","BOSS","ţħ����Ϊ����ħ�����������������жԣ���ӵ�з�����������Ĳ��ɺ���֮����������ĵ����ܹ����κε�������ǰ�����������롣"},
	{"��ҹ֮��","Ѫɫǧ��ն","ʬ��","BOSS","��ħ֮ս��һλսʿ����ǰ��������Χ����ԩ���Թ���������ʬ��ƴ�������Լ���ȱ��ȫ��ʬ�壬�������������˶���ޱȵĵ���֫��ʬ�塣"},
	{"���Ƕ�","���޽���","��Ȫ����","BOSS","������ȥ��Թ��������һλ���Եص����ħ���ע�⣬����������Щ���ã����Գ����޽�����"},
	{"��ħ����","������ħ","��ħ����","BOSS","������ħ�Թžͱ�ʥ�˷�ӡ���ˣ�ֱ�������ӡ�������ӵ��ͨ��������������Ҫ��Щʥ�˺���ӱ����"},
	{"���ĳ�","���Ľ���","ħ������","BOSS","���Ľ���ӵ������������ע������֮������������ǿ�������֮����ǰ���κμ�̵ĳǳض������ݻ١�"},
	{"ɳĮ�ع�","��β������","�����غ���","BOSS","��ɳĮ�е�ǿ���Ż��Ϊ�����ľ�β������������ֻ��������ϵ������ɫ�Ͽ����ƺ�ӵ�в�ͬ��������"},
	{"ɳĮ�ع�","��β������","��צ�����","BOSS","��ɳĮ�е�ǿ���Ż��Ϊ�����ľ�β������������ֻ��������ϵ������ɫ�Ͽ����ƺ�ӵ�в�ͬ��������"},
	{"ɳĮ�ع�","��β������","��β�ں���","BOSS","��ɳĮ�е�ǿ���Ż��Ϊ�����ľ�β������������ֻ��������ϵ������ɫ�Ͽ����ƺ�ӵ�в�ͬ��������"},
	{"��Ѫħ��","��Ѫ���","��������","BOSS","��Ѫ���һ��������ͳ�����ƣ���Ǳ���о�����Ѫ��������Ҫ�����෢��һ�������Ե�ս�ۡ�"},
	{"������","����ڤ��","ѩ��ħ��","BOSS","ָ�ⴥ��֮��Ϳ��԰��˶�������ı���ڤ������������ֲ��Ĵ��ڣ�������������������Ҫ���ϣ�û��֪������������"},
	{"������","����","����","BOSS","���»������һ�еĻ������������ߵ����ʣ�����һЩ�˰���������������ݡ�"},
	{"�������","����ħ��","������","BOSS","�����������Ǵ֮�汻�����ǳ�������ħ������������������ڰ��л���������˭Ҳ��֪������һ����ù��Ŀ�����˭��"},
	{"��ڤ���","Ѫɲ����","��������","BOSS","���㿴�������ٻ��轣�е�ʱ���������ʲô���������ڵ�����Ԩ�Ŀֲ���"},
	{"��������","��˪����","���ĺ���","BOSS","ԭ����һ��½���ϵľ����� ��Ϊ�ܵ���ڤԨ�����Ĺƻ����÷������ͨ�����ڻ��ͨڤ��ʹ��ڤԨ�������ڸ����ı�ϵħ������������ĺ�˪�ܹ�����һ�С�"},
	{"��������","��Ԩħ��","���ħ","BOSS","����Ӵ�ĺ�������������ڤԨ֮����ǰ�ͷǳ��޴󣬶����ڣ�������ڤԨ�����ܸ���ԶԶ���������������Ա����ĵ��ػ�������֮�ء�"},
	{"��������","ڤԨ����","������","BOSS","ڤԨ����������ħ����֪�Ͱ��˵�ħ�������̾��ڿ־���Ԩ�����������֮�����Ѿ��޷�������������������������֮�䣬��ͨ�����Ϲźڰ��޷���״��ħ�����ܹ���ɱ�κι���"}
}

local Z_Weapon = {
	"��ľ��",
	"�̽�",
	"ն��",
	"��˪��",
	"������",
	"�þ�",
	"ŭն",
	"������",
	"ս��ս��",
	"���ս��",
	"����ս��",
	"����ս��",
	"ʥ��ս��",
	"����ս��",
	"��������ս��",
	"��������ս��",
	"��������ս��",
	"��������ս��",
	"�������ս��",
	"��ҵ��"
}

local F_Weapon = {
	"��ľ��",
	"����",
	"ħ��",
	"Ѫ��",
	"����",
	"����",
	"���鷨��",
	"ħ�귨��",
	"��ħ����",
	"��ħ����",
	"ʥħ����",
	"������",
	"������淨��",
	"�������·���",
	"������鷨��",
	"�챩���ڷ���",
	"�����������",
	"��ҵ��"
}

local D_Weapon = {
	"��ľ��",
	"����",
	"����",
	"����",
	"��ң��",
	"����",
	"ɢ�˵���",
	"�������",
	"�������",
	"�������",
	"ʥ�����",
	"��������",
	"���������",
	"����㷨����",
	"������������",
	"����������",
	"����Ԫ������",
	"��ҵ��"
}

local A_Weapon = {
	"��ľ��",
	"�̽�",
	"ն��",
	"��˪��",
	"������",
	"�þ�",
	"ŭն",
	"������",
	"ս��ս��",
	"���ս��",
	"����ս��",
	"����ս��",
	"ʥ��ս��",
	"����ս��",
	"��������ս��",
	"��������ս��",
	"��������ս��",
	"��������ս��",
	"�������ս��",
	"����",
	"ħ��",
	"Ѫ��",
	"����",
	"����",
	"���鷨��",
	"ħ�귨��",
	"��ħ����",
	"��ħ����",
	"ʥħ����",
	"������",
	"������淨��",
	"�������·���",
	"������鷨��",
	"�챩���ڷ���",
	"�����������",
	"����",
	"����",
	"����",
	"��ң��",
	"����",
	"ɢ�˵���",
	"�������",
	"�������",
	"�������",
	"ʥ�����",
	"��������",
	"���������",
	"����㷨����",
	"������������",
	"����������",
	"����Ԫ������",
	"��ҵ��"
}

HandBook.Handle = 0
HandBook.MonsterTb = {}				--������ʾ���ѻ�ɱ�����
HandBook.Weapons = {}				--������ʾ����ӵ��������
HandBook.IsNormal = true			--Ĭ����ʾ״̬Ϊȫ����ʾ
HandBook.AllMonster = {}			--���й����ܱ�
HandBook.Index = 1					--��ǰҳ����	
HandBook.ShowTable = {}				--����չʾ��UI����ı�
HandBook.NowPage = 1				--��ǰ��ʾҳ				
HandBook.NowTypeTable = {}			--�ӷ���˻�ȡ�ĵ�ǰ����ı������л���ʾ״̬ʱ�����ٴӷ���˻�ȡ��

--UI Logic Code Start
function HandBook.UIInit(_Handle)
	HandBook.Handle = _Handle
	HandBook.NowPage = 1
	GUI:WndSetSizeM(_Handle,738,526)
	CenterWnd(_Handle)
	GUI:WndSetMagicUI(_Handle, 1)
	
	local _handle =0

	for i = 1, 2 do
		_handle = GUI:WndFindChildM(HandBook.Handle, "button"..i)
		if _handle ~= 0 then
			GUI:WndSetTextArrangeType(_handle,12,8,4,1);
			GUI:ButtonSetStateTextColor(_handle,0,MakeARGB(255, 100, 96, 80))
			GUI:ButtonSetStateTextColor(_handle,2,MakeARGB(255, 201, 184, 116))
		end
	end
	--ͷ��ͼƬ���Ļ���
	for i=1,15 do 
		_handle = GUI:WndFindWindow(HandBook.Handle,"image"..i)
		if _handle ~= 0 then 
			GUI:ImageSetDrawCenter(_handle,true)
		end   
	end
	
	--��ʼ����ఴť״̬
	ButtonSetIsActivePageBtn(HandBook.Handle, "button1", true)
	WndMoveToParentTop(HandBook.Handle,"button1")
	WndMoveToParentTop(HandBook.Handle,"text1")
	UI:Lua_SubmitForm("ͼ����", "getHandBookTb", "")
	
	--��ʼ����ఴť�༭����������ɫ
	local handle = GetWindow(HandBook.Handle, "text"..1)
	if handle ~= 0 then
		GUI:EditSetTextColor(handle, MakeARGB(255,206,179,98))
	end
	local handle = GetWindow(HandBook.Handle, "text"..2)
	if handle ~= 0 then
		GUI:EditSetTextColor(handle, MakeARGB(255,107,91,80))
	end
	
	--��ϱ�
	for i = 1, #Sboss_tab do
		table.insert(HandBook.AllMonster, Sboss_tab[i])
	end
	for i = 1, #Mboss_tab do
		table.insert(HandBook.AllMonster, Mboss_tab[i])
	end
	for i = 1, #Lboss_tab do
		table.insert(HandBook.AllMonster, Lboss_tab[i])
	end
	
end

--����˳�ʼ���ص�����ȡ����������ʾ�Ĺ�����װ����
function HandBook.SetTable(monsterBook, equipTb)
	HandBook.MonsterTb = monsterBook
	HandBook.NowTypeTable = monsterBook
	local itemTb = equipTb
	local j = 1
	for i = 1, #itemTb do
		if CL:GetItemEntityPropByGUID(itemTb[i], ITEM_PROP_TYPE) then
			local mType = LuaRet
			if mType == 1 then
				if CL:GetItemEntityPropByGUID(itemTb[i], ITEM_PROP_SUBTYPE) then
					local sType = LuaRet
					if sType == 1 then
						if CL:GetItemEntityPropByGUID(itemTb[i], ITEM_PROP_KEYNAME) then
							local kName = LuaRet
								HandBook.Weapons[j] = kName
								j = j + 1
						end
					end
				end
			end
		end
	end
	HandBook.SortTb(1, HandBook.IsNormal, HandBook.MonsterTb)
end

--��๦��ҳǩ��ѡ��
function HandBook.KindClick(_Handle)
	HandBook.Index = 1
	local param = WndGetParam(_Handle)
	HandBook.NowPage = param
	WndMoveToParentTop(HandBook.Handle,"button"..param)
	local handle = GetWindow(HandBook.Handle, "check")
	if handle ~= 0 then
		GUI:CheckBoxSetCheck(handle, true)
	end
	HandBook.IsNormal = true
	for i = 1, 2 do 
		if i == param then 
			ButtonSetIsActivePageBtn(HandBook.Handle,"button"..i,true)
			local handle = GetWindow(HandBook.Handle, "text"..i)
			if handle ~= 0 then
				GUI:EditSetTextColor(handle, MakeARGB(255,206,179,98))
			end
		else	
			ButtonSetIsActivePageBtn(HandBook.Handle,"button"..i,false)
			local handle = GetWindow(HandBook.Handle, "text"..i)
			if handle ~= 0 then
				GUI:EditSetTextColor(handle, MakeARGB(255,107,91,80))
			end
		end
		WndMoveToParentTop(HandBook.Handle,"text"..i)
	end
	local showTb = {}
	local handle = GetWindow(HandBook.Handle, "check")
	if param == 1 then
		showTb = HandBook.MonsterTb
		if handle ~= 0 then
			CheckSetText(nil,"HandBook,check","��ʾȫ��") 
		end
	else
		showTb = HandBook.Weapons
		if handle ~= 0 then
			CheckSetText(handle,nil,"��ʾ��ְҵ")
		end
	end
	HandBook.NowTypeTable = showTb
	HandBook.SortTb(param, HandBook.IsNormal, showTb)
end

--�������ť��������ʾ״̬����ʾ�ı�
function HandBook.SortTb(param, isNormal, showTb)
	local tb = {}	--1���֣�2ͼƬ��3�ȼ�, 4������5ӵ��, 6���ͣ�������У�,7�������ƣ�������У�
	if param == 1 then
		local temp = {}
		for i = 1, #HandBook.AllMonster do 						
			temp[i] = HandBook.AllMonster[i]
			temp[i][6] = 0								
		end
		for i = 1, #temp do						
			for j = 1, #showTb do
				if showTb[j] == temp[i][3] then
					temp[i][6] = 1
				end
			end
		end
		local newTb = {}
		for i = 1, #temp do									
			newTb[i] = {"", 0, 0, "", 0, 0, ""}
			if CL:GetMonsterTemplateProperty(temp[i][3], MONSTER_PROP_NAME) then
				newTb[i][1] = LuaRet
			end 
			if CL:GetMonsterTemplateProperty(temp[i][3], MONSTER_PROP_HEAD) then
				newTb[i][2] = LuaRet
			end
			if CL:GetMonsterTemplateProperty(temp[i][3], MONSTER_PROP_LEVEL) then
				newTb[i][3] = LuaRet
			end
			newTb[i][4] = temp[i][5]
			newTb[i][5] = temp[i][6]
			if CL:GetMonsterTemplateProperty(temp[i][3], MONSTER_PROP_TYPE) then
				newTb[i][6] = LuaRet
			end
			if newTb[i][6] == 1 then
				newTb[i][7] = "С��"
			elseif newTb[i][6] == 2 then
				newTb[i][7] = "�ӳ�"
			elseif newTb[i][6] == 4 then
				newTb[i][7] = "BOSS"
			end
		end
		if isNormal then
			tb = newTb
		else
			local j = 1
			for i = 1, #newTb do
				if newTb[i][5] == 1 then
					tb[j] = newTb[i]
					j = j + 1
				end
			end
		end
	elseif param == 2 then										--1���֣�2ͼƬ��3�ȼ�, 4KeyName��5ӵ��
		local temp = {} 
		if not isNormal then
			temp = A_Weapon
		else
			if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then
				local job = LuaRet
				if job == 1 then
					temp = Z_Weapon
				elseif job == 2 then
					temp = F_Weapon
				elseif job == 3 then
					temp = D_Weapon
				end
			end
		end
		local newTb = {}
		for i = 1, #temp do
			newTb[i] = {}
			local modelHandle = CL:GetItemTemplateHandleByKeyName(temp[i])
			if CL:GetItemTemplatePropByHandle(modelHandle, ITEM_PROP_NAME) then
				newTb[i][1] = LuaRet
			end
			if CL:GetItemTemplatePropByHandle(modelHandle, ITEM_PROP_BIGICON) then
				newTb[i][2] = LuaRet
			end
			if CL:GetItemTemplatePropByHandle(modelHandle, ITEM_PROP_LEVEL) then
				newTb[i][3] = LuaRet
			end
			newTb[i][4] = temp[i]
			newTb[i][5] = 0
		end
		for i = 1, #newTb do
			for j = 1, #showTb do
				if showTb[j] == newTb[i][4] then
					newTb[i][5] = 1
				end
			end
		end
		tb = newTb
	end
	if #tb ~= 0 then
		HandBook.ShowTable = tb
		HandBook.UpDateUI(param, tb)
	end
end

--��ʾ״̬�ı�
function HandBook.CheckChange(_handle)
	HandBook.Index = 1
	HandBook.IsNormal = not HandBook.IsNormal
	HandBook.SortTb(HandBook.NowPage, HandBook.IsNormal, HandBook.NowTypeTable)
end

--��ҳ
function HandBook.TurnPage(_handle)
	local param = WndGetParam(_handle)
	if param == 1 then
		HandBook.Index = HandBook.Index - 1
	elseif param == 2 then
		HandBook.Index = HandBook.Index + 1
	end
	HandBook.UpDateUI(HandBook.NowPage, HandBook.ShowTable)
end

--����UI����ʾ�����������ʾ�ı�
function HandBook.UpDateUI(param, tb)
	local eTb = tb
	local length = #eTb
	local tPage = math.ceil(length/15)
	if length < tPage*15 then
		local s = length + 1
		for i = s, tPage*15 do
			eTb[i] = "void"
		end
	end
	local handle = GetWindow(HandBook.Handle, "left")
	if handle ~= 0 then
		GUI:WndSetEnableM(handle, true)
		if HandBook.Index == 1 then
			GUI:ButtonSetShowDisable(handle, true)
			GUI:WndSetEnableM(handle, false)
		else
			GUI:ButtonSetShowDisable(handle, false)
			GUI:WndSetEnableM(handle, true)
		end
	end
			
	local handle = GetWindow(HandBook.Handle, "right")
	if handle ~= 0 then
		GUI:WndSetEnableM(handle, true)
		if HandBook.Index == tPage then
			GUI:ButtonSetShowDisable(handle, true)
			GUI:WndSetEnableM(handle, false)
		else
			GUI:ButtonSetShowDisable(handle, false)
			GUI:WndSetEnableM(handle, true)
		end
	end
	
	local handle = GetWindow(HandBook.Handle, "page")
	if handle ~= 0 then
		GUI:EditSetTextM(handle, "" .. HandBook.Index .. "/" .. tPage)
	end
	
	local handle = 0
	local tStart = (HandBook.Index - 1) * 15 + 1
	local tEnd = tStart + 15
	local maxIndex = #eTb
	if tEnd > maxIndex then tEnd = maxIndex end

	local color = 0
	for i = tStart, tEnd do
		local num = i - 15 * (HandBook.Index - 1)
		local handle = GetWindow(HandBook.Handle, "name" .. num)
		if handle ~= 0 then
			if eTb[i] == "void" then
				GUI:WndSetVisible(handle, false)
			else
				GUI:WndSetVisible(handle, true)
				if param == 1 then
					if eTb[i][5] == 1 then
						if eTb[i][6] == 1 then
							color = MakeARGB(255,255,255,255)
						elseif eTb[i][6] == 2 then
							color = MakeARGB(255,0,255,0)
						elseif eTb[i][6] == 4 then
							color = MakeARGB(255,255,0,0)
						end
					else
						color = MakeARGB(255,107,102,95)
					end
				elseif param == 2 then
					if eTb[i][5] == 1 then
						local level = tonumber(eTb[i][3])
						if level < 40 then
							color = MakeARGB(255,255,255,255)
						elseif level < 60 then
							color = MakeARGB(255,0,255,0)
						elseif level < 80 then
							color = MakeARGB(255,255,0,0)
						else
							color = MakeARGB(255,125,27,183)
						end
					else
						color = MakeARGB(255,107,102,95)
					end
				end
				GUI:EditSetTextColor(handle, color)
				GUI:EditSetTextM(handle, tostring(eTb[i][1]))
			end
		end
		local handle = GetWindow(HandBook.Handle, "level" .. num)
		if handle ~= 0 then
			if eTb[i] == "void" then
				GUI:WndSetVisible(handle, false)
			else
				GUI:WndSetVisible(handle, true)
				GUI:EditSetTextColor(handle, color)	
				GUI:EditSetTextM(handle, "Lv:" .. eTb[i][3])
			end
		end
		if param == 1 then
			local handle = GetWindow(HandBook.Handle, "image" .. num)
			if handle ~= 0 then
				if eTb[i] == "void" then
					GUI:WndSetVisible(handle, false)
				else
					GUI:WndSetVisible(handle, true)
					if eTb[i][6] == 1 then
						HandBook.SetImg(handle, 1804000002)
					elseif eTb[i][6] == 2 then
						HandBook.SetImg(handle, 1804000003)
					elseif eTb[i][6] == 4 then
						HandBook.SetImg(handle, 1804000004)
					end
				end
			end
			local handle = GetWindow(HandBook.Handle, "head" .. num)
			if handle ~= 0 then
				if eTb[i] == "void" then
					GUI:WndSetVisible(handle, false)
				else
					GUI:WndSetVisible(handle, true)
					HandBook.SetImg(handle, eTb[i][2])
					if eTb[i][5] == 1 then
						GUI:ImageSetGray(handle, false)
					else
						GUI:ImageSetGray(handle, true)
					end
					GUI:ImageSetTransfrom(handle, 15000, 15000,0)
					local str = GetTipBegin()
					--str = str .. tipAll(200,200)
					str = str .. tipText("                                  ", color, "system")
					str = str .. tipText("\n             " .. eTb[i][1] .. "\n", color, "system")
					str = str .. tipText("Lv:" .. eTb[i][3] .. "\n", color, "system")
					str = str .. tipText("����:" .. eTb[i][7] .. "\n\n", color, "system")
					str = str .. tipText2("    " .. eTb[i][4] .. "\n\n", color, "system")
					str = str .. GetTipEnd()
					GUI:WndSetTipInfo(handle, str)
				end
			end
			local handle = GetWindow(HandBook.Handle, "itemctrl" .. num)
			if handle ~= 0 then
				GUI:WndSetVisible(handle, false)
				handle = GUI:WndFindChildM(HandBook.Handle, "ItemBkImg"..num)
				if handle ~= 0 then
					GUI:WndSetVisible(handle, false)
				end
			end
		elseif param == 2 then
			local handle = GetWindow(HandBook.Handle, "image" .. num)
			if handle ~= 0 then
				GUI:WndSetVisible(handle, false)
			end
			local handle = GetWindow(HandBook.Handle, "head" .. num)
			if handle ~= 0 then
				GUI:WndSetVisible(handle, false)
			end
			local handle = GetWindow(HandBook.Handle, "itemctrl" .. num)
			if handle ~= 0 then
				if eTb[i] == "void" then
					GUI:WndSetVisible(handle, false)
					handle = GUI:WndFindChildM(HandBook.Handle, "ItemBkImg"..num)
					if handle ~= 0 then
						GUI:WndSetVisible(handle, false)
					end
				else
					GUI:WndSetVisible(handle, true)
					HandBook.InitItemInfoByKeyName(handle, eTb[i][4])
					handle = GUI:WndFindChildM(HandBook.Handle, "ItemBkImg"..num)
					if handle ~= 0 then
						GUI:WndSetVisible(handle, true)
					end
				end
			end
		end
	end
end 

--һ��ͼƬ�ؼ��趨ΪDrawCenterʱ���ٸ���ͼƬ��ؼ���С��ı䣬����ʹsetcenterʧЧ����Ҫ�ֶ�����
function HandBook.SetImg(_Handle, imgId)
	GUI:WndGetPosM(_Handle)
	local x = LuaRet[1]
	local y = LuaRet[2]
	GUI:WndGetSizeM(_Handle)
	local w = LuaRet[1]
	local h = LuaRet[2]
	local centerX = x + w / 2
	local centerY = y + h / 2
	--dbg(x..'-'..y..'-'..w..'-'..h..'-'..centerX..'-'..centerY)

	GUI:ImageSetDrawCenter(_Handle, true)
	GUI:WndSetImageID(_Handle, imgId)
	--��ȡ�µĴ�С��λ��
	GUI:WndGetPosM(_Handle)
	local nx = LuaRet[1]
	local ny = LuaRet[2]
	GUI:WndGetSizeM(_Handle)
	local nw = LuaRet[1]
	local nh = LuaRet[2]
	local ncenterX = nx + nw / 2
	local ncenterY = ny + nh / 2
	--dbg(nx..'#'..ny..'-'..nw..'-'..nh..'-'..ncenterX..'-'..ncenterY)
	
	GUI:WndSetPosM(_Handle, nx - (ncenterX - centerX), ny - (ncenterY - centerY))
end

function HandBook.closed(_Handle)
	if HandBook.Handle~= 0 then 
		GUI:WndClose(HandBook.Handle)
	end
end

function HandBook.InitItemInfoByKeyName(_WndHandle, KeyName)
	local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)
	if 0 ~= _ItemDataHandle then
		local _ItemTemplateHandle = CL:GetItemTemplateHandleByKeyName(KeyName)
		if _ItemTemplateHandle ~= 0 then
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_TIPSICON) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
			end
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_ID) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID)
			end
		end
		LuaArg = true
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)
		LuaArg = 0xFFFF
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
	end
end

HandBook.main()