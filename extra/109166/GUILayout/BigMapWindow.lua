--
-- Author: miyezng
-- Date:   2016-09-26 13:33:14
-- Last Modified by:   miyezng
-- Last Modified time: 2016-09-26 13:58:31
--
BigMapWindow = {}
function BigMapWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1912000001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,780, 447)
    end


    _GUIHandle = GUI:CheckBoxCreate(_Parent,"ReliveCB",1930001000,"",41,68)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetText(_GUIHandle, "复活区")
        GUI:WndSetTextColorM(_GUIHandle, 4289572533)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end



    _GUIHandle = GUI:CheckBoxCreate(_Parent,"StallCB",1930001000,"",116,68)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetText(_GUIHandle, "摆摊区")
        GUI:WndSetTextColorM(_GUIHandle, 4289572533)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end



    _GUIHandle = GUI:CheckBoxCreate(_Parent,"SafeCB",1930001000,"",185,68)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetText(_GUIHandle, "安全区")
        GUI:WndSetTextColorM(_GUIHandle, 4289572533)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end



    _GUIHandle = GUI:EditCreate(_Parent,"MapNameEdit",365,67,100,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextColor(_GUIHandle, 4292121907)
        GUI:WndSetEnableM(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(_Parent,"MousePosEdit",515,70,51,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetEnableM(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(_Parent,"RolePosEdit",515,52,53,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetEnableM(_GUIHandle, false)
    end



    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1910000020,745,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 27)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"NPCFilterBtn",1910000058,622,93)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"NPC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4289572533)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BigMapCtrl",0,33,91)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,584, 336)
    end


    _GUIHandle = GUI:ListBoxCreate(_Parent,"MonsNPCNearbyPlayerLB",620,115,125,310)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end



    _GUIHandle = GUI:ButtonCreate(_Parent,"NearbyPlayerFilterBtn",1910000058,683,93)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"附近玩家")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4289572533)
		 
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"WorldMapBtn",1910000001,618,62)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"世界地图")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,62, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4289572533)
		 
    end

    BigMapWindow.UIInit(_Parent)
end

--UI Logic Code Start
function BigMapWindow.UIInit(_Handle)
    BigMapWindow.WndHandle = _Handle
    GUI:WndSetPosM(BigMapWindow.WndHandle, 86, 78)
    GUI:WndSetIsESCClose(BigMapWindow.WndHandle, true)
    GUI:WndSetMoveWithLBM(BigMapWindow.WndHandle)
    GUI:WndSetSizeM(BigMapWindow.WndHandle, 780, 447)
    local _GUIHandle = GUI:WndFindChildM(BigMapWindow.WndHandle, "GUI_2")
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
end
BigMapWindow.main()