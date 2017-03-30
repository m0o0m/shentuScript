TaskOperationDlg = {}
function TaskOperationDlg.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
	_GUIHandle = GUI:WndCreateWnd(_Parent, "TaskOpDisplayArea", 0, 21, 89)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle, 267, 340)
	end

    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"ScrollBar",1900100104,1900100108,1900100100,1900100120,-4,0,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 18)
        GUI:ScrollBarSetSetp(_GUIHandle,2)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1903700001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,327, 498)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"QuestName",23,57,280,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294949169)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Cancel",1900000030,202,450)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1900111000,299,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 27)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_12",0,21,89)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,267, 340)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Confirm",1903700025,65,450)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Finish",1903700029,65,450)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"FinishDisable",1903700029,65,450)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
        TaskOperationDlg.UIInit(_Parent)
end

--UI Logic Code Start
function TaskOperationDlg.UIInit(_Handle)
	TaskOperationDlg.WndHandle = _Handle
	GUI:WndSetMoveWithLBM(TaskOperationDlg.WndHandle)
	GUI:WndSetIsESCClose(TaskOperationDlg.WndHandle, true)
	GUI:WndSetMagicUI(TaskOperationDlg.WndHandle, 1)
end
TaskOperationDlg.main()