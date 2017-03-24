LoginIn = {}

function LoginIn.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = _Parent
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	local _PosDiffX = (_DeviceSizeX - 1850) / 2
	local _PosDiffY = (_DeviceSizeY - 900) / 2

	local _ImageHandle0 = GUI:ImageCreate(_GUIHandle, "NewBackImage0", 1804300001, 0, 0)
	if _ImageHandle0 ~= 0 then
		GUI:ImageSetCheckPoint(_ImageHandle0, 0)
		GUI:WndSetPosM(_ImageHandle0, _PosDiffX, _PosDiffY)
	end

	local _ModifyX = -70
	local _DoorEffect = GUI:ImageCreate(_GUIHandle, "NewDoorEffect", 3090200000, _PosDiffX + 591, _PosDiffY + 233)
	if _DoorEffect ~= 0 then
		
	end

	
	local _EffectHandle0 = GUI:ImageCreate(_GUIHandle, "EffectImage0", 3090000000, 0, 0)
	if _EffectHandle0 ~= 0 then
		GUI:ImageSetCheckPoint(_EffectHandle0, 0)
		GUI:WndSetPosM(_EffectHandle0, _PosDiffX + 1551 + _ModifyX, _PosDiffY + 522)
	end

	local _EffectHandle1 = GUI:ImageCreate(_GUIHandle, "EffectImage1", 3090001000, 0, 0)
	if _EffectHandle1 ~= 0 then
		GUI:ImageSetCheckPoint(_EffectHandle1, 0)
		GUI:WndSetPosM(_EffectHandle1, _PosDiffX + 1039 + _ModifyX, _PosDiffY + 412)
	end

	local _EffectHandle2 = GUI:ImageCreate(_GUIHandle, "EffectImage2", 3090002000, 0, 0)
	if _EffectHandle2 ~= 0 then
		GUI:ImageSetCheckPoint(_EffectHandle2, 0)
		GUI:WndSetPosM(_EffectHandle2, _PosDiffX + 23 + _ModifyX, _PosDiffY + 496)
	end

	local _EffectHandle3 = GUI:ImageCreate(_GUIHandle, "EffectImage3", 3090003000, 0, 0)
	if _EffectHandle3 ~= 0 then
		GUI:ImageSetCheckPoint(_EffectHandle2, 0)
		GUI:WndSetPosM(_EffectHandle3, _PosDiffX + 575 + _ModifyX, _PosDiffY + 404)
	end

	
	local _EffectHandle4 = GUI:ImageCreate(_GUIHandle, "EffectImage4", 3090100000, 0, 0)
	if _EffectHandle4 ~= 0 then
		GUI:ImageSetCheckPoint(_EffectHandle4, 0)
		GUI:WndSetPosM(_EffectHandle4, _PosDiffX + 1517 + _ModifyX, _PosDiffY + 44)
	end

	
	local _EffectHandle5 = GUI:ImageCreate(_GUIHandle, "EffectImage5", 3090101000, 0, 0)
	if _EffectHandle5 ~= 0 then
		GUI:ImageSetCheckPoint(_EffectHandle5, 0)
		GUI:WndSetPosM(_EffectHandle5, _PosDiffX + 474 + _ModifyX, _PosDiffY + 150)
	end

	
	local _EffectHandle6 = GUI:ImageCreate(_GUIHandle, "EffectImage6", 3090102000, 0, 0)
	if _EffectHandle6 ~= 0 then
		GUI:ImageSetCheckPoint(_EffectHandle6, 0)
		GUI:WndSetPosM(_EffectHandle6, _PosDiffX + 144 + _ModifyX, _PosDiffY + 208)
	end

	local _BackToServer = GUI:ButtonCreate(_GUIHandle, "Back", 1804300013, _PosDiffX + 1109, _PosDiffY + 750)
	if _BackToServer ~= 0 then

	end

	local _ConfirmLogin = GUI:ButtonCreate(_GUIHandle, "Confirm", 1804300009, _PosDiffX + 839, _PosDiffY + 644)
	if _ConfirmLogin ~= 0 then

	end

	local _Register = GUI:ButtonCreate(_GUIHandle, "Register", 1804300038, _PosDiffX + 852, _PosDiffY + 570)
	if _Register ~= 0 then

	end
	
	local _ChangePassWordHandle = GUI:ButtonCreate(_GUIHandle, "ChangePassWord", 1804300034, _PosDiffX + 930, _PosDiffY + 570)
	if _ChangePassWordHandle ~= 0 then

	end

	local _LoginBackHandle = GUI:ImageCreate(_GUIHandle, "LoginBack", 1804300002, _PosDiffX + 839, _PosDiffY + 441)

	local _LoginName = GUI:EditCreate(_GUIHandle, "LoginName", _PosDiffX + 877, _PosDiffY + 468, 127, 18)
	if _LoginName ~= 0 then
	end

	local _LoginPassword = GUI:EditCreate(_GUIHandle, "LoginPassWord", _PosDiffX + 877, _PosDiffY + 519, 127, 18)
	if _LoginPassword ~= 0 then
	end

	local _SaveCheck = GUI:CheckBoxCreate(_GUIHandle, "SaveLoginName", 1804300007, "", _PosDiffX + 1020, _PosDiffY + 462)
	if _SaveCheck ~= 0 then
		GUI:WndSetHint(_SaveCheck, " «∑Ò±£¥Ê’ ∫≈")
		GUI:WndSetSizeM(_SaveCheck, 24, 24)
	end


	local _Keybord = GUI:ButtonCreate(_GUIHandle, "Keyboard", 1804300003, _PosDiffX + 1020, _PosDiffY + 515)
	if _Keybord ~= 0 then
		GUI:WndSetHint(_Keybord, " π”√»Ìº¸≈Ã")
	end

end
LoginIn.main()