GameMall = {}
function GameMall.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1912600001,1,1)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,800, 481)
	end
     GUI:ImageCreate(_Parent, "PageBack", 1910000041, 328, 325)
		
	_GUIHandle = GUI:ImageCreate(_Parent,"ModelImage",1912600014,37,82)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,122, 139)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab0",1913500033,192,62)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,40, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab1",1913500037,234,62)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,40, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab2",1913500041,276,62)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,40, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab3",1913500045,318,62)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,40, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab4",1913500049,360,62)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,40, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab6",1913500053,402,62)
	if _GUIHandle ~= 0 then
	    GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,40, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image0",1912600002,192,86)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image1",1912600002,344,86)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image2",1912600002,192,145)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image3",1912600002,344,145)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image4",1912600002,192,204)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image5",1912600002,344,204)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image6",1912600002,192,263)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image7",1912600002,344,263)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 7)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"SortImage0",1912600004,505,84)
	if _GUIHandle ~= 0 then
	
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,146, 107)  
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"SortImage1",1912600004,505,161)
	if _GUIHandle ~= 0 then
	
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,146, 107)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"SortImage2",1912600004,505,234)
	if _GUIHandle ~= 0 then
	
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,146, 107)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_3",1912600012,508,239)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,23, 22)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Left",1910000033,300,323)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.OnLeftButton")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,33, 33)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Right",1910000037,375,323)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.OnRightButton")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,33, 33)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1910000020,645,40)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.OnClose")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 26)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"AddYuanBao",1912600006,510,331)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.PayMoney")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,94, 43)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Buy",1910000063,447,353)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.DoBuyItem")
		GUI:WndSetTextM(_GUIHandle,"购买")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,50, 23)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 143, 148, 154))
	end
	
	
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"BindYuanBao",338,360,86,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"YuanBao",210,360,91,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,197,96,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,349,96,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,197,155,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,349,155,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,197,214,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item5",0,349,214,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item6",0,197,273,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item7",0,349,273,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 7)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem0",0,510,113,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem1",0,510,190,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem2",0,510,263,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"PageEdit",320,325,54,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price0",241,110,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price1",350,109,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price2",241,185,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price3",350,185,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price4",241,260,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price5",449,260,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price6",239,335,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price7",449,335,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 7)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice0",241,110,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice1",395,110,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice2",241,168,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice3",395,168,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice4",241,225,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice5",395,225,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice6",241,285,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice7",395,285,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 7)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortPrice0",555,115,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortPrice1",555,190,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortPrice2",555,265,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice0",555,135,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice1",555,210,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice2",555,285,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_0",1912600011,508,165)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,23, 22)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_1",1912600010,508,90)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,23, 22)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name0",241,91,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name1",395,91,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name2",241,150,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name3",395,150,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name4",241,207,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name5",395,207,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 5)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name6",241,266,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 6)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name7",395,266,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 7)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"SortName0",530,90,93,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"SortName1",530,165,93,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"SortName2",530,239,93,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
--[[	
	_GUIHandle = GUI:EditCreate(_Parent,"VipTip",164,380,437,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end--]]
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"DetailText",40,280,108,207)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
		GameMall.UIInit(_Parent)
end

--UI Logic Code Start












GameMall.CurPage = 0
GameMall.PageCount = 0
GameMall.CurTab = 0
GameMall.WndHandle = 0
GameMall.ItemCount = 0
GameMall.CurSelectIdx = -1
GameMall.NormalImage = 1912600002
GameMall.SelelctImage = 1912600003


