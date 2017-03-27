ForgeWnd = {}
function ForgeWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"ForgeWnd",1806700000,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,662, 504)
        GUI:WndSetIsESCClose(_Parent, true)
        GUI:WndSetMoveWithLBM(_Parent)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"forge_title",1806700001,310,6)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 28)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button1",1806500017,42,63)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.Qiangh")
        GUI:WndSetTextM(_GUIHandle,"装备强化")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4284505673)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button2",1806500017,124,63)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.Zhuany")
        GUI:WndSetTextM(_GUIHandle,"强化转移")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4284505673)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button3",1806500017,206,63)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.zhul")
        GUI:WndSetTextM(_GUIHandle,"装备蕴魂")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4284505673)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button4",1806500017,288,63)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.huis")
        GUI:WndSetTextM(_GUIHandle,"蕴魂回收")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4284505673)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"close",1805900080,606,5)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.closeWnd")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 38)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"roleequip",1806500017,440,95)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.equip")
        GUI:WndSetTextM(_GUIHandle,"身上装备")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,62, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4284505673)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"package",1806500017,522,95)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.pg")
        GUI:WndSetTextM(_GUIHandle,"背包装备")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,62, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4284505673)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg1",1800000080,436,130)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg2",1800000080,483,130)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg3",1800000080,530,130)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg4",1800000080,577,130)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg5",1800000080,436,175)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg6",1800000080,483,176)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg7",1800000080,530,176)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg8",1800000080,577,176)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg9",1800000080,436,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg10",1800000080,483,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg11",1800000080,530,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg12",1800000080,577,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg13",1800000080,436,265)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg14",1800000080,483,265)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg15",1800000080,530,265)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg16",1800000080,577,265)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg17",1800000080,436,310)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg18",1800000080,483,310)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg19",1800000080,530,310)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg20",1800000080,577,310)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg21",1800000080,436,355)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg22",1800000080,483,355)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg23",1800000080,530,355)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg24",1800000080,577,355)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg25",1800000080,436,400)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg26",1800000080,483,400)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg27",1800000080,530,400)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemBkImg28",1800000080,577,400)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 46)
    end
	
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback1",0,440,134,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback2",0,487,134,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback3",0,534,134,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback4",0,581,134,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback5",0,440,179,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback9",0,440,224,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback13",0,440,269,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback17",0,440,314,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback21",0,440,359,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback25",0,440,404,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback6",0,487,180,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback8",0,581,180,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback7",0,534,180,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback10",0,487,224,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback11",0,534,224,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback16",0,581,269,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback14",0,487,269,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback15",0,534,269,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback28",0,581,404,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback27",0,534,404,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback26",0,487,404,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback12",0,581,224,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback18",0,487,314,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback19",0,534,314,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback20",0,581,314,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback22",0,487,359,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback23",0,534,359,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback24",0,581,359,39,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"page1",1806700027,496,460)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,75, 18)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"page2",519,457,10,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"1")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"page3",529,457,10,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"/")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"page4",539,457,10,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"1")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"page5",1806700029,470,458)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.up_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 22)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"page6",1806700033,575,458)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.down_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 22)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
	
    ForgeWnd.UIInit(_Parent)
end

