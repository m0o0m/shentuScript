DealerSellWnd = {}

local tColor =
{
	["GREENG"] = GUI:MakeARGB(255,55,181,111),
	["WHITE"] = GUI:MakeARGB(255,255,255,255),
	["BLUE"] = GUI:MakeARGB(255,0,128,255),
	["RED"] = GUI:MakeARGB(255,255,0,0),
	["PURPLE"] = GUI:MakeARGB(255,128,0,255),
	["ORANGE"] = GUI:MakeARGB(255,255,125,0)
}

function DealerSellWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	_Parent = GUI:WndCreateWnd(_Parent,"DealerSellWnd",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage0", 0, 117, 80)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 545, 460)
		GUI:ImageSetAroundImage(_GUIHandle, 1850000280, 1850000282, 1850000286, 1850000288, 1850000284, 1850000281, 1850000287, 1850000283, 1850000285)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1", 0, 670, 80)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 350, 460)
		GUI:ImageSetAroundImage(_GUIHandle, 1850000280, 1850000282, 1850000286, 1850000288, 1850000284, 1850000281, 1850000287, 1850000283, 1850000285)
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"ItemList", 0, 687, 86)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 326, 448)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		DealerSellWnd.hItemList = _GUIHandle
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgTitle", 1853100009, 143, 86)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Title", 328, 91, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "我的交易 0/8")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Btn_tradeItem1", 1853100000, 123, 128)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.tradeItem")
		local _Handle = _GUIHandle
		_GUIHandle = GUI:ItemCtrlCreate(_Handle,"Item", 1850400004, 19, 17, 66, 66)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Name", 112, 22, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle, "Icon", 1850300006, 112, 52)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Price", 157, 55, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Expired", 1850900034, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Sold", 1850900035, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Btn_tradeItem2", 1853100000, 387, 128)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.tradeItem")
		local _Handle = _GUIHandle
		_GUIHandle = GUI:ItemCtrlCreate(_Handle,"Item", 1850400004, 19, 17, 66, 66)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			--RDItemCtrlSetGUIDataPropByKeyName(_Handle, "Item", "霸业神剑", 0, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Name", 112, 22, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle, "Icon", 1850300006, 112, 52)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Price", 157, 55, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Expired", 1850900034, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Sold", 1850900035, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Btn_tradeItem3", 1853100000, 123, 228)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.tradeItem")
		local _Handle = _GUIHandle
		_GUIHandle = GUI:ItemCtrlCreate(_Handle,"Item", 1850400004, 19, 17, 66, 66)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			--RDItemCtrlSetGUIDataPropByKeyName(_Handle, "Item", "霸业神剑", 0, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Name", 112, 22, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle, "Icon", 1850300006, 112, 52)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Price", 157, 55, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Expired", 1850900034, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Sold", 1850900035, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Btn_tradeItem4", 1853100000, 387, 228)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.tradeItem")
		local _Handle = _GUIHandle
		_GUIHandle = GUI:ItemCtrlCreate(_Handle,"Item", 1850400004, 19, 17, 66, 66)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			--RDItemCtrlSetGUIDataPropByKeyName(_Handle, "Item", "霸业神剑", 0, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Name", 112, 22, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle, "Icon", 1850300006, 112, 52)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Price", 157, 55, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Expired", 1850900034, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Sold", 1850900035, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Btn_tradeItem5", 1853100000, 123, 328)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.tradeItem")
		local _Handle = _GUIHandle
		_GUIHandle = GUI:ItemCtrlCreate(_Handle,"Item", 1850400004, 19, 17, 66, 66)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			--RDItemCtrlSetGUIDataPropByKeyName(_Handle, "Item", "霸业神剑", 0, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Name", 102, 22, 170, 24)
		_GUIHandle = GUI:EditCreate(_Handle,"Name", 112, 22, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle, "Icon", 1850300006, 112, 52)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Price", 157, 55, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Expired", 1850900034, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Sold", 1850900035, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Btn_tradeItem6", 1853100000, 387, 328)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.tradeItem")
		local _Handle = _GUIHandle
		_GUIHandle = GUI:ItemCtrlCreate(_Handle,"Item", 1850400004, 19, 17, 66, 66)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			--RDItemCtrlSetGUIDataPropByKeyName(_Handle, "Item", "霸业神剑", 0, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Name", 112, 22, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle, "Icon", 1850300006, 112, 52)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Price", 157, 55, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Expired", 1850900034, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Sold", 1850900035, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Btn_tradeItem7", 1853100000, 123, 428)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 7)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.tradeItem")
		local _Handle = _GUIHandle
		_GUIHandle = GUI:ItemCtrlCreate(_Handle,"Item", 1850400004, 19, 17, 66, 66)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			--RDItemCtrlSetGUIDataPropByKeyName(_Handle, "Item", "霸业神剑", 0, false)
		end
		
		_GUIHandle = GUI:EditCreate(_Handle,"Name", 112, 22, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle, "Icon", 1850300006, 112, 52)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Price", 157, 55, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end


		_GUIHandle = GUI:ImageCreate(_Handle,"Expired", 1850900034, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Sold", 1850900035, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Btn_tradeItem8", 1853100000, 387, 428)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 8)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.tradeItem")
		local _Handle = _GUIHandle
		_GUIHandle = GUI:ItemCtrlCreate(_Handle,"Item", 1850400004, 19, 17, 66, 66)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			--RDItemCtrlSetGUIDataPropByKeyName(_Handle, "Item", "霸业神剑", 0, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Name", 112, 22, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle, "Icon", 1850300006, 112, 52)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(_Handle,"Price", 157, 55, 170, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Expired", 1850900034, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(_Handle,"Sold", 1850900035, 20, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
	end

	local backWnd = GUI:WndCreateWnd(_Parent, "backWnd", 0, 0, 0)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(backWnd, false)
		GUI:WndSetSizeM(backWnd, 1136, 640)
		GUI:WndRegistScript(backWnd,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.hideBackWnd")
	end

	_GUIHandle = GUI:WndCreateWnd(backWnd,"preSellWnd",0, 238, 105)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		DealerSellWnd.hPreSellWnd = _GUIHandle
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd,"BgImg0", 1850600016, 0, 0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 660, 430)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd,"Title", 303, 20, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "上 架")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd,"BgImg1", 1850600016, 32, 52)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, 294, 355)
		GUI:ImageSetAroundImage(_GUIHandle, 1853000019, 1853000021, 1853000025, 1853000027, 1853000023, 1853000020, 1853000026, 1853000022, 1853000024)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd,"BgImg2", 0, 333, 52)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, 294, 355)
		GUI:ImageSetAroundImage(_GUIHandle, 1853000019, 1853000021, 1853000025, 1853000027, 1853000023, 1853000020, 1853000026, 1853000022, 1853000024)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd,"Close",1852700000, 610, 10)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.showPreSellWnd")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd, "Img_tradeItem1", 1853100000, 44, 88)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd, "Img_tradeItem2", 1853100000, 44, 188)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd, "Img_tradeItem3", 1853100000, 44, 288)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd, "BgTitle", 1850900032, 38, 54)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(DealerSellWnd.hPreSellWnd,"Item1", 1850400004, 62, 105, 66, 66)
	if _GUIHandle ~= 0 then
		--RDItemCtrlSetGUIDataPropByKeyName(DealerSellWnd.hPreSellWnd, "Item1", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(DealerSellWnd.hPreSellWnd,"Item2", 1850400004, 62, 205, 66, 66)
	if _GUIHandle ~= 0 then
		--RDItemCtrlSetGUIDataPropByKeyName(DealerSellWnd.hPreSellWnd, "Item2", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(DealerSellWnd.hPreSellWnd,"Item3", 1850400004, 62, 305, 66, 66)
	if _GUIHandle ~= 0 then
		--RDItemCtrlSetGUIDataPropByKeyName(DealerSellWnd.hPreSellWnd, "Item3", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd,"ItemName1", 145, 110, 170, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "一二三四五六七")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd,"ItemName2", 145, 210, 170, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "一二三四五六七")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd,"ItemName3", 145, 310, 170, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "一二三四五六七")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd, "YBIcon1", 1850300006, 145, 140)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd, "YBIcon2", 1850300006, 145, 240)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd, "YBIcon3", 1850300006, 145, 340)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd, "YBEdit1", 185, 143, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "11111111")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd, "YBEdit2", 185, 243, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "11111111")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd, "YBEdit3", 185, 343, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "11111111")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd,"LeftTitle", 100, 63, 170, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "    正在出售    ")
	end

	_GUIHandle = GUI:ItemCtrlCreate(DealerSellWnd.hPreSellWnd,"RightItem", 1850400004, 443, 72, 66, 66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByKeyName(DealerSellWnd.hPreSellWnd, "RightItem", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd, "RightName", 387, 156, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "其他玩家正在出售")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd, "Text_Price", 360, 206, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "单价：")
	end

		_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd,"PriceBg", 0, 418, 200)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 179, 39)
		--GUI:ImageSetAroundImage(_GUIHandle, 1850600043, 1850600045, 1850600049, 1850600051, 1850600047,1850600044, 1850600050, 1850600046, 1850600048)
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd, "Price_Icon", 1850300006, 430, 206)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd, "Edit_Price", 475, 208, 110, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetMaxCharNum(_GUIHandle, 8)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd, "Text_Amount", 360, 246, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "数量：")
		
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd,"AmountBg", 0, 418, 240)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 179, 39)
		--GUI:ImageSetAroundImage(_GUIHandle, 1850600043, 1850600045, 1850600049, 1850600051, 1850600047,1850600044, 1850600050, 1850600046, 1850600048)
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd, "Edit_Amount", 460, 248, 90, 24)
	if _GUIHandle ~= 0 then
		--GUI:EditSetTextM(_GUIHandle, "111")
		GUI:WndRegistScript(_GUIHandle,RDWnd2DEditCL_str_change, "DealerSellWnd.SellAmountChange")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.AmountSetEnable")
		--GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetMaxCharNum(_GUIHandle, 5)
	end

	_GUIHandle = GUI:ButtonCreate(DealerSellWnd.hPreSellWnd, "Btn_decrease", 1852000026, 420, 242)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.Decrease")
	end

	_GUIHandle = GUI:ButtonCreate(DealerSellWnd.hPreSellWnd, "Btn_increase", 1851000016, 560, 242)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.Increase")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd, "Text_Poundage", 360, 286, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "手续费：")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd,"PoundageBg", 0, 438, 280)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 159, 39)
		--GUI:ImageSetAroundImage(_GUIHandle, 1850600043, 1850600045, 1850600049, 1850600051, 1850600047,1850600044, 1850600050, 1850600046, 1850600048)
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hPreSellWnd, "Edit_Poundage", 490, 288, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "10000")
		GUI:EditSetBNumber(_GUIHandle, true)
		--GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetMaxCharNum(_GUIHandle, 5)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ButtonCreate(DealerSellWnd.hPreSellWnd, "Btn_Sell", 1850000307, 425, 335)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle, "上 架")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.confirmSell")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hPreSellWnd, "Gold_Icon", 1850300005, 445, 287)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:WndCreateWnd(backWnd,"SuccessWnd",0, 238, 105)
	if _GUIHandle ~= 0 then
		
		DealerSellWnd.hSuccessWnd = _GUIHandle
	end

	_GUIHandle = GUI:WndCreateWnd(backWnd,"ReStoreWnd",0, 238, 105)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		DealerSellWnd.hReStoreWnd = _GUIHandle
	end


	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd,"BgImg0", 1850600016, 0, 0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 660, 430)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd,"Title", 288, 20, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "重新上架")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd,"BgImg1", 1850600016, 32, 52)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, 294, 355)
		GUI:ImageSetAroundImage(_GUIHandle, 1853000019, 1853000021, 1853000025, 1853000027, 1853000023, 1853000020, 1853000026, 1853000022, 1853000024)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd,"BgImg2", 0, 333, 52)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, 294, 355)
		GUI:ImageSetAroundImage(_GUIHandle, 1853000019, 1853000021, 1853000025, 1853000027, 1853000023, 1853000020, 1853000026, 1853000022, 1853000024)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd,"Close",1852700000, 610, 10)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.showReStoreWnd")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd, "Img_tradeItem1", 1853100000, 44, 88)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd, "Img_tradeItem2", 1853100000, 44, 188)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd, "Img_tradeItem3", 1853100000, 44, 288)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd, "BgTitle", 1850900032, 38, 54)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(DealerSellWnd.hReStoreWnd,"Item1", 1850400004, 62, 105, 66, 66)
	if _GUIHandle ~= 0 then
		--RDItemCtrlSetGUIDataPropByKeyName(DealerSellWnd.hReStoreWnd, "Item1", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(DealerSellWnd.hReStoreWnd,"Item2", 1850400004, 62, 205, 66, 66)
	if _GUIHandle ~= 0 then
		--RDItemCtrlSetGUIDataPropByKeyName(DealerSellWnd.hReStoreWnd, "Item2", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(DealerSellWnd.hReStoreWnd,"Item3", 1850400004, 62, 305, 66, 66)
	if _GUIHandle ~= 0 then
		--RDItemCtrlSetGUIDataPropByKeyName(DealerSellWnd.hReStoreWnd, "Item3", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd,"ItemName1", 145, 110, 170, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "一二三四五六七")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd,"ItemName2", 145, 210, 170, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "一二三四五六七")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd,"ItemName3", 145, 310, 170, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "一二三四五六七")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd, "YBIcon1", 1850300006, 145, 140)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd, "YBIcon2", 1850300006, 145, 240)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd, "YBIcon3", 1850300006, 145, 340)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd, "YBEdit1", 185, 143, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "11111111")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd, "YBEdit2", 185, 243, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "11111111")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd, "YBEdit3", 185, 343, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "11111111")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd,"LeftTitle", 100, 63, 170, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "    正在出售    ")
	end

	_GUIHandle = GUI:ItemCtrlCreate(DealerSellWnd.hReStoreWnd,"RightItem", 1850400004, 443, 72, 66, 66)
	if _GUIHandle ~= 0 then
		--RDItemCtrlSetGUIDataPropByKeyName(DealerSellWnd.hReStoreWnd, "RightItem", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd, "RightName", 387, 156, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "其他玩家正在出售")
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd, "Text_Price", 360, 206, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "单价：")
	end

		_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd,"PriceBg", 0, 418, 200)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 179, 39)
		--GUI:ImageSetAroundImage(_GUIHandle, 1850600043, 1850600045, 1850600049, 1850600051, 1850600047,1850600044, 1850600050, 1850600046, 1850600048)
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd, "Price_Icon", 1850300006, 430, 206)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd, "Edit_Price", 475, 208, 110, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetMaxCharNum(_GUIHandle, 10)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd, "Text_Amount", 360, 246, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "数量：")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd,"AmountBg", 0, 418, 240)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 179, 39)
		--GUI:ImageSetAroundImage(_GUIHandle, 1850600043, 1850600045, 1850600049, 1850600051, 1850600047,1850600044, 1850600050, 1850600046, 1850600048)
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd, "Edit_Amount", 460, 248, 90, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetMaxCharNum(_GUIHandle, 5)
	end


	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd, "Text_Poundage", 360, 286, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "手续费：")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd,"PoundageBg", 0, 438, 280)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 159, 39)
		--GUI:ImageSetAroundImage(_GUIHandle, 1850600043, 1850600045, 1850600049, 1850600051, 1850600047,1850600044, 1850600050, 1850600046, 1850600048)
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hReStoreWnd, "Edit_Poundage", 490, 288, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "10000")
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetMaxCharNum(_GUIHandle, 5)
	end

	_GUIHandle = GUI:ButtonCreate(DealerSellWnd.hReStoreWnd, "Btn_GetBack", 1850000307, 350, 335)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle, "取回")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.GetBack")
	end

	_GUIHandle = GUI:ButtonCreate(DealerSellWnd.hReStoreWnd, "Btn_ReStore", 1850000307, 495, 335)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle, "重新上架")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.ReStore")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hReStoreWnd, "Gold_Icon", 1850300005, 445, 287)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:WndCreateWnd(backWnd,"TipWnd",0, 308, 105)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		DealerSellWnd.hTipWnd = _GUIHandle
	end

		_GUIHandle = GUI:ImageCreate(DealerSellWnd.hTipWnd,"BgImg0", 1850600016, 0, 0)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hTipWnd,"Title", 205, 20, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "上架成功")
	end

	_GUIHandle = GUI:ImageCreate(DealerSellWnd.hTipWnd,"BgImg1", 0, 35, 60)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, 430, 200)
		GUI:ImageSetAroundImage(_GUIHandle, 1853000019, 1853000021, 1853000025, 1853000027, 1853000023, 1853000020, 1853000026, 1853000022, 1853000024)
	end
	
	_GUIHandle = GUI:ButtonCreate(DealerSellWnd.hTipWnd, "Btn_Confirm", 1850000307, 190, 265)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle, "确 定")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerSellWnd.closeTip")
	end
	_GUIHandle = GUI:RichEditCreate(DealerSellWnd.hTipWnd,"Text", 80, 120, 350, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "出售期1天，未出售的商品将自动下架。              税率#COLORCOLOR_GREENG#8%#COLOREND#")
	end
	_GUIHandle = GUI:CheckBoxCreate(DealerSellWnd.hTipWnd,"zid",1850000272,"", 125, 202)
	if _GUIHandle ~= 0 then
		
	end

	_GUIHandle = GUI:EditCreate(DealerSellWnd.hTipWnd,"zid_text", 170, 207, 140, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "七天内不再提示")
	end
	DealerSellWnd.UIInit(_Parent)
