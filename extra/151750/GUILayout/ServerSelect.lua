ServerSelect = {}

function ServerSelect.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = _Parent
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	local _PosDiffX = (_DeviceSizeX - 1850) / 2
	local _PosDiffY = (_DeviceSizeY - 900) / 2

	local _ImageHandle0 = GUI:ImageCreate(_GUIHandle, "BackImage0", 1804300001, 0, 0)
	if _ImageHandle0 ~= 0 then
		GUI:ImageSetCheckPoint(_ImageHandle0, 0)
		GUI:WndSetPosM(_ImageHandle0, _PosDiffX, _PosDiffY)
	end

	local _ModifyX = -70
	-- local _EffectHandle0 = GUI:ImageCreate(_GUIHandle, "EffectImage0", 3090000000, 0, 0)
	-- if _EffectHandle0 ~= 0 then
	-- 	GUI:ImageSetCheckPoint(_EffectHandle0, 0)
	-- 	GUI:WndSetPosM(_EffectHandle0, _PosDiffX + 1551 + _ModifyX, _PosDiffY + 522)
	-- end

	-- local _EffectHandle1 = GUI:ImageCreate(_GUIHandle, "EffectImage1", 3090001000, 0, 0)
	-- if _EffectHandle1 ~= 0 then
	-- 	GUI:ImageSetCheckPoint(_EffectHandle1, 0)
	-- 	GUI:WndSetPosM(_EffectHandle1, _PosDiffX + 1039 + _ModifyX, _PosDiffY + 412)
	-- end

	-- local _EffectHandle2 = GUI:ImageCreate(_GUIHandle, "EffectImage2", 3090002000, 0, 0)
	-- if _EffectHandle2 ~= 0 then
	-- 	GUI:ImageSetCheckPoint(_EffectHandle2, 0)
	-- 	GUI:WndSetPosM(_EffectHandle2, _PosDiffX + 23 + _ModifyX, _PosDiffY + 496)
	-- end

	-- local _EffectHandle3 = GUI:ImageCreate(_GUIHandle, "EffectImage3", 3090003000, 0, 0)
	-- if _EffectHandle3 ~= 0 then
	-- 	GUI:ImageSetCheckPoint(_EffectHandle2, 0)
	-- 	GUI:WndSetPosM(_EffectHandle3, _PosDiffX + 575 + _ModifyX, _PosDiffY + 404)
	-- end

	
	-- local _EffectHandle4 = GUI:ImageCreate(_GUIHandle, "EffectImage4", 3090100000, 0, 0)
	-- if _EffectHandle4 ~= 0 then
	-- 	GUI:ImageSetCheckPoint(_EffectHandle4, 0)
	-- 	GUI:WndSetPosM(_EffectHandle4, _PosDiffX + 1517 + _ModifyX, _PosDiffY + 44)
	-- end

	
	-- local _EffectHandle5 = GUI:ImageCreate(_GUIHandle, "EffectImage5", 3090101000, 0, 0)
	-- if _EffectHandle5 ~= 0 then
	-- 	GUI:ImageSetCheckPoint(_EffectHandle5, 0)
	-- 	GUI:WndSetPosM(_EffectHandle5, _PosDiffX + 474 + _ModifyX, _PosDiffY + 150)
	-- end

	
	-- local _EffectHandle6 = GUI:ImageCreate(_GUIHandle, "EffectImage6", 3090102000, 0, 0)
	-- if _EffectHandle6 ~= 0 then
	-- 	GUI:ImageSetCheckPoint(_EffectHandle6, 0)
	-- 	GUI:WndSetPosM(_EffectHandle6, _PosDiffX + 144 + _ModifyX, _PosDiffY + 208)
	-- end


	local _TitleHandle = GUI:ImageCreate(_GUIHandle, "ServerTitle", 1804300017, _PosDiffX + 861, _PosDiffY + 421)

	local _ServerCount = CL:GetTestServerNameList(_GUIHandle);
	if _ServerCount == 1 then --直接进入
		if ServerSelect_times == nil then
			ServerSelect_times = 1
			CL:DoSelectServer(_GUIHandle, 1)
		end
	end
	if _ServerCount > 0 then
		local  _XStartPos = 440
		local _TotalSize = _ServerCount * 40
		local _YStartPos = 305
		_YStartPos = 190 -  _TotalSize / 2 + _YStartPos

		for _Idx = 1, _ServerCount do
			local _ServerName = LuaRet[_Idx]
			local _PosX = _XStartPos - 1024 / 2 + _DeviceSizeX / 2
			local _PosY = _YStartPos - 768 / 2 + _DeviceSizeY / 2

			local _ButtonID = "ServerButton".._Idx
			local _ButtonHandle = GUI:ButtonCreate(_GUIHandle, _ButtonID, 1804300018, _PosX, _PosY);
			if _ButtonHandle ~= 0 then
				GUI:WndSetParam(_ButtonHandle, _Idx)
				GUI:WndRegistScript(_ButtonHandle,RDWndBaseCL_mouse_lbUp, "ServerSelect.ServerBtnSelect")
			end

			local _EditID = "ServerEdit".._Idx
			_PosX = _XStartPos + 10 - 1024 / 2 + _DeviceSizeX / 2 - 15
			_PosY = _YStartPos - 768 / 2 + 3 + _DeviceSizeY / 2
			local _EditHandle = GUI:EditCreate(_GUIHandle, _EditID, _PosX, _PosY, 170, 21)
			--local _EditHandle = 0
			if _EditHandle ~= 0 then
				GUI:EditSetFontCenter(_EditHandle)
				GUI:EditSetFontM(_EditHandle, "SIMLI")
				GUI:EditSetTextM(_EditHandle, _ServerName)
				GUI:WndSetEnableM(_EditHandle, false)
			end 
			_YStartPos = _YStartPos + 40
		end
	end
end
ServerSelect.main()


function ServerSelect.ServerBtnSelect(_Handle,_Param)
	if _Handle ~= 0 then 
		local _Index = GUI:WndGetParam(_Handle)
		local _ParentHandle = GUI:WndGetParentM(_Handle)
		if _ParentHandle ~= 0 then
			CL:DoSelectServer(_ParentHandle, _Index)
		end
	end
end

function ServerSelect.QuiteBtnSelect(_Handle,_Param)
	if _Handle ~= 0 then 
		local _ParentHandle = GUI:WndGetParentM(_Handle)
		if _ParentHandle ~= 0 then
			CL:DoServerQuite(_ParentHandle)
		end
	end
end