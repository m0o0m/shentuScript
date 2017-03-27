TaskDisplayArea = {}
function TaskDisplayArea.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    if _Parent then
        GUI:WndSetPosM(_Parent, 321, 110)
        --GUI:WndSetSizeM(_Parent, 475, 287)
        --GUI:WndSetFlagsM(_Parent, flg_wndBase_useBkBuffer)
    end

    -- _GUIHandle = GUI:RichEditCreate(_Parent,"Edit",0,0,443,50)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndSetParam(_GUIHandle, 0)
    --     GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
    --     GUI:RichEditSetEditEnable(_GUIHandle, false)
    --     GUI:RichEditSetOffSet(_GUIHandle, 5)
    --     GUI:RichEditSetTextLeftBorder(_GUIHandle, 10)
    --     GUI:WndSetVisible(_GUIHandle, false)
    --     GUI:WndInvalidate(_GUIHandle)
    --     GUI:RichEditAppendString(_GUIHandle, "")
    -- end

    _GUIHandle = GUI:ImageCreate(_Parent, "title", 1851900000, 0, 0)

    _GUIHandle = GUI:RichEditCreate(_Parent, "titleEdit", 170, 10, 300, 22)
    if _GUIHandle then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetFlagsM(_GUIHandle, richEdit_flg_textInCenter)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"goForTask",1850000307, 235, 324)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294960577)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:WndSetTextM(_GUIHandle, "立即前往")
    end

    _GUIHandle = GUI:RichEditCreate(_Parent,"Accept",42,78,120,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        --GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditSetDefaultTextColor(_GUIHandle, 4294930229)
        GUI:RichEditAppendString(_GUIHandle, "接取NPC :")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndInvalidate(_GUIHandle)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"FromNPC",140,78,129,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditSetDefaultTextColor(_GUIHandle, 4294952753)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndInvalidate(_GUIHandle)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"Finish",42,125,100,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
     --   GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditSetDefaultTextColor(_GUIHandle, 4294930229)
        GUI:RichEditAppendString(_GUIHandle, "完成NPC ：")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndInvalidate(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"ToNPC",140,125,129,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    --    GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditSetDefaultTextColor(_GUIHandle, 4294952753)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndInvalidate(_GUIHandle)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Goal",42,172,130,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextColor(_GUIHandle, 4294930229)
        GUI:EditSetTextM(_GUIHandle, "任务目标 :")
        GUI:WndSetVisible(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"GoalEdit",150,152,350,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Awards",42,220,100,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextColor(_GUIHandle, 4294930229)
        GUI:EditSetTextM(_GUIHandle, "任务奖励 :")
        GUI:WndSetVisible(_GUIHandle, false)
    end
    
    
    
 --    _GUIHandle = GUI:ImageCreate(_Parent,"Coins",1903700002,0,168)
 --    if _GUIHandle ~= 0 then
 --        GUI:WndSetParam(_GUIHandle, 0)
 --        GUI:WndSetSizeM(_GUIHandle,130, 32)
 --        GUI:ImageSetParam(_GUIHandle, 0)
 --        GUI:ImageSetCheckPoint(_GUIHandle, 0)
 --        GUI:WndSetCanRevMsg(_GUIHandle, false)
 --        GUI:WndSetVisible(_GUIHandle, false)
 --    end
    
    
 --    _GUIHandle = GUI:ImageCreate(_Parent,"Exp",1903700003,146,168)
 --    if _GUIHandle ~= 0 then
 --        GUI:WndSetParam(_GUIHandle, 0)
 --        GUI:WndSetSizeM(_GUIHandle,130, 32)
 --        GUI:ImageSetParam(_GUIHandle, 0)
 --        GUI:ImageSetCheckPoint(_GUIHandle, 0)
 --        GUI:WndSetCanRevMsg(_GUIHandle, false)
 --        GUI:WndSetVisible(_GUIHandle, false)
 --    end
    
    
 --    _GUIHandle = GUI:EditCreate(_Parent,"CoinEdit",30,175,93,15)
 --    if _GUIHandle ~= 0 then
 --        GUI:WndSetParam(_GUIHandle, 0)
 --        GUI:WndSetEnableM(_GUIHandle, false)
 -- --       GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
 --        GUI:EditSetTextColor(_GUIHandle, 4288244559)
 --        GUI:WndSetVisible(_GUIHandle, false)
 --    end
    
    
    
 --    _GUIHandle = GUI:EditCreate(_Parent,"ExpEdit",180,180,120,20)
 --    if _GUIHandle ~= 0 then
 --        GUI:WndSetParam(_GUIHandle, 0)
 --        GUI:WndSetEnableM(_GUIHandle, false)
 -- --       GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
 --        GUI:EditSetTextColor(_GUIHandle, 4288244559)
 --        GUI:WndSetVisible(_GUIHandle, false)
 --    end
    
        
    
    -- _GUIHandle = GUI:EditCreate(_Parent,"Optional",0,247,100,20)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndSetParam(_GUIHandle, 0)
    --     GUI:WndSetEnableM(_GUIHandle, false)
    --     GUI:WndSetTextColorM(_GUIHandle, 4294930229)
    --     GUI:EditSetTextM(_GUIHandle, "可选奖励：")
    --     GUI:WndSetVisible(_GUIHandle, false)
    -- end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,80,250,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0, 160,250,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,240,250,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,300,250,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item5",0,176,250,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item6",0,220,250,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
       
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item7",0,0,271,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
     
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item8",0,44,271,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item9",0,88,271,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item10",0,132,271,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item11",0,176,271,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item12",0,220,271,66,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBackImageID(_GUIHandle, 1850400004)
        
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    TaskDisplayArea.UIInit(_Parent)
end

TaskDisplayArea.mID = 0
TaskDisplayArea.WndHandle = 0
--UI Logic Code Start
function TaskDisplayArea.UIInit(_Handle)
    TaskDisplayArea.WndHandle = _Handle
    RegisterUIEvent(LUA_EVENT_NPCQUEST, "openTaskDisplayArea", TaskDisplayArea.getQuest)     
end

function TaskDisplayArea.getQuest()
    TaskDisplayArea.mID = LuaParam[1]
    dbg("TaskDisplayArea.getQuest")
    UI:Lua_SubmitForm("任务奖励","getRewardList",tostring(TaskDisplayArea.mID))
    
end

function MWshowReward(ret)
    local str = tostring(ret[0])
    dbg("TaskDisplayArea 11111 ===== "..str)        
    if str == "无脚本任务奖励" then
        --无脚本配置奖励 
        --检查是否有db配置奖励

        if CL:GetQuestAwardByID(TaskDisplayArea.mID) then
            local t = LuaRet
            for i = 1, #t do
                local _wnd = GUI:WndFindChildM(TaskDisplayArea.WndHandle, "Item"..i)
                GUI:WndSetVisible(_wnd, true)
                RDItemCtrlSetGUIDataByKeyName(_wnd, t[i][1], t[i][2], t[i][3])
                _wnd = GUI:WndFindChildM(TaskDisplayArea.WndHandle, "ItemBkImg"..i)
                GUI:WndSetVisible(_wnd, true)
            end
        end         
        return
    else
    
        --脚本配置奖励 
        local t = ret[1]
        if t == nil then
            return
        end
        local i = 1
        
        for k,v in pairs(ret) do
            local _wnd = GUI:WndFindChildM(TaskDisplayArea.WndHandle, "Item"..i)
            GUI:WndSetVisible(_wnd, true)
            RDItemCtrlSetGUIDataByKeyName(_wnd, ret[i][1], ret[i][2], ret[i][3])
            _wnd = GUI:WndFindChildM(TaskDisplayArea.WndHandle, "ItemBkImg"..i)
            GUI:WndSetVisible(_wnd, true)
            i = i + 1
        end
    end
end


TaskDisplayArea.main()




