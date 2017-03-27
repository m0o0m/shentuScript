FriendWindow = {}
function FriendWindow.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

    --[[_Parent = GUI:WndCreateWnd(_Parent,"FriendWindow",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
--]]

--大背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
	end

	--第二层背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",0,17,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX - 34, _DeviceSizeY - 80)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300025, 1850300027, 1850300031, 1850300033, 1850300029, 1850300026, 1850300032, 1850300028, 1850300030)
	end


	--左边背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,32,80)
	if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,378, 367)
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
	end

	--右边背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,426,80)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,676, 434)
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
	end

	--右边中间背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage3",0,438,128)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,650, 320)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FriendWindow.closeWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end	
	

	_GUIHandle = GUI:ButtonCreate(_Parent,"MoreOptions",1850000307,852, 452)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"更多操作")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FriendWindow.MoreOptions")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"NameText",635,96,50,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"名称")
	end

	--[[_GUIHandle = GUI:EditCreate(_Parent,"LvText",698,96,50,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"等级")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"JobText",815,96,50,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"职业")
	end--]]

	_GUIHandle = GUI:EditCreate(_Parent,"StatusText",880,96,50,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"状态")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"AddBtn",1850000307,154,456)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle, "添加好友")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FriendWindow.addFriendBtnLC")
	end

	--_GUIHandle = GUI:ListBoxCreate(_Parent, "FriendLB", 448, 140, 630, 298)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"FriendBtn",1850600012,52,101)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"我的好友")
		GUI:WndSetParam(_GUIHandle, 1)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"RecentContactBtn",1850600012,52,177)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle, "最近")
		GUI:WndSetParam(_GUIHandle, 2)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"BlackListBtn",1850600012,52,254)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle, "仇人")
		GUI:WndSetParam(_GUIHandle, 3)
	end  

	FriendWindow.UIInit(_Parent)
end


--UI Logic Code Start
FriendWindow.list = {}
FriendWindow.titleBar = {"FriendBtn", "RecentContactBtn", "BlackListBtn"}
FriendWindow.titleBarHandle = {0, 0, 0}
FriendWindow.nowType = 1
FriendWindow.selPlayerIndex = 0

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
FriendWindow._menu_  = {}

function FriendWindow.UIInit(_Handle)
	FriendWindow.WndHandle = _Handle
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	RegisterUIEvent(LUA_EVENT_ONADDFRIEND, "FriendWindow_添加好友", FriendWindow.onAddFriend)
	RegisterUIEvent(LUA_EVENT_ONDELFRIEND, "FriendWindow_删除好友", FriendWindow.onDelFriend)
	RegisterUIEvent(LUA_EVENT_ONCHANGEFRIEND, "FriendWindow_好友改变", FriendWindow.onChangeFriend)
	
	local _ClipWndHandle = GUI:WndCreateWnd(_Handle,"FriendWindowClipWnd",0,438,140)
	if _ClipWndHandle then
		GUI:WndSetFlagsM(_ClipWndHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(_ClipWndHandle,630, 300)
		FriendWindow.ClipWndHandle = _ClipWndHandle
	end
	
	local bar = 0 
	for i = 1, #FriendWindow.titleBar do
		bar = GUI:WndFindChildM(_Handle, FriendWindow.titleBar[i])
		if bar ~= 0 then
			FriendWindow.titleBarHandle[i] = bar
			GUI:WndRegistScript(bar, RDWndBaseCL_mouse_lbClick, "FriendWindow.titleBarClick")
		end
	end
	
	--添加好友面板
	local _AddDlgParent = GUI:WndCreateWnd(FriendWindow.WndHandle,"FriendAddDlg",0,_DeviceSizeX / 2 - 253 ,100)
	if _AddDlgParent ~= 0 then
		GUI:WndSetSizeM(_AddDlgParent,16, 16)
		GUI:WndSetVisible(_AddDlgParent, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_AddDlgParent,"GUI_2",1850600016,0,0)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ButtonCreate(_AddDlgParent,"Close",1850000423,452,0)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FriendWindow.AddDlgCancel")
	end
	
	_GUIHandle = GUI:ImageCreate(_AddDlgParent,"ImgBg",0,40,70)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,430, 140)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
	end
	
	_GUIHandle = GUI:ImageCreate(_AddDlgParent,"EditBg",1830900036,95,125)
	if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
		GUI:WndSetSizeM(_GUIHandle,320, 46)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056, 1850600053, 1850600059, 1850600055, 1850600057)
	end
	
	_GUIHandle = GUI:EditCreate(_AddDlgParent,"Tip",120,90, 300,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"下面输入玩家名称(最多六个字)")
	end
	
	_GUIHandle = GUI:EditCreate(_AddDlgParent,"PlayerName",100,134,200,20)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:EditCreate(_AddDlgParent,"Title",253,32,0,0)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"添加好友")
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	_GUIHandle = GUI:ButtonCreate(_AddDlgParent,"OK",1850000307,80,222)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"确定添加")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FriendWindow.AddDlgOK")
	end
	
	_GUIHandle = GUI:ButtonCreate(_AddDlgParent,"Cancel",1850000307,300,222)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"取消添加")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FriendWindow.AddDlgCancel")
	end
	
	
	--更多操作的面板 
	
	local menuList = {
		{l.look, l.party, l.whisper, l.copyName, l.delFriend, l.addEnemy},
		{l.addFriend, l.look, l.whisper, l.copyName, l.addEnemy},
		{l.look, l.whisper, l.copyName, l.delEnemy, l.addFriend}
	}
	
	
	local _menu = 0
	for i = 1, 3 do
		_menu = GUI:WndCreateWnd(FriendWindow.WndHandle, "menu" .. i, 0, _DeviceSizeX/2 - 100, _DeviceSizeY/2 - 210)
		if _menu ~= 0 then
			GUI:WndSetFlagsM(_menu, flg_wndBase_useBkBuffer)
			GUI:WndSetSizeM(_menu,219, 437)
			FriendWindow._menu_[i] = _menu
			GUI:WndSetVisible(_menu, false)
		end
		local _GUIHandle = 0 
	
		_GUIHandle = GUI:ImageCreate(_menu,"BgImg",1850000311,0,0)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,219, 437)
		end 
	
		for j = 1, #menuList[i] do
			_GUIHandle = GUI:ButtonCreate(_menu, "btn"..j, 1850000307, 56, (j-1)*64 + 36)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle, menuList[i][j])
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FriendWindow.menuBtnLc")
			end
		end
	
		_GUIHandle = GUI:ButtonCreate(_menu,"Close",1850000385,178,5)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FriendWindow.CloseOp")
		end
	
	end    
	
	--默认打开好友
	FriendWindow.titleBarClick(FriendWindow.titleBarHandle[1])
