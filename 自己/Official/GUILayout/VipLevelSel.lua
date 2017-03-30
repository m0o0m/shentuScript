VipLevelSel = {}
function VipLevelSel.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgBack",1903400030,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,225, 352)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl0",1903400031,20,61)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl1",1903400031,20,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl2",1903400031,20,131)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl3",1903400031,20,166)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl4",1903400031,20,201)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl5",1903400031,20,236)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl6",1903400031,20,271)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",25,63,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP1")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",25,98,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP2")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit2",25,133,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP3")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit3",25,168,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP4")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit4",25,203,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP5")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit5",25,238,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP6")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit6",25,273,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP7")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnOk",1900000034,37,307)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnCancel",1900000030,124,307)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1900111000,188,11)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 27)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    VipLevelSel.UIInit(_Parent)
end

--UI Logic Code Start
function VipLevelSel.UIInit(_Handle)
	VipLevelSel.WndHandle = _Handle
	GUI:WndSetMoveWithLBM(VipLevelSel.WndHandle)
	GUI:WndSetIsESCClose(VipLevelSel.WndHandle, true)
	GUI:WndSetFlagsM(VipLevelSel.WndHandle, flg_wndBase_autoTop)
	GUI:WndSetSizeM(VipLevelSel.WndHandle, 225, 352)
	CenterWnd(VipLevelSel.WndHandle)

	LuaGlobal["VipLevelSel_NormalColor"] = 4278221133
	LuaGlobal["VipLevelSel_SelectColor"] = 4278221311
end
VipLevelSel.main()