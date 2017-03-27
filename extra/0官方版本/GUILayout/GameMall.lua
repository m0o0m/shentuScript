GameMall = {}
function GameMall.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1932400001,1,1)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,800, 481)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ModelImage",1932400014,45,79)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,122, 139)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab0",1930001018,171,46)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"热销")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab1",1930001018,231,46)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"促销")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,60, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab2",1930001018,291,46)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"辅助")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,60, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab3",1930001018,351,46)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"强化")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,60, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab4",1930001018,411,46)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"消耗")
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,60, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab5",1930001018,471,46)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"积分")
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,60, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab6",1930001018,531,46)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"绑定元宝")
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,60, 22)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image0",1932400010,174,84)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image1",1932400010,382,84)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image2",1932400010,174,159)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image3",1932400010,382,159)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image4",1932400010,174,234)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image5",1932400010,382,234)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image6",1932400010,173,309)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Image7",1932400010,382,309)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 7)
		GUI:WndSetSizeM(_GUIHandle,206, 70)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"SortImage0",1932400012,613,79)
	if _GUIHandle ~= 0 then
	
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,146, 107)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"SortImage1",1932400012,613,189)
	if _GUIHandle ~= 0 then
	
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,146, 107)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"SortImage2",1932400012,613,301)
	if _GUIHandle ~= 0 then
	
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,146, 107)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_3",1901700074,622,311)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,23, 22)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Left",1900000204,316,379)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.OnLeftButton")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,33, 33)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Right",1900000200,429,380)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.OnRightButton")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,33, 33)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1930001002,745,24)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.OnClose")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 26)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"AddYuanBao",1932400002,653,423)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.PayMoney")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,94, 43)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Buy",1930001006,568,428)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.DoBuyItem")
		GUI:WndSetTextM(_GUIHandle,"购买")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 23)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"JiFen",193,436,94,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"BindYuanBao",327,435,86,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"YuanBao",448,435,91,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,188,102,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,397,101,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,189,177,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,397,176,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,189,253,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item5",0,397,252,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item6",0,189,326,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item7",0,397,327,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1004, "GameMall.DoBuyItem")
		GUI:WndSetParam(_GUIHandle, 7)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem0",0,627,130,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem1",0,627,240,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem2",0,627,352,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "GameMall.SelectSortItem")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"PageEdit",361,386,54,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price0",241,110,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price1",449,109,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price2",241,185,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"Price3",449,185,107,14)
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
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice0",241,126,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice1",449,126,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice2",241,201,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice3",449,201,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice4",241,276,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice5",449,276,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice6",239,351,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"NowPrice7",449,351,107,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 7)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortPrice0",677,125,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortPrice1",677,236,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortPrice2",677,348,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice0",677,143,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice1",677,253,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice2",677,365,90,14)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditAppendString(_GUIHandle, "")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_0",1932400008,622,200)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,23, 22)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_1",1932400007,622,90)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,23, 22)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name0",241,91,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name1",449,91,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name2",241,166,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name3",449,166,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name4",241,241,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name5",449,241,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 5)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name6",240,316,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 6)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Name7",449,316,114,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 7)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"SortName0",664,91,93,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"SortName1",664,201,93,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"SortName2",664,312,93,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"VipTip",164,452,437,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"DetailText",49,240,108,207)
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
GameMall.NormalImage = 1932400010
GameMall.SelelctImage = 1932400011


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
			local _MallIndex = (GameMall.CurPage - 1) * 8 + GameMall.CurSelectIdx
			CL:BuyMallItemUseBulkWnd(_MallIndex)
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
