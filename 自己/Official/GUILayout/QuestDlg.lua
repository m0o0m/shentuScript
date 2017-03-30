QuestDlg = {}
function QuestDlg.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1930700003,1,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,702, 470)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"QuestBtn0",1930001018,18,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"任务")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"QuestBtn1",1930001018,81,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"可接任务")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1930001002,672,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"QuestName",207,84,425,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"DropQuest",1930001006,627,428)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"放弃任务")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"TraceQuest",1930001006,542,428)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"放弃追踪")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Tree",0,13,74)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,157, 368)
    end
    
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"ScrollBar",1900100104,1900100108,1900100100,1900100120,667,109,300)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,300, 18)
        GUI:ScrollBarSetSetp(_GUIHandle,2)
    end
    
    
    
    QuestDlg.UIInit(_Parent)
end

--UI Logic Code Start
function QuestDlg.UIInit(_Handle)
	QuestDlg.WndHandle = _Handle
	GUI:WndSetMoveWithLBM(QuestDlg.WndHandle)
	GUI:WndSetIsESCClose(QuestDlg.WndHandle, true)
end
QuestDlg.main()




