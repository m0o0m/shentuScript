VipWnd = {}
function VipWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931800018,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,437, 588)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"Desc",22,50,392,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1930001002,405,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP0",1931800024,29,116)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,31, 19)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP1",1931800011,78,116)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP2",1931800012,126,116)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP3",1931800013,176,116)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP4",1931800014,227,116)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP5",1931800015,279,116)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP6",1931800016,330,116)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VIP7",1931800017,379,116)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 20)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnPrev",1932300038,170,480)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnNext",1932300042,242,480)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"EditPage",193,483,43,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnBuyVip",1931800019,124,512)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,180, 46)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter0",1931800008,25,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter1",1931800008,73,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter2",1931800008,122,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter3",1931800008,172,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter4",1931800008,223,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter5",1931800008,275,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter6",1931800008,326,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnFilter7",1931800008,375,136)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter0",1931800023,38,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter1",1931800001,86,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter2",1931800002,135,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter3",1931800003,185,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter4",1931800004,236,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter5",1931800005,288,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter6",1931800006,339,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ImgFilter7",1931800007,388,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,15, 15)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction0",0,52,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction1",0,139,219)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction2",0,228,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction3",0,318,221)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction4",0,52,356)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction5",0,140,356)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction6",0,229,356)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipAction7",0,318,356)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
        VipWnd.UIInit(_Parent)
end

--UI Logic Code Start
function VipWnd.UIInit(_Handle)
	VipWnd.WndHandle = _Handle
	GUI:WndSetMoveWithLBM(VipWnd.WndHandle)
	GUI:WndSetIsESCClose(VipWnd.WndHandle, true)
	GUI:WndSetFlagsM(VipWnd.WndHandle, flg_wndBase_autoTop)
	GUI:WndSetSizeM(VipWnd.WndHandle, 437, 588)
	CenterWnd(VipWnd.WndHandle)
end
VipWnd.main()