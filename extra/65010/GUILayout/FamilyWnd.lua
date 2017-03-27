FamilyWnd = {}
function FamilyWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _GUIHandle = GUI:ImageCreate(_Parent,"BkImg1",1807000009,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,720, 530)
        GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BkImg2",1806500001,33,57)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,656, 427)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1805900080,669,8)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.Close")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 38)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"wndTitleImg",1807700000,325,7)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,65, 26)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn1",1806500017,53,63)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.pageBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"行会成员")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn2",1806500017,130,63)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.pageBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"行会信息")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn3",1806500017,207,63)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.pageBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"行会仓库")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn4",1806500017,282,63)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.pageBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"行会日志")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn5",1806500017,359,63)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.pageBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"行会红包")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn6",1806500017,436,63)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.pageBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"行会列表")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn7",1806500017,513,63)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.pageBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"申请列表")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,77, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:WndSetVisible(_GUIHandle, false)
    end
    
    FamilyWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyWnd.UIInit(_Handle)
	FamilyWnd._wnd = _Handle
	GUI:WndSetSizeM(FamilyWnd._wnd, 720, 530)
    GUI:WndSetIsESCClose(FamilyWnd._wnd, true)
    GUI:WndSetMoveWithLBM(FamilyWnd._wnd)
    GUI:WndSetMagicUI(FamilyWnd._wnd,1)
	CenterWnd(FamilyWnd._wnd)

	--禁用这些原本默认打开的面板
    LuaGlobal["UseFamilyMain"] = false
    LuaGlobal["UseFamilyRelation"] = false
    LuaGlobal["UseFamilyMemberWnd"] = false
    LuaGlobal["UseFamilyChatWnd"] = false
	
	local _GUIHandle = 0
	_GUIHandle = GUI:WndFindChildM(FamilyWnd._wnd, "FamilyMain")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
	end
	_GUIHandle = GUI:WndFindChildM(_Handle, "pageBtn1")
	if _GUIHandle ~= 0 then
		FamilyWnd.pageBtn_LC(_GUIHandle)
	end
	
    GUI:WndRegistScript(FamilyWnd._wnd, RDWndBaseCL_wnd_close , "FamilyWnd.wndClose")
    RegisterUIEvent(LUA_EVENT_ONLEAVEFAMILY, "FamilyWnd_close",FamilyWnd.leaveWndClose)
	CL:FamilyInfoRequest(4,"FamilyWnd_行会封号","FamilyWnd.getFamilyTitle")	--请求封号
	CL:FamilyInfoRequest(128,"FamilyWnd_行会基本信息", "FamilyWnd.getFamilyBasicInfo")
end

function FamilyWnd.pageBtn_LC(_Handle)
	if _Handle == FamilyWnd._selPageBtn then  return end
	GUI:ButtonSetIsActivePageBtn(_Handle, true)
	if FamilyWnd._selPageBtn then 
		GUI:ButtonSetIsActivePageBtn(FamilyWnd._selPageBtn, false)
	end
	FamilyWnd._selPageBtn = _Handle
	local close_tab = {"FamilyWnd_Member","FamilyWnd_Info","FamilyWareHouse", "FamilyWnd_Log", "FamilyWnd_RedPacket", "FamilyWnd_FamilyList", "FamilyWnd_ApplyList"}
	for i=1,7 do 
		local hand = GetWindow(FamilyWnd._wnd, "pageBtn"..i)
		if _Handle ~= hand then 
			local handle = GetWindow(FamilyWnd._wnd, close_tab[i])
			if handle ~= 0 then
				GUI:WndClose(handle)
			end
		end
	end

	local id = GUI:WndGetIDM(_Handle)
	if id == "pageBtn1" then
		UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_Member.lua")
	elseif id == "pageBtn2" then
		UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_Info.lua")
	elseif id == "pageBtn3" then
		CL:FamilyOpenWarehouse()
	elseif id == "pageBtn4" then
		UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_Log.lua")
	elseif id == "pageBtn5" then
		UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_RedPacket.lua")
	elseif id == "pageBtn6" then
		UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_FamilyList.lua")
	elseif id == "pageBtn7" then
		UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyWnd_ApplyList.lua")
	end
end
 
 function FamilyWnd.getFamilyBasicInfo()
	FamilyWnd.createTime = LuaParam[1]
	FamilyWnd.guid = LuaParam[2]
	FamilyWnd.memberNum = LuaParam[3]
	FamilyWnd.name = LuaParam[4]
	FamilyWnd.selfTitleID = LuaParam[5]
    FamilyWnd.updateFamilyWarehouse()
end

function FamilyWnd.updateFamilyWarehouse()
    if FamilyWnd.selfTitleID == 1 or FamilyWnd.selfTitleID == 2 then
        local handle = GetWindow(0,"FamilyWnd,pageBtn7")
        if handle ~= 0 then 
            GUI:WndSetVisible(handle, true)
        end
    end
end

function FamilyWnd.getFamilyTitle()
	FamilyWnd.familyTitle_  = {}
	FamilyWnd.familyTitle_ = LuaParam[1]
	for i = 1, #FamilyWnd.familyTitle_ do
		FamilyWnd.familyTitle_[i] = FamilyWnd.familyTitle_[i]
	end
	if FamilyWnd_Member then
	if FamilyWnd_Member.needfamilyTitle == 1 then
		local index, tempT_ = 0, {}
		for i = 1, 10 do
			if FamilyWnd_Member.showOnlineOnly then
				tempT_ = FamilyWnd_Member.memberOnline_
			else
				tempT_ = FamilyWnd_Member.member_
			end
			index = (FamilyWnd_Member.nowPage-1)*10 + i
			if tempT_[index] then
				for j, k in pairs(FamilyWnd.familyTitle_) do
					if k[1] == tempT_[index][6] then
						GUI:EditSetTextM(FamilyWnd_Member._position_[i], k[2])
						break
					end
				end
			end
		end
	end
	end
end

function FamilyWnd.Close()
	GUI:WndClose(FamilyWnd._wnd)
end

function FamilyWnd.wndClose()
    UnRegisterUIEvent(LUA_EVENT_ONLEAVEFAMILY, "FamilyWnd_close")
end

function FamilyWnd.leaveWndClose()
	GUI:WndClose(FamilyWnd._wnd)
 end



FamilyWnd.main()

function CLOnFamilyWindow()
	CL:OnFamilyWindow()
end