FamilyApplierWnd1 = {}
function FamilyApplierWnd1.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"_BackImg",1931000019,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,306, 420)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_CloseBtn",1930001002,275,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_CloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_PrePageBtn",1930900001,50,375)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_PrePageBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_NextPageBtn",1930900005,122,375)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_NextPageBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"_PageEdit",71,376,47,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetTextM(_GUIHandle, "1 / 1")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_ClearList",1930001006,167,373)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_ClearList")
        GUI:WndSetTextM(_GUIHandle,"清空列表")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_CloseList",1930001006,230,373)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_CloseList")
        GUI:WndSetTextM(_GUIHandle,"关闭列表")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"_ApplierList",21,77,189,280)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:ListBoxSetColumnNum(_GUIHandle, 3)
		GUI:ListBoxSetColumnFmt(_GUIHandle, 1, 1)	--DT_CENTER
		GUI:ListBoxSetColumnFmt(_GUIHandle, 2, 1)
		GUI:ListBoxSetColumnPos(_GUIHandle, 0, 0)
		GUI:ListBoxSetColumnPos(_GUIHandle, 1, 85)
		GUI:ListBoxSetColumnPos(_GUIHandle, 2, 140)
		GUI:ListBoxSetOffsetY(_GUIHandle, 16)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_AcceptBtn1",1901400130,216,84)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_AcceptBtn")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_AcceptBtn2",1901400130,216,112)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_AcceptBtn")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_AcceptBtn3",1901400130,216,140)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_AcceptBtn")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_AcceptBtn4",1901400130,216,168)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_AcceptBtn")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_AcceptBtn5",1901400130,216,196)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_AcceptBtn")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_AcceptBtn6",1901400130,216,224)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_AcceptBtn")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_AcceptBtn7",1901400130,216,252)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_AcceptBtn")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_AcceptBtn8",1901400130,216,280)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_AcceptBtn")
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_AcceptBtn9",1901400130,216,308)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_AcceptBtn")
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_AcceptBtn10",1901400130,216,336)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_AcceptBtn")
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_RefuseBtn1",1901400126,255,84)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_RefuseBtn")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_RefuseBtn2",1901400126,255,112)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_RefuseBtn")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_RefuseBtn3",1901400126,255,140)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_RefuseBtn")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_RefuseBtn4",1901400126,255,168)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_RefuseBtn")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_RefuseBtn5",1901400126,255,196)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_RefuseBtn")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_RefuseBtn6",1901400126,255,224)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_RefuseBtn")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_RefuseBtn7",1901400126,255,252)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_RefuseBtn")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_RefuseBtn8",1901400126,255,280)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_RefuseBtn")
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_RefuseBtn9",1901400126,255,308)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_RefuseBtn")
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_RefuseBtn10",1901400126,255,336)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyApplierWnd1.On_RefuseBtn")
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,27, 15)
    end
        FamilyApplierWnd1.UIInit(_Parent)
end

--UI Logic Code Start
FamilyApplierWnd1.totalNum = 0
FamilyApplierWnd1.nowPage = 1
FamilyApplierWnd1.applyList_ = {}
function FamilyApplierWnd1.UIInit(_Handle)
	FamilyApplierWnd1.WndHandle = _Handle
	GUI:WndSetMoveWithLBM(FamilyApplierWnd1.WndHandle)
	GUI:WndSetIsESCClose(FamilyApplierWnd1.WndHandle, true)
	GUI:WndSetFlagsM(FamilyApplierWnd1.WndHandle, flg_wndBase_autoTop)
	
	for i = 1, 10 do
		local ctrlT = {"_AcceptBtn", "_RefuseBtn"}
		for m = 1, #ctrlT do
			_GUIHandle = GUI:WndFindChildM(FamilyApplierWnd1.WndHandle, ctrlT[m]..i)
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
		end
	end
	CL:GetApplyPlayerList(0, 10, "FamilyApplierWnd1_申请列表", "FamilyApplierWnd1.getApplyList")
end

function FamilyApplierWnd1.On_CloseBtn(_Handle,_Param)
	GUI:WndClose(FamilyApplierWnd1.WndHandle)
end

function FamilyApplierWnd1.On_PrePageBtn(_Handle,_Param)
	FamilyApplierWnd1.nowPage = FamilyApplierWnd1.nowPage - 1
	CL:GetApplyPlayerList((FamilyApplierWnd1.nowPage-1)*10, 10, "FamilyApplierWnd1_申请列表", "FamilyApplierWnd1.getApplyList")
end

function FamilyApplierWnd1.On_NextPageBtn(_Handle,_Param)
	FamilyApplierWnd1.nowPage = FamilyApplierWnd1.nowPage + 1
	CL:GetApplyPlayerList((FamilyApplierWnd1.nowPage-1)*10, 10, "FamilyApplierWnd1_申请列表", "FamilyApplierWnd1.getApplyList")
end

