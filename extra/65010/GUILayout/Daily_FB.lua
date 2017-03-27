Daily_FB = {}
function Daily_FB.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"Daily_FB_Dlg",1806100012,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,384, 505)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1805500001,131,12)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,126, 22)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1805900080,326,5)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Daily_FB.CloseWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 38)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1800600004,24,100)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_2",1800600004,23,144)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"text1",68,112,135,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290289697)
		GUI:EditSetTextM(_GUIHandle,"  【经 验】      62级")
        GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"textBtn1",240,117,74,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Daily_FB.SelectMap")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#天荒古阵#SELECTEND#")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_7",1800600004,23,188)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"text2",68,156,135,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290289697)
		GUI:EditSetTextM(_GUIHandle,"  【神 羽】      63级")
        GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"textBtn2",240,161,74,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Daily_FB.SelectMap")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#镇魔圣殿#SELECTEND#")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_10",1800600004,24,232)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"text3",69,200,135,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290289697)
		GUI:EditSetTextM(_GUIHandle,"  【盾 牌】      64级")
        GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"textBtn3",241,205,74,17)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Daily_FB.SelectMap")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#黑暗祭坛#SELECTEND#")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_13",1800600004,23,275)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"text4",68,243,135,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290289697)
		GUI:EditSetTextM(_GUIHandle,"  【经 验】      65级")
        GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"textBtn4",240,248,74,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Daily_FB.SelectMap")
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#上古邪庙#SELECTEND#")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"image5",1800600004,23,318)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,327, 2)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"text5",68,286,135,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290289697)
		GUI:EditSetTextM(_GUIHandle,"  【宝 珠】      66级")
        GUI:EditSetCanEdit(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"textBtn5",240,291,74,20)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Daily_FB.SelectMap")
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#魔月峡谷#SELECTEND#")
	end
	
	
	
	Daily_FB.UIInit(_Parent)
end

--UI Logic Code Start
Daily_FB.tb = {}
function Daily_FB.UIInit(_Handle)
	local hh = GetWindow(nil, "Dailyone")
	if hh ~= 0 then
		GUI:WndClose(hh)
	end
	local tb = deserialize(FormParam[1])
	Daily_FB.tb = tb
	Daily_FB.Handle = _Handle
	GUI:WndSetSizeM(Daily_FB.Handle,384, 505)
	CenterWnd(Daily_FB.Handle)
	GUI:WndSetMagicUI(Daily_FB.Handle, 1)
	GUI:WndSetIsESCClose(Daily_FB.Handle, true)
	local handle = 0
	local _color1 = { ["enterAble"] = MakeARGB(255, 184, 160, 133), ["inaccessible"] = MakeARGB(255, 98, 98, 98) }
	local _color2 = { ["enterAble"] = MakeARGB(255, 0, 204, 51), ["inaccessible"] = MakeARGB(255, 130, 123, 112) }
	local _text = {
					"#COLORCOLOR_GRAY#天荒古阵#COLOREND#",
					"#COLORCOLOR_GRAY#镇魔圣殿#COLOREND#",
					"#COLORCOLOR_GRAY#黑暗祭坛#COLOREND#",
					"#COLORCOLOR_GRAY#上古邪庙#COLOREND#",
					"#COLORCOLOR_GRAY#魔月峡谷#COLOREND#",
					}
	
	for i = 1, #tb do
		handle = GetWindow(_Handle, "text"..i)
		if tb[i] == 2 then
			if handle ~= 0 then
				GUI:EditSetTextColor(handle, _color1["inaccessible"])
				
			end
		else
			if handle ~= 0 then
				GUI:EditSetTextColor(handle, _color1["enterAble"])
			end
		end
		handle = GetWindow(_Handle, "textBtn"..i)
		if tb[i] == 2 then
			if handle ~= 0 then
				--GUI:WndSetTextColorM(handle, _color2["inaccessible"])
				--GUI:WndSetEnableM(handle, false)
				GUI:RichEditClear(handle)
				GUI:RichEditAppendString(handle, _text[i])	
			end
		end
		if handle ~= 0 then
			GUI:WndSetHint(handle, "<font color='#B8A085'>剩余进入次数</font>".."<font color='#D58840'>"..(2-tb[i]).."</font>".."<font color='#B8A085'>次</font>")
		end
	end
end

function Daily_FB.SelectMap(h)
	local param = 0
	local tb = {"OptionMap1","OptionMap2","OptionMap3","OptionMap4","OptionMap5"}
	param = GUI:WndGetParam(h)
	if Daily_FB.tb[tonumber(param)] == 2 then 
		return
	end
	UI:Lua_SubmitForm("每日副本表单", tb[param], "")
end

function Daily_FB.MsgUp(msg)   --消息提示
	local handle = GetWindow(Daily_FB.Handle,"image5")
	local color = MakeARGB(255,255,0,0)
	window_msg_up(handle, msg, 52, 85, 30, color, 2)
end

function Daily_FB.CloseWnd()
	if Daily_FB.Handle ~= 0 then
		GUI:WndClose(Daily_FB.Handle)
	end
end

Daily_FB.main()