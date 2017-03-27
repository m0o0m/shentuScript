FamilyMember = {}
function FamilyMember.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"_BackImg",1931000004,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,568, 322)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_TitleEditBtn",1930001006,423,207)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMember.On_TitleEditBtn")
        GUI:WndSetTextM(_GUIHandle,"封号编辑")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_TitleSetBtn",1930001006,423,235)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMember.On_TitleSetBtn")
        GUI:WndSetTextM(_GUIHandle,"授予封号")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_TitleResetBtn",1930001006,423,263)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMember.On_TitleResetBtn")
        GUI:WndSetTextM(_GUIHandle,"封号撤销")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_AddMemberBtn",1930001006,488,207)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMember.On_AddMemberBtn")
        GUI:WndSetTextM(_GUIHandle,"添加成员")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_DelMemberBtn",1930001006,488,235)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMember.On_DelMemberBtn")
        GUI:WndSetTextM(_GUIHandle,"开除成员")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_QuitFamilyBtn",1930001006,488,263)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMember.On_QuitFamilyBtn")
        GUI:WndSetTextM(_GUIHandle,"脱离行会")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"_InfoRE",13,203,364,98)
    if _GUIHandle ~= 0 then
	GUI:WndRegistScript(_GUIHandle, RDWnd2DRichEditCL_pos_change, "FamilyMember.On_InfoRE_pos_change")
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"_InfoVScrBar",1930001010,1930001014,1930001022,1931100021,386,200,110)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWnd2DScrollBarVCL_scroll_change, "FamilyMember.On_scroll_change")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,110, 14)
        GUI:ScrollBarSetSetp(_GUIHandle,5)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"_MemberNumEdit",70,151,45,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_PrePageBtn",1930900001,458,172)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMember.On_PrePgBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"_NextPageBtn",1930900005,519,172)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "FamilyMember.On_NextPgBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"_PageEdit",478,174,40,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, '0 / 0')
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"_CreateTimeEdit",474,291,92,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"_TitleListBox",8,8,111,142)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DListBoxCL_select_change, "FamilyMember.On_TitleListBoxSelectChange")
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:ListBoxSetOffsetY(_GUIHandle, 8)
    end
    
    
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"_MemberListBox",143,7,393,161)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbClick, "FamilyMember.OnListRBtnClick")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyMember.OnListLBtnClick")
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:ListBoxSetColumnNum(_GUIHandle, 4)
		GUI:ListBoxSetColumnPos(_GUIHandle, 0, 0)
		GUI:ListBoxSetColumnPos(_GUIHandle, 1, 100)
		GUI:ListBoxSetColumnPos(_GUIHandle, 2, 200)
		GUI:ListBoxSetColumnPos(_GUIHandle, 3, 295)
		GUI:ListBoxSetOffsetY(_GUIHandle, 8)
		GUI:ListBoxSetFillAllLineBack(_GUIHandle, false)
		GUI:ListBoxGetScrollBarImageData(_GUIHandle)
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"ShowOnlineCB",1900112013,"只显示在线成员",283,-22)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "FamilyMember.On_ShowOnlineCB")
        GUI:WndSetTextM(_GUIHandle,"只显示在线成员")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,107, 18)
        GUI:WndSetTextColorM(_GUIHandle, 4292004454)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end

        FamilyMember.UIInit(_Parent)
end

