WorldMapWnd = {}
function WorldMapWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1901600601,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,817, 549)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1900111000,782,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 27)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    WorldMapWnd.UIInit(_Parent)
end

--UI Logic Code Start
function WorldMapWnd.UIInit(_Handle)
	WorldMapWnd.WndHandle = _Handle
	GUI:WndSetFlagsM(WorldMapWnd.WndHandle, flg_wndBase_autoTop)
	GUI:WndSetPosM(WorldMapWnd.WndHandle, 86, 78)
	GUI:WndSetIsESCClose(WorldMapWnd.WndHandle, true)
	GUI:WndSetMoveWithLBM(WorldMapWnd.WndHandle)
	GUI:WndSetSizeM(WorldMapWnd.WndHandle, 817, 549)
	local _GUIHandle = GUI:WndFindChildM(WorldMapWnd.WndHandle, "GUI_2")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
end
WorldMapWnd.main()