SystemSet = {}
function SystemSet.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931100001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,192, 256)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GameSet",1931100002,33,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"游戏性设置")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,131, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GraphicSet",1931100002,33,90)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"显示设置")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,131, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SoundSet",1931100002,33,130)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"声音设置")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,131, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BackGame",1931100002,33,170)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"返回游戏")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,131, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"QiuteGame",1931100002,33,210)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"退出游戏")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,131, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1930001002,161,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    SystemSet.UIInit(_Parent)
end

--UI Logic Code Start
function SystemSet.UIInit(_Handle)
	SystemSet.WndHandle = _Handle
	GUI:WndSetIsESCClose(SystemSet.WndHandle, true)
	GUI:WndSetMoveWithLBM(SystemSet.WndHandle)
	GUI:WndSetFlagsM(SystemSet.WndHandle, flg_wndBase_autoTop)
	local _GUIHandle = GUI:WndFindChildM(SystemSet.WndHandle, "GUI_2")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
end
SystemSet.main()