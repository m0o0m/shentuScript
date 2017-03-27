FamilyTitleInputBox = {}
function FamilyTitleInputBox.main()
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
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyTitleInputBox.OnConfirmBtn")
        GUI:WndSetTextM(_GUIHandle,"确  认")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884516)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CancelBtn",1930001006,151,92)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyTitleInputBox.OnCancelBtn")
        GUI:WndSetTextM(_GUIHandle,"关  闭")
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
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyTitleInputBox.OnCloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    FamilyTitleInputBox.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyTitleInputBox.UIInit(_Handle)
	FamilyTitleInputBox.WndHandle = _Handle
	local _GUIHandle = GUI:WndFindChildM(FamilyTitleInputBox.WndHandle, "TitleEdit")
	if _GUIHandl ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "请输入新封号:")
	end
	_GUIHandle = GUI:WndFindChildM(FamilyTitleInputBox.WndHandle, "TextEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetMaxCharNum(_GUIHandle, 16)
	end
end

function FamilyTitleInputBox.OnConfirmBtn(_Handle,_Param)
	local _GUIHandle = GUI:WndFindChildM(FamilyTitleInputBox.WndHandle, "TextEdit")
	if _GUIHandl ~= 0 then
		local _newtitle = GUI:EditGetTextM(_GUIHandle)
		CL:FamilyCreateTitle(_newtitle, "InputBox_创建新封号", "FamilyEditTitleWnd.UpdateTitleList")
		GUI:WndClose(FamilyTitleInputBox.WndHandle)
	end
end

function FamilyTitleInputBox.OnCancelBtn(_Handle,_Param)
	GUI:WndClose(FamilyTitleInputBox.WndHandle)
end

function FamilyTitleInputBox.OnCloseBtn(_Handle,_Param)
	GUI:WndClose(FamilyTitleInputBox.WndHandle)
end

FamilyTitleInputBox.main()