Package = {}
function Package.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1806600000,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,449, 504)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SettlePackage",1806100002,63,367)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"整  理")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"DivideItem",1806100002,178,367)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"物品拆分")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Baitan",1806100002,293,367)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"摆  摊")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page0",1800000047,33,61)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Package.OnActivate")
        GUI:WndSetTextM(_GUIHandle,"壹")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,55, 22)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page1",1800000047,90,61)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Package.OnActivate")
        GUI:WndSetTextM(_GUIHandle,"貮")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,55, 22)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page2",1800000047,147,61)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Package.OnActivate")
        GUI:WndSetTextM(_GUIHandle,"叁")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,55, 22)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page3",1800000047,204,61)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Package.OnActivate")
        GUI:WndSetTextM(_GUIHandle,"肆")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,55, 22)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page4",1800000047,261,61)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Package.OnActivate")
        GUI:WndSetTextM(_GUIHandle,"伍")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,55, 22)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1805900080,390,5)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Package.OnClose")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 38)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"YuanBao",267,450,130,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetImageID(_GUIHandle,1806600016)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"YinLiang",87,450,130,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetImageID(_GUIHandle,1806600016)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"BindYuanBao",267,420,130,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetImageID(_GUIHandle,1806600016)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"BindYinLiang",87,420,130,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetImageID(_GUIHandle,1806600016)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img0",1806600011,37,99)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img1",1806600011,84,99)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img2",1806600011,131,99)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img3",1806600011,178,99)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img4",1806600011,225,99)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img5",1806600011,272,99)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img6",1806600011,319,99)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img7",1806600011,366,99)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img8",1806600011,37,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img9",1806600011,84,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img10",1806600011,131,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img11",1806600011,178,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img12",1806600011,225,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img13",1806600011,272,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img14",1806600011,319,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img15",1806600011,366,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img16",1806600011,37,193)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img17",1806600011,84,193)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img18",1806600011,131,193)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img19",1806600011,178,193)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img20",1806600011,225,193)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img21",1806600011,272,193)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img22",1806600011,319,193)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img23",1806600011,366,193)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img24",1806600011,37,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img25",1806600011,84,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img26",1806600011,131,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img27",1806600011,178,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img28",1806600011,225,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img29",1806600011,272,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img30",1806600011,319,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img31",1806600011,366,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img32",1806600011,37,287)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img33",1806600011,84,287)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img34",1806600011,131,287)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img35",1806600011,178,287)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img36",1806600011,225,287)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img37",1806600011,272,287)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img38",1806600011,319,287)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Item_Img39",1806600011,366,287)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,40,102,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,87,102,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,134,102,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,181,102,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,228,102,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item5",0,275,102,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item6",0,322,102,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item7",0,369,102,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item8",0,40,149,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item9",0,87,149,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item10",0,134,149,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item11",0,181,149,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item12",0,228,149,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item13",0,275,149,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item14",0,322,149,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item15",0,369,149,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item16",0,40,196,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item17",0,87,196,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item18",0,134,196,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item19",0,181,196,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item20",0,228,196,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item21",0,275,196,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item22",0,322,196,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item23",0,369,196,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item24",0,40,243,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item25",0,87,243,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item26",0,134,243,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item27",0,181,243,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item28",0,228,243,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item29",0,275,243,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item30",0,322,243,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item31",0,369,243,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item32",0,40,290,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item33",0,87,290,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item34",0,134,290,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item35",0,181,290,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item36",0,228,290,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item37",0,275,290,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item38",0,322,290,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item39",0,369,290,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BindYinLiang_Img",1806600014,60,422)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,23, 18)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"YinLiang_Img",1806600015,60,452)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,23, 18)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BindYuanBao_Img",1806600013,238,422)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,23, 18)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"YuanBao_Img",1806600012,238,452)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,23, 18)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NameImg",1806600002,191,7)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 28)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_0",1806600006,28,84)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,393, 5)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1806600006,28,344)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,393, 5)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg0",1800800004,39,101)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg1",1800800004,86,101)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg2",1800800004,133,101)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg3",1800800004,180,101)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg4",1800800004,227,101)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg5",1800800004,274,101)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg6",1800800004,321,101)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg7",1800800004,368,101)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg8",1800800004,39,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg9",1800800004,86,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg10",1800800004,133,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg11",1800800004,180,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg12",1800800004,227,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg13",1800800004,274,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg14",1800800004,321,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg15",1800800004,368,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg16",1800800004,39,195)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg17",1800800004,86,195)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg18",1800800004,133,195)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg19",1800800004,180,195)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg20",1800800004,227,195)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg21",1800800004,274,195)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg22",1800800004,321,195)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg23",1800800004,368,195)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg24",1800800004,39,242)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg25",1800800004,86,242)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg26",1800800004,133,242)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg27",1800800004,180,242)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg28",1800800004,227,242)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg29",1800800004,274,242)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg30",1800800004,321,242)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg31",1800800004,368,242)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg32",1800800004,39,289)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg33",1800800004,86,289)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg34",1800800004,133,289)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg35",1800800004,180,289)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg36",1800800004,227,289)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg37",1800800004,274,289)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg38",1800800004,321,289)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LockImg39",1800800004,368,289)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 41)
    end
    
        Package.UIInit(_Parent)
