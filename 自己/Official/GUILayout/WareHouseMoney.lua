WareHouseMoney = {}
function WareHouseMoney.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1930400006,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,63, 63)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Ok",1930400011,119,120)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Cancel",1930400015,188,120)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1930001002,232,7)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Max",1930400007,43,120)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Info1",23,63,61,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4287920480)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Info2",23,93,61,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextColor(_GUIHandle, 4287920480)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",85,64,155,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4291338240)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit2",85,96,155,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"Title",94,13,88,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
		GUI:RichEditSetCurFont(_GUIHandle, "SIMLI18")
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4293383343)
    end
    
    
    
    WareHouseMoney.UIInit(_Parent)
end

--UI Logic Code Start
function WareHouseMoney.UIInit(_Handle)
	WareHouseMoney.WndHandle = _Handle
	GUI:WndSetMoveWithLBM(WareHouseMoney.WndHandle)
	GUI:WndSetFlagsM(WareHouseMoney.WndHandle, flg_wndBase_autoTop)
	GUI:WndSetIsESCClose(WareHouseMoney.WndHandle, true)
	local _GUIHandle = GUI:WndFindChildM(WareHouseMoney.WndHandle, "GUI_2")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
	GUI:WndSetFlagsM(WareHouseMoney.WndHandle, flg_wndBase_autoTop)

end
WareHouseMoney.main()