--UI Logic Code Start
ForgeWnd.WndHandle = 0
ForgeWnd.itemlist = {}
ForgeWnd._pg = {}
ForgeWnd.nowPage = 1
ForgeWnd.buttonnum = 0
function ForgeWnd.UIInit(_GUIHandle)
	ForgeWnd.WndHandle = _GUIHandle
	GUI:WndSetMoveWithLBM(ForgeWnd.WndHandle)
	GUI:WndSetMagicUI(ForgeWnd.WndHandle, 1)
	GUI:WndSetSizeM(ForgeWnd.WndHandle, 609, 517)
	GUI:WndSetIsESCClose(ForgeWnd.WndHandle, true)
	CenterWnd(ForgeWnd.WndHandle)
	local uih = 0
	for i = 1, 4 do
		uih = GUI:WndFindChildM(_GUIHandle,"button" .. i)
		if uih ~= 0 then
			GUI:WndSetTextArrangeType(uih,0,2,0,0);
			GUI:ButtonSetStateTextColor(uih,0,MakeARGB(255, 96, 94, 73))
			GUI:ButtonSetStateTextColor(uih,2,MakeARGB(255, 208, 179, 99))
		end
	end
	
	local _Handle = GUI:WndFindChildM(_GUIHandle,"roleequip")
	if _Handle ~= 0 then
		GUI:WndSetTextArrangeType(_Handle,0,2,0,0);
		GUI:ButtonSetStateTextColor(_Handle,0,MakeARGB(255, 96, 94, 73))
		GUI:ButtonSetStateTextColor(_Handle,2,MakeARGB(255, 208, 179, 99))
	end
	
	_Handle = GUI:WndFindChildM(_GUIHandle,"package")
	if _Handle ~= 0 then
		GUI:WndSetTextArrangeType(_Handle,0,2,0,0);
		GUI:ButtonSetStateTextColor(_Handle,0,MakeARGB(255, 96, 94, 73))
		GUI:ButtonSetStateTextColor(_Handle,2,MakeARGB(255, 208, 179, 99))
	end
	
	for i = 1, 28 do
		_Handle = GUI:WndFindChildM(_GUIHandle,"itemback" .. i)
		if _Handle ~= 0 then
			--GUI:ItemCtrlSetBackImageID(_Handle, 1800000080)
			GUI:ItemCtrlSetHighlightImageID(_Handle, 1900110036)
			GUI:ItemCtrlClearItemData(_Handle)
			RDItemCtrlSetGUIDataPropByType(_Handle, nil, ITEMGUIDATA_INVALIDATE, true)
		end
	end	

	ButtonSetIsActivePageBtn(_GUIHandle,"button1",true)	
	ButtonSetIsActivePageBtn(_GUIHandle,"roleequip",true)
	ForgeWnd.ActivePageBtn = 1  --使用一个全局变量标识当前打开的标签
	for i = 1 , 6 do 
		_Handle = GetWindow(0,"ForgeWnd,page"..i)
		if _Handle ~= 0 then ForgeWnd._pg[i] = _Handle end
	end
	for i = 1 , 6 do 
		GUI:WndSetVisible(ForgeWnd._pg[i],false)
	end	
	
	ForgeWnd.itemlist  = {}
	if UI:Lua_GetPlayerSelfEquipData() then
		ForgeWnd.itemlist  = LuaRet
	end
	ForgeWnd.item_filter()
	ForgeWnd.forge_data()
	
	UI:Lua_OpenWindow(ForgeWnd.WndHandle,"QianghWnd.lua")
	for i = 1 , 28 do 
		local handle = GetWindow(0,"ForgeWnd,itemback"..i)
		GUI:WndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "ForgeWnd.clickItem")
		GUI:WndSetParam(handle, i)
	end	
	qhBtn = GUI:WndFindChildM(_GUIHandle,"button1")
	ForgeWnd.Qiangh(qhBtn)
end

function ForgeWnd.item_filter()
	local data = ForgeWnd.itemlist
	ForgeWnd.itemlist = {}
	local a = 2
	for i = 1 , #data do 
		local Temp = CL:GetItemTemplateHandleByGUID(data[i])
		local Type = 0
		local subType = 0
		if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_TYPE) then
			Type = tonumber(LuaRet)		
		end
		if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_SUBTYPE) then
			subType = tonumber(LuaRet)		
		end
		if Type == 1 and subType ~= 12 and subType ~= 5 then	
			if subType == 15 then
				ForgeWnd.itemlist[1] = data[i][1]
			else
				ForgeWnd.itemlist[a] = data[i]
				a = a + 1
			end
		end	
	end
	if not ForgeWnd.itemlist[1] then
		ForgeWnd.itemlist[1] = 1
		table.remove(ForgeWnd.itemlist, 1)
	end
end

function ForgeWnd.equip(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ButtonSetIsActivePageBtn(_handle,nil,true)
		ForgeWnd.ActivePageBtn = 1
		ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"package",false)
		
		for i = 1 , 6 do 
			GUI:WndSetVisible(ForgeWnd._pg[i],false)
		end	
		
		ForgeWnd.itemlist = {}
		if UI:Lua_GetPlayerSelfEquipData() then
            if type(LuaRet) ~= "number" then
			    ForgeWnd.itemlist = LuaRet
            end
		end
		
		ForgeWnd.nowPage = 1
		ForgeWnd.item_filter()
		ForgeWnd.forge_data()
	end	
	UI:Lua_SubmitForm("强化表单", "item_setint", "")
end

function ForgeWnd.pg(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ButtonSetIsActivePageBtn(_handle,nil,true)
		ForgeWnd.ActivePageBtn = 2
		ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"roleequip",false)
		for i = 1 , 6 do 
			GUI:WndSetVisible(ForgeWnd._pg[i],true)
		end
		GUI:WndSetEnableM(ForgeWnd._pg[5],false)
		for i = 1 , #ForgeWnd.itemlist do 
			local handle = GetWindow(0,"ForgeWnd,itemback"..i)
			GUI:ItemCtrlClearItemData(handle)
		end
		ForgeWnd.nowPage = 1
		ForgeWnd.updatePgBtn()
		ForgeWnd.forge_data()
	end	
	UI:Lua_SubmitForm("强化表单", "item_setint", "")
