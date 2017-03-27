--
-- Author: miyezng
-- Date:   2016-09-27 14:55:44
-- Last Modified by:   miyezng
-- Last Modified time: 2016-09-27 15:21:39
--
QuestDlg = {}
function QuestDlg.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1910700001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,720, 480)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_3",1910700002,28,75)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,664, 392)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"QuestBtn0",1913500145,33,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"任务")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 19)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"QuestBtn1",1913500149,95,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"可接任务")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 19)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1910000020,680,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"QuestName",207,90,425,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"DropQuest",1910000001,583,440)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"放弃任务")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"TraceQuest",1910000001,470,440)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"放弃追踪")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Tree",0,35,82)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,157, 368)
    end


    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"ScrollBar",1910000007,1910000008,1910000012,1910000016,667,109,300)
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