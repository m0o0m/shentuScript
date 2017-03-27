function LuaUI.FamilyWnd.OnInit(this)
	CL:AddDelayTask("LuaUI.FamilyWnd.DelayInit("..this..")", 0, 1);
end

function LuaUI.FamilyWnd.DelayInit(this)
	local _GUIHandle = GUI:WndFindChildM(this, "ApplyListBtn");
	if 0 ~= _GUIHandle then
		GUI:WndSetPosM(_GUIHandle, 450, 200);
	end
	
	local _Wnd = GUI:WndFindChildM(this, "FamilyMain");
	if 0 ~= _Wnd then		
		_GUIHandle = GUI:EditCreate(_Wnd, "Text0", 443, 338, 60, 16);
		if 0 ~= _GUIHandle then
			GUI:EditSetTextM(_GUIHandle, "行会成立：");
			GUI:EditSetTextColor(_GUIHandle, 4291670162);
			GUI:WndSetEnableM(_GUIHandle, false);
			GUI:WndMoveToParentTop(_GUIHandle);
		end
		
		_GUIHandle = GUI:WndFindChildM(_Wnd, "FamilyDismissBtn");
		if 0 ~= _GUIHandle then
			GUI:WndSetVisible(_GUIHandle, false);
		end
		
		_GUIHandle = GUI:WndFindChildM(_Wnd, "CreateTimeEdit");
		if 0 ~= _GUIHandle then
			GUI:EditSetTextColor(_GUIHandle, 4291670162);
		end
	end
	
	_Wnd = GUI:WndFindChildM(this, "FamilyRelation");
	if 0 ~= _Wnd then		
		_GUIHandle = GUI:EditCreate(_Wnd, "Text0", 443, 338, 60, 16);
		if 0 ~= _GUIHandle then
			GUI:EditSetTextM(_GUIHandle, "行会成立：");
			GUI:EditSetTextColor(_GUIHandle, 4291670162);
			GUI:WndSetEnableM(_GUIHandle, false);
			GUI:WndMoveToParentTop(_GUIHandle);
		end
		
		_GUIHandle = GUI:WndFindChildM(_Wnd, "CreateTimeEdit");
		if 0 ~= _GUIHandle then
			GUI:EditSetTextColor(_GUIHandle, 4291670162);
		end
	end
	
	_Wnd = GUI:WndFindChildM(this, "FamilyMember");
	if 0 ~= _Wnd then		
		_GUIHandle = GUI:EditCreate(_Wnd, "Text0", 443, 338, 60, 16);
		if 0 ~= _GUIHandle then
			GUI:EditSetTextM(_GUIHandle, "行会成立：");
			GUI:EditSetTextColor(_GUIHandle, 4291670162);
			GUI:WndSetEnableM(_GUIHandle, false);
			GUI:WndMoveToParentTop(_GUIHandle);
		end
		
		_GUIHandle = GUI:EditCreate(_Wnd, "Text1", 30, 162, 60, 16);
		--[[if 0 ~= _GUIHandle then
			GUI:EditSetTextM(_GUIHandle, "成员：");
			GUI:EditSetTextColor(_GUIHandle, 4280860261);
			GUI:WndSetEnableM(_GUIHandle, false);
			GUI:WndMoveToParentTop(_GUIHandle);
		end--]]
		
		_GUIHandle = GUI:WndFindChildM(_Wnd, "MemberNumEdit");
		if 0 ~= _GUIHandle then
			GUI:EditSetTextColor(_GUIHandle, 4280860261);
		end
		
		_GUIHandle = GUI:WndFindChildM(_Wnd, "CreateTimeEdit");
		if 0 ~= _GUIHandle then
			GUI:EditSetTextColor(_GUIHandle, 4291670162);
		end
		
		_GUIHandle = GUI:ButtonCreate(_Wnd, "FamilyDismissBtn", 1910000001, 425, 314);
		if 0 ~= _GUIHandle then
			GUI:WndSetTextM(_GUIHandle, "解散行会");
			GUI:WndSetTextColorM(_GUIHandle, 3905407967);
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "LuaUI.FamilyWnd.OnDismiss");
		end
		
		_GUIHandle = GUI:ButtonCreate(_Wnd, "ApplyListBtn", 1910000001, 499, 314);
		if 0 ~= _GUIHandle then
			GUI:WndSetTextM(_GUIHandle, "申请列表");
			GUI:WndSetTextColorM(_GUIHandle, 3905407967);
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "LuaUI.FamilyWnd.ApplyList");
		end
	end
end

function LuaUI.FamilyWnd.OnDismiss()
	WndClick(0, "FamilyWnd,FamilyMain,FamilyDismissBtn");
end

function LuaUI.FamilyWnd.ApplyList()
	WndClick(0, "FamilyWnd,ApplyListBtn");
end