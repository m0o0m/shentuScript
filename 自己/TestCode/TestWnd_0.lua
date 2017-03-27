TestWnd_0 = {}
function TestWnd_0.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TestWndChild_0",1802700001,100,13)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,800, 600)
		GUI:ImageSetFitSize(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1802700020,0,0)
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
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_3",1802700012,80,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,127, 38)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_4",0,80,40)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,128, 37)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_5",0,2,81)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,208, 56)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_6",86,9,121,26)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_7",86,46,121,26)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_8",3,88,203,42)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_9",0,320,132)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,135, 70)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_10",331,142,108,52)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_11",1800000134,633,134)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 29)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_12",1800000134,633,165)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 29)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_13",0,633,197)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 29)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_14",0,633,230)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 29)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_15",0,632,262)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 29)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_16",0,632,296)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 29)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_17",0,631,330)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 29)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_18",0,631,364)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 29)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_19",0,631,397)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 29)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_20",0,630,431)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,84, 29)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	
	TestWnd_0.UIInit(_Parent)
end

--UI Logic Code Start
function TestWnd_0.UIInit(_Handle)
end
TestWnd_0.main()




