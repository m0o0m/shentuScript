if not Menu then
	Menu = {}
	Menu.menuBtn = {}
	Menu._wnd = {}
	
	Menu.totalCount = 0
end

Menu.localString = {}
local l = Menu.localString
l.look = "查看装备"
l.party = "组队"
l.whisper = "私聊"
l.addFriend = "添加好友"
l.copyName = "复制名称"
l.kickFamilyMember = "踢出行会"
l.toleader = "转交会长"
l.uptitle = "提升职位"
l.downtitle = "降低职位"
l.delFriend = "删除好友"
l.addEnemy = "屏蔽此人"
l.delEnemy = "删除仇人"

function Menu.InitMenuList()
	Menu.menuBtn["RankWnd"] = {1800000285, {l.look, l.party, l.whisper, l.addFriend, l.addEnemy, l.copyName}}
	if FamilyWnd then
		if FamilyWnd.selfTitleID == 1 then
			Menu.menuBtn["FamilyWnd_Member"] = {1800000285, { l.look, l.party, l.whisper, l.addFriend, l.copyName,l.uptitle,l.downtitle,l.toleader,l.kickFamilyMember}}
		elseif FamilyWnd.selfTitleID == 2 then
			Menu.menuBtn["FamilyWnd_Member"] = {1800000285, {l.look, l.party, l.whisper, l.addFriend, l.copyName,l.kickFamilyMember}}
		else
			Menu.menuBtn["FamilyWnd_Member"] = {1800000285, {l.look, l.party, l.whisper, l.addFriend, l.copyName}}
		end
		Menu.menuBtn["FamilyWnd_ApplyList"] = {1800000285, {l.look, l.party, l.whisper, l.addFriend, l.copyName}}
	end
end

function Menu.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _menu, _GUIHandle = 0, 0
	_menu = GUI:WndCreateWnd(_Parent, "Menu", 0, 0, 0)
	if _menu ~= 0 then
		Menu.WndHandle = _menu
		GUI:WndSetPopupMenu(_menu)
		GUI:ImageSetFitSize(_menu, true)
		GUI:WndRegistScript(_menu, RDWndBaseCL_wnd_close, "Menu.wndClose")
	end

	Menu.UIInit(_menu, _Parent)
end

