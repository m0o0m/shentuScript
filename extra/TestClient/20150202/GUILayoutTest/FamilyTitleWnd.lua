FamilyTitleWnd = {}
function FamilyTitleWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1901400210,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,192, 407)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SetBtn",1930001006,70,348)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"ÊÚ  Óè")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,162,9)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CreateBtn",1930001006,28,329)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"´´  ½¨")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"EditBtn",1930001006,107,329)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"±à  ¼­")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"DelBtn",1930001006,28,365)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"É¾  ³ý")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CancelBtn",1930001006,107,365)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"¹Ø  ±Õ")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ListBoxCreate(_Parent, "TitlesLB", 23, 82, 155, 236)
    if _GUIHandle ~= 0 then
    end
    
    FamilyTitleWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyTitleWnd.UIInit(_Handle)
	LuaGlobal["FamilyTitleWnd_Set_ImgId"] = 1901400210	--Éè¶¨·âºÅÊ¹ÓÃµÄ±³¾°Í¼
	LuaGlobal["FamilyTitleWnd_Edit_ImgId"] = 1901400211	--±à¼­·âºÅÊ¹ÓÃµÄ±³¾°Í¼
	
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