end

function ForgeWnd.up_page(_handle)
	ForgeWnd.nowPage = ForgeWnd.nowPage - 1
	ForgeWnd.updatePgBtn()
	ForgeWnd.forge_data()
end

function ForgeWnd.down_page(_handle)
	ForgeWnd.nowPage = ForgeWnd.nowPage + 1
	ForgeWnd.updatePgBtn()
	ForgeWnd.forge_data()
end

function ForgeWnd.updatePgBtn()
	ForgeWnd.itemlist = {}
	if CL:GetPackageItemGUIDList() then
		ForgeWnd.itemlist = LuaRet
	end
	ForgeWnd.item_filter()
	local pgCount = math.ceil(#ForgeWnd.itemlist/28)
	if pgCount <= 0 then pgCount = 1 end
	EditSetText(ForgeWnd.WndHandle,"page4",""..pgCount)
	EditSetText(ForgeWnd.WndHandle,"page2",""..ForgeWnd.nowPage)
	if pgCount == 1 then
		GUI:WndSetEnableM(ForgeWnd._pg[6],false)
	else
		GUI:WndSetEnableM(ForgeWnd._pg[6],true)
	end
	--是否是首页
	if ForgeWnd.nowPage == 1 then
		GUI:WndSetEnableM(ForgeWnd._pg[5], false)
	else
		GUI:WndSetEnableM(ForgeWnd._pg[5], true)
	end
	--是否是尾页
	if ForgeWnd.nowPage == pgCount then
		GUI:WndSetEnableM(ForgeWnd._pg[6],false)
	else
		GUI:WndSetEnableM(ForgeWnd._pg[6],true)
	end
end

ForgeWnd.RDItemCtrlSetGUIDataPropByGUIDEx = function(_Handle, _Info, _ItemGUID)
	--模版句柄
	if not UI:Lua_GetItemTemplateHandleByGUID(_ItemGUID) then return false end
	local _Template = LuaRet
	--物品图片ID
	if not UI:Lua_GetItemTemplatePropByHandle(_Template, ITEM_PROP_TIPSICON) then return false end
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_IMAGEID, LuaRet) then return false end
	--物品GUID
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID, _ItemGUID) then return false end
	--实体句柄
	if not UI:Lua_GetItemEntityHandleByGUID(_ItemGUID) then return false end
	local _Entity = LuaRet
	--物品模版ID
	if not UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_ID) then return false end
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMID, LuaRet) then return false end
	--物品数量
	if not UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_AMOUNT) then return false end
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMCOUNT, LuaRet) then return false end
	--物品绑定状态
	if not UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_IS_BOUND) then return false end
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ISSHOWBIND, LuaRet) then return false end
	--有效状态
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, true) then return false end
	return true
end

function ForgeWnd.forge_data()
	for i = 1 , 28 do 
		local handle = GetWindow(0,"ForgeWnd,itemback"..i)
		GUI:ItemCtrlClearItemData(handle)
	end
	local index = (ForgeWnd.nowPage - 1)*28 + 1
	for i = 1 , #ForgeWnd.itemlist do 
		local handle = GetWindow(0,"ForgeWnd,itemback"..i)
		if handle == 0 or ForgeWnd.itemlist[index] == nil then
			return
		end
		ForgeWnd.RDItemCtrlSetGUIDataPropByGUIDEx(handle, nil, ForgeWnd.itemlist[index])
		LuaParam = handle
		UI:Lua_RDItemCtrlUpdateRefineAnimate()
		index = index + 1
	end

end	

ForgeWnd.handle = {"QianghWnd","ZhuanyWnd","ZhulWnd","Zhul_hs"}
ForgeWnd.itemForm= {"强化表单","转移表单","注灵表单","注灵回收表单"}
function ForgeWnd.clickItem(_handle)	
	ForgeWnd.WndParam = GUI:WndGetParam(_handle)	
	ForgeWnd.ItemBelongTo = ForgeWnd.ActivePageBtn
	local item_guid = RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID)
	if item_guid ~= 0 and item_guid ~= nil then
		--[[for i = 1, #ForgeWnd.handle do
			local handle = GetWindow(0, "ForgeWnd,".. ForgeWnd.handle[i])
			if handle ~= 0 then
				if UI:Lua_GUID2Str(item_guid) then
					UI:Lua_SubmitForm(ForgeWnd.itemForm[i], "item_set", LuaRet)
				end
				break
			end
		end--]]
		local handle = GetWindow(ForgeWnd.WndHandle, "".. ForgeWnd.handle[ForgeWnd.buttonnum])
		if handle ~= 0 then
			if UI:Lua_GUID2Str(item_guid) then
				UI:Lua_SubmitForm(ForgeWnd.itemForm[ForgeWnd.buttonnum], "item_set", LuaRet)
			end
		end 
	end