end

--UI Logic Code Start
Package.WndHandle = 0
function Package.UIInit( _Handle )
	Package.WndHandle = _Handle
	GUI:WndSetFlagsM(Package.WndHandle, flg_wndBase_autoTop)
	GUI:WndSetMoveWithLBM(Package.WndHandle)
	local _BackHandle = GUI:WndFindChildM(Package.WndHandle, "GUI_2")
	if _BackHandle ~= 0 then
		GUI:WndSetCanRevMsg(_BackHandle, false);
	end
	local _NameImg = GUI:WndFindChildM(Package.WndHandle, "NameImg")
	if _NameImg ~= 0 then
		GUI:WndSetCanRevMsg(_NameImg, false);
	end
	for i = 0 , 4 do 
		BtnHandle = GUI:WndFindChildM(Package.WndHandle,'Page'..i)
		GUI:ButtonSetStateTextColor(BtnHandle,0,MakeARGB(255, 100, 96, 80))
		GUI:ButtonSetStateTextColor(BtnHandle,2,MakeARGB(255, 201, 184, 116))
	end
	BtnHandle = GUI:WndFindChildM(Package.WndHandle,'Page0')
	GUI:ButtonSetStateTextColor(BtnHandle,0,MakeARGB(255, 200, 196, 180))
	local _BindYinLiang = GUI:WndFindChildM(Package.WndHandle, "BindYinLiang")
	if _BindYinLiang ~= 0 then
		GUI:EditSetEditImageOffset(_BindYinLiang, -5, 0);
	end
	local _BindYuanBao = GUI:WndFindChildM(Package.WndHandle, "BindYuanBao")
	if _BindYuanBao ~= 0 then
		GUI:EditSetEditImageOffset(_BindYuanBao, -5, 0);
	end
	local _YinLiang = GUI:WndFindChildM(Package.WndHandle, "YinLiang")
	if _YinLiang ~= 0 then
		GUI:EditSetEditImageOffset(_YinLiang, -5, 0);
	end
	local _YuanBao = GUI:WndFindChildM(Package.WndHandle, "YuanBao")
	if _YuanBao ~= 0 then
		GUI:EditSetEditImageOffset(_YuanBao, -5, 0);
	end
	Package.OnActivate(BtnHandle, 0)
end

function Package.OnActivate(_Handle, _Param)
	local _PageIdx =  GUI:WndGetParam(_Handle)
	--高亮选中的标签文字
	for i = 0 , 4 do 
		BtnHandle = GUI:WndFindChildM(Package.WndHandle,'Page'..i)
		GUI:ButtonSetStateTextColor(BtnHandle,0,MakeARGB(255, 100, 96, 80))
		GUI:ButtonSetStateTextColor(BtnHandle,2,MakeARGB(255, 201, 184, 116))
	end
	GUI:ButtonSetStateTextColor(_Handle,0,MakeARGB(255, 200, 196, 180))
	--设定每个格子是否显示
	local _CellNum = 0
	for _Idx = 0, 4 do
		if CL:GetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_0 + _Idx) then
			_CellNum = _CellNum + LuaRet
		end
	end
	for _Idx = 0, 39 do
		local _ItemImgWnd = GUI:WndFindChildM(Package.WndHandle, "Item_Img".._Idx)
		local _ItemWnd = GUI:WndFindChildM(Package.WndHandle, "Item".._Idx)
		if _ItemImgWnd ~= nil and _ItemWnd ~= nil then
			local _PackUIIdx = _Idx + _PageIdx * 40
			if _PackUIIdx < _CellNum then
				GUI:ItemCtrlSetIconImageType(_ItemWnd, 1)
				GUI:WndSetVisible(_ItemImgWnd, true)
				GUI:WndSetVisible(_ItemWnd, true)
                local bkimg = GUI:WndFindChildM(Package.WndHandle, "LockImg".._Idx)
                GUI:WndSetVisible(bkimg, false)
			else
				GUI:WndSetVisible(_ItemImgWnd, false)
				GUI:WndSetVisible(_ItemWnd, false)
                local bkimg = GUI:WndFindChildM(Package.WndHandle, "LockImg".._Idx)
                GUI:WndSetVisible(bkimg, true)
			end
		end
	end
end

function Package.OnClose(_Handle,_Param)
	GUI:WndClose(Package.WndHandle)
end

Package.main()