end

function FriendWindow.AddDlgOK(_handle)
	local _ParentHandle = GUI:WndGetParentM(_handle)
	if _ParentHandle ~= nil then 
		local _GUIHandle = GUI:WndFindChildM(_ParentHandle, "PlayerName")
		if _GUIHandle ~= 0 then
			local name = GUI:EditGetTextM(_GUIHandle)
			if CL:LogicAddFriend(name) then
				UI:Lua_ShowTypeMsg(4, "添加好友["..name.."]成功")
				UI:Lua_Log("添加好友["..name.."]成功")
			end
			GUI:EditSetTextM(_GUIHandle,"")
		end
		GUI:WndSetVisible(_ParentHandle, false)
	end 
end

function FriendWindow.AddDlgCancel(_handle)
	local _ParentHandle = GUI:WndGetParentM(_handle)
		if _ParentHandle ~= nil then 
		local _GUIHandle = GUI:WndFindChildM(_ParentHandle, "PlayerName")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle,"")
		end
		GUI:WndSetVisible(_ParentHandle, false)
	end
end

function FriendWindow.addFriendBtnLC()
	local _GUIHandle = GUI:WndFindWindow(FriendWindow.WndHandle, "FriendAddDlg")
	if _GUIHandle ~= 0 then
		local _IsVisible = GUI:WndGetVisible(_GUIHandle)
		if _IsVisible == true then
			GUI:WndSetVisible(_GUIHandle, false)
		else
			GUI:WndSetVisible(_GUIHandle, true)
		end
	end
end

function FriendWindow.onAddFriend()
	if LuaParam[3] >= 0 then
		UI:Lua_SubmitForm("好友成就触发","add_friend", "")
	end
	--更新
	FriendWindow.titleBarClick(FriendWindow.titleBarHandle[FriendWindow.nowType])
end

function FriendWindow.onDelFriend()
	--更新
	FriendWindow.titleBarClick(FriendWindow.titleBarHandle[FriendWindow.nowType])
end

function FriendWindow.onChangeFriend()
	--更新
	FriendWindow.titleBarClick(FriendWindow.titleBarHandle[FriendWindow.nowType])
end

function FriendWindow.menuBtnLc(_Handle)
	local text = GUI:WndGetText(_Handle)
	UI:Lua_Log("FriendWindow.nowType = "..FriendWindow.nowType.."   FriendWindow.selPlayerIndex  = "..FriendWindow.selPlayerIndex)
	local name = FriendWindow.list[FriendWindow.nowType][FriendWindow.selPlayerIndex][1]
	UI:Lua_Log("FriendWindow.menuBtnLc选中的名字是"..name)
	if text == l.look then
		CL:LogicLookInfo(name)
	elseif text == l.party then 
		CL:LogicTeamInvite(name)
	elseif text == l.whisper then 
		CL:LogicSendPrivateTalk(name)
		FriendWindow.closeWnd()
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

