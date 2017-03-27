--
-- Author: miyezng
-- Date: 2016-08-24 13:51:02
--
RankWnd = {}
function RankWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImg",1912500009,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,569, 399)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LevelBkImg",1912500010,143,77)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,401, 309)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BeautyBkImg",1912500043,143,77)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,401, 309)
    end
    
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"ListCtrl",142,110,420,280)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbClick, "RankWnd.OnListRBtnClick")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ListBoxSetColumnNum(_GUIHandle,7)
        GUI:ListBoxSetColumnPos(_GUIHandle, 0, 14)
        GUI:ListBoxSetColumnPos(_GUIHandle, 1, 40)
        GUI:ListBoxSetColumnPos(_GUIHandle, 2, 147)
        GUI:ListBoxSetColumnPos(_GUIHandle, 3, 192)
        GUI:ListBoxSetColumnPos(_GUIHandle, 4, 243)
        GUI:ListBoxSetColumnPos(_GUIHandle, 5, 322)
        GUI:ListBoxSetColumnPos(_GUIHandle, 6, 400)
        GUI:ListBoxSetOffsetY(_GUIHandle, 16)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1910000020,570,25)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "RankWnd.OnCloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"MyRankEdit",193,52,237,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"LevelBtn",1912500011,28,89)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "RankWnd.OnLevelBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        -- GUI:WndSetSizeM(_GUIHandle,52, 15)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"TotalLevelBtn",1912500015,38,109)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "RankWnd.OnTotalLevelBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        -- GUI:WndSetSizeM(_GUIHandle,42, 15)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"WarLevelBtn",1912500019,38,128)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "RankWnd.OnWarLevelBtn")
        GUI:WndSetParam(_GUIHandle, 1)
        -- GUI:WndSetSizeM(_GUIHandle,42, 15)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MagLevelBtn",1912500023,38,147)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "RankWnd.OnMagLevelBtn")
        GUI:WndSetParam(_GUIHandle, 2)
        -- GUI:WndSetSizeM(_GUIHandle,42, 15)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"TaoLevelBtn",1912500027,38,166)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "RankWnd.OnTaoLevelBtn")
        GUI:WndSetParam(_GUIHandle, 3)
        -- GUI:WndSetSizeM(_GUIHandle,42, 15)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BeautyBtn",1912500031,28,89)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "RankWnd.OnBeautyBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        -- GUI:WndSetSizeM(_GUIHandle,52, 15)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"TotalBeautyBtn",1912500015,28,89)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "RankWnd.OnTotalBeautyBtn")
        GUI:WndSetParam(_GUIHandle, 4)
        -- GUI:WndSetSizeM(_GUIHandle,42, 15)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MaleBeautyBtn",1912500035,28,89)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "RankWnd.OnMaleBeautyBtn")
        GUI:WndSetParam(_GUIHandle, 5)
        -- GUI:WndSetSizeM(_GUIHandle,42, 15)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"FemaleBeautyBtn",1912500039,28,89)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "RankWnd.OnFemaleBeautyBtn")
        GUI:WndSetParam(_GUIHandle, 6)
        -- GUI:WndSetSizeM(_GUIHandle,42, 15)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
        RankWnd.UIInit(_Parent)
end

--UI Logic Code Start
RankWnd.list = {}
RankWnd.RankButtonGroup = {
    {"LevelBtn", {"TotalLevelBtn", "WarLevelBtn", "MagLevelBtn", "TaoLevelBtn"}, 4},
    {"BeautyBtn", {"TotalBeautyBtn", "MaleBeautyBtn", "FemaleBeautyBtn"}, 3}
}
RankWnd._CurGroup = 1
RankWnd.SortType = 0
RankWnd.myname = ""
RankWnd.RankMenu = 0

