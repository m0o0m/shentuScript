FriendWindow = {}

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

function FriendWindow.main()
	local ui = "<form>"..
		"<dialog OnInit=FriendWindow.UIInit id='FriendWindow' image='1807600001' x='-112' y='-176' w='423' h='553' center='true' magic='1' OnClose='FriendWindow.wndClose' esc_close='true' drag='true' revmsg='true'>"..
		" <image id='mainBack' image='1807600002' x='28' y='40' w='335' h='446' revmsg='true' enable='false'/>"..
			"<image id='wndTitleImage' image='1807600000' x='175' y='0' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='afEditBack' image='1801600009' x='90' y='495' w='16' h='16' revmsg='true' enable='false'/>"..
				"<button id='closeBtn' image='1805900080' x='390' y='3' w='4095' h='4095' OnLButtonClick='luaWndClose' revmsg='true' />"..
			"<edit id='addFriendEdit' image='0' x='105' y='496' w='130' h='20' OnLButtonClick='FriendWindow.addEditLc' canedit='true' limit='15' revmsg='true' text='输入玩家名字添加好友' />"..
			"<button id='addFriendBtn' image='1805600146' x='265' y='491' w='84' h='32' OnLButtonClick='FriendWindow.addFriendBtnLC' revmsg='true' text='添加好友' text_color='#E6D284'/>"..
			 "<wnd id='friendBtn' image='1801600002' x='20' y='48' w='16' h='16' OnLButtonClick='FriendWindow.titleBarClick' revmsg='true'>"..
				"<image id='arrowImg' image='1800000148' x='4' y='2' w='26' h='26' revmsg='true' enable='false'/>"..
				"<edit id='titleEdit' image='0' x='40' y='4' w='150' h='20' revmsg='true' enable='false' text_color='#E6D284' />"..
			 "</wnd>"..
			 "<wnd id='recentBtn' image='1807600011' x='20' y='77' w='16' h='16' OnLButtonClick='FriendWindow.titleBarClick' revmsg='true'>"..
				"<image id='arrowImg' image='1800000148' x='4' y='2' w='26' h='26' revmsg='true' enable='false'/>"..
				"<edit id='titleEdit' image='0' x='40' y='4' w='150' h='20' revmsg='true' enable='false' text_color='#E6D284' />"..
			 "</wnd>"..
			 "<wnd id='enemyBtn' image='1807600011' x='20' y='106' w='16' h='16' OnLButtonClick='FriendWindow.titleBarClick' revmsg='true'>"..
				"<image id='arrowImg' image='1800000148' x='4' y='2' w='26' h='26' revmsg='true' enable='false'/>"..
				"<edit id='titleEdit' image='0' x='40' y='4' w='150' h='20' revmsg='true' enable='false' text_color='#E6D284' />"..
			 "</wnd>"..
		 "</dialog>"..

	GenFormByString(ui)
end

