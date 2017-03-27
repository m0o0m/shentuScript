FamilyWnd = {}
function FamilyWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931000001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,586, 398)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"FamilyMainPage",1930001018,12,41)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"行会主页")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"FamilyRelationPage",1930001018,72,41)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"行会外交")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"FamilyMemberPage",1930001018,132,41)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"行会成员")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"FamilyChatPage",1930001018,192,41)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"行会聊天")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"FamilyID",433,39,60,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,554,4)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit",164,11,241,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ApplyListBtn",1930001006,500,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"申请列表")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    --[[_GUIHandle = GUI:CheckBoxCreate(_Parent,"ShowOnlineCB",1900112013,"只显示在线成员",292,41)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"只显示在线成员")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,107, 18)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end--]]
    
    
    
    FamilyWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyWnd.UIInit(_Handle)
	FamilyWnd.wndHandle = _Handle
	GUI:WndSetMoveWithLBM(FamilyWnd.wndHandle)
	GUI:WndSetFlagsM(FamilyWnd.wndHandle, flg_wndBase_autoTop)
	GUI:WndSetIsESCClose(FamilyWnd.wndHandle, true)
	local _GUIHandle = GUI:WndFindChildM(FamilyWnd.wndHandle, "GUI_2")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
	GUI:WndSetSizeM(FamilyWnd.wndHandle, 586, 398)
	CenterWnd(FamilyWnd.wndHandle)

end
FamilyWnd.main()