function RankWnd.UIInit(_Handle)
    RankWnd.WndHandle = _Handle
    GUI:WndSetMoveWithLBM(RankWnd.WndHandle)
    GUI:WndSetMagicUI(RankWnd.WndHandle,1)
    GUI:WndSetSizeM(RankWnd.WndHandle, 569, 399)
    GUI:WndSetIsESCClose(RankWnd.WndHandle, true)
    GUI:WndSetFlagsM(RankWnd.WndHandle, flg_wndBase_autoTop)
    CenterWnd(RankWnd.WndHandle)
    GUI:WndRegistScript(RankWnd.WndHandle,RDWndBaseCL_wnd_close, "RankWnd.OnWndClose")

    CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME)
    RankWnd.myname = LuaRet
    CL:GetRankList(0, "RankWnd_获取排行列表", "RankWnd.getRankList")
    RankWnd.ButtonExpand(RankWnd.RankButtonGroup[1][1])

    RankWnd.RankMenu = GUI:MenuCreate(RankWnd.WndHandle, "RankWndMenu")
    GUI:WndRegistScript(RankWnd.RankMenu,RDWnd2DPopupMenuCL_click, "RankWnd.OnMenuClick")
    
    Temporary = RankWnd.RankMenu
    GUI:MenuAddItem(0,"复制姓名",0,-1,1900340224)
    GUI:MenuAddItem(1,"复制行会名称",0,-1,1900340224)
    GUI:MenuAddItem(2,"查看资料",0,-1,1900340224)
end

function RankWnd.ButtonHighLight(name)
    local btn_count = RankWnd.RankButtonGroup[RankWnd._CurGroup][3]
    for i = 1, btn_count do
        local _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, RankWnd.RankButtonGroup[RankWnd._CurGroup][2][i])
        if _GUIHandle ~= 0 then
            if GUI:WndGetIDM(_GUIHandle) == name then
                GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
            else
                GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
            end
        end
    end
end

function RankWnd.UpdateUI()
    if RankWnd.list[RankWnd.SortType] == nil then
        CL:GetRankList(RankWnd.SortType, "RankWnd_获取排行列表", "RankWnd.getRankList")
        return
    end

    local _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "ListCtrl")
    if _GUIHandle ~= 0 then
        GUI:ListBoxClear(_GUIHandle)
    end
    _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "MyRankEdit")
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle, "")
    end
    _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "LevelBkImg")
    if _GUIHandle ~= 0 then
        GUI:WndSetVisible(_GUIHandle, false)
    end
    _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "BeautyBkImg")
    if _GUIHandle ~= 0 then
        GUI:WndSetVisible(_GUIHandle, false)
    end
    if RankWnd.SortType >= 14 then
        RankWnd.SortType = 0
    end

    
    local myRank = 0
    if RankWnd.SortType == 0 or RankWnd.SortType == 1 or RankWnd.SortType == 2 or RankWnd.SortType == 3 then
        local _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "LevelBkImg")
        if _GUIHandle ~= 0 then
            GUI:WndSetVisible(_GUIHandle, true)
        end
    elseif RankWnd.SortType == 4 or RankWnd.SortType == 5 or RankWnd.SortType == 6 then
        local _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "BeautyBkImg")
        if _GUIHandle ~= 0 then
            GUI:WndSetVisible(_GUIHandle, true)
        end
    end
    _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "ListCtrl")
    if _GUIHandle ~= 0 then
        local gender = {"男", "女"}
        local job = {"战士", "法师", "道士"}
        for i = 1, #RankWnd.list[RankWnd.SortType] do
            if RankWnd.list[RankWnd.SortType][i][2] == RankWnd.myname then
                myRank = i
            end
            GUI:ListBoxAddString(_GUIHandle,tostring(i),4290950816)
            GUI:ListBoxAddString(_GUIHandle,tostring(RankWnd.list[RankWnd.SortType][i][2]),4290950816)
            GUI:ListBoxAddString(_GUIHandle,tostring(RankWnd.list[RankWnd.SortType][i][5]),4290950816)
            GUI:ListBoxAddString(_GUIHandle,job[RankWnd.list[RankWnd.SortType][i][3]],4290950816)
            GUI:ListBoxAddString(_GUIHandle,gender[RankWnd.list[RankWnd.SortType][i][4]],4290950816)
            GUI:ListBoxAddString(_GUIHandle,tostring(RankWnd.list[RankWnd.SortType][i][6]),4290950816)
            GUI:ListBoxAddString(_GUIHandle,"",4290950816)
        end
    end

    _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "MyRankEdit")
    if _GUIHandle ~= 0 then
        if myRank ~= 0 then
            GUI:EditSetTextM(_GUIHandle, "你当前排名"..tostring(myRank))
        else
            GUI:EditSetTextM(_GUIHandle, "你没有上榜，继续努力吧！")
        end
    end
end

function RankWnd.Rank_OnBtnDown(_Handle,_Param)
    RankWnd.ButtonHighLight(GUI:WndGetIDM(_Handle))
    local wndParam = GUI:WndGetParam(_Handle)
    if RankWnd.SortType == wndParam then
        return
    end

    RankWnd.SortType = wndParam
    RankWnd.UpdateUI()
end

