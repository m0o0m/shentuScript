FamilySetTitleWnd = {}
function FamilySetTitleWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _Parent = GUI:WndCreateWnd(_Parent,"BackImg",1901400210,200,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,192, 407)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SetBtn",1930001006,70,348)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilySetTitleWnd.OnSetBtn")
        GUI:WndSetTextM(_GUIHandle,"授  予")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,162,9)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FamilySetTitleWnd.OnCloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"TitlesLB",23,82,155,236)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
        FamilySetTitleWnd.UIInit(_Parent)
end

--UI Logic Code Start
FamilySetTitleWnd.tTitle = {}
function FamilySetTitleWnd.UIInit(_Handle)
	FamilySetTitleWnd.WndHandle = _Handle
	GUI:WndSetMoveWithLBM(FamilySetTitleWnd.WndHandle)
	GUI:WndSetIsESCClose(FamilySetTitleWnd.WndHandle, true)
	GUI:WndSetFlagsM(FamilySetTitleWnd.WndHandle, flg_wndBase_autoTop)

	CL:FamilyInfoRequest(4,"FamilySetTitleWnd_行会称号列表", "FamilySetTitleWnd.getFamilyTitleList")
end

function FamilySetTitleWnd.getFamilyTitleList()
	--LuaParam[1]是luatable对象, 表中每个为{id, TITLE_Name}对象
	FamilySetTitleWnd.tTitle = {}
	for k, v in pairs(LuaParam[1]) do
		FamilySetTitleWnd.tTitle[tonumber(v[1])] = v
	end
	local _GUIHandle = GUI:WndFindChildM(FamilySetTitleWnd.WndHandle, "TitlesLB")
	if _GUIHandle ~= 0 then
		GUI:ListBoxClear(_GUIHandle)
		for i = 1, #FamilySetTitleWnd.tTitle do
			GUI:ListBoxAddString(_GUIHandle, tostring(FamilySetTitleWnd.tTitle[i][2]), 4294967295)
		end
		GUI:ListBoxAddString(_GUIHandle, tostring(FamilySetTitleWnd.tTitle[0][2]), 4294967295)	--行会成员
	end
end

function FamilySetTitleWnd.OnCloseBtn(_Handle,_Param)
	GUI:WndClose(FamilySetTitleWnd.WndHandle)
end

function FamilySetTitleWnd.OnSetBtn()
	local _GUIHandle = GUI:WndFindChildM(FamilySetTitleWnd.WndHandle, "TitlesLB")
	if _GUIHandle ~= 0 then
		local row = GUI:ListBoxGetCurSelLine(_GUIHandle)
		if row >= 0 then
			for i = 0, #FamilySetTitleWnd.tTitle do
				local rowStr = GUI:ListBoxGetString(_GUIHandle, row, 0)
				if FamilySetTitleWnd.tTitle[i][2] == rowStr then
					local tid = FamilySetTitleWnd.tTitle[i][1]
					if tid >= 0 then
						--msg(tostring(tid) .. '--'..tostring(FamilyMember.OperateGuid))
						CL:FamilyEntitle(tid ,FamilyMember.OperateGuid)
						FamilyMember.RefreshCurPage()
						GUI:WndClose(FamilySetTitleWnd.WndHandle)
					end
				end
			end
		else
			UI:Lua_MessageBox("MessageBox", 0, MESSAGE_STYLE_OK, "请选择要设置封号")
		end
	end	
end

FamilySetTitleWnd.main()