--UI Logic Code Start
--[[CREATE_TEAM,
	AROUND_TEAM,
	FAMILY_LIST,
	FAMILY_NOTICE,
	FAMILY_MSG,
	FAMILY_TITLE,
	FAMILY_MEMBER,
	FAMILY_ENEMY,
	FAMILY_ALLY,
	FAMILY_INFO,
	FAMILY_JOIN,
	FAMILY_APPLY,
	FAMILY_ONLINE,
	FAMILY_ALL_MEMBER,
	FAMILY_LEAVE,
	FAMILY_DISMISS,
	FAMILY_JOIN_CANCEL,
	RANK_RANKLIST,
	CAMPAIGN_DETAIL
--]]
FamilyMember.nowPage = 1
FamilyMember.MemberList = {}
FamilyMember.curSelectTitle = 0 --当前选中的称号
FamilyMember.memberCountPerPage = 32
FamilyMember.OperateGuid = ""	--当前操作的成员GUID
FamilyMember.ShowOnlineMember = true
FamilyMember.RankMenu = 0
function FamilyMember.UIInit(_Handle)
	FamilyMember.WndHandle = _Handle
	CL:FamilyInfoRequest(2,"FamilyMember_行会信息", "FamilyMember.getFamilyMsg")
	CL:FamilyInfoRequest(4,"FamilyMember_行会称号列表", "FamilyMember.getFamilyTitleList")
	CL:FamilyInfoRequest(128,"FamilyMember_行会基本信息", "FamilyMember.getFamilyBasicInfo")
	
	FamilyMember.RankMenu = GUI:MenuCreate(FamilyMember.WndHandle, "RankWndMenu")
    GUI:WndRegistScript(FamilyMember.RankMenu,RDWnd2DPopupMenuCL_click, "FamilyMember.OnMenuClick")
	Temporary = FamilyMember.RankMenu
	GUI:MenuAddItem(0,"加为好友",0,-1,1900340224)
	GUI:MenuAddItem(1,"邀请入队",0,-1,1900340224)
	GUI:MenuAddItem(2,"发送密语",0,-1,1900340224)
	GUI:MenuAddItem(3,"加入仇人列表",0,-1,1900340224)
	GUI:MenuAddItem(4,"复制姓名",0,-1,1900340224)
	GUI:MenuAddItem(5,"查看资料",0,-1,1900340224)
end

function FamilyMember.On_ShowOnlineCB()
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "ShowOnlineCB")
	if _GUIHandle ~= 0 then
	FamilyMember.ShowOnlineMember = GUI:CheckBoxGetCheck(_GUIHandle)
	FamilyMember.RefreshCurPage()
	end
end

function FamilyMember.getFamilyBasicInfo()
	FamilyMember.createTime = CL:GetTimeStrWithFormat(tostring(LuaParam[1]), "%Y-%m-%d")
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_CreateTimeEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, FamilyMember.createTime)
	end
	
	FamilyMember.guid = LuaParam[2]

	FamilyMember.memberNum = tonumber(LuaParam[3])
	_GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_MemberNumEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, tostring(FamilyMember.memberNum))
	end

	FamilyMember.name = LuaParam[4]
	
	FamilyMember.selfTitleID = tonumber(LuaParam[5])
	if FamilyMember.selfTitleID == 1 then
		local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_QuitFamilyBtn")
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end
	elseif FamilyMember.selfTitleID == 2 then
		
	else
		local tmp = {'_TitleSetBtn', '_TitleEditBtn', '_TitleResetBtn', '_AddMemberBtn', '_DelMemberBtn'}
		for i = 1, #tmp do
			local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, tmp[i])
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
			end
		end
	end
end

function FamilyMember.getFamilyMsg()
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_InfoRE")
	if _GUIHandle ~= 0 then
		GUI:RichEditAppendString(_GUIHandle, LuaParam[1])
		FamilyMember.FamilyInfoScrollToBottom()
	end
end

function FamilyMember.getFamilyTitleList()
	--LuaParam[1]是luatable对象, 表中每个为{id, TITLE_Name}对象
	FamilyMember.tTitle = {}
	for k, v in pairs(LuaParam[1]) do
		FamilyMember.tTitle[tonumber(v[1])] = v	
	end
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_TitleListBox")
	if _GUIHandle ~= 0 then
		GUI:ListBoxClear(_GUIHandle)
		for i = 1, #FamilyMember.tTitle do
			GUI:ListBoxAddString(_GUIHandle, tostring(FamilyMember.tTitle[i][2]), 4294967295)
		end
		GUI:ListBoxAddString(_GUIHandle, tostring(FamilyMember.tTitle[0][2]), 4294967295)	--行会成员
	end
end

