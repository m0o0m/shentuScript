if not Menu then
	Menu = {}
	Menu.menuBtn = {}
	Menu._wnd = {}
	
	Menu.totalCount = 0
end

Menu.localString = {}
local l = Menu.localString
l.look = "�鿴װ��"
l.party = "���"
l.whisper = "˽��"
l.addFriend = "��Ӻ���"
l.copyName = "��������"
l.kickFamilyMember = "�߳��л�"
l.toleader = "ת���᳤"
l.uptitle = "����ְλ"
l.downtitle = "����ְλ"
l.delFriend = "ɾ������"
l.addEnemy = "���δ���"
l.delEnemy = "ɾ������"

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
		guid = FamilyWnd_Member.selGuid	--ѡ�г�Ա��GUID
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
		CL:GetFamilyAllMenberList(0, 50,"FamilyWnd_Member_�л��Ա", "FamilyWnd_Member.getMemberInfo")
	elseif text == l.toleader then
		local islegal = true
		if titleid == 1 then
			FamilyWnd_Member.msg_up("�������Լ�")
		elseif titleid == 2 then
			UI:Lua_GUID2Str(guid)
			UI:Lua_SubmitForm("�л�", "getMemberVip", LuaRet.."#1#"..name)
		else
			FamilyWnd_Member.msg_up("ֻ�и��᳤���ܳ�Ϊ�᳤")
		end
	elseif text == l.uptitle then 
		local islegal = true
		if titleid == 3 then
			titleid = 2
		elseif titleid == 2 then
			FamilyWnd_Member.msg_up("���Ѿ���һ��֮������֮�ϵĸ��᳤��")
			islegal = false
		elseif titleid == 1 then
			FamilyWnd_Member.msg_up("���ܸ��Լ���ְ")
			islegal = false
		else
			titleid = 3
		end
		if islegal then
			UI:Lua_GUID2Str(guid)
			UI:Lua_SubmitForm("�л�", "getMemberVip", LuaRet.."#"..titleid.."#"..name)
		end
	elseif text == l.downtitle then 
		local islegal = true
		if titleid == 3 then
			titleid = 0
		elseif titleid == 2 then
			titleid = 3
		elseif titleid == 1 then
			FamilyWnd_Member.msg_up("���ܸ��Լ���ְ")
			islegal = false
		else
			FamilyWnd_Member.msg_up("�Ѿ�����ͼ�ְλ��")
			islegal = false
		end
		if islegal then
			UI:Lua_GUID2Str(guid)
			UI:Lua_SubmitForm("�л�", "getMemberVip", LuaRet.."#"..titleid.."#"..name)
		end
	end
	Menu.clickEnd()
end

function Menu.clickEnd()
    GUI:WndSetPosM(Menu.WndHandle, -200, -200)
    GUI:WndSetVisible(Menu.WndHandle, false)
end

function Menu.OnlineError(name)
	FamilyWnd_Member.msg_up("ֻ��������Ҳ�������ְ��")
end

function Menu.FamilyMemberVip(viplevel,titleid,guid)
	if viplevel >= 0 then
		UI:Lua_Str2GUID(guid)
		CL:FamilyEntitle(titleid,LuaRet)
		CL:FamilyInfoRequest(128,"FamilyWnd_�л������Ϣ", "FamilyWnd.getFamilyBasicInfo")
		CL:GetFamilyAllMenberList(0, 50,"FamilyWnd_Member_�л��Ա", "FamilyWnd_Member.getMemberInfo")
		Menu.InitMenuList()
	else
		FamilyWnd_Member.msg_up("ֻ��VIP2���ܵ����л�ְ��")
	end
end

function Menu.wndClose()
	Menu.totalCount = Menu.totalCount - 1
	if Menu.totalCount <= 0 then
		Menu = nil
	end
end

Menu.main()