function GameMall.UIInit(_Handle)
	GameMall.WndHandle = _Handle

	GUI:WndCalSize(GameMall.WndHandle)
	local _Parent = _Handle
	local _BackHandle = GUI:WndFindChildM(_Parent, "BackImage")
	if _BackHandle ~= 0 then
		GUI:WndSetCanRevMsg(_BackHandle, false);
	end

	_BackHandle = GUI:WndFindChildM(_Parent, "ModelImage")
	if _BackImageHandle ~= 0 then
		GUI:WndSetCanRevMsg(_BackHandle, false);
		GUI:ImageSetCheckPoint(_BackHandle, 1)
	end

	local _EditHandle = GUI:WndFindChildM(GameMall.WndHandle, "PageEdit")
	if _EditHandle ~= 0 then
		GUI:WndSetCanRevMsg(_EditHandle, false)
		GUI:WndAddFlags(_EditHandle, 0x00400000)--flg_dlgEdit_textInCenter
		GUI:WndAddFlags(_EditHandle, 0x00100000)--flg_dlgEdit_textInMid
	end

	_EditHandle = GUI:WndFindChildM(_Parent,"JiFen")
	if _EditHandle ~= 0 then
		GUI:WndSetCanRevMsg(_EditHandle, false)
	end

	_EditHandle = GUI:WndFindChildM(_Parent,"BindYuanBao")
	if _EditHandle ~= 0 then
		GUI:WndSetCanRevMsg(_EditHandle, false)
	end

	_EditHandle = GUI:WndFindChildM(_Parent,"YuanBao")
	if _EditHandle ~= 0 then
		GUI:WndSetCanRevMsg(_EditHandle, false)
	end
	
	local _VipTipHandle = GUI:WndFindChildM(_Parent, "VipTip")
	if _VipTipHandle ~= 0 then
		if LuaGlobal["GameMallVIPTip"] ~= nil then
			GUI:EditSetTextM(_VipTipHandle, LuaGlobal["GameMallVIPTip"]);
		end
		GUI:WndSetTextColorM(_VipTipHandle, GUI:MakeARGB(255,238,154,49))
		GUI:WndAddFlags(_VipTipHandle, 0x00400000)--flg_dlgEdit_textInCenter
		GUI:WndAddFlags(_VipTipHandle, 0x00100000)--flg_dlgEdit_textInMid
		GUI:EditSetCanEdit(_VipTipHandle,false)
		GUI:WndSetCanRevMsg(_VipTipHandle,false)
	end

	for _Idx = 0, 8 do
		local _GUIIDString = "Name".._Idx
		local _WndHandle = GUI:WndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:WndSetCanRevMsg(_WndHandle, false)
		end

		_GUIIDString = "Image".._Idx
		_WndHandle = GUI:WndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:WndRegistScript(_WndHandle, 1002, "GameMall.OnSelectItem")
		end

		_GUIIDString = "Item".._Idx
		_WndHandle = GUI:WndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:WndRegistScript(_WndHandle, 1002, "GameMall.OnSelectItem")
		end

		_GUIIDString = "Price".._Idx
		_WndHandle = GUI:WndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:WndSetCanRevMsg(_WndHandle, false)
		end

		_GUIIDString = "NowPrice".._Idx
		_WndHandle = GUI:WndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:WndSetCanRevMsg(_WndHandle, false)
		end
	end

	--设置窗口位置
	local _DeviceWidth = CL:GetScreenWidth()
	local _DeviceHeight = CL:GetScreenHeight()
	GUI:WndSetSizeM(GameMall.WndHandle, 770, 480)
	GUI:WndSetPosM(GameMall.WndHandle, _DeviceWidth / 2 - 400, _DeviceHeight / 2 - 240)
	
end
GameMall.main()



function GameMall.OnItemUpdata()
	local _MallWndHandle = GUI:WndFindWindow(0, "GameMall")
	if _MallWndHandle ~= 0 then
		GameMall.ItemCount = LuaParam[1]
		if GameMall.ItemCount % 8 == 0 then
			GameMall.PageCount = math.floor(GameMall.ItemCount / 8)
		else
			GameMall.PageCount =  math.floor(GameMall.ItemCount / 8) + 1	
		end

		GameMall.CurSelectIdx = -1
		for _Idx = 0, 8 do
			local _GUIIDString = "Image".._Idx
			local _WndHandle = GUI:WndFindChildM(_MallWndHandle, _GUIIDString)
			if 0 ~= _WndHandle then
				GUI:WndSetImageID(_WndHandle, GameMall.NormalImage)
			end
		end

		GameMall.CurPage = 1
		GameMall.UpdataPage()
		GameMall.UpdataItem()
	end