function FamilyMember.On_TitleListBoxSelectChange()
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_TitleListBox")
	if _GUIHandle ~= 0 then
		local line = GUI:ListBoxGetCurSelLine(_GUIHandle)
		if line >= 0 then
			local title = GUI:ListBoxGetString(_GUIHandle, line, 0)
			for i = 0, #FamilyMember.tTitle do
				if FamilyMember.tTitle[i][2] == title then
					FamilyMember.nowPage = 1
					FamilyMember.curSelectTitle = tonumber(FamilyMember.tTitle[i][1])
					
					FamilyMember.RefreshCurPage()
					--CL:GetFamilyMenberList((FamilyMember.nowPage - 1) * FamilyMember.memberCountPerPage, FamilyMember.memberCountPerPage, FamilyMember.curSelectTitle, "FamilyMember_获取特定称号成员", "FamilyMember.GetSpecificMemberList")
				end
			end		
		end
	end
end

function FamilyMember.GetSpecificMemberList()
	--1.index;2.num;3.totalNum
	local startIdx = LuaParam[1]
	local num = LuaParam[2]
	FamilyMember.totalNum = LuaParam[3]

	local tmpT = LuaParam[4]
	for i = 1, #tmpT do
		FamilyMember.MemberList[startIdx+i] = tmpT[i]
	end
	for i = startIdx+#tmpT+1, #FamilyMember.MemberList do
		FamilyMember.MemberList[i] = nil
	end
	FamilyMember.UpdateMenberListBox()
end

function FamilyMember.UpdateMenberListBox()
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_MemberListBox")
	if _GUIHandle ~= 0 then
		GUI:ListBoxClear(_GUIHandle)
		local color = {}
		color[0] = 4284637794
		color[1] = 4294967295
		for i = 1, FamilyMember.memberCountPerPage do
			local index = (FamilyMember.nowPage - 1) * FamilyMember.memberCountPerPage + i
			if FamilyMember.MemberList[index] then
				GUI:ListBoxAddString(_GUIHandle, tostring(FamilyMember.MemberList[index][2]), color[FamilyMember.MemberList[index][10]])			
			end
		end
	end
	FamilyMember.UpdatePgBtn()
end

function FamilyMember.UpdatePgBtn()
	local pgCount = math.ceil(FamilyMember.totalNum / 32)
	if pgCount == 0 then
		pgCount = 1
	end
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_PageEdit")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, FamilyMember.nowPage.." / "..pgCount)
	end
	local _preBtn = GUI:WndFindChildM(FamilyMember.WndHandle, "_PrePageBtn")
	local _nextBtn = GUI:WndFindChildM(FamilyMember.WndHandle, "_NextPageBtn")
	if FamilyMember.nowPage <= 1 then
		GUI:WndSetEnableM(_preBtn, false)
	else
		GUI:WndSetEnableM(_preBtn, true)
	end
	if FamilyMember.nowPage >= pgCount then
		GUI:WndSetEnableM(_nextBtn, false)
	else
		GUI:WndSetEnableM(_nextBtn, true)
	end
end

function FamilyMember.FamilyInfoScrollToBottom()
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_InfoVScrBar")
	local _RichEdit = GUI:WndFindChildM(FamilyMember.WndHandle, "_InfoRE")
	if _GUIHandle ~= 0 and _RichEdit ~= 0 then
		local editHeight = GUI:RichEditGetCurPosY(_RichEdit)
		GUI:RichEditSetTopPos(_RichEdit, editHeight)
		GUI:ScrollBarSetPos(_GUIHandle, 100)
	end
end

function FamilyMember.On_InfoRE_pos_change()
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_InfoVScrBar")
	local _RichEdit = GUI:WndFindChildM(FamilyMember.WndHandle, "_InfoRE")
	if _GUIHandle ~= 0 and _RichEdit ~= 0 then
		local _pos = GUI:RichEditGetTopPos(_RichEdit) / (GUI:RichEditGetCurPosY(_RichEdit) - 98) * 100
		GUI:ScrollBarSetPos(_GUIHandle, _pos)
	end
end

function FamilyMember.On_scroll_change()
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_InfoVScrBar")
	if _GUIHandle ~= 0 then
		local pos = GUI:ScrollBarGetPos(_GUIHandle)
		local _RichEdit = GUI:WndFindChildM(FamilyMember.WndHandle, "_InfoRE")
		if _RichEdit ~= 0 then
			local editHeight = GUI:RichEditGetCurPosY(_RichEdit)
			GUI:RichEditSetTopPos(_RichEdit,pos / 100 * (editHeight - 98) )
		end
	end
end