function FamilyApplierWnd1.On_ClearList(_Handle,_Param)
	local index = 0
	local guid = ""
	for i = 1, 10 do
		index = (FamilyApplierWnd1.nowPage - 1)*10 + i
		guid = FamilyApplierWnd1.applyList_[index][1]
		if FamilyApplierWnd1.applyList_[index] then
			CL:FamilyJoinDenyOrAccept(0, guid)
		end
	end
	CL:GetApplyPlayerList((FamilyApplierWnd1.nowPage-1)*10, 10, "FamilyApplierWnd1_申请列表", "FamilyApplierWnd1.getApplyList")
end

function FamilyApplierWnd1.On_CloseList(_Handle,_Param)
	GUI:WndClose(FamilyApplierWnd1.WndHandle)
end

function FamilyApplierWnd1.On_AcceptBtn(_Handle,_Param)
	local param = GUI:WndGetParam(_Handle)
	local index = (FamilyApplierWnd1.nowPage - 1)*10 + param
    local guid = FamilyApplierWnd1.applyList_[index][1]
	if CL:FamilyJoinDenyOrAccept(1, guid) then
		CL:GetApplyPlayerList((FamilyApplierWnd1.nowPage-1)*10, 10, "FamilyApplierWnd1_申请列表", "FamilyApplierWnd1.getApplyList")
	end
end

function FamilyApplierWnd1.On_RefuseBtn(_Handle,_Param)
	local param = GUI:WndGetParam(_Handle)
	local index = (FamilyApplierWnd1.nowPage - 1)*10 + param
    local guid = FamilyApplierWnd1.applyList_[index][1]
	if CL:FamilyJoinDenyOrAccept(0, guid) then
		CL:GetApplyPlayerList((FamilyApplierWnd1.nowPage-1)*10, 10, "FamilyApplierWnd1_申请列表", "FamilyApplierWnd1.getApplyList")
	end
end

function FamilyApplierWnd1.getApplyList()
	--1.totalNum;2.first_index;3.num;     4-1 guid 4-2 playername 4-3 level 4-4 job
	FamilyApplierWnd1.totalNum = LuaParam[1]
	FamilyApplierWnd1.curList = LuaParam[4]
	local first_index = LuaParam[2]	--当前获取的第一个数据相对于全部数据的偏移
	for i = 1, 10 do
		if i <= LuaParam[3] then
			FamilyApplierWnd1.applyList_[first_index + i] = FamilyApplierWnd1.curList[i]	--更新当前获取到的一页数据
		else
			FamilyApplierWnd1.applyList_[first_index + i] = nil	--如果本页没有填满的话，后面也不会再有了
		end
	end

	FamilyApplierWnd1.UpdatePage()
end

function FamilyApplierWnd1.UpdatePgBtn()
	local pgCount = math.ceil(FamilyApplierWnd1.totalNum/10)
	if pgCount == 0 then
		pgCount = 1
	end
	local _GUIHandle = GUI:WndFindChildM(FamilyApplierWnd1.WndHandle, "_PageEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, FamilyApplierWnd1.nowPage.." / "..pgCount)
	end
	local _preBtn = GUI:WndFindChildM(FamilyApplierWnd1.WndHandle, "_PrePageBtn")
	local _nextBtn = GUI:WndFindChildM(FamilyApplierWnd1.WndHandle, "_NextPageBtn")
	if FamilyApplierWnd1.nowPage <= 1 then
		GUI:WndSetEnableM(_preBtn, false)
	else
		GUI:WndSetEnableM(_preBtn, true)
	end
	if FamilyApplierWnd1.nowPage >= pgCount then
		GUI:WndSetEnableM(_nextBtn, false)
	else
		GUI:WndSetEnableM(_nextBtn, true)
	end
end

function FamilyApplierWnd1.UpdatePage()
	local _ListHandle = GUI:WndFindChildM(FamilyApplierWnd1.WndHandle, "_ApplierList")
	if _ListHandle ~= 0 then
		GUI:ListBoxClear(_ListHandle)
		for i = 1, 10 do
			local index = (FamilyApplierWnd1.nowPage - 1)*10 + i
			if FamilyApplierWnd1.applyList_[index] then
				GUI:ListBoxAddString(_ListHandle, tostring(FamilyApplierWnd1.applyList_[index][2]),4290950816)
				GUI:ListBoxAddString(_ListHandle, tostring(FamilyApplierWnd1.applyList_[index][3]),4290950816)
				GUI:ListBoxAddString(_ListHandle, tostring(FamilyApplierWnd1.applyList_[index][4]),4290950816)

				local ctrlT = {"_AcceptBtn", "_RefuseBtn"}
				for m = 1, #ctrlT do
					_GUIHandle = GUI:WndFindChildM(FamilyApplierWnd1.WndHandle, ctrlT[m]..i)
					if _GUIHandle ~= 0 then
						GUI:WndSetVisible(_GUIHandle, true)
					end
				end
			else
				local ctrlT = {"_AcceptBtn", "_RefuseBtn"}
				for m = 1, #ctrlT do
					_GUIHandle = GUI:WndFindChildM(FamilyApplierWnd1.WndHandle, ctrlT[m]..i)
					if _GUIHandle ~= 0 then
						GUI:WndSetVisible(_GUIHandle, false)
					end
				end
			end
		end
	end
	FamilyApplierWnd1.UpdatePgBtn()
end

FamilyApplierWnd1.main()