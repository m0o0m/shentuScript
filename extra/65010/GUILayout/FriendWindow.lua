FriendWindow = {}
function FriendWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _GUIHandle = GUI:ImageCreate(_Parent,"backImg",1807600001,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"backImg2",1807600002,28,40)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,335, 446)
	end
	
    _GUIHandle = GUI:ImageCreate(_Parent,"wndTitleImage",1807600000,175,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,65, 27)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"afEditBack",1801600009,60,445)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,150, 24)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1805900080,334,7)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FriendWindow.Close")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 38)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"addFriendEdit",77,447,130,20)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FriendWindow.addEditLc")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"输入玩家名字添加好友")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"addFriendBtn",1805600146,220,442)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FriendWindow.addFriendBtnLC")
        GUI:WndSetTextM(_GUIHandle,"    添加好友")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
        friendBtn_Parent = GUI:WndCreateWnd(_Parent,"friendBtn",1807600003,30,48)
    if friendBtn_Parent ~= 0 then
        GUI:WndSetSizeM(friendBtn_Parent,383, 28)
    end
    
    
    _GUIHandle = GUI:ImageCreate(friendBtn_Parent,"arrowImg",1800000148,4,2)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(friendBtn_Parent,"titleEdit",40,4,150,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    
    
    recentBtn_Parent = GUI:WndCreateWnd(_Parent,"recentBtn",1807600003,30,77)
    if recentBtn_Parent ~= 0 then
        GUI:WndSetSizeM(recentBtn_Parent,383, 28)
    end
    
    
    _GUIHandle = GUI:ImageCreate(recentBtn_Parent,"arrowImg",1800000148,4,2)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(recentBtn_Parent,"titleEdit",40,4,150,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    
    
    enemyBtn_Parent = GUI:WndCreateWnd(_Parent,"enemyBtn",1807600003,30,106)
    if enemyBtn_Parent ~= 0 then
        GUI:WndSetSizeM(enemyBtn_Parent,383, 28)
    end
    
    
    _GUIHandle = GUI:ImageCreate(enemyBtn_Parent,"arrowImg",1800000148,4,2)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(enemyBtn_Parent,"titleEdit",40,4,150,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    
    

    FriendWindow.UIInit(_Parent)
end

--UI Logic Code Start
if not FriendWindow.localString then FriendWindow.localString = {} end
local l = FriendWindow.localString
l.addFriendBtn = "添加好友"
l.addFriendEditTip = "输入玩家名字添加好友"
l.titleBar = {"我的好友", "最近", "我的仇人"}
l.look = "查看装备"
l.party = "组队"
l.whisper = "私聊"
l.copyName = "复制名称"
l.delFriend = "删除好友"
l.addFriend = "添加好友"
l.addEnemy = "屏蔽此人"
l.delEnemy = "删除仇人"

FriendWindow.titleBar = {"friendBtn", "recentBtn", "enemyBtn"}
FriendWindow.titleBarHandle = {0, 0, 0}
FriendWindow.titleBarTweenY = {}
FriendWindow.list = {}
FriendWindow.onlineCount = {0, 0, 0}
FriendWindow.nowType = 0
FriendWindow.selPlayerIndex = 0
FriendWindow._menu_  = {}

function FriendWindow.UIInit(_Handle)
	FriendWindow._wnd = _Handle
	GUI:WndSetSizeM(FriendWindow._wnd, 389, 504)
	GUI:WndSetIsESCClose(FriendWindow._wnd, true)
	GUI:WndSetMoveWithLBM(FriendWindow._wnd)
	GUI:WndSetMagicUI(FriendWindow._wnd,1)
	CenterWnd(FriendWindow._wnd)

	GUI:WndRegistScript(FriendWindow._wnd, RDWndBaseCL_wnd_close , "FriendWindow.wndClose")
	RegisterUIEvent(LUA_EVENT_ONADDFRIEND, "FriendWindow_添加好友", FriendWindow.onAddFriend)
	RegisterUIEvent(LUA_EVENT_ONDELFRIEND, "FriendWindow_删除好友", FriendWindow.onDelFriend)
	RegisterUIEvent(LUA_EVENT_ONCHANGEFRIEND, "FriendWindow_好友改变", FriendWindow.onChangeFriend)
	
	local _GUIHandle = 0
	_GUIHandle = GUI:ListBoxCreate(_Handle, "listWnd", 10, 0, 326, 295)
	if _GUIHandle ~= 0 then 
		FriendWindow._listWnd = _GUIHandle
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWnd2DListBoxCL_select_change, "FriendWindow.listWndLc")
		--GUI:WndRegistScript(_GUIHandle, RDWnd2DListBoxCL_select_change, "FriendWindow.listWndChange")
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FriendWindow.listWndLc")
	end
	
	local menuList = {
		{l.look, l.party, l.whisper, l.copyName, l.delFriend, l.addEnemy},
		{l.addFriend, l.look, l.whisper, l.copyName, l.addEnemy},
		{l.look, l.whisper, l.copyName, l.delEnemy, l.addFriend}
	}
	local _menu = 0
	for i = 1, 3 do
		_menu = GUI:WndCreateWnd(FriendWindow._wnd, "menu" .. i, 0, 0, 0)
		if _menu ~= 0 then
			FriendWindow._menu_[i] = _menu
			GUI:WndSetVisible(_menu, false)
		end
		local _GUIHandle = 0 
		_GUIHandle = GUI:ImageCreate(_menu, "backImg", 0, 0, 0)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetSizeM(_GUIHandle, 65, #menuList[i]*23)
			GUI:ImageSetAroundImage(_GUIHandle, 1800000265, 1800000266, 1800000267, 1800000268, 1800000273, 1800000269, 1800000270, 1800000271, 1800000272)
		end
		for j = 1, #menuList[i] do
			_GUIHandle = GUI:ButtonCreate(_menu, "btn"..j, 1800000285, 0, (j-1)*23)
			if _GUIHandle ~= 0 then
				GUI:WndSetSizeM(_GUIHandle, 67, 23)
				GUI:WndSetTextColorM(_GUIHandle, CL:MakeARGB(255, 194, 182, 160))
				GUI:WndSetTextM(_GUIHandle, menuList[i][j])
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FriendWindow.menuBtnLc")
			end
		end
	end
	
	
	local bar = 0 
	for i = 1, #FriendWindow.titleBar do
		bar = GUI:WndFindChildM(_Handle, FriendWindow.titleBar[i])
		if bar ~= 0 then
			FriendWindow.titleBarHandle[i] = bar
			GUI:WndRegistScript(bar, RDWndBaseCL_mouse_lbClick, "FriendWindow.titleBarClick")
			
			_GUIHandle = GUI:WndFindChildM(bar, "arrowImg")
			if _GUIHandle ~= 0 then GUI:WndSetEnableM(_GUIHandle, false) end
			_GUIHandle = GUI:WndFindChildM(bar, "titleEdit")
			if _GUIHandle ~= 0 then 
				GUI:WndSetEnableM(_GUIHandle, false)
			end
		end
	end
	
	local _GUIHandle, totalCount = 0, 0
	for i = 1, #FriendWindow.titleBar do
		CL:GetFriendList(i-1) 
		FriendWindow.list[i] = LuaRet
		for j = 1, #FriendWindow.list[i] do
			FriendWindow.list[i][j] = FriendWindow.list[i][j]
		end
	end
	
	--默认打开好友
	FriendWindow.titleBarClick(FriendWindow.titleBarHandle[1])
end

function FriendWindow.setTitleBarText()
	local _GUIHandle = 0
	for i = 1, #FriendWindow.titleBar do
		_GUIHandle = GUI:WndFindChildM(FriendWindow.titleBarHandle[i], "titleEdit")
		if _GUIHandle ~= 0 then
			local onlineCount, totalCount = 0, 0
			totalCount = #FriendWindow.list[i]
			for j = 1, totalCount do
				if FriendWindow.list[i][j][2] == 1 then
					onlineCount = onlineCount + 1
				end
			end
			GUI:EditSetTextM(_GUIHandle, l.titleBar[i].." [ "..onlineCount.." / "..totalCount.." ]")
		end
	end
end

function FriendWindow.titleBarClick(_Handle)
	GUI:WndSetVisible(FriendWindow._listWnd, false)
	local _GUIHandle, openIndex = 0, 0
	FriendWindow.titleBarTweenY = {0, 0, 0}
	if FriendWindow._selBar == _Handle then
		GUI:WndSetImageID(_Handle, 1807600003)
		_GUIHandle = GUI:WndFindChildM(_Handle, "arrowImg")
		if _GUIHandle ~= 0 then
			GUI:WndSetImageID(_GUIHandle, 1800000148)
		end
		
		for i = 1, #FriendWindow.titleBar do
			if FriendWindow.titleBarHandle[i] == _Handle then
				for j = i+1, #FriendWindow.titleBar do
					FriendWindow.titleBarTweenY[j] = -292
				end
			end
		end
		FriendWindow._selBar = 0
		FriendWindow.nowType = 0
	else
		GUI:WndSetImageID(_Handle, 1807600011)
		_GUIHandle = GUI:WndFindChildM(_Handle, "arrowImg")
		if _GUIHandle ~= 0 then
			GUI:WndSetImageID(_GUIHandle, 1800000149)
		end
		if FriendWindow._selBar ~= 0 and FriendWindow._selBar ~= nil then
			GUI:WndSetImageID(FriendWindow._selBar, 1807600003)
			_GUIHandle = GUI:WndFindChildM(FriendWindow._selBar, "arrowImg")
			if _GUIHandle ~= 0 then
				GUI:WndSetImageID(_GUIHandle, 1800000148)
			end
		end
		
		for i = 1, #FriendWindow.titleBar do
			if FriendWindow.titleBarHandle[i] == _Handle then
				for j = i+1, #FriendWindow.titleBar do
					FriendWindow.titleBarTweenY[j] = FriendWindow.titleBarTweenY[j]+292
				end
				FriendWindow.nowType = i
				FriendWindow.fillListWnd()
			end
			
			if FriendWindow.titleBarHandle[i] == FriendWindow._selBar then
				for j = i+1, #FriendWindow.titleBar do
					FriendWindow.titleBarTweenY[j] = FriendWindow.titleBarTweenY[j]-292
				end
			end
		end
		FriendWindow._selBar = _Handle
	end
	local tweenFlag = 0
	for i = 1, #FriendWindow.titleBarTweenY do
		local tweenFun = ""
		if FriendWindow.titleBarTweenY[i] ~= 0 then
			local t = 0
			if FriendWindow.titleBarTweenY[i] > 0 then
				t = 48+(i-1)*29+FriendWindow.titleBarTweenY[i]
			else
				t = 48+(i-1)*29
			end
			
			if FriendWindow.nowType ~= 0 and tweenFlag == 0 then
				GUI:WndSetVisible(FriendWindow._listWnd, true)
				tweenFlag = 1
			end
			if GUI:WndGetPosM(FriendWindow.titleBarHandle[i]) then
				GUI:WndSetPosM(FriendWindow.titleBarHandle[i], LuaRet[1], t)
			end
		end
	end
	if tweenFlag == 0 and FriendWindow.nowType ~= 0 then
		GUI:WndSetVisible(FriendWindow._listWnd, true)
	end
end

function FriendWindow.fillListWnd()
	FriendWindow.setTitleBarText()
	local listType = 0 
	if FriendWindow.nowType == 0 then 
		return
	else
		listType = FriendWindow.nowType
	end
	table.sort(FriendWindow.list[listType], FriendWindow.sortFun)
	local list = FriendWindow.list[listType]
	GUI:ListBoxClear(FriendWindow._listWnd )
	GUI:WndSetPosM(FriendWindow._listWnd , 33, 82+(listType-1)*29)
	if #list > 0 then
		local color = {CL:MakeARGB(255, 192, 192, 192), CL:MakeARGB(255, 230, 210, 132)}
		local img = {1801600004, 1801600005}
		local str = 0
		local index = 0
		for i = 1, #list do
			str = list[i][1]
			str = "      "..str
			if list[i][2] == nil then	--最近交流的玩家只能获取玩家名字
				index = 2
			else
				index = list[i][2] + 1
			end
			GUI:ListBoxAddString(FriendWindow._listWnd , str, color[index])
			--GUI:ListBoxAddImage(FriendWindow._listWnd , i-1, img[index])
		end
		if GUI:WndGetSizeM(FriendWindow._listWnd) then
			GUI:WndSetSizeM(FriendWindow._listWnd, LuaRet[1], #list * 20)
			GUI:WndSetEnableM(FriendWindow._listWnd, true)
		end
	else
		GUI:WndSetEnableM(FriendWindow._listWnd, false)
	end	
end
function FriendWindow.sortFun(a, b)
	if a[2] == b[2] then
		return a[3] > b[3]
	else
		return a[2] > b[2]
	end
end

function FriendWindow.listWndChange(h, index)
	FriendWindow.selPlayerIndex = index+1
end

function FriendWindow.listWndLc(h, index)
	FriendWindow.selPlayerIndex = index+1
	if FriendWindow.selPlayerIndex <=0 then return end
	GUI:GetWndMousePos(FriendWindow._wnd)
	local _menu = FriendWindow._menu_[FriendWindow.nowType]
	GUI:WndSetPopupMenu(_menu)
	GUI:WndSetPosM(_menu, LuaRet[1], LuaRet[2])
	GUI:WndSetVisible(_menu, true)
end

function FriendWindow.menuBtnLc(_Handle)
	local text = GUI:WndGetText(_Handle)
	local name = FriendWindow.list[FriendWindow.nowType][FriendWindow.selPlayerIndex][1]
	if text == l.look then
		CL:LogicLookInfo(name)
	elseif text == l.party then 
		CL:LogicTeamInvite(name)
	elseif text == l.whisper then 
		CL:LogicSendPrivateTalk(name)
	elseif text == l.copyName then 
		CL:CopyTextToClipBoard(name)
	elseif text == l.delFriend then 
		CL:LogicDelFriend(name)
	elseif text == l.addFriend then 
		CL:LogicAddFriend(name)
	elseif text == l.addEnemy then 
		CL:LogicAddToBlackList(name)
	elseif text == l.delEnemy then 
		CL:LogicDelFriend(name)
	end
	
	GUI:WndSetVisible(FriendWindow._menu_[FriendWindow.nowType], false)
end

function FriendWindow.addFriendBtnLC()
	local _GUIHandle = GUI:WndFindChildM(FriendWindow._wnd, "addFriendEdit")
	if _GUIHandle ~= 0 then
		local name = GUI:EditGetTextM(_GUIHandle)
		if CL:LogicAddFriend(name) then
			UI:Lua_ShowTypeMsg(4, "添加好友["..name.."]成功")
		end
	end
end

function FriendWindow.addEditLc(_Handle)
	if GUI:EditGetTextM(_Handle) == l.addFriendEditTip then
		GUI:EditSetTextM(_Handle, "")
	end
end

function FriendWindow.onAddFriend()
	local addList = 0
	if LuaParam[3] >= 0 then
		addList = 1
		UI:Lua_SubmitForm("好友成就触发","add_friend", "")
	else
		addList = 3
	end
	
	for i = 1, #FriendWindow.list do
		for j = 1, #FriendWindow.list[i] do
			if FriendWindow.list[i][j][1] == LuaParam[1] then
				table.remove(FriendWindow.list[i], j)
				break
			end
		end
	end
	if LuaParam[3] >= 0 then
		table.insert(FriendWindow.list[1], {LuaParam[1], LuaParam[2], LuaParam[3]})
	else
		table.insert(FriendWindow.list[3], {LuaParam[1], LuaParam[2], LuaParam[3]})
	end

	FriendWindow.fillListWnd()
end

function FriendWindow.onDelFriend()
	for i = 1, #FriendWindow.list do
		for j = 1, #FriendWindow.list[i] do
			if FriendWindow.list[i][j][1] == LuaParam[1] then
				table.remove(FriendWindow.list[i], j)
				break
			end
		end
	end
	--[[if LuaParam[3] >= 0 then
		table.insert(FriendWindow.list[1], {LuaParam[1], LuaParam[2], LuaParam[3]})
	else
		table.insert(FriendWindow.list[3], {LuaParam[1], LuaParam[2], LuaParam[3]})
	end--]]
	FriendWindow.fillListWnd()
end

function FriendWindow.onChangeFriend()
	for i = 1, #FriendWindow.list do
		for j = 1, #FriendWindow.list[i] do
			if FriendWindow.list[i][j][1] == LuaParam[1] then
				table.remove(FriendWindow.list[i], j)
				break
			end
		end
	end
	if LuaParam[3] >= 0 then
		table.insert(FriendWindow.list[1], {LuaParam[1], LuaParam[2], LuaParam[3]})
	else
		table.insert(FriendWindow.list[3], {LuaParam[1], LuaParam[2], LuaParam[3]})
	end
	
	FriendWindow.fillListWnd()
end

function FriendWindow.wndClose()
	UnRegisterUIEvent(LUA_EVENT_ONADDFRIEND, "FriendWindow_添加好友")
	UnRegisterUIEvent(LUA_EVENT_ONDELFRIEND, "FriendWindow_删除好友")
	UnRegisterUIEvent(LUA_EVENT_ONCHANGEFRIEND, "FriendWindow_好友改变")
end

function FriendWindow.Close(_Handle,_Param)
	GUI:WndClose(FriendWindow._wnd)
end

FriendWindow.main()
