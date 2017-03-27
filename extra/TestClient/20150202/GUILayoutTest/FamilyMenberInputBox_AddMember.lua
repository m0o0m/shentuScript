FamilyMenberInputBox_AddMember = {}
function FamilyMenberInputBox_AddMember.main()
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
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMenberInputBox_AddMember.OnConfirmBtn")
        GUI:WndSetTextM(_GUIHandle,"确  认")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884516)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CancelBtn",1930001006,151,92)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMenberInputBox_AddMember.OnCancelBtn")
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
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMenberInputBox_AddMember.OnCloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    FamilyMenberInputBox_AddMember.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyMenberInputBox_AddMember.UIInit(_Handle)
	FamilyMenberInputBox_AddMember.WndHandle = _Handle
	local _GUIHandle = GUI:WndFindChildM(FamilyMenberInputBox_AddMember.WndHandle, "TitleEdit")
	if _GUIHandl ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "待加入行会的玩家:")
	end
	_GUIHandle = GUI:WndFindChildM(FamilyMenberInputBox_AddMember.WndHandle, "TextEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetMaxCharNum(_GUIHandle, 16)
	end
end

function FamilyMenberInputBox_AddMember.OnConfirmBtn(_Handle,_Param)
	local _GUIHandle = GUI:WndFindChildM(FamilyMenberInputBox_AddMember.WndHandle, "TextEdit")
	if _GUIHandl ~= 0 then
		local _name = GUI:EditGetTextM(_GUIHandle)
		CL:FamilyInvite(_name)
		GUI:WndClose(FamilyMenberInputBox_AddMember.WndHandle)
	end
end

function FamilyMenberInputBox_AddMember.OnCancelBtn(_Handle,_Param)
	GUI:WndClose(FamilyMenberInputBox_AddMember.WndHandle)
end

function FamilyMenberInputBox_AddMember.OnCloseBtn(_Handle,_Param)
	GUI:WndClose(FamilyMenberInputBox_AddMember.WndHandle)
end

FamilyMenberInputBox_AddMember.main()