end	


function ForgeWnd.update(_handle)
	for i = 1 , #ForgeWnd.handle do 		
		local handle = GetWindow(0,"ForgeWnd,button"..i)
		local handle1 = GetWindow(0,"ForgeWnd,"..ForgeWnd.handle[i])	
		if handle == _handle then
			ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"button"..i,true)		
		else
			ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"button"..i,false)
			if handle1 ~= 0 then
				GUI:WndClose(handle1)
			end	
		end
	end
end



function ForgeWnd.Qiangh(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	ForgeWnd.buttonnum = 1
	if not Is_true then
		ForgeWnd.update(_handle)
		UI:Lua_OpenWindow(ForgeWnd.WndHandle, "QianghWnd.lua")
	end	

end

function ForgeWnd.Zhuany(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	ForgeWnd.buttonnum = 2
	if not Is_true then
		ForgeWnd.update(_handle)
		UI:Lua_OpenWindow(ForgeWnd.WndHandle,"ZhuanyWnd.lua")
	end	

end




function ForgeWnd.zhul(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	ForgeWnd.buttonnum = 3
	if not Is_true then
		ForgeWnd.update(_handle)
		UI:Lua_OpenWindow(ForgeWnd.WndHandle, "ZhulWnd.lua")
	end	

end

function ForgeWnd.huis(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	ForgeWnd.buttonnum = 4
	if not Is_true then
		ForgeWnd.update(_handle)
		UI:Lua_OpenWindow(ForgeWnd.WndHandle,"Zhul_hs.lua")
	end	

end

function ForgeWnd.Get_EquipUpdate(item, item2)
    if item2 ~= nil then 
        if ForgeWnd.ItemBelongTo ~= ForgeWnd.ActivePageBtn then
            return
        end
        
        local handle = GetWindow(0,"ForgeWnd,itemback".. ZhuanyWnd.WndParam1)
        if handle ~= 0 then 
            GUI:ItemCtrlClearItemData(handle)
            UI:Lua_Str2GUID(item)
            RDItemCtrlSetGUIDataPropByGUID(handle, nil, LuaRet)
        end
        handle = GetWindow(0,"ForgeWnd,itemback".. ZhuanyWnd.WndParam2)
        if handle ~= 0 then 
            GUI:ItemCtrlClearItemData(handle)
            UI:Lua_Str2GUID(item2)
            RDItemCtrlSetGUIDataPropByGUID(handle, nil, LuaRet)
        end
    else
    	if ForgeWnd.ItemBelongTo ~= ForgeWnd.ActivePageBtn then
    		return
    	end
    	
    	local handle = GetWindow(ForgeWnd.WndHandle,"itemback".. ForgeWnd.WndParam)
    	GUI:ItemCtrlClearItemData(handle)
    	if item ~= nil then
    		UI:Lua_Str2GUID(item)
    		RDItemCtrlSetGUIDataPropByGUID(handle, nil, LuaRet)
    	else
    		GUI:ItemCtrlClearItemData(handle)
    	end
    end
end	

function ForgeWnd.closeWnd(_handle)	
	GUI:WndClose(ForgeWnd.WndHandle)
end

function ForgeWnd.msg_up(str)
	local _handle = GetWindow(ForgeWnd.WndHandle,""..ForgeWnd.handle[ForgeWnd.buttonnum])
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , 100 , 406 , 70 , color , 3)	
end	

function ForgeWnd.buy(_handle)
    local  handle  = GetWindow(ForgeWnd.WndHandle, "GoldBuy")
    if handle == 0 then
        UI:Lua_OpenWindow(ForgeWnd.WndHandle, "GoldBuy.lua")
    else
        GUI:WndClose(handle)
    end 
end

function ForgeWnd.EditChange(jb)
    if QianghWnd.gold ~= 0 then
        jb = tonumber(jb)
        if jb < QianghWnd.gold then
            local handle = GetWindow(QianghWnd.WndHandle,"gold")
            GUI:EditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
        else
            local handle = GetWindow(QianghWnd.WndHandle,"gold")
            GUI:EditSetTextColor(handle, MakeARGB(255, 194, 182, 160))
        end 
    end 
end
ForgeWnd.main()