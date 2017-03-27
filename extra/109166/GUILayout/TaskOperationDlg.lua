--
-- Author: miyezng
-- Date:   2016-09-26 11:35:36
-- Last Modified by:   miyezng
-- Last Modified time: 2016-09-27 16:45:16
--
TaskOperationDlg = {}
function TaskOperationDlg.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0


    _GUIHandle = GUI:WndCreateWnd(_Parent, "TaskOpDisplayArea", 0, 33, 60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle, 267, 280)
    end

    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"ScrollBar",1900100104,1900100108,1900100100,1900100120,-4,0,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 18)
        GUI:ScrollBarSetSetp(_GUIHandle,2)
    end



    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1910700007,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,307, 396)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:EditCreate(_Parent,"QuestName",15,37,280,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontM(_GUIHandle, "TitleFont1")
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end



    _GUIHandle = GUI:ButtonCreate(_Parent,"Cancel",1910000001,180,346)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 20)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:WndSetTextM(_GUIHandle, "取消")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1910000020,265,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,28, 27)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    -- _GUIHandle = GUI:ImageCreate(_Parent,"GUI_12",0,21,89)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndSetParam(_GUIHandle, 0)
    --     GUI:WndSetSizeM(_GUIHandle,267, 340)
    --     GUI:ImageSetParam(_GUIHandle, 0)
    --     GUI:ImageSetCheckPoint(_GUIHandle, 0)
    -- end


    _GUIHandle = GUI:ButtonCreate(_Parent,"Confirm",1910000001,65,346)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 20)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:WndSetTextM(_GUIHandle, "接受")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Finish",1910000001,65,346)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 20)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:WndSetTextM(_GUIHandle, "完成")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"FinishDisable",1910000001,65,346)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 20)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:WndSetTextM(_GUIHandle, "完成")
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