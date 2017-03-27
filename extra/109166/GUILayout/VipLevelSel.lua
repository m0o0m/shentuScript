VipLevelSel = {}
function VipLevelSel.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgBack",0,0,0)
	GUI:ImageSetAroundImage(_GUIHandle, 1913100001, 1913100003, 1913100005, 1913100007, 1913100009, 1913100002, 1913100006, 1913100004, 1913100008)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,225, 352)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl0",1913000011,45,61)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl1",1913000011,45,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl2",1913000011,45,131)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl3",1913000011,45,166)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl4",1913000011,45,201)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl5",1913000011,45,236)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgLvl6",1913000011,45,271)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,185, 30)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",25,59,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP1")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",25,95,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP2")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit2",25,130,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP3")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit3",25,165,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP4")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit4",25,200,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP5")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit5",25,235,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP6")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit6",25,270,175,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle, "成为VIP7")
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4289231181)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnOk",1910000001,37,307)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextM(_GUIHandle, "确  定")
        GUI:WndSetSizeM(_GUIHandle,65, 20)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnCancel",1910000001,124,307)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextM(_GUIHandle, "取  消")
        GUI:WndSetSizeM(_GUIHandle,65, 20)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1910000020,188,11)
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