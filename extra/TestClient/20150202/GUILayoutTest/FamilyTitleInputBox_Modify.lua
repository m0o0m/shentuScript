FamilyTitleInputBox_Modify = {}
function FamilyTitleInputBox_Modify.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"LayParent",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931500010,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,265, 135)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"TextEdit",38,59,185,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ConfirmBtn",1930001006,55,92)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyTitleInputBox_Modify.OnConfirmBtn")
        GUI:WndSetTextM(_GUIHandle,"È·  ÈÏ")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884516)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CancelBtn",1930001006,151,92)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyTitleInputBox_Modify.OnCancelBtn")
        GUI:WndSetTextM(_GUIHandle,"¹Ø  ±Õ")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884516)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"TitleEdit",39,31,185,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,234,6)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyTitleInputBox_Modify.OnCloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    FamilyTitleInputBox_Modify.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyTitleInputBox_Modify.UIInit(_Handle)
	FamilyTitleInputBox_Modify.WndHandle = _Handle
	local _GUIHandle = GUI:WndFindChildM(FamilyTitleInputBox_Modify.WndHandle, "TitleEdit")
	if _GUIHandl ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "´ý±à¼­µÄ·âºÅ:")
	end
	_GUIHandle = GUI:WndFindChildM(FamilyTitleInputBox_Modify.WndHandle, "TextEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetMaxCharNum(_GUIHandle, 16)
		GUI:EditSetTextM(_GUIHandle, FamilyEditTitleWnd.OldTitleName)
	end
end

function FamilyTitleInputBox_Modify.OnConfirmBtn(_Handle,_Param)
	local _GUIHandle = GUI:WndFindChildM(FamilyTitleInputBox_Modify.WndHandle, "TextEdit")
	if _GUIHandl ~= 0 then
		local _newName = GUI:EditGetTextM(_GUIHandle)
		CL:FamilyEditTitle(FamilyEditTitleWnd.OldTitle , _newName, "InputBox_ÐÞ¸Ä·âºÅ", "FamilyEditTitleWnd.UpdateTitleList")
		GUI:WndClose(FamilyTitleInputBox_Modify.WndHandle)
	end
end

function FamilyTitleInputBox_Modify.OnCancelBtn(_Handle,_Param)
	GUI:WndClose(FamilyTitleInputBox_Modify.WndHandle)
end

function FamilyTitleInputBox_Modify.OnCloseBtn(_Handle,_Param)
	GUI:WndClose(FamilyTitleInputBox_Modify.WndHandle)
end

FamilyTitleInputBox_Modify.main()