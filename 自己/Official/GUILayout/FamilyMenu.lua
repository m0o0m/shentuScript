FamilyMenu = {}
function FamilyMenu.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _GUIHandle = GUI:WndCreateWnd(_Parent,"TestWndChild_0",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,71, 209)
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
function FamilyMenu.UIInit(_Handle)
	FamilyMenu.WndHandle = _Handle
	local _GUIHandle = GUI:WndFindChildM(FamilyMenu.WndHandle, "BackImg")
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle, 1800000265, 1800000266, 1800000267, 1800000268, 1800000273, 1800000269, 1800000270, 1800000271, 1800000272)
	end
end

--按照给定的列表重新安排按钮
function FamilyMenu.BtnSort(list)
end

function FamilyMenu.btn_LC(_Handle,_Param)

end

FamilyMenu.main()



