MailWnd = {}
function MailWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1902300061,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,385, 456)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CLOSE2",1902300025,162,413)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"GUI_EDT_SENDER",102,56,102,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"GUI_EDT_GOLD",173,352,79,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"GUI_EDT_YUANBAO",173,379,79,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GETYUANBAO",1902300021,93,374)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GETGOLD",1902300021,93,345)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CLOSE",1900111000,350,11)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 27)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ITEM0",0,72,301,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ITEM1",0,124,301,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ITEM2",0,176,301,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ITEM3",0,228,301,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ITEM4",0,280,301,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"GUI_EDT_TEXT",50,91,283,162)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end    
    
    MailWnd.UIInit(_Parent)
end

--UI Logic Code Start
function MailWnd.UIInit(_Handle)
	MailWnd.WndHandle = _Handle
	GUI:WndSetSizeM(MailWnd.WndHandle, 385, 456)
	GUI:WndSetIsESCClose(MailWnd.WndHandle, true)
	GUI:WndSetMoveWithLBM(MailWnd.WndHandle)
	GUI:WndSetMagicUI(MailWnd.WndHandle,1)
	CenterWnd(MailWnd.WndHandle)

end
MailWnd.main()




