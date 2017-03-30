Package = {}
function Package.main()
	local _Parent = LuaGlobal["AttachPartent"]	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1930100025,31,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,412, 273)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"SettlePackage",1930001006,210,236)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"整  理")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 23)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"DivideItem",1930001006,281,236)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"物品拆分")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 23)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Baitan",1930001006,351,236)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"摆  摊")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 23)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Page4",1930100021,6,188)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 53)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Page3",1930100017,6,150)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 53)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Page2",1930100013,6,112)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 53)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Page1",1930100009,6,74)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 53)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Page0",1930100005,6,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 53)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1930001002,411,6)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "Package.OnClose")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 26)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"YuanBao",350,207,61,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"元宝")
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"YinLiang",169,207,70,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"金币")
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"BindYuanBao",262,207,58,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"绑定元宝")
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"BindYinLiang",78,207,72,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"绑定金币")
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,54,48,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,91,48,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,128,48,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,165,48,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,202,48,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item5",0,239,48,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item6",0,276,48,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item7",0,313,48,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item8",0,350,48,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item9",0,387,48,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item10",0,54,85,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item11",0,91,85,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item12",0,128,85,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item13",0,165,85,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item14",0,202,85,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item15",0,239,85,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item16",0,276,85,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item17",0,313,85,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item18",0,350,85,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item19",0,387,85,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item20",0,54,122,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item21",0,91,122,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item22",0,128,122,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item23",0,165,122,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item24",0,202,122,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item25",0,239,122,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item26",0,276,122,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item27",0,313,122,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item28",0,350,122,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item29",0,387,122,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item30",0,54,159,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item31",0,91,159,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item32",0,128,159,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item33",0,165,159,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item34",0,202,159,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item35",0,239,159,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item36",0,276,159,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item37",0,313,159,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item38",0,350,159,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item39",0,387,159,34,34)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 34)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_4",1900710055,149,208)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,20, 17)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,66,236)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"包裹扩展")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 23)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	
	Package.UIInit(_Parent)
end

Package.WndHandle = 0

function Package.UIInit( _Handle )
	Package.WndHandle = _Handle
	
	local _BackHandle = GUI:WndFindChildM(Package.WndHandle, "GUI_2")
	if _BackHandle ~= 0 then
		GUI:WndSetCanRevMsg(_BackHandle, false);
	end
end

function Package.OnClose(_Handle,_Param)
	GUI:WndClose(Package.WndHandle)
end

Package.main()