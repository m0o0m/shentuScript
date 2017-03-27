FamilyMenu = {}
function FamilyMenu.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"TestWndChild_0",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,71, 209)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImg",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,71, 209)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"look",1800000285,2,2)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyMenu.btn_LC")
        GUI:WndSetTextM(_GUIHandle,"查看装备")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"party",1800000285,2,25)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyMenu.btn_LC")
        GUI:WndSetTextM(_GUIHandle,"组队")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"whisper",1800000285,2,48)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyMenu.btn_LC")
        GUI:WndSetTextM(_GUIHandle,"私聊")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"addFriend",1800000285,2,71)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyMenu.btn_LC")
        GUI:WndSetTextM(_GUIHandle,"添加好友")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"delFriend",1800000285,2,94)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyMenu.btn_LC")
        GUI:WndSetTextM(_GUIHandle,"删除好友")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"addEnemy",1800000285,2,117)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyMenu.btn_LC")
        GUI:WndSetTextM(_GUIHandle,"屏蔽此人")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"delEnemy",1800000285,2,140)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyMenu.btn_LC")
        GUI:WndSetTextM(_GUIHandle,"删除仇人")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"copyName",1800000285,2,163)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyMenu.btn_LC")
        GUI:WndSetTextM(_GUIHandle,"复制名称")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"kickFamilyMember",1800000285,2,186)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyMenu.btn_LC")
        GUI:WndSetTextM(_GUIHandle,"踢出行会")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,67, 23)
    end
    
    FamilyMenu.UIInit(_Parent)
end

--UI Logic Code Start
FamilyMenu.clickName = ""
FamilyMenu.totallist = {
{"look", 2, 2},
{"party", 2, 25},
{"whisper", 2,48},
{"addFriend", 2,71},
{"delFriend", 2,94},
{"addEnemy", 2,117},
{"delEnemy", 2,140},
{"copyName", 2,163},
{"kickFamilyMember", 2,186}
}
--会长右键弹出的菜单
FamilyMenu.list1 = {
{"kickFamilyMember", 2, 2},
{"look", 2, 25},
{"party", 2, 48},
{"whisper", 2,71},
{"addFriend", 2,94},
{"addEnemy", 2,117},
{"copyName", 2,140},
{"delEnemy", 2,163}
}
--普通成员的菜单
FamilyMenu.list2 = {
{"look", 2, 2},
{"party", 2, 25},
{"whisper", 2,48},
{"addFriend", 2,71},
{"addEnemy", 2,94},
{"copyName", 2,117},
{"delEnemy", 2,140}
}

function FamilyMenu.UIInit(_Handle)
    GUI:WndSetPopupMenu(_Handle)
	local _ParentHandle = GUI:WndGetParentM(_Handle)
	GUI:GetWndMousePos(_ParentHandle)
	GUI:WndSetPosM(_Handle, LuaRet[1], LuaRet[2])

	FamilyMenu.WndHandle = _Handle
	local _GUIHandle = GUI:WndFindChildM(FamilyMenu.WndHandle, "BackImg")
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1800000265, 1800000266, 1800000267, 1800000268, 1800000273, 1800000269, 1800000270, 1800000271, 1800000272)
	end

	FamilyMenu.BtnSort(FamilyMenu.list1)
end

--按照给定的列表重新安排按钮
function FamilyMenu.BtnSort(_list)
	local _GUIHandle = 0
	--隐藏所有按钮
	for i = 1, #FamilyMenu.totallist do
		_GUIHandle = GUI:WndFindChildM(FamilyMenu.WndHandle, FamilyMenu.totallist[i][1])
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
	end
	local wndHeight = 100
	for i = 1, #_list do
		_GUIHandle = GUI:WndFindChildM(FamilyMenu.WndHandle, _list[i][1])
		if _GUIHandle ~= 0 then
			GUI:WndSetPosM(_GUIHandle, _list[i][2], _list[i][3])
			GUI:WndSetVisible(_GUIHandle, true)
			GUI:WndSetEnableM(_GUIHandle, true)
		end
		wndHeight = _list[i][3] + 25
	end

	GUI:WndSetSizeM(FamilyMenu.WndHandle, 71, wndHeight) 
	_GUIHandle = GUI:WndFindChildM(FamilyMenu.WndHandle, "BackImg")
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 71, wndHeight)
	end
end

function FamilyMenu.btn_LC(_Handle,_Param)
	local name = FamilyMenu.clickName
	local text = GUI:WndGetText(_Handle)
	if text == "查看装备" then
		CL:LogicLookInfo(name)
	elseif text == "组队" then 
		CL:LogicTeamInvite(name)
	elseif text == "私聊" then 
		CL:LogicSendPrivateTalk(name)
	elseif text == "复制名称" then 
		CL:CopyString(name)
	elseif text == "删除好友" then 
		CL:LogicDelFriend(name)
	elseif text == "添加好友" then 
		CL:LogicAddFriend(name)
	elseif text == "屏蔽此人" then 
		CL:LogicAddToBlackList(name)
	elseif text == "删除仇人" then 
		CL:LogicDelFriend(name)
	elseif text == "踢出行会" then 
		CL:FamilyKick(name)
	end
	FamilyMenu.clickEnd()
end

function FamilyMenu.clickEnd()
    GUI:WndSetPosM(FamilyMenu.WndHandle, -200, -200)
    GUI:WndSetVisible(FamilyMenu.WndHandle, false)
end

FamilyMenu.main()



