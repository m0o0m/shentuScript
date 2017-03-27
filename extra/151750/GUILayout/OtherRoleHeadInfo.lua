OtherRoleHeadInfo = {}
function OtherRoleHeadInfo.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
    
    _Parent = GUI:WndCreateWnd(_Parent,"OtherRoleHeadInfoParent",0,_DeviceSizeX / 2 - 112,0)
    if _Parent ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"backImage",1800500141,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,224, 86)
    end
        
    _GUIHandle = GUI:ImageCreate(_Parent,"LevelBackImage",1800000162,58,55)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
     
    _GUIHandle = GUI:ImageCreate(_Parent,"HeaderImage",0,6,-9)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,64, 64)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"RoleName",95,13,100,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Level",62,61,30,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"watchBtn",1800500142,85,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onWatchBtnUp")
        GUI:WndSetSizeM(_GUIHandle,27, 28)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"teamBtn",1800500146,112,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onTeamBtnUp")
        GUI:WndSetSizeM(_GUIHandle,27, 28)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"tradeBtn",1800500150,139,34)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,27, 28)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"friendBtn",1800500154,166,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onFriendBtnUp")
        GUI:WndSetSizeM(_GUIHandle,27, 28)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"whispBtn",1800500158,193,34)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onWhispBtnUp")
        GUI:WndSetSizeM(_GUIHandle,27, 28)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff0",0,103,67)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,24, 24)  
    end
      
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff1",0,130,67)
    if _GUIHandle ~= 0 then
    end
      
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff2",0,157,67)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,24, 24)
    end
     
    _GUIHandle = GUI:ImageCreate(_Parent,"Buff3",0,184,67)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,24, 24)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Buff4",0,211,67)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,24, 24)
    end
     
    _GUIHandle = GUI:EditCreate(_Parent,"Time0",111,94,21,12)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Count0",115,80,12,11)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Time1",138,94,21,12)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Count1",142,79,12,11)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Time2",165,94,21,12)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
     
    _GUIHandle = GUI:EditCreate(_Parent,"Count2",169,79,12,11)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Time3",192,94,21,12)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Count3",196,79,12,11)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Time4",219,94,21,12)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Count4",223,79,12,11)
    if _GUIHandle ~= 0 then
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
	GUI:WndSetSizeM(OtherRoleHeadInfo._wnd, 224, 86)
end

function OtherRoleHeadInfo.onWatchBtnUp(h)
    UI:Lua_Log("触发查看按钮")
	CL:LogicLookInfo(OtherRoleHeadInfo.name)
end

function OtherRoleHeadInfo.onTeamBtnUp(h)
	CL:LogicTeamInvite(OtherRoleHeadInfo.name)
end

function OtherRoleHeadInfo.onFriendBtnUp(h)
	CL:LogicAddFriend(OtherRoleHeadInfo.name)
end

function OtherRoleHeadInfo.onWhispBtnUp(h)
	CL:LogicSendPrivateTalk(OtherRoleHeadInfo.name)
end

function OtherRoleHeadInfo.onChoosePlayer()
    UI:Lua_Log("触发点击选择角色开始")
    local tarType = LuaParam[1]     --player = 0, monster = 2
    local tarGUID = LuaParam[2]
    UI:Lua_Log("LuaParam[1]"..LuaParam[1])
    UI:Lua_Log("LuaParam[2]"..LuaParam[2])
    OtherRoleHeadInfo.choosePlayer = tarGUID
    UI:Lua_Log("触发点击选择角色GUID"..tarGUID)
    CL:GetPlayerPropBase(tarGUID, 1)
    OtherRoleHeadInfo.name = LuaRet
    UI:Lua_Log("触发点击选择角色"..OtherRoleHeadInfo.name)
end


OtherRoleHeadInfo.main()
