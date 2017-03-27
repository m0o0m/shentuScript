FamilyMenberInputBox_Leave = {}
function FamilyMenberInputBox_Leave.main()
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
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMenberInputBox_Leave.OnConfirmBtn")
        GUI:WndSetTextM(_GUIHandle,"确  认")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884516)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CancelBtn",1930001006,151,92)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMenberInputBox_Leave.OnCancelBtn")
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
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMenberInputBox_Leave.OnCloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    FamilyMenberInputBox_Leave.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyMenberInputBox_Leave.UIInit(_Handle)
	FamilyMenberInputBox_Leave.WndHandle = _Handle
	local _GUIHandle = GUI:WndFindChildM(FamilyMenberInputBox_Leave.WndHandle, "TitleEdit")
	if _GUIHandl ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "临别赠言:")
	end
	_GUIHandle = GUI:WndFindChildM(FamilyMenberInputBox_Leave.WndHandle, "TextEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetMaxCharNum(_GUIHandle, 255)
	end
end

function FamilyMenberInputBox_Leave.OnConfirmBtn(_Handle,_Param)
	local _GUIHandle = GUI:WndFindChildM(FamilyMenberInputBox_Leave.WndHandle, "TextEdit")
	if _GUIHandl ~= 0 then
		local _Content = GUI:EditGetTextM(_GUIHandle)
		CL:FamilyQuitRequest(_Content, "FamilyMenberInputBox_Leave_离开行会", "FamilyMenberInputBox_Leave.OnLeave")
	end
end

function FamilyMenberInputBox_Leave.OnLeave()
	GUI:WndClose(FamilyMenberInputBox_Leave.WndHandle)
	GUI:WndClose(FamilyWnd.wndHandle)
end

function FamilyMenberInputBox_Leave.OnCancelBtn(_Handle,_Param)
	GUI:WndClose(FamilyMenberInputBox_Leave.WndHandle)
end

function FamilyMenberInputBox_Leave.OnCloseBtn(_Handle,_Param)
	GUI:WndClose(FamilyMenberInputBox_Leave.WndHandle)
end

FamilyMenberInputBox_Leave.main()