end

DealerSellWnd.nowHandle = 0
DealerSellWnd.tTradeItem = {}
DealerSellWnd.isTyping = 0 --是否手动输入
--UI Logic Code Start
function DealerSellWnd.UIInit(_Handle)
	DealerSellWnd.WndHandle = _Handle
	UI:Lua_SubmitForm("手游交易行表单", "Trade_getPersonalGoods", "")
	DealerSellWnd.ListItem()
end

--服务端调用 填充寄售物品列表
function DealerSellWnd.SetMyGoods(data)

	DealerSellWnd.tTradeItem = data
	local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.WndHandle, "Title")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "我的交易 "..#data.."/8")
	end
	DealerSellWnd.clearTradeItem()

	for i = 1, #data do
		_GUIHandle = GUI:WndFindWindow(DealerSellWnd.WndHandle, "Btn_tradeItem"..i)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
			RDItemCtrlSetGUIDataPropByItemID(_GUIHandle, "Item", data[i][1]["i"], data[i][1]["a"], false)
			local _Handle = GUI:WndFindWindow(_GUIHandle, "Item")
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle, true)
			end
			_Handle = GUI:WndFindWindow(_GUIHandle, "Name")
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle, true)
				GUI:EditSetTextM(_Handle, data[i][1]["n"])
				if CL:GetItemTemplatePropByID(data[i][1]["i"], ITEM_PROP_COLOR) then
					if tColor[LuaRet] ~= nil then
						GUI:WndSetTextColorM(_Handle, tColor[LuaRet])
					end
				end
			end
			_Handle = GUI:WndFindWindow(_GUIHandle, "Price")
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle, true)
				GUI:EditSetTextM(_Handle, tostring(data[i][1]["cus"]["i"]["Trade_price"]))
			end
			_Handle = GUI:WndFindWindow(_GUIHandle, "Icon") --元宝ICON
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle, true)
			end
			_Handle = GUI:WndFindWindow(_GUIHandle, "Sold") --已售图片
			if _Handle ~= 0 then
				if data[i][2] then
					--GUI:WndSetVisible(_Handle, data[i][2])
					GUI:WndSetVisible(_Handle, true)
				else
					_Handle = GUI:WndFindWindow(_GUIHandle, "Expired") --过期图片
					if _Handle ~= 0 then
						--GUI:WndSetVisible(_Handle, data[i][3])
					end
				end
			end
		end
	end
