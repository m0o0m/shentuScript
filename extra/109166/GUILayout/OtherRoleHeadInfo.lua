--
-- Author: miyezng
-- Date: 2016-08-30 15:37:45
--
OtherRoleHeadInfo = {}
function OtherRoleHeadInfo.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"backImage",1913600001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"RoleName",84,2,100,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294967295)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level",20,-3,30,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294967295)
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end


    _GUIHandle = GUI:ImageCreate(_Parent,"RoleHP",1913600003,43,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end    
    
    
    -- _GUIHandle = GUI:ButtonCreate(_Parent,"watchBtn",1800500142,85,34)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onWatchBtnUp")
    --     GUI:WndSetParam(_GUIHandle, 0)
    -- end
    
    -- _GUIHandle = GUI:ButtonCreate(_Parent,"teamBtn",1800500146,112,34)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onTeamBtnUp")
    --     GUI:WndSetParam(_GUIHandle, 0)
    -- end
    
    -- _GUIHandle = GUI:ButtonCreate(_Parent,"tradeBtn",1800500150,139,34)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onTradeBtnUp")
    --     GUI:WndSetParam(_GUIHandle, 0)
    -- end
    
    -- _GUIHandle = GUI:ButtonCreate(_Parent,"friendBtn",1800500154,166,34)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onFriendBtnUp")
    --     GUI:WndSetParam(_GUIHandle, 0)
    -- end
    
    -- _GUIHandle = GUI:ButtonCreate(_Parent,"whispBtn",1800500158,193,34)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onWhispBtnUp")
    --     GUI:WndSetParam(_GUIHandle, 0)
    -- end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff0",0,103,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,24, 24)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff1",0,130,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,24, 24)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff2",0,157,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,24, 24)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff3",0,184,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,24, 24)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff4",0,211,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,24, 24)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Time0",111,94,21,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Count0",115,80,12,11)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Time1",138,94,21,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Count1",142,79,12,11)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Time2",165,94,21,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Count2",169,79,12,11)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Time3",192,94,21,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Count3",196,79,12,11)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Time4",219,94,21,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Count4",223,79,12,11)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
        OtherRoleHeadInfo.UIInit(_Parent)
end

--UI Logic Code Start
OtherRoleHeadInfo._wnd = 0

OtherRoleHeadInfo.choosePlayer = 0
OtherRoleHeadInfo.name = 0
function OtherRoleHeadInfo.UIInit(h)
    OtherRoleHeadInfo._wnd = h
    GUI:WndSetSizeM(OtherRoleHeadInfo._wnd, 261, 35)
    GUI:WndSetMoveWithLBM(OtherRoleHeadInfo._wnd)   
    RegisterUIEvent(99, "choosePlayer", OtherRoleHeadInfo.onChoosePlayer)
    --RegisterUIEvent(100, "hideChoosePlayer", OtherRoleHeadInfo.onHideChoosePlayer)
end

-- function OtherRoleHeadInfo.onWatchBtnUp(h)
--     CL:LogicLookInfo(OtherRoleHeadInfo.name)
-- end

-- function OtherRoleHeadInfo.onTeamBtnUp(h)
--     CL:LogicTeamInvite(OtherRoleHeadInfo.name)
-- end

-- function OtherRoleHeadInfo.onTradeBtnUp()
--     CL:OnTradeBtn()
-- end

-- function OtherRoleHeadInfo.onFriendBtnUp(h)
--     CL:LogicAddFriend(OtherRoleHeadInfo.name)
-- end

-- function OtherRoleHeadInfo.onWhispBtnUp(h)
--     CL:LogicSendPrivateTalk(OtherRoleHeadInfo.name)
-- end

