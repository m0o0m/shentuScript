TeamWnd = {}
function TeamWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931700001,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,318, 241)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_0",1901101076,30,85)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,9, 9)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,289,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NewBtn",1930001006,24,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"新建")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AddBtn",1930001006,86,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"添加")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"DelBtn",1930001006,148,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"删除")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"LeaveBtn",1930001006,209,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"离队")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"LeaderEdit",45,82,143,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ListBoxCreate(_Parent, "MemberLB", 26, 103, 215, 69)
    if _GUIHandle ~= 0 then

    end
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"VScrollBar",1930001010,1930001014,1930001022,1931700002,263,71,120)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"AllowCB",1930001000,"",23,47)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    TeamWnd.UIInit(_Parent)
end

--UI Logic Code Start
TeamWnd.WndHandle = 0
function TeamWnd.UIInit(_Handle)
    TeamWnd.WndHandle = _Handle
	GUI:WndSetSizeM(TeamWnd.WndHandle, 318, 241)
	GUI:WndSetIsESCClose(TeamWnd.WndHandle, true)
	GUI:WndSetMoveWithLBM(TeamWnd.WndHandle)
	CenterWnd(TeamWnd.WndHandle)
end
TeamWnd.main()