end

function DealerSellWnd.clearTradeItem()
	for i = 1, 8 do
		local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.WndHandle, "Btn_tradeItem"..i)
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
			local _Handle = GUI:WndFindWindow(_GUIHandle, "Name")
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle, false)
			end
			_Handle = GUI:WndFindWindow(_GUIHandle, "Item")
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle, false)
			end
			_Handle = GUI:WndFindWindow(_GUIHandle, "Price")
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle, false)
			end
			_Handle = GUI:WndFindWindow(_GUIHandle, "Icon") --元宝ICON
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle, false)
			end
			_Handle = GUI:WndFindWindow(_GUIHandle, "Sold")--已售图片
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle, false)
			end
			_Handle = GUI:WndFindWindow(_GUIHandle, "Expired") --过期图片
			if _Handle ~= 0 then
				GUI:WndSetVisible(_Handle, false)
			end
		end
	end
end

--找出符合要求的道具 并显示
function DealerSellWnd.ListItem()
	local tbl = {} --所有道具表
	DealerSellWnd.tEquip = {} --装备GUID表
	if CL:GetPackageItemGUIDList() then
		tbl = LuaRet
		for i = 1, #tbl do
			if CL:GetItemEntityPropByGUID(tbl[i], ITEM_PROP_ENTITY_IS_BOUND) then
				--非绑定
				if not LuaRet then
					if CL:GetItemEntityPropByGUID(tbl[i], ITEM_PROP_TYPE) then
						if LuaRet == 1 then
							--装备类
							if CL:GetItemEntityPropByGUID(tbl[i], ITEM_PROP_SUBTYPE) then
								--可以交易的装备类型
								if LuaRet < 10 and LuaRet ~= 5 and LuaRet ~= 12 and LuaRet ~= 15 then
									DealerSellWnd.tEquip[#DealerSellWnd.tEquip + 1] = tbl[i]
								end
							end
						else
							--非装备
							DealerSellWnd.tEquip[#DealerSellWnd.tEquip + 1] = tbl[i]
						end
					end
				end
			end
		end
	end
	
	--创建填充包裹物品列表
	local row = math.ceil(#DealerSellWnd.tEquip/4)
	local index = 1
	GUI:WndDlgClear(DealerSellWnd.hItemList)
	for i = 1, row do
		for j = 1, 4 do
			if DealerSellWnd.tEquip[index] ~= nil then
				local _GUIHandle = GUI:ItemCtrlCreate(DealerSellWnd.hItemList,"Item"..index,1850400004, (j-1)*81, (i-1)*81 + 12,66,66)
				--if _GUIHandle ~= 0 then
					--RDItemCtrlSetGUIDataPropByGUID(DealerSellWnd.hItemList, "Item"..index, DealerSellWnd.tEquip[index])
				--end
				_GUIHandle = GUI:WndCreateWnd(DealerSellWnd.hItemList,"Cover"..index, 0, (j-1)*81, (i-1)*81 + 12)
				if _GUIHandle ~= 0 then
					GUI:WndSetSizeM(_GUIHandle, 66,66)
					GUI:WndSetParam(_GUIHandle, index)
					GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DealerSellWnd.bagItem")
				end
				index = index + 1
			else
				break
			end
		end
	end
	CL:AddDelayTask("DealerSellWnd.DelayTask()", 50, 1)

end
function DealerSellWnd.DelayTask()
	for i = 1, #DealerSellWnd.tEquip do
		RDItemCtrlSetGUIDataPropByGUID(DealerSellWnd.hItemList, "Item"..i, DealerSellWnd.tEquip[i])
	end
end
--点击包裹道具触发
function DealerSellWnd.bagItem(_Handle)
	local _GUIHandle = 0
	local param = tonumber(GUI:WndGetParam(_Handle))

	DealerSellWnd.nowSelect = param

	if CL:GetItemEntityPropByGUID(DealerSellWnd.tEquip[param], ITEM_PROP_KEYNAME) then
		UI:Lua_SubmitForm("手游交易行表单", "Trade_getCheapestGoods", LuaRet)
	end

	if CL:GetItemEntityPropByGUID(DealerSellWnd.tEquip[param], ITEM_PROP_NAME) then
		_GUIHandle = GUI:WndFindWindow(DealerSellWnd.hPreSellWnd, "RightName")
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle, LuaRet)
		end
	end

	if CL:GetItemEntityPropByGUID(DealerSellWnd.tEquip[param], ITEM_PROP_ENTITY_AMOUNT) then
		amount = LuaRet
		DealerSellWnd.nowSelectAmount = amount
	end

	_GUIHandle = GUI:WndFindWindow(DealerSellWnd.hPreSellWnd, "Edit_Amount")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, ""..amount)
	end

	_GUIHandle = GUI:WndFindWindow(DealerSellWnd.WndHandle, "backWnd")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, true)
		GUI:WndSetVisible(DealerSellWnd.hPreSellWnd, true)
	end

	_GUIHandle = GUI:WndFindWindow(DealerSellWnd.hPreSellWnd, "RightItem")
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByGUID(DealerSellWnd.hPreSellWnd, "RightItem", DealerSellWnd.tEquip[param])
	end
