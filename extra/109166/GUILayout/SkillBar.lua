SkillBar = {}
function SkillBar.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1910200166,-7,-2)
	if _GUIHandle ~= 0 then
	
		GUI:ImageSetColor(_GUIHandle, 4290950816)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill0",-1,62,1,36,36)
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 0)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill1",-1,103,1,36,36)
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 0)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill2",-1,144,1,36,36)
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 0)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill3",-1,185,1,36,36)
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 0)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill4",-1,226,1,36,36)
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 0)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill5",-1,267,1,36,36)
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 0)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill6",-1,308,1,36,36)
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 0)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill7",-1,349,1,36,36)
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 0)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill8",-1,390,1,36,36)
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 0)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
	
	
	--[[_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill9",-1,432,4,36,36)
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 0)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end--]]
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit0",69,22,10,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit1",109,22,10,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4294967295)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit2",149,22,10,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4294967295)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit3",189,22,10,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4294967295)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit4",229,22,10,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4294967295)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit5",269,22,10,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4294967295)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit6",309,22,10,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4294967295)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit7",349,22,10,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4294967295)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit8",389,22,10,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4294967295)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit9",432,22,10,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, 4294967295)
	end
	
	for i = 1, 9 do
		_GUIHandle = GUI:EditCreate(_Parent, "HotKey"..i, 40*i+32, 4, 10, 16);
		if 0 ~= _GUIHandle then
			GUI:EditSetTextM(_GUIHandle, tostring(i));
			GUI:WndSetEnableM(_GUIHandle, false);
			local _Item = GUI:WndFindChildM(_Parent, "Skill"..(i-1));
			if 0 ~= _Item then
				local x, y = WndGetPosM(_Item);
				GUI:WndSetPosM(_GUIHandle, x+2, y-2);
			end
		end
	end
	
	SkillBar.UIInit(_Parent)
end

--UI Logic Code Start
function SkillBar.UIInit(_Handle)
	local _ScreenWidth = CL:GetScreenWidth()
	local _ScreenHeight = CL:GetScreenHeight()
	--[[if _ScreenWidth < 950 then
		local _GUIHandle = GUI:WndFindChildM(_Handle, "BackImage")
		if 0 ~= _GUIHandle then
			GUI:WndSetImageID(_GUIHandle, 1900300051)
		end
		
		-- 多余六个的关掉
		local _StartItemHandle = GUI:WndFindChildM(_Handle, "Skill0")
		GUI:WndGetPosM(_StartItemHandle)
		local _ItemCtrlStartX = LuaRet[1]
		local _ItemCtrlStartY = LuaRet[2]
		for _Idx = 0, 9 do
			local _ItemID = "Skill".._Idx
			local _EditID = "Edit".._Idx
			if _Idx < 6 then
				local _GUIHandle = GUI:WndFindChildM(_Handle, _ItemID)
				GUI:WndSetPosM(_GUIHandle, _ItemCtrlStartX + 45 * _Idx, _ItemCtrlStartY)
			else
				local _ItemGUIHandle = GUI:WndFindChildM(_Handle, _ItemID)
				local _EditGUIHandle = GUI:WndFindChildM(_Handle, _EditID)
				GUI:WndClose(_ItemGUIHandle)
				GUI:WndClose(_EditGUIHandle)
			end
		end
		GUI:WndSetPosM(_Handle, 217, _ScreenHeight - 203)
	else
		GUI:WndSetPosM(_Handle, _ScreenWidth / 2 - 246, _ScreenHeight - 194)
	end--]]
	GUI:WndSetPosM(_Handle, _ScreenWidth / 2 - 246, _ScreenHeight - 194)
end

SkillBar.main()