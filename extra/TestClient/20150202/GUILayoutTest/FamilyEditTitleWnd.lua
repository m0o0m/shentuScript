FamilyEditTitleWnd = {}
function FamilyEditTitleWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"BackImg",1901400211,200,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,192, 407)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,162,9)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyEditTitleWnd.OnCloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CreateBtn",1930001006,28,329)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyEditTitleWnd.OnCreateBtn")
        GUI:WndSetTextM(_GUIHandle,"创  建")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"EditBtn",1930001006,107,329)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyEditTitleWnd.OnEditBtn")
        GUI:WndSetTextM(_GUIHandle,"编  辑")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"DelBtn",1930001006,28,365)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyEditTitleWnd.OnDelBtn")
        GUI:WndSetTextM(_GUIHandle,"删  除")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CancelBtn",1930001006,107,365)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilyEditTitleWnd.OnCancelBtn")
        GUI:WndSetTextM(_GUIHandle,"关  闭")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"TitlesLB",23,82,155,236)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    FamilyEditTitleWnd.UIInit(_Parent)
end

--UI Logic Code Start
FamilyEditTitleWnd.tTitle = {}
FamilyEditTitleWnd.OldTitle = 0
FamilyEditTitleWnd.OldTitleName = 0
function FamilyEditTitleWnd.UIInit(_Handle)
	FamilyEditTitleWnd.WndHandle = _Handle
	GUI:WndSetMoveWithLBM(FamilyEditTitleWnd.WndHandle)
	GUI:WndSetIsESCClose(FamilyEditTitleWnd.WndHandle, true)
	GUI:WndSetFlagsM(FamilyEditTitleWnd.WndHandle, flg_wndBase_autoTop)

	CL:FamilyInfoRequest(4,"FamilyEditTitleWnd_行会称号列表", "FamilyEditTitleWnd.getFamilyTitleList")
end

function FamilyEditTitleWnd.getFamilyTitleList()
	--LuaParam[1]是luatable对象, 表中每个为{id, TITLE_Name}对象
	FamilyEditTitleWnd.tTitle = {}
	for k, v in pairs(LuaParam[1]) do
		FamilyEditTitleWnd.tTitle[tonumber(v[1])] = v
	end
	local _GUIHandle = GUI:WndFindChildM(FamilyEditTitleWnd.WndHandle, "TitlesLB")
	if _GUIHandle ~= 0 then
		GUI:ListBoxClear(_GUIHandle)
		for i = 1, #FamilyEditTitleWnd.tTitle do
			GUI:ListBoxAddString(_GUIHandle, tostring(FamilyEditTitleWnd.tTitle[i][2]), 4294967295)
		end
		GUI:ListBoxAddString(_GUIHandle, tostring(FamilyEditTitleWnd.tTitle[0][2]), 4294967295)	--行会成员
	end
end

function FamilyEditTitleWnd.OnCloseBtn(_Handle,_Param)
	GUI:WndClose(FamilyEditTitleWnd.WndHandle)
end

function FamilyEditTitleWnd.OnCreateBtn(_Handle,_Param)
	--创建输入窗口
	UI:Lua_OpenWindow(FamilyEditTitleWnd.WndHandle, "FamilyTitleInputBox_Create.lua")
end

function FamilyEditTitleWnd.OnEditBtn(_Handle,_Param)
	local _GUIHandle = GUI:WndFindChildM(FamilyEditTitleWnd.WndHandle, "TitlesLB")
	if _GUIHandle ~= 0 then
		local row = GUI:ListBoxGetCurSelLine(_GUIHandle)
		if row >= 0 then
			for i = 0, #FamilyEditTitleWnd.tTitle do
				local rowStr = GUI:ListBoxGetString(_GUIHandle, row, 0)
				if FamilyEditTitleWnd.tTitle[i][2] == rowStr then
					local tid = FamilyEditTitleWnd.tTitle[i][1]
					if tid >= 0 then
						FamilyEditTitleWnd.OldTitle = tid
						FamilyEditTitleWnd.OldTitleName = FamilyEditTitleWnd.tTitle[i][2]
						UI:Lua_OpenWindow(FamilyEditTitleWnd.WndHandle, "FamilyTitleInputBox_Modify.lua")
					end
				end
			end
		else
			UI:Lua_MessageBox("MessageBox", 0, MESSAGE_STYLE_OK, "请选择待删除的封号")
		end
	end	
end

function FamilyEditTitleWnd.OnDelBtn(_Handle,_Param)
	local _GUIHandle = GUI:WndFindChildM(FamilyEditTitleWnd.WndHandle, "TitlesLB")
	if _GUIHandle ~= 0 then
		local row = GUI:ListBoxGetCurSelLine(_GUIHandle)
		if row >= 0 then
			for i = 0, #FamilyEditTitleWnd.tTitle do
				local rowStr = GUI:ListBoxGetString(_GUIHandle, row, 0)
				if FamilyEditTitleWnd.tTitle[i][2] == rowStr then
					local tid = FamilyEditTitleWnd.tTitle[i][1]
					if tid >= 0 and tid <= 3 then
						UI:Lua_MessageBox("MessageBox", 0, MESSAGE_STYLE_OK, "默认封号不可删除")
					else
						CL:FamilyDeleteTitle(tid, "FamilyEditTitleWnd_删除封号", "FamilyEditTitleWnd.UpdateTitleList")
					end
				end
			end
		else
			UI:Lua_MessageBox("MessageBox", 0, MESSAGE_STYLE_OK, "请选择待删除的封号")
		end
	end	
end

function FamilyEditTitleWnd.UpdateTitleList()
	FamilyMember.getFamilyTitleList()
	FamilyEditTitleWnd.getFamilyTitleList()
end

function FamilyEditTitleWnd.OnCancelBtn(_Handle,_Param)
	GUI:WndClose(FamilyEditTitleWnd.WndHandle)
end

FamilyEditTitleWnd.main()