end
RegisterUIEvent(LUA_EVENT_UPDATAMALLITEM, EVENT_DEFAULT_TAG, GameMall.OnItemUpdata)


function GameMall.UpdataPage()
	local _PageString = ""..GameMall.CurPage.." / "..GameMall.PageCount
	if 0 == GameMall.PageCount then
		_PageString = "0 / 0"
	end

	local _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, "PageEdit")
	if 0 ~= _WndHandle then
		GUI:EditSetTextM(_WndHandle, _PageString)
	end
end

function GameMall.OnClose(_Handle,_Param)
	GUI:WndClose(GameMall.WndHandle)
end

function GameMall.PayMoney(_Handle,_Param)
	CL:OpenUrlUseIEByType(3)--打开充值页面
end

function GameMall.OnLeftButton(_Handle,_Param)
	if GameMall.CurPage > 1 then
		GameMall.CurPage = GameMall.CurPage - 1
		GameMall.UpdataPage()
		GameMall.UpdataItem()
	end
end

function GameMall.OnRightButton(_Handle,_Param)
	if GameMall.CurPage < GameMall.PageCount then
		GameMall.CurPage = GameMall.CurPage + 1
		GameMall.UpdataPage()
		GameMall.UpdataItem()
	end	
end

function GameMall.OnSelectItem(_Handle,_Param)
	if 0 ~= _Handle then 
		for _Idx = 0, 8 do
			local _GUIIDString = "Image".._Idx
			local _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)
			if 0 ~= _WndHandle then
				GUI:WndSetImageID(_WndHandle, GameMall.NormalImage)
			end
		end

		local _ItemIdx =  GUI:WndGetParam(_Handle)
		local _ImageHandle = GUI:WndFindChildM(GameMall.WndHandle, "Image".._ItemIdx)
		if _ImageHandle ~= 0 then
			GUI:WndSetImageID(_ImageHandle, GameMall.SelelctImage)
		end
		GameMall.CurSelectIdx = _ItemIdx
		CL:ResetSortMallSelect()
		
		local _MallIndex = (GameMall.CurPage - 1) * 8 + GameMall.CurSelectIdx
		CL:MallItemDetailReq(_MallIndex)
	end
end

function GameMall.ClearItem()
	for _Idx = 0, 8 do
		local _GUIIDString = "Item".._Idx
		local _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)
		if 0 ~= _WndHandle then
			local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)
			if 0 ~= _ItemDataHandle then
				LuaArg = false
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)	
			end
		end

		_GUIIDString = "Name".._Idx
		_WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:EditSetTextM(_WndHandle, "")
		end

		_GUIIDString = "Price".._Idx
		_WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:RichEditClear(_WndHandle)
		end

		_GUIIDString = "NowPrice".._Idx
		_WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)
		if 0 ~= _WndHandle then
			GUI:RichEditClear(_WndHandle)
		end
	end
end