-- function OtherRoleHeadInfo.SetBtnVisible( visible )
--     local _GUIHandle = GUI:WndFindChildM(OtherRoleHeadInfo._wnd, "watchBtn")
--     if _GUIHandle ~= 0 then
--         GUI:WndSetVisible(_GUIHandle, visible)
--     end
--     _GUIHandle = GUI:WndFindChildM(OtherRoleHeadInfo._wnd, "teamBtn")
--     if _GUIHandle ~= 0 then
--         GUI:WndSetVisible(_GUIHandle, visible)
--     end
--     _GUIHandle = GUI:WndFindChildM(OtherRoleHeadInfo._wnd, "tradeBtn")
--     if _GUIHandle ~= 0 then
--         GUI:WndSetVisible(_GUIHandle, visible)
--     end
--     _GUIHandle = GUI:WndFindChildM(OtherRoleHeadInfo._wnd, "friendBtn")
--     if _GUIHandle ~= 0 then
--         GUI:WndSetVisible(_GUIHandle, visible)
--     end
--     _GUIHandle = GUI:WndFindChildM(OtherRoleHeadInfo._wnd, "whispBtn")
--     if _GUIHandle ~= 0 then
--         GUI:WndSetVisible(_GUIHandle, visible)
--     end
-- end

function OtherRoleHeadInfo.onChoosePlayer()
    local tarType = LuaParam[1]     --player = 0, monster = 2
    local tarGUID = LuaParam[2]
    OtherRoleHeadInfo.choosePlayer = tarGUID
    CL:GetPlayerPropBase(tarGUID, ROLE_PROP_ROLENAME)
    OtherRoleHeadInfo.name = LuaRet
    if tarType == 0 then
        -- OtherRoleHeadInfo.SetBtnVisible(true)
    else
        GUI:WndSetVisible(OtherRoleHeadInfo._wnd, false)
        -- OtherRoleHeadInfo.SetBtnVisible(false)
        local str = UI:Lua_GUID2Str(tarGUID) and LuaRet or ""
        UI:Lua_SubmitForm("π÷ŒÔ±Ìµ•", "GetType", str)
    end
    --[[local uih = 0
    uih = GUI:WndFindChildM(OtherRoleHeadInfo._wnd, "HeaderImage")
    if uih ~= 0 then
        local image_Id = {{1800500231,1800500234},{1800500232,1800500235},{1800500233,1800500236}}
        CL:GetPlayerPropBase(tarGUID, ROLE_PROP_JOB)
        local jobID = tonumber(LuaRet)
        CL:GetPlayerPropBase(tarGUID, ROLE_PROP_SEX)
        local genderID = tonumber(LuaRet)
        local headID = image_Id[jobID][genderID]
        GUI:WndSetImageID(uih, tonumber(headID))
    end
    
    uih = GUI:WndFindChildM(OtherRoleHeadInfo._wnd, "RoleName")
    if uih ~= 0 then
        CL:GetPlayerPropBase(tarGUID, ROLE_PROP_ROLENAME)
        OtherRoleHeadInfo.name = LuaRet
        GUI:EditSetTextM(uih, OtherRoleHeadInfo.name)
    end
    
    uih = GUI:WndFindChildM(OtherRoleHeadInfo._wnd, "Level")
    if uih ~= 0 then
        CL:GetPlayerPropBase(tarGUID, ROLE_PROP_LEVEL)
        GUI:EditSetTextM(uih, LuaRet)
    end--]]
    -- GUI:WndSetVisible(OtherRoleHeadInfo._wnd, true)
end

function OtherRoleHeadInfo.onHideChoosePlayer()
    if LuaParam[1] == OtherRoleHeadInfo.choosePlayer then
        GUI:WndSetVisible(OtherRoleHeadInfo._wnd, false)
    end
end

function OtherRoleHeadInfo.update(type)
    local backImage = 1913600001
    local bloodImage = 1913600003
    if type == 4 then
        backImage = 1913600005
        bloodImage = 1913600004
    end
    local _GUIHandle = GUI:WndFindChildM(OtherRoleHeadInfo._wnd, "backImage")
    if 0 ~= _GUIHandle then
        GUI:WndSetImageID(_GUIHandle, backImage)
    end

    _GUIHandle = GUI:WndFindChildM(OtherRoleHeadInfo._wnd, "RoleHP")
    if 0 ~= _GUIHandle then
        GUI:WndSetImageID(_GUIHandle, bloodImage)
    end

    GUI:WndSetVisible(OtherRoleHeadInfo._wnd, true)
end

OtherRoleHeadInfo.main()