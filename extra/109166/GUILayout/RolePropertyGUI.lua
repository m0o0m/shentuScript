RolePropertyGUI = {}


function RolePropertyGUI.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = _Parent

    local _BackImage = GUI:ImageCreate(_GUIHandle, "GUI_2", 1910300002, 33, -1)
    if _BackImage ~= 0 then
		GUI:WndSetCanRevMsg(_BackImage, false);
    end

	local _EditHandle = GUI:EditCreate(_GUIHandle, "HandPowerEdit", 100, 122, 57, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "HitEdit", 100, 63, 57, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "MissEdit", 100, 152, 57, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "ExtremAtcEdit", 100, 92, 57, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "PhyDefEdit", 265, 34, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "PhyAttacEdit", 265, 92, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "MagicAttacEdit", 265, 122, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "DaoAttacEdit", 265, 150, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "MagicDefineEdit", 265, 63, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "RoleLucky", 265, 180, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "WeightEdit", 100, 178, 61, 20)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "RoleWareWeightEdit", 100, 207, 61, 20)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

    RolePropertyGUI.UIInit(_Parent)
end


--UI Logic Code Start
RolePropertyGUI.WndHandle = 0
function RolePropertyGUI.UIInit(_Parent)
	RolePropertyGUI.WndHandle = _Parent
	GUI:WndRegistScript(_Parent, RDWndBaseCL_wnd_visible, "RolePropertyGUI.OnVisible");
end

function RolePropertyGUI.OnVisible(_Handle)
	local _Status = GUI:WndFindWindow(_Handle, "parent,RoleStatus");
	if 0 ~= _Status then
		GUI:WndSetVisible(_Status, GUI:WndGetVisible(_Handle));
		GUI:WndMoveToParentTop(_Status);
	end
end


RolePropertyGUI.main()