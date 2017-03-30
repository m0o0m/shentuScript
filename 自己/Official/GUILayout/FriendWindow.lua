FriendWindow = {}
function FriendWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931500007,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,207, 611)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit",102,51,93,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"GradeEdit",102,71,26,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ProfessionEdit",168,71,32,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"SearchEdit",19,105,136,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"FriendBtn",1930001018,15,132)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"好  友")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290361528)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RecentContactBtn",1930001018,79,132)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"最  近")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290361528)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BlackListBtn",1930001018,143,132)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"仇  人")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290361528)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AddFriendBtn",1900800010,16,576)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,18, 17)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SearchBtn",1931500003,163,102)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"搜索")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,35, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290950313)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,187,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 27)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"AvatarImg",0,17,49)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 38)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
	_GUIHandle = GUI:ListBoxCreate(_Parent, "FriendLB", 13, 157, 180, 412)
	if _GUIHandle ~= 0 then
	end
    
	_GUIHandle = GUI:ListBoxCreate(_Parent, "RecentContactLB", 13, 157, 180, 412)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ListBoxCreate(_Parent, "BlackListLB", 13, 157, 180, 412)
	if _GUIHandle ~= 0 then
	end

    FriendWindow.UIInit(_Parent)
end

--UI Logic Code Start
function FriendWindow.UIInit(_Handle)
	FriendWindow.WndHandle = _Handle
	GUI:WndSetMoveWithLBM(FriendWindow.WndHandle)
	GUI:WndSetMagicUI(FriendWindow.WndHandle,1)
	GUI:WndSetSizeM(FriendWindow.WndHandle, 207, 611)
	GUI:WndSetIsESCClose(FriendWindow.WndHandle, true)
	GUI:WndSetFlagsM(FriendWindow.WndHandle, flg_wndBase_autoTop)
	GUI:WndSetPosM(FriendWindow.WndHandle, 72, 76)
end
FriendWindow.main()




