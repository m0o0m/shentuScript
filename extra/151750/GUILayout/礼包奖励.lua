BagAward = {}
function BagAward.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"MainWnd",1850100032,231,94)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,784, 321);
		GUI:WndSetIsESCClose(_Parent,true);
		GUI:WndSetMoveWithLBM(_Parent)
		CenterWnd(_Parent);
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Title",1850100028,79,-15)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,658, 83)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"BackGround",0,166,85)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false);
		GUI:WndSetParam(_GUIHandle, 0);
		GUI:WndSetSizeM(_GUIHandle,450, 147);
		GUI:ImageSetAroundImage(_GUIHandle, 1850600043, 1850600045, 1850600049, 1850600051, 1850600047,1850600044, 1850600050, 1850600046, 1850600048);
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit1",181,88,313,51)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,202,166,71));
		GUI:EditSetTextM(_GUIHandle,"恭喜你获得以下奖励：");
		GUI:EditSetCanEdit(_GUIHandle, false);
		GUI:WndSetEnableM(_GUIHandle, false);
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrBackGround1",1850400004,187,150)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,66, 66)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrBackGround2",1850400004,292,150)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,66, 66)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrBackGround3",1850400004,397,151)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,66, 66)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrBackGround4",1850400004,501,151)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,66, 66)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,191,153,59,59)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,59, 59)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,296,153,59,59)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,59, 59)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,401,154,59,59)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,59, 59)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,505,154,59,59)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,59, 59)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"BackBar",1851000023,215,255)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,133, 25)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Edit2",290,245,378,46)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,79,106,134))
		GUI:EditSetTextM(_GUIHandle,"点击屏幕任意位置关闭")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	BagAward.UIInit(_Parent)
end

--UI Logic Code Start
function BagAward.UIInit(_Handle)
	
end
BagAward.main()