function FriendWindow.UIInit(_Handle)
	FriendWindow._wnd = _Handle
	GUIWndSetSizeM(_Handle, 423, 553)
	RegisterUIEvent(LUA_EVENT_ONADDFRIEND, "FriendWindow_添加好友", FriendWindow.onAddFriend)
	RegisterUIEvent(LUA_EVENT_ONDELFRIEND, "FriendWindow_删除好友", FriendWindow.onDelFriend)
	RegisterUIEvent(LUA_EVENT_ONCHANGEFRIEND, "FriendWindow_好友改变", FriendWindow.onChangeFriend)
	
	local _GUIHandle = 0
	_GUIHandle = GUIListBoxCreate(_Handle, "listWnd", 0, 0, 385, 342)
	if _GUIHandle ~= 0 then 
		FriendWindow._listWnd = _GUIHandle
		GUIWndSetVisible(_GUIHandle, false)
		GUIWndRegistScript(_GUIHandle, RDWnd2DListBoxCL_select_change, "FriendWindow.listWndChange")
		GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FriendWindow.listWndLc")
	end
	
	local menuList = {
		{l.look, l.party, l.whisper, l.copyName, l.delFriend, l.addEnemy},
		{l.addFriend, l.look, l.whisper, l.copyName, l.addEnemy},
		{l.look, l.whisper, l.copyName, l.delEnemy, l.addFriend}
	}
	local _menu = 0
	for i = 1, 3 do
		_menu = GUIWndCreateWnd(FriendWindow._wnd, "menu" .. i, 0, 0, 0)
		if _menu ~= 0 then
			FriendWindow._menu_[i] = _menu
			GUIWndSetVisible(_menu, false)
			GUISetPopupMenu(_menu,_menu)
		end
		local _GUIHandle = 0 
		_GUIHandle = GUIImageCreate(_menu, "backImg", 0, 0, 0)
		if _GUIHandle ~= 0 then
			GUIWndSetEnableM(_GUIHandle, false)
			GUIWndSetSizeM(_GUIHandle, 65, #menuList[i]*23)
			GUIImageSetAroundImage(_GUIHandle, 1800000265, 1800000266, 1800000267, 1800000268, 1800000269, 1800000270, 1800000271, 1800000272, 1800000273)
		end
		for j = 1, #menuList[i] do
			_GUIHandle = GUIButtonCreate(_menu, "btn"..j, 1800000285, 11, (j-1)*23)
			if _GUIHandle ~= 0 then
				GUIWndSetSizeM(_GUIHandle, 67, 23)
				GUIWndSetTextColorM(_GUIHandle, webColor.normalText)
				GUIWndSetTextM(_GUIHandle, menuList[i][j])
				GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FriendWindow.menuBtnLc")
			end
		end
	end
	
	
	local bar = 0 
	for i = 1, #FriendWindow.titleBar do
		bar = GUIWndFindChildM(_Handle, FriendWindow.titleBar[i])
		if bar ~= 0 then
			FriendWindow.titleBarHandle[i] = bar
			GUIWndRegistScript(bar, RDWndBaseCL_mouse_lbClick, "FriendWindow.titleBarClick")
			
			_GUIHandle = GUIWndFindChildM(bar, "arrowImg")
			if _GUIHandle ~= 0 then GUIWndSetEnableM(_GUIHandle, false) end
			_GUIHandle = GUIWndFindChildM(bar, "titleEdit")
			if _GUIHandle ~= 0 then 
				GUIWndSetEnableM(_GUIHandle, false)
			end
		end
	end
	
	local _GUIHandle, totalCount = 0, 0
	for i = 1, #FriendWindow.titleBar do
		CLGetFriendList(i-1) 
		FriendWindow.list[i] = getTable(as3.tolua(LuaRet))
		for j = 1, #FriendWindow.list[i] do
			FriendWindow.list[i][j] = getTable(FriendWindow.list[i][j])
		end
	end
	
	--默认打开好友
	FriendWindow.titleBarClick(FriendWindow.titleBarHandle[1])
end

function FriendWindow.setTitleBarText()
	local _GUIHandle = 0
	for i = 1, #FriendWindow.titleBar do
		_GUIHandle = GUIWndFindChildM(FriendWindow.titleBarHandle[i], "titleEdit")
		if _GUIHandle ~= 0 then
			local onlineCount, totalCount = 0, 0
			totalCount = #FriendWindow.list[i]
			for j = 1, totalCount do
				if FriendWindow.list[i][j][2] == 1 then
					onlineCount = onlineCount + 1
				end
			end
			GUIEditSetTextM(_GUIHandle, l.titleBar[i].." [ "..onlineCount.." / "..totalCount.." ]")
		end
	end
end

function FriendWindow.titleBarClick(_Handle)
	GUIWndSetVisible(FriendWindow._listWnd, false)
	local _GUIHandle, tXml, openIndex = 0, 0
	FriendWindow.titleBarTweenY = {0, 0, 0}
	if FriendWindow._selBar == _Handle then
		GUIWndSetImageID(_Handle, 1801600002)
		_GUIHandle = GUIWndFindChildM(_Handle, "arrowImg")
		if _GUIHandle ~= 0 then
			GUIWndSetImageID(_GUIHandle, 1800000148)
		end
		
		for i = 1, #FriendWindow.titleBar do
			if FriendWindow.titleBarHandle[i] == _Handle then
				for j = i+1, #FriendWindow.titleBar do
					FriendWindow.titleBarTweenY[j] = -342
				end
			end
		end
		FriendWindow._selBar = 0
		FriendWindow.nowType = 0
	else
		GUIWndSetImageID(_Handle, 1801600003)
		_GUIHandle = GUIWndFindChildM(_Handle, "arrowImg")
		if _GUIHandle ~= 0 then
			GUIWndSetImageID(_GUIHandle, 1800000149)
		end
		if FriendWindow._selBar ~= 0 and FriendWindow._selBar ~= nil then
			GUIWndSetImageID(FriendWindow._selBar, 1801600002)
			_GUIHandle = GUIWndFindChildM(FriendWindow._selBar, "arrowImg")
			if _GUIHandle ~= 0 then
				GUIWndSetImageID(_GUIHandle, 1800000148)
			end
		end
		
		for i = 1, #FriendWindow.titleBar do
			if FriendWindow.titleBarHandle[i] == _Handle then
				for j = i+1, #FriendWindow.titleBar do
					FriendWindow.titleBarTweenY[j] = FriendWindow.titleBarTweenY[j]+342
				end
				FriendWindow.nowType = i
				FriendWindow.fillListWnd()
			end
			
			if FriendWindow.titleBarHandle[i] == FriendWindow._selBar then
				for j = i+1, #FriendWindow.titleBar do
					FriendWindow.titleBarTweenY[j] = FriendWindow.titleBarTweenY[j]-342
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
			tXml = "<Tween><Frame time='0.2' y='"..t.."' /></Tween>"
			
			if FriendWindow.nowType ~= 0 and tweenFlag == 0 then
				tweenFun = "GUIWndSetVisible(FriendWindow._listWnd, true)"
				tweenFlag = 1
			end
			GUIWndTween(FriendWindow.titleBarHandle[i], tXml, tweenFun)
		end
	end
	if tweenFlag == 0 and FriendWindow.nowType ~= 0 then
		GUIWndSetVisible(FriendWindow._listWnd, true)
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
	local l = FriendWindow.list[listType]
	GUIListBoxClear(FriendWindow._listWnd )
	GUIWndSetPosM(FriendWindow._listWnd , 20, 77+(listType-1)*29)
	if #l > 0 then
		local color = {webColor.grayText, webColor.goldenText}
		local img = {1801600004, 1801600005}
		local str = 0
		local index = 0
		for i = 1, #l do
			str = l[i][1]
			--for i=1, 7-math.ceil(CLGetFontStrWidth("system", l[i][1])/12) do
			--	str = str.."  "
			--end
			str = "      "..str--.."              "..l[i][3]
			index = l[i][2] + 1
			GUIListBoxAddString(FriendWindow._listWnd , str, color[index])
			GUIListBoxAddImage(FriendWindow._listWnd , i-1, img[index])
		end
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

function FriendWindow.listWndLc()
	GUIGetWndMousePos(FriendWindow._wnd)
	local _menu = FriendWindow._menu_[FriendWindow.nowType]
	GUIWndSetPosM(_menu, as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2]))
	GUIWndSetVisible(_menu, true)
