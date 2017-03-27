--
-- Author: miyezng
-- Date:   2016-08-28 15:15:48
-- Last Modified by:   miyezng
-- Last Modified time: 2016-09-27 16:39:05
--
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
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end


    _GUIHandle = GUI:RichEditCreate(_Parent,"FromNPC",83,54,129,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end



    _GUIHandle = GUI:RichEditCreate(_Parent,"ToNPC",315,54,129,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end



    _GUIHandle = GUI:RichEditCreate(_Parent,"GoalEdit",0,104,443,33)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end



    _GUIHandle = GUI:ImageCreate(_Parent,"Coins",1910700009,0,168)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 32)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:ImageCreate(_Parent,"Exp",1910700008,146,168)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 32)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:EditCreate(_Parent,"CoinEdit",30,175,93,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(_Parent,"ExpEdit",173,175,93,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end



    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,0,207,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end



    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,44,207,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end



    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,88,207,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end



    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,132,207,36,36)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,36, 36)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end


    TaskDisplayArea.UIInit(_Parent)
end

--UI Logic Code Start
function TaskDisplayArea.UIInit(_Handle)
    GUI:WndAddTimerBrief(_Handle, 16, "TaskDisplayArea.update")
    CL:AddDelayTask("GUI:WndSetFlagsM(".._Handle..", 0)", 0, 1)
end

function TaskDisplayArea.update(_Parent)
    local _Handle = GUI:WndFindChildM(_Parent, "FromNPC")
    if 0 ~= _Handle then
        GUI:WndSetPosM(_Handle, 60, 162)
    end

    _Handle = GUI:WndFindChildM(_Parent, "ToNPC")
    if 0 ~= _Handle then
        GUI:WndSetPosM(_Handle, 350, 162)
    end

    _Handle = GUI:WndFindChildM(_Parent, "GoalEdit")
    if 0 ~= _Handle then
        GUI:WndSetPosM(_Handle, 0, 194)
    end

    local startX = 50

    _Handle = GUI:WndFindChildM(_Parent, "Coins")
    if 0 ~= _Handle and GUI:WndGetVisible(_Handle) then
        GUI:WndSetPosM(_Handle, startX, 242)
        startX = startX + 50
    end

    _Handle = GUI:WndFindChildM(_Parent, "CoinEdit")
    if 0 ~= _Handle and GUI:WndGetVisible(_Handle) then
        GUI:WndSetPosM(_Handle, startX, 244)
        startX = startX + 120
    end

    _Handle = GUI:WndFindChildM(_Parent, "Exp")
    if 0 ~= _Handle and GUI:WndGetVisible(_Handle) then
        GUI:WndSetPosM(_Handle, startX, 242)
    end

    _Handle = GUI:WndFindChildM(_Parent, "ExpEdit")
    if 0 ~= _Handle and GUI:WndGetVisible(_Handle) then
        GUI:WndSetPosM(_Handle, startX + 50, 244)
    end

    for i=1,4 do
        _Handle = GUI:WndFindChildM(_Parent, "Item"..i)
        if 0 ~= _Handle then
            GUI:WndSetPosM(_Handle, 38*i-56, 273)
        end
    end
end

TaskDisplayArea.main()