TeamRoleHeadInfo = {}
TeamRoleHeadInfo.TeamMember = {}
TeamRoleHeadInfo.WndHandle = 0
TeamRoleHeadInfo.timerid = 0
TeamRoleHeadInfo._hideWnd = 0
function TeamRoleHeadInfo.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = _Parent
	
	local _image = GUIImageCreate(_GUIHandle,"GUI_2",1800500210,0,0)
	if _image ~= 0 then
		GUIWndSetEnableM(_image,false)
	end
	
	GUIImageCreate(_GUIHandle, "Buff0", 0, 85, 55)
	GUIImageCreate(_GUIHandle, "Buff1", 0, 111, 55)
	GUIImageCreate(_GUIHandle, "Buff2", 0, 137, 55)
	GUIImageCreate(_GUIHandle, "Buff3", 0, 163, 55)
	GUIImageCreate(_GUIHandle, "Buff4", 0, 189, 55)
	
	local _blood = GUI:ImageCreate(_GUIHandle,"RoleHP",1800500211,76,42)
	if _blood ~= 0 then
		GUIWndSetEnableM(_blood,false)
	end
	
	local _name = GUI:EditCreate(_GUIHandle,"RoleName",64,18,100,18)
	if _name ~= 0 then
		GUIWndSetEnableM(_name, false)
		GUIEditSetCanEdit(_name, false)
		GUIEditSetTextM(_name,"")
	end
	
	
	local _level1 = GUI:EditCreate(_GUIHandle,"Level",40,40,50,18)
	if _level1 ~= 0 then
		GUIWndSetEnableM(_level1, false)
		GUIEditSetCanEdit(_level1, false)
		GUIEditSetTextM(_level1,"")
	end
	
	
	local _title = GUI:ImageCreate(_GUIHandle,"HeaderImage",0,0,-7)
	if _title ~= 0 then
		GUIWndSetEnableM(_title,false)
		GUIImageSetFitSize(_title, true)
		GUIWndSetSizeM(_title, 60, 60)
	end
	TeamRoleHeadInfo.UIInit(_GUIHandle)
end

function TeamRoleHeadInfo.UIInit(_Handle)
	TeamRoleHeadInfo.WndHandle = _Handle
end

TeamRoleHeadInfo.main()