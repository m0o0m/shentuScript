FamilyNoticeEditWnd = {}
function FamilyNoticeEditWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImg",1931000021,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,572, 298)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NoticeEdit",24,75,518,170)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, true)
        GUI:EditSetMultiLineEdit(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ConfirmBtn",1930001006,231,259)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyNoticeEditWnd.OnConfirmBtn")
        GUI:WndSetTextM(_GUIHandle,"确  定")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CancelBtn",1930001006,318,259)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyNoticeEditWnd.OnCancelBtn")
        GUI:WndSetTextM(_GUIHandle,"取  消")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,542,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyNoticeEditWnd.OnCLoseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
        FamilyNoticeEditWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyNoticeEditWnd.UIInit(_Handle)
	FamilyNoticeEditWnd.WndHandle = _Handle
	GUI:WndSetSizeM(FamilyNoticeEditWnd.WndHandle, 572, 298)
    GUI:WndSetIsESCClose(FamilyNoticeEditWnd.WndHandle, true)
    GUI:WndSetMoveWithLBM(FamilyNoticeEditWnd.WndHandle)
    --GUI:WndSetMagicUI(FamilyNoticeEditWnd.WndHandle,1)
	CenterWnd(FamilyNoticeEditWnd.WndHandle)

end

function FamilyNoticeEditWnd.OnCLoseBtn(_Handle,_Param)
	GUI:WndClose(FamilyNoticeEditWnd.WndHandle)
end
function FamilyNoticeEditWnd.OnConfirmBtn(_Handle,_Param)
	local _GUIHandle = GUI:WndFindChildM(FamilyNoticeEditWnd.WndHandle, "NoticeEdit")
	if _GUIHandle ~= 0 then
		local editTxt = GUI:EditGetTextM(_GUIHandle)
		if CL:FamilyNoticeConfirm(editTxt, "FamilyNoticeEditWnd_行会公告", "FamilyNoticeEditWnd.Nothing") then
			GUI:WndClose(FamilyNoticeEditWnd.WndHandle)
		end
	end
end

function FamilyNoticeEditWnd.OnCancelBtn(_Handle,_Param)
	GUI:WndClose(FamilyNoticeEditWnd.WndHandle)
end

function FamilyNoticeEditWnd.Nothing()
end

FamilyNoticeEditWnd.main()