end

--点击已上架物品触发
function DealerSellWnd.tradeItem(_Handle)
	local param = tonumber(GUI:WndGetParam(_Handle))
	
	if param > #DealerSellWnd.tTradeItem then
		return
	end
	
	if DealerSellWnd.nowHandle ~= 0 then
		--GUI:ButtonSetIsActivePageBtn(DealerSellWnd.nowHandle, false)
	end
	DealerSellWnd.nowTradeIndex = param
	DealerSellWnd.nowHandle = _Handle
	--GUI:ButtonSetIsActivePageBtn(_Handle, true)

	_GUIHandle = GUI:WndFindWindow(_Handle, "Sold")
	if _GUIHandle ~= 0 then
		if GUI:WndGetVisible(_GUIHandle) then
			--msg("有东西售出 直接提现")
			
			UI:Lua_SubmitForm("手游交易行表单", "Trade_Withdrawals", ""..param)
		else
			--没有售出 显示重新上架界面
			UI:Lua_SubmitForm("手游交易行表单", "Trade_getCheapestGoods", ""..param)
			_GUIHandle = GUI:WndFindWindow(DealerSellWnd.WndHandle, "backWnd")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, true)
				GUI:WndSetVisible(DealerSellWnd.hReStoreWnd, true)
			end


			RDItemCtrlSetGUIDataPropByItemID(DealerSellWnd.hReStoreWnd, "RightItem", DealerSellWnd.tTradeItem[param][1]["i"], DealerSellWnd.tTradeItem[param][1]["a"], false)

			_GUIHandle = GUI:WndFindWindow(DealerSellWnd.hReStoreWnd, "RightName")
			if _GUIHandle ~= 0 then
				if CL:GetItemTemplatePropByID(DealerSellWnd.tTradeItem[param][1]["i"], ITEM_PROP_NAME) then
					GUI:EditSetTextM(_GUIHandle, tostring(LuaRet))
				end
			end

			_GUIHandle = GUI:WndFindWindow(DealerSellWnd.hReStoreWnd, "Edit_Price")
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle, tostring(DealerSellWnd.tTradeItem[param][1]["cus"]["i"]["Trade_price"]))
			end

			_GUIHandle = GUI:WndFindWindow(DealerSellWnd.hReStoreWnd, "Edit_Amount")
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle, tostring(DealerSellWnd.tTradeItem[param][1]["a"]))
			end
		end
	end