function GameMall.UpdataItem()
	GameMall.ClearItem()
	if CL:GetMallItemInfo() then 
		local _MammInfoTable = LuaRet
		for _Idx = 0, 8 do
			local _MallIndex = (GameMall.CurPage - 1) * 8	+ _Idx
			GameMall.UpdataItemWndVisible(_Idx, true)
			if _MallIndex < #_MammInfoTable then
				local _ItemID = _MammInfoTable[_MallIndex + 1][1]
				local _Count = _MammInfoTable[_MallIndex + 1][3]
				local _PriceUinit = _MammInfoTable[_MallIndex + 1][4]
				local _Price = _MammInfoTable[_MallIndex + 1][5]
				local _DisCountPrice = _MammInfoTable[_MallIndex + 1][6]
				local _GUIIDString = "Item".._Idx
				local _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)
				if 0 ~= _WndHandle then
					local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)
					if 0 ~= _ItemDataHandle then
						LuaArg = _ItemID
						CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID)
						LuaArg = true
						CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)
	
						local _ItemTemplateHandle = CL:GetItemTemplateHandleByID(_ItemID)
						if _ItemTemplateHandle ~= 0 then
							if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_ICON) then
								LuaArg = LuaRet
								CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
							end
	
							if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_NAME) then
								local _ItemName = LuaRet
								_GUIIDString = "Name".._Idx
								_WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)
								if 0 ~= _WndHandle then
									GUI:EditSetTextM(_WndHandle, _ItemName)
								end
							end
						end
					end
				end
	
				_GUIIDString = "NowPrice".._Idx
				_WndHandle = GUI:WndFindChildM(GameMall.WndHandle, _GUIIDString)
				if 0 ~= _WndHandle then
					local _UintString = GameMall.PriceTypeString(_PriceUinit)
					local _PriceString = "#COLORCOLOR_GOLD#现价：#COLORCOLOR_WHITE#".._DisCountPrice.." ".._UintString.."#COLORCOLOR_END#"
					GUI:RichEditAppendString(_WndHandle, _PriceString)
				end			
			else
				GameMall.UpdataItemWndVisible(_Idx, false)
			end
		end
	else
		for _Idx = 0, 8 do
			GameMall.UpdataItemWndVisible(_Idx, false)
		end
	end
end


function GameMall.DoBulkBuyBtn()
	local _WndHandle = GUI:WndFindWindow(0, "GameMallBulkBuy")
	if _WndHandle ~= 0 then
		local _EditHanle = GUI:WndFindChildM(_WndHandle, "BulkCount")
		if _EditHanle ~= 0 then
			local _BuyCount = GUI:EditGetInt(_EditHanle)
			local _MallIndex = (GameMall.CurPage - 1) * 8 + GameMall.CurSelectIdx
			CL:BuyMallItemByIndex(_MallIndex, _BuyCount, true)
		end
		GUI:WndClose(_WndHandle)
	end
end


function GameMall.DoBuyItem(_Handle,_Param)
	if GameMall.CurSelectIdx ~= -1 then
		local _WndID = "Item"..GameMall.CurSelectIdx
		local _MallWndHandle = GUI:WndFindWindow(0, "GameMall")
		if _MallWndHandle ~= 0 then
			local _WndHandle = GUI:WndFindChildM(_MallWndHandle, _WndID)
			if _WndHandle ~= 0 then
				local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)
				if 0 ~= _ItemDataHandle then
					if CL:GetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID) then
						local _ItemTemplateID = LuaRet
						local _MallIndex = (GameMall.CurPage - 1) * 8 + GameMall.CurSelectIdx
						if CL:GetMallItemInfo() then
							local _Count = LuaRet[_MallIndex + 1][3]
							local _PriceUinit = LuaRet[_MallIndex + 1][4]
							local _Price = LuaRet[_MallIndex + 1][6]
							CL:ShowMallBulkBuyWnd(_ItemTemplateID, _PriceUinit, _Price, _Count, "GameMall.DoBulkBuyBtn")
						end
					end
				end
			end
		end
	end
end

function GameMall.UpdataItemWndVisible(_Idx, _Visible)
	local _Parent = GameMall.WndHandle
	local _WndID = "Image".._Idx
	local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUI:WndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "Item".._Idx
	local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUI:WndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "Name".._Idx
	local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUI:WndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "Price".._Idx
	local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUI:WndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "NowPrice".._Idx
	local _WndHandle = GUI:WndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUI:WndSetVisible(_WndHandle, _Visible)
	end
end


function GameMall.PriceTypeString(_PriceType)
	if _PriceType == 0 then
		return "元宝"
	elseif _PriceType == 1 then
		return "绑元"
	elseif _PriceType == 2 then
		return "积分"
	elseif _PriceType == 3 then
		return "金币"
	elseif _PriceType == 4 then
		return "绑金"
	end
	return ""
end


function GameMall.SelectSortItem(_Handle,_Param)
	GameMall.CurSelectIdx = -1	
end