function FamilyMember.On_TitleEditBtn(_Handle,_Param)
	msg('封号编辑')
	UI:Lua_OpenWindow(FamilyMember.WndHandle, "FamilyEditTitleWnd.lua")
end

function FamilyMember.On_TitleSetBtn(_Handle,_Param)
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_MemberListBox")
	if _GUIHandle ~= 0 then
		local row = GUI:ListBoxGetCurSelLine(_GUIHandle)
		local col = GUI:ListBoxGetCurSelCol(_GUIHandle)
		if row >= 0 and col >= 0 then
			msg('row-'..row..'col-'..col)
			local index = (FamilyMember.nowPage - 1) * FamilyMember.memberCountPerPage + row * 4 + col + 1
			--msg(FamilyMember.MemberList[index][2])
			if FamilyMember.MemberList[index] then
				FamilyMember.OperateGuid = FamilyMember.MemberList[index][1]
				UI:Lua_OpenWindow(FamilyMember.WndHandle, "FamilySetTitleWnd.lua")
			end
		else
			UI:Lua_MessageBox("MessageBox", 0, MESSAGE_STYLE_OK, "请先选择一个成员")
		end
	end


end
function FamilyMember.On_TitleResetBtn(_Handle,_Param)
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_MemberListBox")
	if _GUIHandle ~= 0 then
		local row = GUI:ListBoxGetCurSelLine(_GUIHandle)
		local col = GUI:ListBoxGetCurSelCol(_GUIHandle)
		if row >= 0 and col >= 0 then
			msg('row-'..row..'col-'..col)
			local index = (FamilyMember.nowPage - 1) * FamilyMember.memberCountPerPage + row * 4 + col + 1
			--msg(FamilyMember.MemberList[index][2])
			if FamilyMember.MemberList[index] then
				FamilyMember.OperateGuid = FamilyMember.MemberList[index][1]
				CL:FamilyRepealTitle(FamilyMember.MemberList[index][1], "FamilyMember_撤销封号", "")
				FamilyMember.RefreshCurPage()
			end
		else
			UI:Lua_MessageBox("MessageBox", 0, MESSAGE_STYLE_OK, "请先选择一个成员")
		end
	end
end
function FamilyMember.On_AddMemberBtn(_Handle,_Param)
	UI:Lua_OpenWindow(FamilyMember.WndHandle, "FamilyMenberInputBox_AddMember.lua")
end
function FamilyMember.On_DelMemberBtn(_Handle,_Param)
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_MemberListBox")
	if _GUIHandle ~= 0 then
		local row = GUI:ListBoxGetCurSelLine(_GUIHandle)
		local col = GUI:ListBoxGetCurSelCol(_GUIHandle)
		if row >= 0 and col >= 0 then
			local index = (FamilyMember.nowPage - 1) * FamilyMember.memberCountPerPage + row * 4 + col + 1
			if FamilyMember.MemberList[index] then
				if not CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then return end
				if FamilyMember.MemberList[index][1] == LuaRet then
					UI:Lua_MessageBox("MessageBox", 0, MESSAGE_STYLE_OK, "无法开除自己")
				else
					FamilyMember.OperateGuid = FamilyMember.MemberList[index][1]
					CL:FamilyKick(FamilyMember.MemberList[index][1])
					FamilyMember.RefreshCurPage()
				end
			end
		else
			UI:Lua_MessageBox("MessageBox", 0, MESSAGE_STYLE_OK, "请先选择一个成员")
		end
	end
end

function FamilyMember.On_QuitFamilyBtn(_Handle,_Param)
	UI:Lua_MessageBox("MessageBox", 0, MESSAGE_STYLE_OKCANCEL, "退出行会后, 贡献度等信息将清零, 是否确认要退出行会?")
	local _GUIHandle = LuaRet
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,messageBox_closeOk, "FamilyMember.On_QuitFamilyMessageboxOkCancle")
	end
end

function FamilyMember.On_QuitFamilyMessageboxOkCancle(_Handle,_Param)
	if _Param == 1 then
		UI:Lua_OpenWindow(FamilyMember.WndHandle, "FamilyMenberInputBox_Leave.lua")
	end
end

