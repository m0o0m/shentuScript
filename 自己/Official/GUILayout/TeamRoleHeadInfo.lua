TeamRoleHeadInfo = {}
TeamRoleHeadInfo.TeamMember = {}
TeamRoleHeadInfo.WndHandle = 0
TeamRoleHeadInfo.timerid = 0
TeamRoleHeadInfo._hideWnd = 0
function TeamRoleHeadInfo.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = _Parent
	
	local _image = GUI:ImageCreate(_GUIHandle,"GUI_2",1800500210,0,0)
	if _image ~= 0 then
		GUI:WndSetEnableM(_image,false)
	end
	
	GUI:ImageCreate(_GUIHandle, "Buff0", 0, 85, 55)
	GUI:ImageCreate(_GUIHandle, "Buff1", 0, 111, 55)
	GUI:ImageCreate(_GUIHandle, "Buff2", 0, 137, 55)
	GUI:ImageCreate(_GUIHandle, "Buff3", 0, 163, 55)
	GUI:ImageCreate(_GUIHandle, "Buff4", 0, 189, 55)
	
	local _blood = GUI:ImageCreate(_GUIHandle,"RoleHP",1800500211,76,42)
	if _blood ~= 0 then
		GUI:WndSetEnableM(_blood,false)
	end
	
	local _name = GUI:EditCreate(_GUIHandle,"RoleName",64,18,100,18)
	if _name ~= 0 then
		GUI:WndSetEnableM(_name, false)
		GUI:EditSetCanEdit(_name, false)
		GUI:EditSetTextM(_name,"")
	end
	
	
	local _level1 = GUI:EditCreate(_GUIHandle,"Level",40,40,50,18)
	if _level1 ~= 0 then
		GUI:WndSetEnableM(_level1, false)
		GUI:EditSetCanEdit(_level1, false)
		GUI:EditSetTextM(_level1,"")
	end
	
	
	local _title = GUI:ImageCreate(_GUIHandle,"HeaderImage",0,0,0)
	if _title ~= 0 then
		GUI:WndSetEnableM(_title,false)
		GUI:ImageSetFitSize(_title, true)
		GUI:WndSetSizeM(_title, 60, 60)
	end
	TeamRoleHeadInfo.UIInit(_GUIHandle)
end

function TeamRoleHeadInfo.UIInit(_Handle)
	TeamRoleHeadInfo.WndHandle = _Handle
	GUI:WndSetSizeM(TeamRoleHeadInfo.WndHandle, 175, 65)

end

TeamRoleHeadInfo.main()