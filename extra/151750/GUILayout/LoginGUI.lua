LoginIn = {}
local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117)
color.text2 = GUI:MakeARGB(255,198,192,163)
color.number = GUI:MakeARGB(255,55,181,111)
color.text_dark = GUI:MakeARGB(255,64,64,64)

LoginIn.Wndhandle = 0

function LoginIn.main()
	local _Parent = LuaGlobal["AttachPartent"]
	LoginIn.Wndhandle = _Parent
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
	local _DoorEffect = GUI:ImageCreate(_GUIHandle, "NewDoorEffect", 0, _PosDiffX + 591, _PosDiffY + 233) -- 优化加载顺序， imageid放到程序中设置
	if _DoorEffect ~= 0 then
		
	end
		
	
	local _LoginBackHandle = GUI:ImageCreate(_GUIHandle, "LoginBack", 0, _PosDiffX + 752, _PosDiffY + 373)
	if _LoginBackHandle ~= 0 then
		GUI:WndSetSizeM(_LoginBackHandle, 350, 40)
		local handle = GUI:ImageCreate(_LoginBackHandle,"BackGround", 1850600016, -80, -90)
		if handle ~= 0 then
			GUI:WndSetSizeM(handle, 507, 319)
			local handle = GUI:EditCreate(handle, "Title", 217, 30, 127, 22)
			if handle ~= 0 then
				GUI:EditSetTextM(handle, "帐号登录")
				GUI:EditSetTextColor(handle, color.text1)
				GUI:EditSetCanEdit(handle, false)
			end
		end
		handle = GUI:ImageCreate(_LoginBackHandle, "Back1", 1804300002, 0, 0)
		if handle ~= 0 then
			GUI:WndSetSizeM(handle, 350, 40)
			GUI:ImageSetAroundImage(handle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056, 1850600053, 1850600059, 1850600055, 1850600057)
		end
		handle = GUI:ImageCreate(_LoginBackHandle, "Back2", 1804300002, 0, 50)
		if handle ~= 0 then
			GUI:WndSetSizeM(handle, 350, 40)
			GUI:ImageSetAroundImage(handle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056, 1850600053, 1850600059, 1850600055, 1850600057)
		end
		handle = GUI:ButtonCreate(_LoginBackHandle, "Trial", 1852500012, 290 , -50)
		if handle ~= 0 then
			GUI:WndSetTextM(handle, "游客试玩")
			GUI:WndSetTextColorM(handle, color.text1)
		end
		handle = GUI:ImageCreate(_LoginBackHandle, "icon1", 1851400002, 10, 6)
		if handle ~= 0 then
			GUI:WndSetSizeM(handle, 23, 27)
		end
		handle = GUI:ImageCreate(_LoginBackHandle, "icon2", 1851400003, 10, 56)
		if handle ~= 0 then
			GUI:WndSetSizeM(handle, 23, 27)
		end
		handle = GUI:ButtonCreate(_LoginBackHandle, "ClearLoginName", 1851400004, 307, 3)
		if handle ~= 0 then
			
			GUI:WndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "LoginIn.ClearLoginName")
		end
		
		handle = GUI:ButtonCreate(_LoginBackHandle, "ClearPassword", 1851400004, 307, 53)
		if handle ~= 0 then
			
			GUI:WndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "LoginIn.ClearPassword")
		end
	end
	
	local _BackToServer = GUI:ButtonCreate(_GUIHandle, "Back", 1804300013, _PosDiffX + 1109, _DeviceSizeY - 40)
	if _BackToServer ~= 0 then

	end

	local _ConfirmLogin = GUI:ButtonCreate(_GUIHandle, "Confirm", 1852500004, _PosDiffX + 734, _PosDiffY + 514)
	if _ConfirmLogin ~= 0 then
		GUI:WndSetTextM(_ConfirmLogin, "立即登录")
		--GUI:WndRegistScript(_ConfirmLogin, RDWndBaseCL_mouse_lbUp, "LoginIn.hideBackImg")
		GUI:WndSetTextColorM(_ConfirmLogin, color.text1)
	end

	local _Register = GUI:ButtonCreate(_GUIHandle, "Register", 1852500008, _PosDiffX + 963, _PosDiffY + 514)
	if _Register ~= 0 then
		GUI:WndSetTextM(_Register, "注册帐号")
		GUI:WndSetTextColorM(_Register, color.text1)
	end
	
	
	
	local _ChangePassWordHandle = GUI:RichEditCreate(_GUIHandle, "ChangePassWord", _PosDiffX + 1010, _PosDiffY + 480, 100,24)
	if _ChangePassWordHandle ~= 0 then
		GUI:RichEditSetEditEnable(_ChangePassWordHandle, false)
		GUI:RichEditAppendString(_ChangePassWordHandle, "修改密码")
	end
	
	_Register = GUI:ButtonCreate(_GUIHandle, "Register", 1852500008, _PosDiffX + 963, _PosDiffY + 514)
	if _Register ~= 0 then
		GUI:WndSetTextM(_Register,"注册帐号")
		GUI:WndSetTextColorM(_Register, color.text1)
	end
	
	local _LoginName = GUI:EditCreate(_GUIHandle, "LoginName", _PosDiffX + 860, _PosDiffY + 375, 190, 40)
	if _LoginName ~= 0 then
		LoginIn._ClearLoginName = handle
	end

	local _LoginPassword = GUI:EditCreate(_GUIHandle, "LoginPassWord", _PosDiffX + 860, _PosDiffY + 425, 190, 40)
	if _LoginPassword ~= 0 then
		LoginIn._ClearPassword = handle
	end

	local _SaveCheck = GUI:CheckBoxCreate(_GUIHandle, "SaveLoginName", 1850000272, "", _PosDiffX + 1050, _PosDiffY + 370)
	if _SaveCheck ~= 0 then
		GUI:WndSetVisible(_SaveCheck, false)

	end



	
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

	
	local _EffectHandle6 = GUI:ImageCreate(_GUIHandle, "EffectImage6", 3090102000, 0, 0)
	if _EffectHandle6 ~= 0 then
		GUI:ImageSetCheckPoint(_EffectHandle6, 0)
		GUI:WndSetPosM(_EffectHandle6, _PosDiffX + 144 + _ModifyX, _PosDiffY + 208)
	end
end
function LoginIn.hideBackImg(_Handle)

	GUI:WndSetVisible(LoginIn._BackGround, false)
	GUI:WndSetVisible(LoginIn._Trial, false)
end

function LoginIn.ClearLoginName(_Handle)
	local _GUIHandle = GUI:WndFindWindow(LoginIn.Wndhandle, "LoginName")
	if _GUIHandle then
		dbg("111")
		GUI:EditSetTextM(_GUIHandle, "")
	end
	
end

function LoginIn.ClearPassword(_Hanlde)
	local _GUIHandle = GUI:WndFindWindow(LoginIn.Wndhandle, "LoginPassWord")
	if _GUIHandle then
		GUI:EditSetTextM(_GUIHandle, "")
	end
end

LoginIn.main()