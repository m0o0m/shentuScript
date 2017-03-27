GameCustomSetting = {}
function GameCustomSetting.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:WndCreateWnd(_Parent, "GameCustomSetting", 0, 0, 0)
	_Parent = _GUIHandle

	_GUIHandle = GUI:CheckBoxCreate(_Parent, "AutoKaiTian", 1850000272, "自动裂地斩", 72, 118)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameCustomSetting.KaiTianAutoCheck")
		GUI:WndSetTextM(_GUIHandle, "自动裂地斩")
		GUI:WndSetTextColorM(_GUIHandle, 4291932767)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
	end

	
	GameCustomSetting.UIInit(_Parent)
end

--UI Logic Code Start
GameCustomSetting.WndHandle = 0

function GameCustomSetting.UIInit(_Handle)
	GameCustomSetting.WndHandle = _Handle

	local _AutoKaiTianHandle = GUI:WndFindWindow(_Handle, "AutoKaiTian")
	if _AutoKaiTianHandle ~= 0 then
		if CL:GetPlayerCustomData("AutoKaiTian") then
			local _AutoKaiTian = LuaRet
			if _AutoKaiTian ~= 0 then
				GUI:CheckBoxSetCheck(_AutoKaiTianHandle, true)	
			else
				GUI:CheckBoxSetCheck(_AutoKaiTianHandle, false)	
			end
		end
	end
end
GameCustomSetting.main()


function GameCustomSetting.KaiTianAutoCheck(_Handle,_Param)
	if _Handle ~= 0 then 
		local _DataCheck = GUI:CheckBoxGetCheck(_Handle)
		if _DataCheck then
			CL:SetPlayerCustomData("AutoKaiTian", 1)
			CL:AddAttackAutoUseSkill(1060)
			CL:SavePlayerCustomData()
		else
			CL:SetPlayerCustomData("AutoKaiTian", 0)
			CL:DelAttackAutoUseSkill(1060)
			CL:SavePlayerCustomData()
		end
	end
end