--UI Logic Code Start
function Menu.UIInit(_Handle, _Parent)
	Menu.totalCount = Menu.totalCount + 1
	
	Menu.InitMenuList()
	local btnSize_ = {[1800000281] = {32, 17}, [1800000285] = {67, 23}}
	local wndID = GUI:WndGetIDM(_Parent)
	GUI:WndSetIDM(_Handle, wndID.."_Menu")
	GUI:WndSetSizeM(_Handle, btnSize_[(Menu.menuBtn[wndID][1])][1]+4, btnSize_[(Menu.menuBtn[wndID][1])][2]*(#Menu.menuBtn[wndID][2])+4)
	
	local _GUIHandle = 0
	_GUIHandle = GUI:ImageCreate(_Handle, "backImg", 0, 0, 0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, btnSize_[(Menu.menuBtn[wndID][1])][1]+4, btnSize_[(Menu.menuBtn[wndID][1])][2]*(#Menu.menuBtn[wndID][2])+4)
		GUI:ImageSetAroundImage(_GUIHandle, 1800000265, 1800000266, 1800000267, 1800000268, 1800000273, 1800000269, 1800000270, 1800000271, 1800000272)
	end
	
	
	for i = 1, #Menu.menuBtn[wndID][2] do
		_GUIHandle = GUI:ButtonCreate(_Handle, "btn"..i, Menu.menuBtn[wndID][1], 2, (i-1)*23+2)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle, 67, 23)
			GUI:WndSetTextM(_GUIHandle, Menu.menuBtn[wndID][2][i])
			GUI:ButtonSetStateTextColor(_GUIHandle, 2, CL:MakeARGB(255, 37, 163, 92))
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "Menu.btn_LC")
		end
	end
	
	Menu._wnd[wndID] = _Handle
end

function Menu.btn_LC(_Handle)
	local _Parent = GUI:WndGetParentM(_Handle)
	_Parent = GUI:WndGetParentM(_Parent)
	local name,_GUIHandle = 0, 0
	local guid = 0
	local titleid = 0
	local wndID = GUI:WndGetIDM(_Parent)
	if wndID == "RankWnd" then
		_GUIHandle = GUI:WndFindChildM(RankWnd._wnd, "nameEdit"..RankWnd._selIndex)
		if _GUIHandle ~= 0 then
			name = GUI:EditGetTextM(_GUIHandle)
		end
	elseif wndID == "FamilyWnd_Member" then
		guid = FamilyWnd_Member.selGuid	--选中成员的GUID
		titleid = FamilyWnd_Member.titleid
		_GUIHandle = GUI:WndFindChildM(FamilyWnd_Member._wnd, "name"..FamilyWnd_Member.selBtnIndex)
		if _GUIHandle ~= 0 then
			name = GUI:EditGetTextM(_GUIHandle)
		end
	elseif wndID == "FamilyWnd_ApplyList" then
		_GUIHandle = GUI:WndFindChildM(FamilyWnd_ApplyList._wnd, "nameEdit"..FamilyWnd_ApplyList.selBtnIndex)
		if _GUIHandle ~= 0 then
			name = GUI:EditGetTextM(_GUIHandle)
		end
	end
	
	local text = GUI:WndGetText(_Handle)
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
	elseif text == l.kickFamilyMember then 
		CL:FamilyKick(guid)
		CL:GetFamilyAllMenberList(0, 50,"FamilyWnd_Member_行会成员", "FamilyWnd_Member.getMemberInfo")
	elseif text == l.toleader then
		local islegal = true
		if titleid == 1 then
			FamilyWnd_Member.msg_up("不能是自己")
		elseif titleid == 2 then
			UI:Lua_GUID2Str(guid)
			UI:Lua_SubmitForm("行会", "getMemberVip", LuaRet.."#1#"..name)
		else
			FamilyWnd_Member.msg_up("只有副会长才能成为会长")
		end
	elseif text == l.uptitle then 
		local islegal = true
		if titleid == 3 then
			titleid = 2
		elseif titleid == 2 then
			FamilyWnd_Member.msg_up("他已经是一人之下万人之上的副会长了")
			islegal = false
		elseif titleid == 1 then
			FamilyWnd_Member.msg_up("不能给自己升职")
			islegal = false
		else
			titleid = 3
		end
		if islegal then
			UI:Lua_GUID2Str(guid)
			UI:Lua_SubmitForm("行会", "getMemberVip", LuaRet.."#"..titleid.."#"..name)
		end
	elseif text == l.downtitle then 
		local islegal = true
		if titleid == 3 then
			titleid = 0
		elseif titleid == 2 then
			titleid = 3
		elseif titleid == 1 then
			FamilyWnd_Member.msg_up("不能给自己降职")
			islegal = false
		else
			FamilyWnd_Member.msg_up("已经是最低级职位了")
			islegal = false
		end
		if islegal then
			UI:Lua_GUID2Str(guid)
			UI:Lua_SubmitForm("行会", "getMemberVip", LuaRet.."#"..titleid.."#"..name)
		end
	end
	Menu.clickEnd()
end

function Menu.clickEnd()
    GUI:WndSetPosM(Menu.WndHandle, -200, -200)
    GUI:WndSetVisible(Menu.WndHandle, false)
end

function Menu.OnlineError(name)
	FamilyWnd_Member.msg_up("只有在线玩家才能任命职务")
end

function Menu.FamilyMemberVip(viplevel,titleid,guid)
	if viplevel >= 0 then
		UI:Lua_Str2GUID(guid)
		CL:FamilyEntitle(titleid,LuaRet)
		CL:FamilyInfoRequest(128,"FamilyWnd_行会基本信息", "FamilyWnd.getFamilyBasicInfo")
		CL:GetFamilyAllMenberList(0, 50,"FamilyWnd_Member_行会成员", "FamilyWnd_Member.getMemberInfo")
		Menu.InitMenuList()
	else
		FamilyWnd_Member.msg_up("只有VIP2才能担任行会职务")
	end
end

function Menu.wndClose()
	Menu.totalCount = Menu.totalCount - 1
	if Menu.totalCount <= 0 then
		Menu = nil
	end
end

Menu.main()