end

function FriendWindow.menuBtnLc(_Handle)
	local text = GUIWndGetText(_Handle)
	local name = FriendWindow.list[FriendWindow.nowType][FriendWindow.selPlayerIndex][1]
	if text == l.look then
		CLLogicLookInfo(name)
	elseif text == l.party then 
		CLLogicTeamInvite(name)
	elseif text == l.whisper then 
		CLLogicSendPrivateTalk(name)
	elseif text == l.copyName then 
		CLCopyTextToClipBoard(name)
	elseif text == l.delFriend then 
		CLLogicDelFriend(name)
	elseif text == l.addFriend then 
		CLLogicAddFriend(name)
	elseif text == l.addEnemy then 
		CLLogicAddToBlackList(name)
	elseif text == l.delEnemy then 
		CLLogicDelFriend(name)
	end
	
	GUIWndSetVisible(FriendWindow._menu_[FriendWindow.nowType], false)
end

function FriendWindow.addFriendBtnLC()
	local _GUIHandle = GUIWndFindChildM(FriendWindow._wnd, "addFriendEdit")
	if _GUIHandle ~= 0 then
		local name = GUIEditGetTextM(_GUIHandle)
		CLLogicAddFriend(name) 
			--UI:Lua_ShowTypeMsg(4, "添加好友["..name.."]成功")
	end
end

function FriendWindow.addEditLc(_Handle)
	if GUIEditGetTextM(_Handle) == l.addFriendEditTip then
		GUIEditSetTextM(_Handle, "")
	end
end

function FriendWindow.onAddFriend()
	local addList = 0
	if as3.tolua(LuaParam[3]) >= 0 then
		addList = 1
		UI:Lua_SubmitForm("好友成就触发","add_friend", "")
	else
		addList = 3
	end
	
	for i = 1, #FriendWindow.list do
		for j = 1, #FriendWindow.list[i] do
			if FriendWindow.list[i][j][1] == as3.tolua(LuaParam[1]) then
				table.remove(FriendWindow.list[i], j)
				break
			end
		end
	end
	table.insert(FriendWindow.list[addList], {as3.tolua(LuaParam[1]), as3.tolua(LuaParam[2]), as3.tolua(LuaParam[3])})
	
	FriendWindow.fillListWnd()
end

function FriendWindow.onDelFriend()
	local listType = 0
	if as3.tolua(LuaParam[3]) >= 0 then
		listType = 1
		
	else
		listType = 3
	end
	for i = 1, #FriendWindow.list[listType] do
		if FriendWindow.list[listType][i][1] == as3.tolua(LuaParam[1]) then
			table.remove(FriendWindow.list[listType], i)
			break
		end
	end
	
	FriendWindow.fillListWnd()
end

function FriendWindow.onChangeFriend()
	local addList = 0
	if as3.tolua(LuaParam[3]) >= 0 then
		addList = 1
	else
		addList = 3
	end
	
	for i = 1, #FriendWindow.list do
		for j = 1, #FriendWindow.list[i] do
			if FriendWindow.list[i][j][1] == as3.tolua(LuaParam[1]) then
				table.remove(FriendWindow.list[i], j)
				break
			end
		end
	end
	table.insert(FriendWindow.list[addList], {as3.tolua(LuaParam[1]), as3.tolua(LuaParam[2]), as3.tolua(LuaParam[3])})
	
	FriendWindow.fillListWnd()
end

function FriendWindow.wndClose()
	local wnd = GUIWndFindWindow(0, "FriendWindow") 
	if wnd == 0 then
		UnRegisterUIEvent(LUA_EVENT_ONADDFRIEND, "FriendWindow_添加好友")
		UnRegisterUIEvent(LUA_EVENT_ONDELFRIEND, "FriendWindow_删除好友")
		UnRegisterUIEvent(LUA_EVENT_ONCHANGEFRIEND, "FriendWindow_好友改变")
		FriendWindow = nil
	end
end

FriendWindow.main()