end

--隐藏/显示上架窗口
function DealerSellWnd.showPreSellWnd()
	if not GUI:WndGetVisible(DealerSellWnd.hPreSellWnd) then
		GUI:WndSetVisible(DealerSellWnd.hPreSellWnd, true)
		local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.WndHandle, "backWnd")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
		end
	else
		GUI:WndSetVisible(DealerSellWnd.hPreSellWnd, false)
		local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.WndHandle, "backWnd")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end
end

--发送上架请求到服务器
function DealerSellWnd.confirmSell()
	local amount = 0
	local price = 0
	local itemGUID = ""
	local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.hPreSellWnd, "Edit_Amount")
	if _GUIHandle ~= 0 then
		amount = tonumber(GUI:EditGetTextM(_GUIHandle))
		if amount == nil then
			amount =0
		end
	end
	_GUIHandle = GUI:WndFindWindow(DealerSellWnd.hPreSellWnd, "Edit_Price")
	if _GUIHandle ~= 0 then
		price = tonumber(GUI:EditGetTextM(_GUIHandle))
		if price == nil then
			price =0
		end
	end
	if UI:Lua_GUID2Str(DealerSellWnd.tEquip[DealerSellWnd.nowSelect]) then
		itemGUID = LuaRet
	end
	if price > 0 and amount > 0 and itemGUID ~= "" then
		DealerSellWnd.showPreSellWnd()
		UI:Lua_SubmitForm("手游交易行表单", "Trade_SellItem", itemGUID.."#"..amount.."#"..price)
	else
		win_msg_up("请输入价格")
	end
