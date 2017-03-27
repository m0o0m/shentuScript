TaskDisplayArea = {}
function TaskDisplayArea.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,444, 309)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"Edit",0,0,443,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetMultiBackImage(_GUIHandle, 1903700005, 1903700007, 1903700011, 1903700009, 1903700013, 1903700006, 1903700010, 1903700012, 1903700008)
		GUI:RichEditSetOffSet(_GUIHandle, 5)
		GUI:RichEditSetTextLeftBorder(_GUIHandle, 10)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndInvalidate(_GUIHandle)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"Accept",0,54,83,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4294930229)
        GUI:RichEditAppendString(_GUIHandle, "任务领取：")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndInvalidate(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"FromNPC",83,54,129,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4294952753)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndInvalidate(_GUIHandle)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"Finish",232,54,83,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4294930229)
        GUI:RichEditAppendString(_GUIHandle, "任务完成：")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndInvalidate(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"ToNPC",315,54,129,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4294952753)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndInvalidate(_GUIHandle)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Goal",0,79,83,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4294930229)
		GUI:EditSetTextM(_GUIHandle, "任务目标：")
		GUI:WndSetVisible(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"GoalEdit",0,104,443,33)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		GUI:RichEditSetMultiBackImage(_GUIHandle, 1903700005, 1903700007, 1903700011, 1903700009, 1903700013, 1903700006, 1903700010, 1903700012, 1903700008)
		GUI:RichEditSetOffSet(_GUIHandle, 5)
		GUI:RichEditSetTextLeftBorder(_GUIHandle, 10)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndInvalidate(_GUIHandle)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Awards",0,144,83,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, 4294930229)
		GUI:EditSetTextM(_GUIHandle, "固定奖励：")
		GUI:WndSetVisible(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Coins",1903700002,0,168)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 32)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Exp",1903700003,146,168)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 32)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"CoinEdit",30,175,93,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
		GUI:EditSetTextColor(_GUIHandle, 4288244559)
		GUI:WndSetVisible(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ExpEdit",173,175,93,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
		GUI:EditSetTextColor(_GUIHandle, 4288244559)
		GUI:WndSetVisible(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,0,207,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Optional",0,247,83,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, 4294930229)
		GUI:EditSetTextM(_GUIHandle, "可选奖励：")
		GUI:WndSetVisible(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item7",0,0,271,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1903700023)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1903700024)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,44,207,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1903700023)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1903700024)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,88,207,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1903700023)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1903700024)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,132,207,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1903700023)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1903700024)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item5",0,176,207,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1903700023)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1903700024)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item6",0,220,207,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1903700023)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1903700024)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item8",0,44,271,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1903700023)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1903700024)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item9",0,88,271,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1903700023)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1903700024)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item10",0,132,271,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1903700023)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1903700024)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item11",0,176,271,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1903700023)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1903700024)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item12",0,220,271,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1903700023)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1903700024)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    TaskDisplayArea.UIInit(_Parent)
end

--UI Logic Code Start
function TaskDisplayArea.UIInit(_Handle)
    TaskDisplayArea.WndHandle = _Handle
    CL:AddDelayTask("TaskDisplayArea.ResetPos()", 100, 1)
end

function TaskDisplayArea.ResetPos()
    GUI:WndSetPosM(TaskDisplayArea.WndHandle, 240, 118)
end
TaskDisplayArea.main()




