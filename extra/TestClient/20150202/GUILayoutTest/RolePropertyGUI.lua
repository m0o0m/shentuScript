RolePropertyGUI = {}


function RolePropertyGUI.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = _Parent

    local _BackImage = GUI:ImageCreate(_GUIHandle, "GUI_2", 1930200106, 0, 0)
    if _BackImage ~= 0 then
    end

	local _EditHandle = GUI:EditCreate(_GUIHandle, "HandPowerEdit", 175, 81, 55, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "HitEdit", 175, 129, 57, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "MissEdit", 175, 104, 57, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "ExtremAtcEdit", 175, 154, 57, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "PhyDefEdit", 38, 35, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "PhyAttacEdit", 38, 84, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "MagicAttacEdit", 38, 108, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "DaoAttacEdit", 38, 133, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "MagicDefineEdit", 38, 61, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "RoleLucky", 38, 157, 68, 16)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "WeightEdit", 175, 32, 61, 20)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "RoleWareWeightEdit", 175, 55, 61, 20)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "HPEdit", 175, 178, 74, 20)
	if _EditHandle ~= 0 then
		GUI:WndSetEnableM(_EditHandle, false)
		GUI:EditSetLimitStringSize(_EditHandle, false)		
	end

	_EditHandle = GUI:EditCreate(_GUIHandle, "MPEdit", 175, 203, 74, 20)
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
end


RolePropertyGUI.main()