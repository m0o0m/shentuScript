FamilyWnd = {}
function FamilyWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	_Parent = GUI:WndCreateWnd(_Parent,"FamilyWnd",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
	end

	--大背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.hideMenu")
	end

	--第二层背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",1852100037,(_DeviceSizeX-1069)/2,65)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1850300025, 1850300027, 1850300031, 1850300033, 1850300029, 1850300026, 1850300032, 1850300028, 1850300030)
		GUI:WndSetSizeM(_GUIHandle,1069, 538)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyMemberWnd.hideMenu")
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"FamilyName",100,18,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,255,215,0))
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.Close")
		GUI:WndSetSizeM(_GUIHandle,52, 52)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn1",1852100038,696,9)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.pageBtn_LC")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn2",1852100042,836,9)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.pageBtn_LC")
	end
		
	--[[_GUIHandle = GUI:ButtonCreate(_Parent,"pageBtn3",1852100046,976,9)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd.pageBtn_LC")
	end--]]

	FamilyWnd.UIInit(_Parent)
end

--UI Logic Code Start 
function FamilyWnd.UIInit(_Handle)
	FamilyWnd._wnd = _Handle
	local BgImg = GUI:WndFindWindow(FamilyWnd._wnd, "BgImage")
	if 0 ~= GameMainBar.WndHandle then
		GUI:WndSetVisible(GameMainBar.WndHandle, false)
	end
	if BgImg then
		GUI:ImageSetAroundImage(BgImg, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
	end
	--默认打开主页
	local _GUIHandle = GetWindow(_Handle, "pageBtn1")
	if 0 ~= _GUIHandle then 
		FamilyWnd._selPageBtn = _GUIHandle
		GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
	end

	_GUIHandle = GetWindow(0, "FamilyListWnd")
	if 0 ~= _GUIHandle then
		GUI:WndClose(_GUIHandle)
	end
	UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyMainWnd.lua")
end

function FamilyWnd.pageBtn_LC(_Handle)
	if _Handle == FamilyWnd._selPageBtn then  return end
	GUI:ButtonSetIsActivePageBtn(_Handle, true)
	if FamilyWnd._selPageBtn then 
		GUI:ButtonSetIsActivePageBtn(FamilyWnd._selPageBtn, false)
	end
	FamilyWnd._selPageBtn = _Handle
	local close_tab = {"FamilyMainWnd","FamilyMemberWnd","FamilyActivityWnd","FamilyListWnd"}
	for i = 1, #close_tab do
		local hand = GetWindow(FamilyWnd._wnd, "pageBtn"..i)
		if _Handle ~= hand then 
			local handle = GetWindow(FamilyWnd._wnd, close_tab[i])
			if handle ~= 0 then
				UI:Lua_Log("pageBtn_LC CLose "..close_tab[i])
				GUI:WndClose(handle)
			end
		end
	end

	local id = GUI:WndGetIDM(_Handle)
	UI:Lua_Log("pageBtn_LC id = "..id)
	if id == "pageBtn1" then
		UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyMainWnd.lua")
	elseif id == "pageBtn2" then
		UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyMemberWnd.lua")
	elseif id == "pageBtn3" then
		UI:Lua_OpenWindow(FamilyWnd._wnd, "FamilyActivityWnd.lua")
	end
end

function FamilyWnd.Close()
	GUI:WndDelAllTimer(FamilyMainWnd.hStartBuffBtn)
	if nil ~= FamilyWnd then
		if WndGetVisible(FamilyWnd._wnd) then
			--窗口如果还在 则关闭
			CL:OnFamilyWindow()
			if not GUI:WndGetVisible(GameMainBar.WndHandle) then
				GUI:WndSetVisible(GameMainBar.WndHandle, true)
			end
		end
	end
end



FamilyWnd.main()