function FamilyMember.On_PrePgBtn(_Handle,_Param)
	FamilyMember.nowPage = FamilyMember.nowPage - 1
	FamilyMember.RefreshCurPage()
	--CL:GetFamilyMenberList((FamilyMember.nowPage - 1) * FamilyMember.memberCountPerPage, FamilyMember.memberCountPerPage, FamilyMember.curSelectTitle, "FamilyMember_获取特定称号成员", "FamilyMember.GetSpecificMemberList")
end
function FamilyMember.On_NextPgBtn(_Handle,_Param)
	FamilyMember.nowPage = FamilyMember.nowPage + 1
	FamilyMember.RefreshCurPage()
	--CL:GetFamilyMenberList((FamilyMember.nowPage - 1) * FamilyMember.memberCountPerPage, FamilyMember.memberCountPerPage, FamilyMember.curSelectTitle, "FamilyMember_获取特定称号成员", "FamilyMember.GetSpecificMemberList")
end

function FamilyMember.RefreshCurPage()
	if FamilyMember.ShowOnlineMember then
		CL:GetFamilyOnlineMenberList((FamilyMember.nowPage - 1) * FamilyMember.memberCountPerPage, FamilyMember.memberCountPerPage, FamilyMember.curSelectTitle, "FamilyMember_获取特定称号成员", "FamilyMember.GetSpecificMemberList")
	else
		CL:GetFamilyMenberList((FamilyMember.nowPage - 1) * FamilyMember.memberCountPerPage, FamilyMember.memberCountPerPage, FamilyMember.curSelectTitle, "FamilyMember_获取特定称号成员", "FamilyMember.GetSpecificMemberList")
	end
end

function FamilyMember.OnListLBtnClick()
	local name
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_MemberListBox")
	if _GUIHandle ~= 0 then
		local line =GUI:ListBoxGetCurSelLine(_GUIHandle)
		local col = GUI:ListBoxGetCurSelCol(_GUIHandle)
		name = GUI:ListBoxGetString(_GUIHandle, line, col)
	end

	for i = 1, #FamilyMember.MemberList do
		if FamilyMember.MemberList[i][2] == name then
			if GUI:WndFindChildM(FamilyMember.WndHandle, "FamilyMember_InfoWnd") == 0 then
				UI:Lua_OpenWindow(FamilyMember.WndHandle, "FamilyMember_InfoWnd.lua")
			end
			FamilyMember_InfoWnd.UpdataData(FamilyMember.MemberList[i])
			return
		end
	end
end

function FamilyMember.OnListRBtnClick()
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_MemberListBox")
	if _GUIHandle ~= 0 then
		if GUI:ListBoxGetCurSelLine(_GUIHandle) >= 0 then
			Temporary = FamilyMember.RankMenu
			GUI:MenuShowPopupMenu(true)
		end
	end
end

function FamilyMember.OnMenuClick(_Handle,_Param)
--[[
	GUI:MenuAddItem(0,"加为好友",0,-1,1900340224)
	GUI:MenuAddItem(1,"邀请入队",0,-1,1900340224)
	GUI:MenuAddItem(2,"发送密语",0,-1,1900340224)
	GUI:MenuAddItem(3,"加入仇人列表",0,-1,1900340224)
	GUI:MenuAddItem(4,"复制姓名",0,-1,1900340224)
	GUI:MenuAddItem(5,"查看资料",0,-1,1900340224)
--]]
	local _GUIHandle = GUI:WndFindChildM(FamilyMember.WndHandle, "_MemberListBox")
	if _GUIHandle ~= 0 then
		local line =GUI:ListBoxGetCurSelLine(_GUIHandle)
		local col = GUI:ListBoxGetCurSelCol(_GUIHandle)
		local name = GUI:ListBoxGetString(_GUIHandle, line, col)
		if _Param == 0 then
			CL:LogicAddFriend(name)
		elseif _Param == 1 then
			CL:LogicTeamInvite(name)
		elseif _Param == 2 then
			CL:LogicSendPrivateTalk(name)
		elseif _Param == 3 then
			CL:LogicAddToBlackList(name)
		elseif _Param == 4 then
			CL:CopyTextToClipBoard(name)
			msg('已复制玩家名字，可“CTRL+V”粘帖！')
		elseif _Param == 5 then
			CL:LogicLookInfo(name)
		end
	end
end

FamilyMember.main()