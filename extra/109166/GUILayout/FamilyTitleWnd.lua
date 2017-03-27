FamilyTitleWnd = {}
function FamilyTitleWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1910500009,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,192, 407)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SetBtn",1910000001,70,210)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"��  ��")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1910000020,190,10)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CreateBtn",1910000001,28,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"��  ��")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"EditBtn",1910000001,127,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"��  ��")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"DelBtn",1910000001,28,230)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"ɾ  ��")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CancelBtn",1910000001,127,230)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"��  ��")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(199, 203, 223, 232))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ListBoxCreate(_Parent, "TitlesLB", 23, 55, 168, 132)
    if _GUIHandle ~= 0 then
    end
    
    FamilyTitleWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyTitleWnd.UIInit(_Handle)
	LuaGlobal["FamilyTitleWnd_Set_ImgId"] = 1910500009	--�趨���ʹ�õı���ͼ
	LuaGlobal["FamilyTitleWnd_Edit_ImgId"] = 1910500009	--�༭���ʹ�õı���ͼ
	
	FamilyTitleWnd.wndHandle = _Handle
	GUI:WndSetMoveWithLBM(FamilyTitleWnd.wndHandle)
	GUI:WndSetFlagsM(FamilyTitleWnd.wndHandle, flg_wndBase_autoTop)
	GUI:WndSetIsESCClose(FamilyTitleWnd.wndHandle, true)
	local _GUIHandle = GUI:WndFindChildM(FamilyTitleWnd.wndHandle, "GUI_2")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end

end
FamilyTitleWnd.main()