RoleGUINew = {}
function RoleGUINew.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"RoleGUIBkImg",1805900000,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,637, 504)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"RoleName",141,73,122,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleEquimentPage",1805900076,-17,148)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RoleGUINew.RoleWnd")
        GUI:WndSetTextM(_GUIHandle,"角色")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleSkillPage",1805900076,-17,203)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RoleGUINew.RoleSkillWnd")
        GUI:WndSetTextM(_GUIHandle,"技能")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleReinPage",1805900076,-17,258)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RoleGUINew.RoleReinWnd")
        GUI:WndSetTextM(_GUIHandle,"转生")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    --[[_GUIHandle = GUI:ButtonCreate(_Parent,"RoleOtherPage",1805900076,-17,313)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"其他")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,25, 70)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end--]]
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1805900080,602,3)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleGUINew.CloseWnd")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
        RoleGUINew.UIInit(_Parent)
end

--UI Logic Code Start
RoleGUINew.PageLst = {
'RoleEquimentPage',
'RoleSkillPage',
'RoleReinPage',
--'RoleOtherPage'
}
RoleGUINew.WndHandle=0
function RoleGUINew.UIInit(_Handle)
    RoleGUINew.WndHandle=_Handle;
    LuaGlobal["RoleSkillItemCount"] = 12
    LuaGlobal["RoleGUIXOffset"] = 31
    LuaGlobal["RoleGUIYOffset"] = 48
    GUI:WndSetSizeM(_Handle, 639, 504)
    CenterWnd(RoleGUINew.WndHandle)
	GUI:WndSetMoveWithLBM(RoleGUINew.WndHandle)
	GUI:WndRegistScript(RoleGUINew.WndHandle, RDWndBaseCL_wnd_close, "RoleGUINew.wndClose")
    local _handle = 0;
    for i = 1, #RoleGUINew.PageLst do
        _handle=GUI:WndFindChildM(RoleGUINew.WndHandle, RoleGUINew.PageLst[i])
        if _handle ~= 0 then
            GUI:WndSetTextArrangeType(_handle,8,10,6,1);
            GUI:ButtonSetIsActivePageBtn(_handle, false)
            GUI:ButtonSetStateTextColor(_handle,0,MakeARGB(255, 100, 96, 80))
            GUI:ButtonSetStateTextColor(_handle,2,MakeARGB(255, 201, 184, 116))
        end
    end
    if PackageWndInteraction ~= nil then
        PackageWndInteraction.packageFriendWndOpen(_Handle)
    end
end

function RoleGUINew.ShowChildWnd(index)    --show index-page only
	local childWnd = {"RoleEquiment", "RoleSkill", "RoleRein"}
	for i = 1, #childWnd do
		local _Wnd = GetWindow(RoleGUINew.WndHandle, childWnd[i])
		if _Wnd ~= 0 then  
			if index ~= i then
				GUI:WndSetVisible(_Wnd, false)
			else
				GUI:WndSetVisible(_Wnd, true)
			end
		end
	end
end

function RoleGUINew.ActivePageBtn( index )
    local _handle = 0;
    for i = 1, #RoleGUINew.PageLst do
        _handle=GUI:WndFindChildM(RoleGUINew.WndHandle, RoleGUINew.PageLst[i])
        if _handle ~= 0 then
            if i ~= index then
                GUI:ButtonSetIsActivePageBtn(_handle, false)
				GUI:WndMoveToParentBottom(_handle)
            else
                GUI:ButtonSetIsActivePageBtn(_handle, true)
				GUI:WndMoveToParentTop(_handle)
            end
        end
    end
end

function RoleGUINew.RoleWnd(_Handle)
    local _Wnd = GetWindow(RoleGUINew.WndHandle,"RoleEquiment")--微端代码中为RoleEquiment
    if _Wnd == 0 or GUI:WndGetVisible(_Wnd) == false then
        CL:OnRoleWindow()
        RoleGUINew.ShowChildWnd(1)
        RoleGUINew.ActivePageBtn(1)
    end
end

function RoleGUINew.RoleSkillWnd(_Handle)
    local _Wnd = GetWindow(RoleGUINew.WndHandle,"RoleSkill")
    if _Wnd == 0 or GUI:WndGetVisible(_Wnd) == false then  
        CL:OnSkillWindow()
        RoleGUINew.ShowChildWnd(2)
        RoleGUINew.ActivePageBtn(2)
    end
end

function RoleGUINew.RoleReinWnd()
	if CL:GetPlayerSelfPropBase(18) then 
		local level = tonumber(LuaRet)
		if level < 80 then 
			local _hand = GetWindow(RoleGUINew.WndHandle,"RoleReinPage" )
			window_msg_up(_hand , "80级开启转生" ,-110 , 0 , 0 , MakeARGB(255, 255, 0, 0) , 3)
			return 
		end
	end 
	if GetWindow(RoleGUINew.WndHandle,"RoleRein")  == 0 then
		UI:Lua_OpenWindow(RoleGUINew.WndHandle, "RoleRein.lua")
	end
    RoleGUINew.ShowChildWnd(3)
    RoleGUINew.ActivePageBtn(3)
end

function RoleGUINew.CloseWnd(_Handle)    
    GUI:WndClose(RoleGUINew.WndHandle)
end

function RoleGUINew.wndClose(_Handle)
    if PackageWndInteraction ~= nil then
        PackageWndInteraction.packageFriendWndClose(_Handle)
    end
end

RoleGUINew.main()