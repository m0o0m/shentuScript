BigMapWindow = {}
function BigMapWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BkImg",1807400001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,793, 476)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BkImg2",1807400002,33,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,742,474)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1807400000,382,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64,26)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1805900080,757,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34,38)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NPCFilterBtn",1805600150,638,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"NPC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 24)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BigMapCtrl",0,35,94)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,600, 376)
    end
    
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"MonsNPCNearbyPlayerLB",638,94,130,376)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NearbyPlayerFilterBtn",1805600150,707,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"附近玩家")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 24)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CurrentMapBtn",1806500017,48,62)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"WorldMapBtn",1806500017,126,62)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"世界地图")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"MapNameEdit",38,67,99,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextColor(_GUIHandle, 4292121907)
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    BigMapWindow.UIInit(_Parent)
end

--UI Logic Code Start
function BigMapWindow.UIInit(_Handle)
	BigMapWindow.WndHandle = _Handle
	GUI:WndSetIsESCClose(BigMapWindow.WndHandle, true)
	GUI:WndSetMoveWithLBM(BigMapWindow.WndHandle)
	GUI:WndSetSizeM(BigMapWindow.WndHandle,793, 476)
    CenterWnd(BigMapWindow.WndHandle)
end
BigMapWindow.main()