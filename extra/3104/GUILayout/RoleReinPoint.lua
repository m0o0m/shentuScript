RoleReinPoint = {}
function RoleReinPoint.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"RoleReinPoint",1805900004,634,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,317, 504)
		--GUI:WndSetMoveWithLBM(_Parent)
	end
	
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImg",1805900005,35,58)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,292, 427)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1805900080,309,7)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleReinPoint.Close")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1805900013,132,9)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,96, 29)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ToImg",1800000366,162,113)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,43, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NowLevelNameEdit",80,102,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:EditSetTextM(_GUIHandle,"当前等级")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NextLevelNameEdit",216,102,70,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:EditSetTextM(_GUIHandle,"兑换后等级")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NowLevelEdit",82,137,52,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"NextLevelEdit",225,137,52,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294957412)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"WillGetPointNameEdit",105,174,108,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:EditSetTextM(_GUIHandle,"兑换后可获得修为：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"WillGetPointEdit",213,174,80,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278255360)
        GUI:EditSetTextM(_GUIHandle,"0")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ConsumeBackImg",1800900026,150,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,100, 25)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ConsumeNameEdit",90,204,60,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:EditSetTextM(_GUIHandle,"兑换消耗：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"WanEdit",250,204,16,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:EditSetTextM(_GUIHandle,"万")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ConsumeEdit",185,204,90,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"50")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ConsumeImg",1800000052,160,207)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ConvertPointBtn",1805900092,145,246)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleReinPoint.getRepair")
        GUI:WndSetTextM(_GUIHandle,"兑换修为")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294960578)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"ConvertCountNameEdit",120,279,130,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4285488716)
        GUI:EditSetTextM(_GUIHandle,"今日剩余兑换次数：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ConvertCountEdit",228,279,70,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278255360)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PointToolBackImg1",1805900015,48,340)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,266, 66)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg1",1805900029,62,349)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell1",0,67,354,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"PointToolBtn1",1805900096,206,362)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleReinPoint.buy")
        GUI:WndSetTextM(_GUIHandle,"购买并使用")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PointToolNameEdit1",124,357,70,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:EditSetTextM(_GUIHandle,"高级转生丹")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"PointToolCountEdit1",141,379,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294967040)
        GUI:EditSetTextM(_GUIHandle,"1000")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PointToolCountImg1",1800000054,124,382)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PointToolBackImg2",1805900015,48,412)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,266, 66)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg2",1805900029,63,419)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell2",0,68,425,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"PointToolBtn2",1805900096,206,434)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleReinPoint.buy")
        GUI:WndSetTextM(_GUIHandle,"购买并使用")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PointToolNameEdit2",124,429,70,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:EditSetTextM(_GUIHandle,"超级转生丹")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"PointToolCountEdit2",141,451,55,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294967040)
        GUI:EditSetTextM(_GUIHandle,"9888")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PointToolCountImg2",1800000054,124,454)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	
	RoleReinPoint.UIInit(_Parent)
end

--UI Logic Code Start
RoleReinPoint.WndHandle = 0
RoleReinPoint.leveltab = {[81] = 30300,[82] = 45000,[83] = 48500,[84] = 52400,[85] = 58300,[86] = 63700,[87] = 93500,[88] = 102400,[89] = 112500,[90] = 124000,
[91] = 137600,[92] = 167500,[93] = 196400,[94] = 248900,[95] = 306100,[96] = 442100,[97] = 509100,[98] = 586000,[99] = 667000,[100] = 786300,[101] = 995600}
function RoleReinPoint.UIInit(_Handle)
	RoleReinPoint.WndHandle = _Handle
	GUI:WndSetSizeM(_Handle, 317, 504)
	local level = 0 
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		level = tonumber(LuaRet)
	end
	EditSetText(_Handle,"NowLevelEdit",""..level)
	local next_level = level - 1 
	EditSetText(_Handle,"NextLevelEdit",""..next_level)
	if level < 81 then
		local handle = GetWindow(_Handle,"ConvertPointBtn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, false)
		end	
		EditSetText(_Handle,"ConvertCountNameEdit","	81级以上才能使用")
		EditSetText(_Handle,"ConsumeEdit","0")
	else
		if level < 102 then
			EditSetText(_Handle,"WillGetPointEdit",""..RoleReinPoint.leveltab[level])
			UI:Lua_SubmitForm("页游转生表单","show_num","")
		end	
	end	
	local handle = GetWindow(_Handle,"ItemCell1")
	RDItemCtrlSetGUIDataByKeyName(handle, "高级转生丹", 0xffff, false)
	local handle = GetWindow(_Handle,"ItemCell2")
	RDItemCtrlSetGUIDataByKeyName(handle, "超级转生丹", 0xffff, false)
end

function RoleReinPoint.Close(_handle)
	GUI:WndClose(RoleReinPoint.WndHandle)
end

function RoleReinPoint.getRepair(_handle)
	UI:Lua_SubmitForm("页游转生表单", "GetRepair", "")
end	

function RoleReinPoint.buy(_handle)
	local index = GUI:WndGetParam(_handle)
	UI:Lua_SubmitForm("页游转生表单", "BuyRepair", ""..index)
end

function RoleReinPoint.ButEnable()
	local handle = GetWindow(RoleReinPoint.WndHandle,"ConvertPointBtn")
	if handle ~= 0 then
		GUI:WndSetEnableM(handle, false)
	end	
	EditSetText(RoleReinPoint.WndHandle,"ConsumeEdit","0")
end

function RoleReinPoint.msgbox()
	luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"RoleReinPoint.chongz", "RoleReinPoint.out"}, "")
end
function RoleReinPoint.chongz(_handle)
	CL:OpenUrlUseIEByType(3)
	luaWndClose(_handle)
end

function RoleReinPoint.RepairChange(repair)
	if RoleRein ~= nil then
		RoleRein.repair = repair
		EditSetText(RoleRein.WndHandle,"HavePointEdit",""..RoleRein.repair)
		if RoleRein.repair < RoleRein.needrepair then
			EditSetTextColor(RoleRein.WndHandle,"HavePointEdit",CL:MakeARGB(255, 255, 0, 0))
		else
			EditSetTextColor(RoleRein.WndHandle,"HavePointEdit",CL:MakeARGB(255, 255, 255, 255))	
		end
	end	
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		level = tonumber(LuaRet)
	end
	EditSetText(RoleReinPoint.WndHandle,"NowLevelEdit",""..level)
	local next_level = level - 1 
	EditSetText(RoleReinPoint.WndHandle,"NextLevelEdit",""..next_level)
	if level < 81 then
		local handle = GetWindow(RoleReinPoint.WndHandle,"ConvertPointBtn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, false)
		end	
		EditSetText(RoleReinPoint.WndHandle,"ConvertCountNameEdit","	81级以上才能使用")
		EditSetText(RoleReinPoint.WndHandle,"ConsumeEdit","0")
		EditSetText(RoleReinPoint.WndHandle,"WillGetPointEdit","0")
	else
		if level < 102 then
			EditSetText(RoleReinPoint.WndHandle,"WillGetPointEdit",""..RoleReinPoint.leveltab[level])
		end	
	end	
end	

function RoleReinPoint.out(_handle)
	luaWndClose(_handle)
end

RoleReinPoint.main()