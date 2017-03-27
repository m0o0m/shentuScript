--
-- Author: miyezng
-- Date:   2016-09-26 11:35:36
-- Last Modified by:   miyezng
-- Last Modified time: 2016-09-27 14:32:10
--
TaskOpDisplayArea = {}
function TaskOpDisplayArea.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent, "ImageBack1", 0, 0, 0)
    if 0 ~= _GUIHandle then
        GUI:WndSetSizeM(_GUIHandle, 240, 80)
        GUI:ImageSetAroundImage(_GUIHandle, 1910700010, 1910700012, 1910700016, 1910700014, 1910700018, 1910700011, 1910700015, 1910700017, 1910700013)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end

    _GUIHandle = GUI:RichEditCreate(_Parent,"Info",5,5,228,70)
    if _GUIHandle ~= 0 then
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "Title1", 0, 80, 200, 20)
    if 0 ~= _GUIHandle then
        GUI:EditSetFontM(_GUIHandle, "TitleFont1")
        GUI:EditSetTextColor(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle, "任务目标：")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "ImageBack2", 0, 0, 105)
    if 0 ~= _GUIHandle then
        GUI:WndSetSizeM(_GUIHandle, 240, 38)
        GUI:ImageSetAroundImage(_GUIHandle, 1910700010, 1910700012, 1910700016, 1910700014, 1910700018, 1910700011, 1910700015, 1910700017, 1910700013)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end

    _GUIHandle = GUI:RichEditCreate(_Parent,"GoalDescrip",0,93,228,70)
    if _GUIHandle ~= 0 then
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:WndAddTimerBrief(_GUIHandle, 16, "TaskOpDisplayArea.onUpdateGoal")
    end

    _GUIHandle = GUI:EditCreate(_Parent, "Title2", 0, 145, 200, 20)
    if 0 ~= _GUIHandle then
        GUI:EditSetFontM(_GUIHandle, "TitleFont1")
        GUI:EditSetTextColor(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle, "任务奖励：")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "ExpBack", 1910700008, 12, 170)
    if 0 ~= _GUIHandle then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "ExpAward", 45, 169, 103, 20)
    if 0 ~= _GUIHandle then
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end

    _GUIHandle = GUI:ImageCreate(_Parent, "GoldBack", 1910700009, 12, 200)
    if 0 ~= _GUIHandle then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(_Parent, "GoldAward", 45, 199, 103, 20)
    if 0 ~= _GUIHandle then
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end

    for i=1,5 do
        _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemAward"..i, 1910700019, 45*i-33, 230, 37, 37)
        if 0 ~= _GUIHandle then
            RDItemCtrlSetProp(_GUIHandle, nil, true, true, true, true, true, true)
        end
    end

    TaskOpDisplayArea.UIInit(_Parent)
end

--UI Logic Code Start
function TaskOpDisplayArea.UIInit(_Handle)
    TaskOpDisplayArea.WndHandle = _Handle
    RegisterUIEvent(LUA_EVENT_NPCQUEST, "OpenNpcQuest", TaskOpDisplayArea.onNpcQuest)
end

function TaskOpDisplayArea.onNpcQuest()
    local questId = LuaParam[1]
    local questInfo = ""
    local questExp = 0
    local questGold = 0
    local questItems = {}
    if CL:GetQuestDataByID(questId) then
        questInfo = LuaRet[3]
        for i=6,11 do
            local t = LuaRet[i]
            if not t then
                break
            end
            if t[1] == 0 then
                questExp = t[2]
            elseif t[1] == 4 then
                questGold = t[2]
            end
        end
    end
    if CL:GetQuestAwardByID(questId) then
        questItems = LuaRet
    end
    local _Handle = GUI:WndFindChildM(TaskOpDisplayArea.WndHandle, "Info")
    if 0 ~= _Handle then
        GUI:RichEditClear(_Handle)
        GUI:RichEditAppendString(_Handle, questInfo)
    end
    _Handle = GUI:WndFindChildM(TaskOpDisplayArea.WndHandle, "ExpAward")
    if 0 ~= _Handle then
        GUI:EditSetTextM(_Handle, GetGoldString(questExp))
    end
    _Handle = GUI:WndFindChildM(TaskOpDisplayArea.WndHandle, "GoldAward")
    if 0 ~= _Handle then
        GUI:EditSetTextM(_Handle, GetGoldString(questGold))
    end
    for i=1,5 do
        _Handle = GUI:WndFindChildM(TaskOpDisplayArea.WndHandle, "ItemAward"..i)
        if 0 ~= _Handle then
            GUI:ItemCtrlClearItemData(_Handle)
            local t = questItems[i]
            if t ~= nil then
                RDItemCtrlSetGUIDataPropByItemID(_Handle, nil, t[1], t[2], t[3]==1)
            end
        end
    end
end

function TaskOpDisplayArea.onUpdateGoal(_Handle)
    GUI:RichEditSetMultiBackImage(_Handle, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    GUI:WndSetPosM(_Handle, 0,93)
end

TaskOpDisplayArea.main()