function FriendWindow.titleBarClick(_Handle)
	--[[for i = 1, 3 do
		CL:GetFriendList(i - 1)
		FriendWindow.list[i] = LuaRet
		UI:Lua_Log("FriendWindow.list["..i.."] 大小 = "..#FriendWindow.list[i])
		for j = 1, #FriendWindow.list[i] do
			FriendWindow.list[i][j] = FriendWindow.list[i][j]
		end
	end--]]
	
	local idx = GUI:WndGetParam(_Handle)
	UI:Lua_Log("idx = "..idx)
	CL:GetFriendList(tonumber(idx) - 1)
	FriendWindow.list[idx] = LuaRet
	UI:Lua_Log("FriendWindow.list["..idx.."] 大小 = "..#FriendWindow.list[idx])
	FriendWindow.nowType = idx
	if FriendWindow.ClipWndHandle ~= nil then
		GUI:WndDlgClear(FriendWindow.ClipWndHandle)
	end
	local _Parent = FriendWindow.ClipWndHandle

	local i = idx
	local list = FriendWindow.list[i]
	local str = ""
	if #list > 0 then
		for i = 1, #list do
			local intervalY = 40
			local indexStr = tostring(i - 1)
			local diffX = -45
			local diffY = -88
			str = list[i][1]
			UI:Lua_Log("玩家名 = "..str)
			local str2 = list[i][2]
			UI:Lua_Log("是否在线 = "..str2)
			local str3 = list[i][3]
			UI:Lua_Log("list["..i.."][3] = "..str3)


			if FriendWindow.ClipWndHandle ~= nil then
				_GUIHandle = GUI:WndCreateWnd(FriendWindow.ClipWndHandle,"Bg"..i,0, 20, 4 + intervalY * (i-1))
				if _GUIHandle ~= 0 then
					GUI:WndSetSizeM(_GUIHandle,610, 30)
					GUI:WndSetVisible(_GUIHandle, true) 
					GUI:WndSetParam(_GUIHandle,i)
					GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FriendWindow.listWndChange")
		
				end
				_GUIHandle = GUI:ImageCreate(FriendWindow.ClipWndHandle,"HighLightImg"..i,1850600096, 20, 4 + intervalY * (i-1))
				if _GUIHandle ~= 0 then
					GUI:WndSetSizeM(_GUIHandle,610, 30)
					GUI:WndSetVisible(_GUIHandle, false) 
					GUI:ImageSetFitSize(_GUIHandle, true) 
					--GUI:WndSetParam(_GUIHandle,i)
					--GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "FriendWindow.listWndChange")
				end

				_GUIHandle = GUI:EditCreate(FriendWindow.ClipWndHandle,"NameEdit"..i,170,0 + intervalY * (i-1),100,40)
				if _GUIHandle ~= 0 then
					GUI:EditSetTextM(_GUIHandle,str)
					GUI:EditSetFontCenter(_GUIHandle)
					GUI:WndSetEnableM(_GUIHandle, false)
				end

				--[[_GUIHandle = GUI:EditCreate(FriendWindow.ClipWndHandle,"LvEdit"..i,228,0 + intervalY * (i-1),100,40)
				if _GUIHandle ~= 0 then
					GUI:EditSetTextM(_GUIHandle,"88")
					GUI:EditSetFontCenter(_GUIHandle)
					GUI:WndSetEnableM(_GUIHandle, false)
				end

				_GUIHandle = GUI:EditCreate(FriendWindow.ClipWndHandle,"JobEdit"..i,348,0 + intervalY * (i-1),100,40)
				if _GUIHandle ~= 0 then
					GUI:EditSetTextM(_GUIHandle,"战士")
					GUI:EditSetFontCenter(_GUIHandle)
					GUI:WndSetEnableM(_GUIHandle, false)
				end--]]

				_GUIHandle = GUI:EditCreate(FriendWindow.ClipWndHandle,"StatusEdit"..i,410,0 + intervalY * (i-1),100,40)
				if _GUIHandle ~= 0 then
					if 1 == list[i][2] then
						GUI:EditSetTextM(_GUIHandle,"在线")
					else
						GUI:EditSetTextM(_GUIHandle,"离线")
					end
					GUI:EditSetFontCenter(_GUIHandle)
					GUI:WndSetEnableM(_GUIHandle, false)
				end
			end
		end
	end
end

function FriendWindow.listWndChange(_handle)
	--msg("listWndChange")
	local _GUIHandle = 0
	if 0 ~= FriendWindow.selPlayerIndex then
		_GUIHandle = GUI:WndFindWindow(FriendWindow.ClipWndHandle, "HighLightImg"..FriendWindow.selPlayerIndex)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end
	local index = GUI:WndGetParam(_handle)
	FriendWindow.selPlayerIndex = index
	_GUIHandle = GUI:WndFindWindow(FriendWindow.ClipWndHandle, "HighLightImg"..FriendWindow.selPlayerIndex)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, true)
	end

end

function FriendWindow.MoreOptions(_handle)
    for i = 1, 3 do
        local _menu = FriendWindow._menu_[i]
        if _menu ~= nil then
            GUI:WndSetVisible(_menu, false)
        end
    end
    _menu = FriendWindow._menu_[FriendWindow.nowType]
    if _menu ~= nil then
        GUI:WndSetVisible(_menu, true)
    end
end


function FriendWindow.closeWnd(_handle)
    GUI:WndClose(FriendWindow.WndHandle)
end

function FriendWindow.CloseOp(_handle)
    local _ParentHandle = GUI:WndGetParentM(_handle)
    if _ParentHandle ~= nil then 
        GUI:WndSetVisible(_ParentHandle, false)
    end
end


FriendWindow.main()