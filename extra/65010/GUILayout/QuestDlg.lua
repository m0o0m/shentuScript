QuestDlg = {}
function QuestDlg.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1804200001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,738, 526)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"wndTitleImage",1804200005,333,9)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,81, 29)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"QuestBtn0",1800000427,55,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"任务")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 29)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"QuestBtn1",1800000427,140,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"可接任务")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 29)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1800000068,673,9)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OnClose")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,24, 24)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TaskDisplayAreaImage",1804200002,231,82)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,469, 376)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"QuestName",231,94,469,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"DropQuest",1800000431,560,468)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"放弃任务")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Tree",0,55,82)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,157, 376)
    end
    
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"ScrollBar",1930001010,1930001014,1930001022,1930300015,677,121,333)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,333, 14)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"TraceQuest",1800000431,430,468)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"放弃追踪")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
        QuestDlg.UIInit(_Parent)
end

--UI Logic Code Start
function QuestDlg.UIInit(_Handle)
	QuestDlg.WndHandle = _Handle
	GUI:WndSetMoveWithLBM(QuestDlg.WndHandle)
	GUI:WndSetIsESCClose(QuestDlg.WndHandle, true)
end

function OnClose(_Handle,_Param)
	GUI:WndClose(QuestDlg.WndHandle)
end

QuestDlg.main()