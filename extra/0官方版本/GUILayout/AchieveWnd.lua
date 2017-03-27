AchieveWnd = {}
function AchieveWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1932100002,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,748, 531)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1930001002,717,5)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "AchieveWnd.OnCloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"AllTypeProcImg",1932100001,110,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,608, 12)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetDrawRect(_GUIHandle, 0,0,0,1)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"AllTypeProcRto",347,48,116,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"TypeNameED",204,85,110,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextColor(_GUIHandle, 4294941184)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"TypeDesc",204,110,504,29)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4289043849)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"AchieveDesc",204,197,504,58)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4289043849)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,236,323,60,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,360,323,60,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,489,323,60,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,612,323,60,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ItemNum0",218,422,95,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
		GUI:EditSetTextColor(_GUIHandle, 4290222702)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ItemNum1",342,422,95,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
		GUI:EditSetTextColor(_GUIHandle, 4290222702)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ItemNum2",471,422,95,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
		GUI:EditSetTextColor(_GUIHandle, 4290222702)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ItemNum3",598,422,95,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
		GUI:EditSetTextColor(_GUIHandle, 4290222702)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ExpAwardED",252,456,82,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextColor(_GUIHandle, 4287726698)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetTextM(_GUIHandle, "0")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"BindGoldAwardED",417,454,78,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextColor(_GUIHandle, 4287726698)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetTextM(_GUIHandle, "0")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"GoldAwardED",298,481,129,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextColor(_GUIHandle, 4287726698)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetTextM(_GUIHandle, "0")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GetAwardBtn",1932100003,524,454)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,180, 46)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"ItemName0",218,405,95,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
		GUI:EditSetTextColor(_GUIHandle, 4290222702)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ItemName1",342,405,95,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
		GUI:EditSetTextColor(_GUIHandle, 4290222702)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ItemName2",471,405,95,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
		GUI:EditSetTextColor(_GUIHandle, 4290222702)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ItemName3",598,405,95,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
		GUI:EditSetTextColor(_GUIHandle, 4290222702)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Tree",0,19,83)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,140, 425)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"Scrollbar",1900100104,1900100108,1900100100,1900100120,163,83,425)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,425, 18)
        GUI:ScrollBarSetSetp(_GUIHandle,2)
    end
    
    
    
    AchieveWnd.UIInit(_Parent)
end

--UI Logic Code Start
function AchieveWnd.UIInit(_Handle)
	AchieveWnd.WndHandle = _Handle
	GUI:WndSetFlagsM(AchieveWnd.WndHandle, flg_wndBase_autoTop)
	GUI:WndSetMoveWithLBM(AchieveWnd.WndHandle)
	GUI:WndSetIsESCClose(AchieveWnd.WndHandle, true)
	GUI:WndSetSizeM(AchieveWnd.WndHandle, 748, 531)
	CenterWnd(AchieveWnd.WndHandle)
end

function AchieveWnd.OnCloseBtn()
	GUI:WndClose(AchieveWnd.WndHandle)
end

AchieveWnd.main()