end

--上架数量减少
function DealerSellWnd.Decrease(_Handle)
	DealerSellWnd.isTyping = 0
	local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.hPreSellWnd, "Edit_Amount")
	if _GUIHandle ~= 0 then
		local num = tonumber(GUI:EditGetTextM(_GUIHandle))
		if num == "" or num == nil then
			num = 1
		end
		num = num - 1
		if num < 1 then
			GUI:EditSetTextM(_GUIHandle, "1")
		else
			GUI:EditSetTextM(_GUIHandle, ""..num)
		end
	end
end

--上架数量增加
function DealerSellWnd.Increase(_Handle)
	DealerSellWnd.isTyping = 0
	local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.hPreSellWnd, "Edit_Amount")
	if _GUIHandle ~= 0 then
		local amount = 0
		if CL:GetItemEntityPropByGUID(DealerSellWnd.tEquip[DealerSellWnd.nowSelect], ITEM_PROP_ENTITY_AMOUNT) then
			amount = LuaRet
		end
		local num = tonumber(GUI:EditGetTextM(_GUIHandle))
		if num == "" or num == nil then
			num = 1
		end
		num = num + 1 
		if num > amount then
			GUI:EditSetTextM(_GUIHandle, ""..amount)
		else
			GUI:EditSetTextM(_GUIHandle, ""..num)
		end
	end
