StallPrice = {}
function StallPrice.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1800000280,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,277, 211)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1800000176,"金币出售",120,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "StallPrice.goldCBcc")
        GUI:WndSetTextM(_GUIHandle,"金币出售")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1800000176,"元宝出售",120,82)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "StallPrice.ingotCBCBcc")
        GUI:WndSetTextM(_GUIHandle,"元宝出售")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"editImage",1802000008,78,110)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,146, 33)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Price",92,116,105,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OK",1800000134,59,151)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"确定")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,73, 37)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Cancle",1800000134,144,151)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,73, 37)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemCtrlImage",1800000138,60,55)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item",0,64,58,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"moneyImage",1800000054,58,121)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Title",1801500064,84,3)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,109, 27)
    end
    
        StallPrice.UIInit(_Parent)
end

--UI Logic Code Start
function StallPrice.UIInit(_Handle)
	StallPrice.WndHandle = _Handle
	GUI:WndSetSizeM(StallPrice.WndHandle, 277, 211)
	GUI:WndSetMoveWithLBM(StallPrice.WndHandle)
end

StallPrice.main()

function StallPrice.goldCBcc(_Handle,_Param)
	updataCheckBox({"Check0", "Check1"}, _Handle)
	local _GUIHandle = GUI:WndFindChildM(StallPrice.WndHandle, "moneyImage")
	GUI:WndSetImageID(_GUIHandle, 1800000052)
	GUI:WndSetActiveM(_GUIHandle, true)
end

function StallPrice.ingotCBCBcc(_Handle,_Param)
	updataCheckBox({"Check0", "Check1"}, _Handle)
	local _GUIHandle = GUI:WndFindChildM(StallPrice.WndHandle, "moneyImage")
	GUI:WndSetImageID(_GUIHandle, 1800000054)
	GUI:WndSetActiveM(_GUIHandle, true)
end