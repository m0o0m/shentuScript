BigMapWindow = {}
function BigMapWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1930500006,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,793, 476)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"ReliveCB",1930001000,"",137,53)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetText(_GUIHandle, "复活区")
        GUI:WndSetTextColorM(_GUIHandle, 4294894158)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"StallCB",1930001000,"",307,53)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetText(_GUIHandle, "摆摊区")
        GUI:WndSetTextColorM(_GUIHandle, 4294894158)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"SafeCB",1930001000,"",224,53)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetText(_GUIHandle, "安全区")
        GUI:WndSetTextColorM(_GUIHandle, 4294894158)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"MapNameEdit",611,43,99,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextColor(_GUIHandle, 4292121907)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"MousePosEdit",714,65,51,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"RolePosEdit",610,65,53,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,763,4)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NPCFilterBtn",1930001018,617,90)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"NPC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BigMapCtrl",0,9,91)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,601, 376)
    end
    
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"MonsNPCNearbyPlayerLB",614,119,167,342)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NearbyPlayerFilterBtn",1930001018,679,90)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"附近玩家")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"WorldMapBtn",1930001006,462,52)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"世界地图")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    BigMapWindow.UIInit(_Parent)
end

--UI Logic Code Start
function BigMapWindow.UIInit(_Handle)
	BigMapWindow.WndHandle = _Handle
	GUI:WndSetPosM(BigMapWindow.WndHandle, 86, 78)
	GUI:WndSetIsESCClose(BigMapWindow.WndHandle, true)
	GUI:WndSetMoveWithLBM(BigMapWindow.WndHandle)
	GUI:WndSetSizeM(BigMapWindow.WndHandle, 793, 476)
	local _GUIHandle = GUI:WndFindChildM(BigMapWindow.WndHandle, "GUI_2")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
end
BigMapWindow.main()