function RankWnd.OnCloseBtn(_Handle,_Param)
    GUI:WndClose(RankWnd.WndHandle)
end

function RankWnd.OnWndClose()
    --Temporary = RankWnd.WndHandle
    --GUI:MenuDeleteMenu()
end

function RankWnd.ButtonExpand(group_name)
    local y = 89
    for i = 1, 2 do
        local _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, RankWnd.RankButtonGroup[i][1])
        if _GUIHandle ~= 0 then
            GUI:WndSetPosM(_GUIHandle, 30, y)
            y = y + 27
            local btn_count = RankWnd.RankButtonGroup[i][3]
            if group_name == RankWnd.RankButtonGroup[i][1] then
                RankWnd._CurGroup = i
                _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, RankWnd.RankButtonGroup[i][2][1])
                if _GUIHandle ~= 0 then
                    if GUI:WndGetVisible(_GUIHandle) then
                        for j = 1, btn_count do
                            _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, RankWnd.RankButtonGroup[i][2][j])
                            if _GUIHandle ~= 0 then
                                GUI:WndSetVisible(_GUIHandle, false)
                            end
                        end
                    else
                        for j = 1, btn_count do
                            _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, RankWnd.RankButtonGroup[i][2][j])
                            if _GUIHandle ~= 0 then
                                GUI:WndSetPosM(_GUIHandle, 31, y)
                                y = y + 18
                                GUI:WndSetVisible(_GUIHandle, true)
                            end
                        end
                    end
                end
            else
                for j = 1, btn_count do
                    _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, RankWnd.RankButtonGroup[i][2][j])
                    if _GUIHandle ~= 0 then
                        GUI:WndSetVisible(_GUIHandle, false)
                    end
                end
            end
        end
    end
end

function RankWnd.OnLevelBtn(_Handle,_Param)
    RankWnd.ButtonExpand(GUI:WndGetIDM(_Handle))
end

function RankWnd.OnTotalLevelBtn(_Handle,_Param)
    RankWnd.Rank_OnBtnDown(_Handle,_Param)
end
function RankWnd.OnWarLevelBtn(_Handle,_Param)
    RankWnd.Rank_OnBtnDown(_Handle,_Param)
end
function RankWnd.OnMagLevelBtn(_Handle,_Param)
    RankWnd.Rank_OnBtnDown(_Handle,_Param)
end
function RankWnd.OnTaoLevelBtn(_Handle,_Param)
    RankWnd.Rank_OnBtnDown(_Handle,_Param)
end
function RankWnd.OnBeautyBtn(_Handle,_Param)
    RankWnd.ButtonExpand(GUI:WndGetIDM(_Handle))
end
function RankWnd.OnTotalBeautyBtn(_Handle,_Param)
    RankWnd.Rank_OnBtnDown(_Handle,_Param)
end
function RankWnd.OnMaleBeautyBtn(_Handle,_Param)
    RankWnd.Rank_OnBtnDown(_Handle,_Param)
end
function RankWnd.OnFemaleBeautyBtn(_Handle,_Param)
    RankWnd.Rank_OnBtnDown(_Handle,_Param)
end

function RankWnd.getRankList()
    RankWnd.SortType = LuaParam[1]
    RankWnd.list[RankWnd.SortType] = LuaParam[4]
    RankWnd.UpdateUI()
end

function RankWnd.OnListRBtnClick()
    local _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "ListCtrl")
    if _GUIHandle ~= 0 then
        if GUI:ListBoxGetCurSelLine(_GUIHandle) >= 0 then
            Temporary = RankWnd.RankMenu
            GUI:MenuShowPopupMenu(true)
        end
    end
end

function RankWnd.OnMenuClick(_Handle,_Param)
    local _GUIHandle = GUI:WndFindChildM(RankWnd.WndHandle, "ListCtrl")
    if _GUIHandle ~= 0 then
        local idx =GUI:ListBoxGetCurSelLine(_GUIHandle)
        local name = GUI:ListBoxGetString(_GUIHandle, idx, 1)
        local family = GUI:ListBoxGetString(_GUIHandle, idx, 5)
        if _Param == 0 then
            CL:CopyTextToClipBoard(name)
            msg('已复制玩家名字，可“CTRL+V”粘帖！')
        elseif _Param == 1 then
            CL:CopyTextToClipBoard(family)
            msg('已复制行会名字，可“CTRL+V”粘帖！')
        elseif _Param == 2 then
            CL:LogicLookInfo(name)
        end
    end
end
RankWnd.main()