end

--隐藏/显示重新上架窗口
function DealerSellWnd.showReStoreWnd()
	if not GUI:WndGetVisible(DealerSellWnd.hReStoreWnd) then
		GUI:WndSetVisible(DealerSellWnd.hReStoreWnd, true)
		local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.WndHandle, "backWnd")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
		end
	else
		GUI:WndSetVisible(DealerSellWnd.hReStoreWnd, false)
		local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.WndHandle, "backWnd")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end
end

--隐藏所有二级弹窗
function DealerSellWnd.hideBackWnd(_Handle)
	GUI:WndSetVisible(DealerSellWnd.hReStoreWnd, false)
	GUI:WndSetVisible(DealerSellWnd.hPreSellWnd, false)
	GUI:WndSetVisible(DealerSellWnd.hTipWnd, false)
	GUI:WndSetVisible(_Handle, false)
end

--取回寄售道具
function DealerSellWnd.GetBack()
	if DealerSellWnd.nowTradeIndex == nil then
		return
	end
	DealerSellWnd.showReStoreWnd()
	UI:Lua_SubmitForm("手游交易行表单", "Trade_returnItem", ""..DealerSellWnd.nowTradeIndex)
end

--重新上架
function DealerSellWnd.ReStore()
	if DealerSellWnd.nowTradeIndex == nil then
		return
	end
	local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.hReStoreWnd, "Edit_Price")
	if _GUIHandle ~= 0 then
		local price = tonumber(GUI:EditGetTextM(_GUIHandle))
		if price == nil or price < 1 then
			win_msg_up("请输入价格")
			return
		else
			DealerSellWnd.showReStoreWnd()
			UI:Lua_SubmitForm("手游交易行表单", "Trade_reStore", DealerSellWnd.nowTradeIndex.."#"..price)
		end
	end
