TestWnd_0 = {}
function TestWnd_0.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TestWndChild_0",1802700001,14,9)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,1317, 942)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1802700020,1,1)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,80, 80)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_2",4,16,74,51)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_3",1800000102,82,4)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,114, 43)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_4",1800000102,82,43)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,114, 43)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_5",1800000387,2,81)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,178, 49)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_6",86,9,121,26)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"地图名八个汉字")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_7",86,46,121,26)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"（9999，9999）")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_8",1,86,203,42)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"第30回合")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_11",1800000134,1046,184)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"自动")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_12",1800000134,1046,224)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"法术")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_13",1800000134,1046,261)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"绝技")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_14",1800000134,1046,298)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"道具")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_15",1800000134,1046,336)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"防御")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_16",1800000134,1046,372)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"保护")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_17",1800000134,1045,407)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"召唤")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_18",1800000134,1045,441)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"捕捉")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_19",1800000134,1045,479)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"逃跑")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_10",1801500152,560,141)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,24, 35)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_20",1801500159,585,141)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,24, 35)
	end
	
	
	TestWnd_0.UIInit(_Parent)
end

--UI Logic Code Start
function TestWnd_0.UIInit(_Handle)
end
TestWnd_0.main()




