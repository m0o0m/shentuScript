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

function Menu.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _menu, _GUIHandle = 0, 0
	_menu = GUIWndCreateWnd(_Parent, "Menu", 0, 0, 0)
	if _menu ~= 0 then
		GUIWndSetVisible(_menu, false)
		GUISetPopupMenu(_menu,_menu)
		GUIImageSetFitSize(_menu, true)
		GUIWndRegistScript(_menu, RDWndBaseCL_wnd_close, "Menu.wndClose")
	end

	Menu.UIInit(_menu, _Parent)
end

--UI Logic Code Start
function Menu.UIInit(_Handle, _Parent)
	Menu.totalCount = Menu.totalCount + 1
	
	local btnSize_ = {[1800000281] = {32, 17}, [1800000285] = {67, 23}}
	local wndID = GUIWndGetIDM(_Parent)
	GUIWndSetIDM(_Handle, wndID.."_Menu")
	GUIWndSetSizeM(_Handle, btnSize_[(Menu.menuBtn[wndID][1])][1]+4, btnSize_[(Menu.menuBtn[wndID][1])][2]*(#Menu.menuBtn[wndID][2])+4)
	
	local _GUIHandle = 0
	_GUIHandle = GUIImageCreate(_Handle, "backImg", 0, 0, 0)
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_GUIHandle, false)
		GUIWndSetSizeM(_GUIHandle, btnSize_[(Menu.menuBtn[wndID][1])][1]+4, btnSize_[(Menu.menuBtn[wndID][1])][2]*(#Menu.menuBtn[wndID][2])+4)
		GUIImageSetAroundImage(_GUIHandle, 1800000265, 1800000266, 1800000267, 1800000268, 1800000269, 1800000270, 1800000271, 1800000272, 1800000273)
	end
	
	
	for i = 1, #Menu.menuBtn[wndID][2] do
		_GUIHandle = GUIButtonCreate(_Handle, "btn"..i, Menu.menuBtn[wndID][1], 2, (i-1)*23+2)
		if _GUIHandle ~= 0 then
			GUIWndSetSizeM(_GUIHandle, 67, 23)
			GUIWndSetTextM(_GUIHandle, Menu.menuBtn[wndID][2][i])
			GUIButtonSetStateTextColor(_GUIHandle, 2, webColor.greenText)
			GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "Menu.btn_LC")
		end
	end
	
	Menu._wnd[wndID] = _Handle
end

function Menu.btn_LC(_Handle)
	local _meHandle = GUIWndGetParentM(_Handle)
	local _Parent = GUIWndGetParentM(_meHandle)
	local name,_GUIHandle = 0, 0
	local wndID = GUIWndGetIDM(_Parent)
	if wndID == "RankWnd" then
		_GUIHandle = GUIWndFindChildM(RankWnd._wnd, "nameEdit"..RankWnd._selIndex)
		if _GUIHandle ~= 0 then
			name = GUIEditGetTextM(_GUIHandle)
		end
	elseif wndID == "FamilyWnd_Member" then
		_GUIHandle = GUIWndFindChildM(FamilyWnd_Member._wnd, "name"..FamilyWnd_Member.selBtnIndex)
		if _GUIHandle ~= 0 then
			name = GUIEditGetTextM(_GUIHandle)
		end
	elseif wndID == "FamilyWnd_ApplyList" then
		_GUIHandle = GUIWndFindChildM(FamilyWnd_ApplyList._wnd, "nameEdit"..FamilyWnd_ApplyList.selBtnIndex)
		if _GUIHandle ~= 0 then
			name = GUIEditGetTextM(_GUIHandle)
		end
	end
	--local playerGuid = FamilyWnd_Member.playerGUID_[FamilyWnd_Member.selBtnIndex]
	local text = GUIWndGetText(_Handle)
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
	elseif text == l.kickFamilyMember then 
		CLFamilyKick(name)
		CLFamilyInfoRequest(2048,"FamilyWnd_Member_行会成员", "FamilyWnd_Member.getMemberInfo")
	elseif text == l.toleader then
		local titleid = CLGetFamilyMemberTitle(name)
		local playerGuid = FamilyWnd_Member.playerGUID_[FamilyWnd_Member.selBtnIndex]
		if titleid == 1 then
			window_msg_up(_Handle , "不能是自己" , -10 , -16 , 60 , MakeARGB(255,255,0,0) , 3)
		elseif titleid == 2 then
			UI:Lua_SubmitForm("行会", "getMemberVip", playerGuid.."#1#"..name)
		else
			window_msg_up(_Handle , "只有副会长才能成为会长" , -45 , -16 , 60 , MakeARGB(255,255,0,0) , 3)
		end
	elseif text == l.uptitle then 
		local playerGuid = FamilyWnd_Member.playerGUID_[FamilyWnd_Member.selBtnIndex]
		local titleid = CLGetFamilyMemberTitle(name)
		if titleid == 3 then
			titleid = 2
		elseif titleid == 2 then
			window_msg_up(_Handle , "他已经是一人之下万人之上的副会长了" , -70 , -16 , 60 , MakeARGB(255,255,0,0) , 3)
			return
		elseif titleid == 1 then
			window_msg_up(_Handle , "不能给自己升职" , -15 , -16 , 60 , MakeARGB(255,255,0,0) , 3)
			return
		else
			titleid = 3
		end
		UI:Lua_SubmitForm("行会", "getMemberVip", playerGuid.."#"..titleid.."#"..name)
	elseif text == l.downtitle then 
		local playerGuid = FamilyWnd_Member.playerGUID_[FamilyWnd_Member.selBtnIndex]
		local titleid = CLGetFamilyMemberTitle(name)
		if titleid == 3 then
			titleid = 0
		elseif titleid == 2 then
			titleid = 3
		elseif titleid == 1 then
			window_msg_up(_Handle , "不能给自己降职" , -15 , -16 , 60 , MakeARGB(255,255,0,0) , 3)
			return
		else
			window_msg_up(_Handle , "已经是最低级职位了" , -25 , -16 , 60 , MakeARGB(255,255,0,0) , 3)
			return
		end
		UI:Lua_SubmitForm("行会", "getMemberVip", playerGuid.."#"..titleid.."#"..name)
	end
	GUIWndSetVisible(_meHandle, false)
end

function Menu.OnlineError(name)
	local _Handle = GUIWndFindChildM(FamilyWnd_Member._wnd, "name"..FamilyWnd_Member.selBtnIndex)
	window_msg_up(_Handle , "只有在线玩家才能任命职务" , -45 , -15 , 60 , MakeARGB(255,255,0,0) , 3)
end

function Menu.FamilyMemberVip(viplevel,titleid,name)
	if viplevel>=2 then		
		CLFamilyEntitle(titleid,name)
		CLFamilyInfoRequest(2048,"FamilyWnd_Member_行会成员", "FamilyWnd_Member.getMemberInfo")
	else
		local _Handle = GUIWndFindChildM(FamilyWnd_Member._wnd, "name"..FamilyWnd_Member.selBtnIndex)
		window_msg_up(_Handle , "只有VIP2才能担任行会职务" , -45 , -15 , 60 , MakeARGB(255,255,0,0) , 3)
	end
end

function Menu.wndClose()
	Menu.totalCount = Menu.totalCount - 1
	if Menu.totalCount <= 0 then
		Menu = nil
	end
end

Menu.main()