end

--设置最便宜的3个相同道具
function DealerSellWnd.SetCheapestGoods(data)
	local _GUIHandle = 0
	local _Parent = 0
	if GUI:WndGetVisible(DealerSellWnd.hPreSellWnd) then
		_Parent = DealerSellWnd.hPreSellWnd
	elseif GUI:WndGetVisible(DealerSellWnd.hReStoreWnd) then
		_Parent = DealerSellWnd.hReStoreWnd
	else
		return
	end
	for i = 1, 3 do
		if data ~= nil and data[i] ~= nil then
			_GUIHandle = GUI:WndFindWindow(_Parent, "Img_tradeItem"..i)
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, true)
			end
			_GUIHandle = GUI:WndFindWindow(_Parent, "ItemName"..i)
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle, data[i]["n"])
			end
			_GUIHandle = GUI:WndFindWindow(_Parent, "YBEdit"..i)
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle, tostring(data[i]["cus"]["i"]["Trade_price"]))
			end
			_GUIHandle = GUI:WndFindWindow(_Parent, "YBIcon"..i)
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, true)
			end
			_GUIHandle = GUI:WndFindWindow(_Parent, "Item"..i)
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, true)
			end
			RDItemCtrlSetGUIDataPropByItemID(_Parent, "Item"..i, data[i]["i"], data[i]["a"], false)
		else
			_GUIHandle = GUI:WndFindWindow(_Parent, "Img_tradeItem"..i)
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
			_GUIHandle = GUI:WndFindWindow(_Parent, "ItemName"..i)
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle, "")
			end
			_GUIHandle = GUI:WndFindWindow(_Parent, "YBEdit"..i)
			if _GUIHandle ~= 0 then
				GUI:EditSetTextM(_GUIHandle, "")
			end
			_GUIHandle = GUI:WndFindWindow(_Parent, "YBIcon"..i)
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
			_GUIHandle = GUI:WndFindWindow(_Parent, "Item"..i)
			if _GUIHandle ~= 0 then
				GUI:ItemCtrlClearItemData(_GUIHandle)
				GUI:WndSetVisible(_GUIHandle, false)
			end
		end
	end
end

function DealerSellWnd.closeTip()
	GUI:WndSetVisible(DealerSellWnd.hTipWnd, false)
	local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.WndHandle, "backWnd")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
	end
	_GUIHandle = GUI:WndFindWindow(DealerSellWnd.hTipWnd, "zid")
	if _GUIHandle ~= 0 then
		if GUI:CheckBoxGetCheck(_GUIHandle) then
			UI:Lua_SubmitForm("手游交易行表单", "Trade_tipFlagChange", "")
		end
	end
end

--显示提示框
function DealerSellWnd.showTipWnd()
	GUI:WndSetVisible(DealerSellWnd.hTipWnd, true)
	local _GUIHandle = GUI:WndFindWindow(DealerSellWnd.WndHandle, "backWnd")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, true)
	end
end

--上架数量变化
function DealerSellWnd.SellAmountChange(_Handle)
	local maxAmount = DealerSellWnd.nowSelectAmount
	local amount = GUI:EditGetTextM(_Handle)
	if DealerSellWnd.isTyping ~= 1 then
		if amount == "" or amount == nil then
			GUI:EditSetTextM(_Handle, "1")
		elseif tonumber(amount) > tonumber(maxAmount) then
			GUI:EditSetTextM(_Handle, tostring(maxAmount))
		end
	else
		if amount == "0" then
			GUI:EditSetTextM(_Handle, "1")
		elseif tonumber(amount) > tonumber(maxAmount) then
			GUI:EditSetTextM(_Handle, tostring(maxAmount))
		end
	end
end

function DealerSellWnd.AmountSetEnable(_Handle)
	DealerSellWnd.isTyping = 1
	--msg("AmountSetEnable")
	--GUI:EditSetCanEdit(_Handle, true)
	GUI:EditSetTextM(_Handle, "")
end

DealerSellWnd.main()