FamilyWnd_FamilyList = {}
function FamilyWnd_FamilyList.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"FamilyWnd_FamilyList",1802100001,30,96)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,658, 420)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1800000094,270,389)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.pgUpBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1800000098,369,389)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.pgDownBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"pgEditBackImg",1800000279,300,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,58, 34)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"pgEdit",314,383,48,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlTitleEdit",15,1,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"行会等级")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameTitleEdit",143,1,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"行会名称")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyPresidentTitleEdit",286,1,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"行会会长")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit",419,1,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"行会人数")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"operationTitleEdit",548,1,78,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"操作")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn1",1802100013,5,33)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.familyBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit1",15,34,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit1",143,34,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit1",286,34,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit1",419,34,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn2",1802100013,5,67)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.familyBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit2",15,68,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit2",143,68,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit2",286,68,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit2",419,68,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn3",1802100013,5,101)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.familyBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit3",15,102,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit3",143,102,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit3",286,102,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit3",419,102,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn4",1802100013,5,135)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.familyBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit4",15,136,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit4",143,136,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit4",286,136,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit4",419,136,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn5",1802100013,5,169)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.familyBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit5",15,170,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit5",143,170,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit5",286,170,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit5",419,170,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn6",1802100013,5,203)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.familyBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit6",15,204,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit6",143,204,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit6",286,204,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit6",419,204,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn7",1802100013,5,237)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.familyBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit7",15,238,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit7",143,238,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit7",286,238,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit7",419,238,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn8",1802100013,5,271)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.familyBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit8",15,272,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit8",143,272,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit8",286,272,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit8",419,272,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn9",1802100013,5,305)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.familyBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit9",15,306,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit9",143,306,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit9",286,306,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit9",419,306,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"familyBtn10",1802100013,5,339)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_FamilyList.familyBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLvlEdit10",15,340,100,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyNameEdit10",143,340,106,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyLeaderEdit10",286,340,84,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"familyMembersNumberEdit10",419,340,80,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    FamilyWnd_FamilyList.UIInit(_Parent)
end

--UI Logic Code Start
FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE = 10
FamilyWnd_FamilyList._familyBtn_ = {}
FamilyWnd_FamilyList._familyLeaderEdit_ = {}
FamilyWnd_FamilyList._familyLvlEdit_ = {}
FamilyWnd_FamilyList._familyMembersNumberEdit_ = {}
FamilyWnd_FamilyList._familyNameEdit_ = {}
FamilyWnd_FamilyList.nowPage = 1

