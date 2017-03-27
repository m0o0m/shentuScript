function LuaUI.FamilyListWnd.OnInit(this)

	local _GUIHandle = GUI:EditCreate(this, "NumText", 0, 0, 120, 60);
	if 0 ~= _GUIHandle then
		EditSetProp(_GUIHandle, nil, true, true, false, false, 4291670162, false, "行会数量：");
	end
end