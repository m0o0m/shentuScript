VedioSet = {}
function VedioSet.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931100012,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,258, 212)
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"ScreenSize",1930001014,96,53,139,24,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100100,1900100108, 0)
		GUI:ComboBoxSetListFillImage(_GUIHandle, 1901900039)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OK",1930001006,118,161)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"确定")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Cancle",1930001006,185,161)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1930001002,228,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Reset",1930001006,20,161)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"恢复默认")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"WindowStyle",1930001000,"",213,86)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"SkinFrame",1930001000,"",213,114)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    VedioSet.UIInit(_Parent)
end

--UI Logic Code Start
function VedioSet.UIInit(_Handle)
	VedioSet.WndHandle = _Handle
	GUI:WndSetIsESCClose(VedioSet.WndHandle, true)
	GUI:WndSetMoveWithLBM(VedioSet.WndHandle)
	GUI:WndSetFlagsM(VedioSet.WndHandle, flg_wndBase_autoTop)
	local _GUIHandle = GUI:WndFindChildM(VedioSet.WndHandle, "GUI_2")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
end
VedioSet.main()