function FamilyWnd_FamilyList.UIInit(_Handle)
	FamilyWnd_FamilyList._wnd = _Handle
	FamilyWnd._nowPage = _Handle

	GUI:WndRegistScript(FamilyWnd_FamilyList._wnd, RDWndBaseCL_wnd_close, "FamilyWnd_FamilyList.wndClose")
	
	local _GUIHandle = 0
	for i = 1, 10 do
		_GUIHandle = GUI:WndFindChildM(_Handle, "familyBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_FamilyList._familyBtn_[i] = _GUIHandle
		end	
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyLvlEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyWnd_FamilyList._familyLvlEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyNameEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyWnd_FamilyList._familyNameEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyLeaderEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyWnd_FamilyList._familyLeaderEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindWindow(_Handle, "familyMembersNumberEdit"..i)
		if _GUIHandle ~= 0 then 
			FamilyWnd_FamilyList._familyMembersNumberEdit_[i] = _GUIHandle
		end
	end
	
	local commonUI_ ={
		"pgEdit",
		"pgUpBtn",
		"pgDownBtn",
	} 
	for i = 1, #commonUI_ do
		_GUIHandle = GUI:WndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyWnd_FamilyList[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
	
	CL:GetFamilyList(0, 10, "FamilyWnd_FamilyList_获取行会列表","FamilyWnd_FamilyList.getFamilyList")
end

function FamilyWnd_FamilyList.getFamilyList()
	--微端在接收到行会列表时会打开单独的行会列表窗口，所以这里给隐藏
	local _GUIHandle = GUI:WndFindWindow(0, "FamilyListWnd")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
	end

	if FamilyWnd_FamilyList then
		FamilyWnd_FamilyList.ListTotalNum = LuaParam[1]    --所有行会数量
		FamilyWnd_FamilyList.ListFirstIndex = LuaParam[2]  --当前起始序号
		FamilyWnd_FamilyList.ListNum = LuaParam[3]         --本页数量
		FamilyWnd_FamilyList.familyList_ = {}
		FamilyWnd_FamilyList.familyList_ = LuaParam[4]    --列表数据

		for i = 1, #FamilyWnd_FamilyList.familyList_ do
			FamilyWnd_FamilyList.familyList_[i] = FamilyWnd_FamilyList.familyList_[i]
		end
		FamilyWnd_FamilyList.fillPageWnd()
	end
end

function FamilyWnd_FamilyList.fillPageWnd()
	local index, guid_ = 0, {} 
    for i = 1, 10 do
        if FamilyWnd_FamilyList.familyList_[i] then
			FamilyWnd_FamilyList.setBtnVisible(i, true)
            GUI:EditSetTextM(FamilyWnd_FamilyList._familyNameEdit_[i], FamilyWnd_FamilyList.familyList_[i][1])
            GUI:EditSetTextM(FamilyWnd_FamilyList._familyLeaderEdit_[i], tostring(FamilyWnd_FamilyList.familyList_[i][2]))
            GUI:EditSetTextM(FamilyWnd_FamilyList._familyMembersNumberEdit_[i], tostring(FamilyWnd_FamilyList.familyList_[i][3]))
            table.insert(guid_, FamilyWnd_FamilyList.familyList_[i][5])
        end
    end

    for i = FamilyWnd_FamilyList.ListNum + 1, FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE do
		FamilyWnd_FamilyList.setBtnVisible(i, false)
    end

	UI:Lua_SubmitForm("行会", "updateFamilyLvlTable", serialize(guid_).."#".."FamilyWnd_FamilyList")
	FamilyWnd_FamilyList.updatePgBtn()
end

function FamilyWnd_FamilyList.familyBtn_LC(_Handle)
	if FamilyWnd.selfTitleID ~= 1 then 
		return
	end
end

function FamilyWnd_FamilyList.pgUpBtn_LC(_Handle)
	if FamilyWnd_FamilyList.nowPage > 1 then
        FamilyWnd_FamilyList.nowPage = FamilyWnd_FamilyList.nowPage - 1
        CL:GetFamilyList((FamilyWnd_FamilyList.nowPage - 1) * FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE, 10, "FamilyListWnd_获取行会列表","FamilyWnd_FamilyList.getFamilyList")
    end
end

function FamilyWnd_FamilyList.pgDownBtn_LC(_Handle)
	if FamilyWnd_FamilyList.nowPage <= FamilyWnd_FamilyList.pgCount then
        FamilyWnd_FamilyList.nowPage = FamilyWnd_FamilyList.nowPage + 1
        CL:GetFamilyList((FamilyWnd_FamilyList.nowPage - 1) * FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE, 10, "FamilyListWnd_获取行会列表","FamilyWnd_FamilyList.getFamilyList")
    end
end

function FamilyWnd_FamilyList.updatePgBtn()
	FamilyWnd_FamilyList.pgCount = math.floor((FamilyWnd_FamilyList.ListTotalNum + FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE - 1) / FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE)
	if FamilyWnd_FamilyList.pgCount <= 0 then
		FamilyWnd_FamilyList.pgCount = 1
	end


	FamilyWnd_FamilyList.nowPage = math.floor(FamilyWnd_FamilyList.ListFirstIndex / FamilyWnd_FamilyList.FAMILY_LIST_PAGE_SIZE) + 1

	if FamilyWnd_FamilyList.nowPage <= 0 then
		FamilyWnd_FamilyList.nowPage = 1
	end
	GUI:EditSetTextM(FamilyWnd_FamilyList._pgEdit, FamilyWnd_FamilyList.nowPage.." / "..FamilyWnd_FamilyList.pgCount)

	if FamilyWnd_FamilyList.nowPage <= 1 then
		GUI:WndSetEnableM(FamilyWnd_FamilyList._pgUpBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_FamilyList._pgUpBtn, true)
	end
	
	if FamilyWnd_FamilyList.nowPage >= FamilyWnd_FamilyList.pgCount then
		GUI:WndSetEnableM(FamilyWnd_FamilyList._pgDownBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_FamilyList._pgDownBtn, true)
	end
end

function FamilyWnd_FamilyList.setBtnVisible(index, bool)
	GUI:WndSetVisible(FamilyWnd_FamilyList._familyBtn_[index], bool)
	GUI:WndSetVisible(FamilyWnd_FamilyList._familyNameEdit_[index], bool)
	GUI:WndSetVisible(FamilyWnd_FamilyList._familyLeaderEdit_[index], bool)
	GUI:WndSetVisible(FamilyWnd_FamilyList._familyLvlEdit_[index], bool)
	GUI:WndSetVisible(FamilyWnd_FamilyList._familyMembersNumberEdit_[index], bool)
end

function FamilyWnd_FamilyList.wndClose()
	local _GUIHandle = GUI:WndFindWindow(0, "FamilyWnd_FamilyList") 
	if _GUIHandle == 0 then
		FamilyWnd_FamilyList = nil
	end

	--之前隐藏了行会列表，所以这里需要关闭
	local _GUIHandle = GUI:WndFindWindow(0, "FamilyListWnd")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	end
end

--client
function FamilyWnd_FamilyList_updateFamiyLvl(lvl_)
	if not FamilyWnd_FamilyList then return end
	for i, v in pairs(lvl_) do
		GUI:EditSetTextM(FamilyWnd_FamilyList._familyLvlEdit_[i], tostring(v))
	end
end

FamilyWnd_FamilyList.main()