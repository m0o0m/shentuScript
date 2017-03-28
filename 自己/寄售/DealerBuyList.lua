DealerBuyList = {}
function DealerBuyList.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0

	_Parent = GUI:WndCreateWnd(_Parent,"DealerBuyList",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
	end
	--背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage0", 0, 117, 80)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 279, 460)
		GUI:ImageSetAroundImage(_GUIHandle, 1850000280, 1850000282, 1850000286, 1850000288, 1850000284, 1850000281, 1850000287, 1850000283, 1850000285)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1", 0, 405, 80)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 615, 460)
		GUI:ImageSetAroundImage(_GUIHandle, 1850000280, 1850000282, 1850000286, 1850000288, 1850000284, 1850000281, 1850000287, 1850000283, 1850000285)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage2", 0, 132, 95)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 200, 35)
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent, "Edit_Search", 143, 94, 180, 37)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Btn_Search", 1850600021, 340, 91)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.Search")
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"ItemList", 0, 413, 125)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 600, 409)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		DealerBuyList.hItemList = _GUIHandle
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"TabList", 0, 127, 140)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 260, 394)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		DealerBuyList.hTabList = _GUIHandle

		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Equip", 1850900025, 0, 0)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "装 备")
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.ShowSubTypeWnd")
			_GUIHandle = GUI:ImageCreate(_GUIHandle,"Img_Arrow", 1850900029, 180, 22)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
			end
		end

		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Type11", 1850900025, 0, 60)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "杂货品")
			GUI:WndSetParam(_GUIHandle, 11)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
		end

		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Type10", 1850900025, 0, 120)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "消耗品")
			GUI:WndSetParam(_GUIHandle, 10)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
		end

		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Type12", 1850900025, 0, 180)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "材 料")
			GUI:WndSetParam(_GUIHandle, 12)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
		end

		
	end

	_GUIHandle = GUI:EditCreate(_Parent, "Text_Name", 513, 92, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle ,false)
		GUI:EditSetTextM(_GUIHandle, "物品名称")
	end

	_GUIHandle = GUI:EditCreate(_Parent, "Text_Level", 665, 92, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle ,false)
		GUI:EditSetTextM(_GUIHandle, "等级")
	end

	_GUIHandle = GUI:EditCreate(_Parent, "Text_Time", 765, 92, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle ,false)
		GUI:EditSetTextM(_GUIHandle, "剩余时间")
	end

	local Text_Price = GUI:WndCreateWnd(_Parent, "Text_Price", 0, 910, 92)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(Text_Price, 78, 31)
		GUI:WndRegistScript(Text_Price, RDWndBaseCL_mouse_lbUp, "DealerBuyList.sort")
		GUI:WndSetParam(Text_Price, 1)

		_GUIHandle = GUI:EditCreate(Text_Price, "Text", 0, 0, 120, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle ,false)
			GUI:EditSetTextM(_GUIHandle, "单价")
		end

		_GUIHandle = GUI:ImageCreate(Text_Price, "Img_Arrange", 1850900037, 45, 3)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle ,false)
		end
	end

	local backWnd = GUI:WndCreateWnd(_Parent, "backWnd", 0, 0, 0)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(backWnd, false)
		GUI:WndSetSizeM(backWnd, 1136, 640)
		GUI:WndRegistScript(backWnd,RDWndBaseCL_mouse_lbUp, "DealerBuyList.hideBackWnd")
	end

	_GUIHandle = GUI:WndCreateWnd(backWnd,"preBuyWnd",0, 238, 105)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		DealerBuyList.hPreBuyWnd = _GUIHandle
	end
		_GUIHandle = GUI:ImageCreate(DealerBuyList.hPreBuyWnd,"BgImg0", 1850600016, 0, 0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 660, 430)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd,"Title", 303, 20, 120, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "购 买")
	end

	_GUIHandle = GUI:ImageCreate(DealerBuyList.hPreBuyWnd,"BgImg1", 1850600016, 32, 52)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, 294, 355)
		GUI:ImageSetAroundImage(_GUIHandle, 1853000019, 1853000021, 1853000025, 1853000027, 1853000023, 1853000020, 1853000026, 1853000022, 1853000024)
	end

	_GUIHandle = GUI:ImageCreate(DealerBuyList.hPreBuyWnd,"BgImg2", 0, 333, 52)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle, 294, 355)
		GUI:ImageSetAroundImage(_GUIHandle, 1853000019, 1853000021, 1853000025, 1853000027, 1853000023, 1853000020, 1853000026, 1853000022, 1853000024)
	end

	_GUIHandle = GUI:ImageCreate(DealerBuyList.hPreBuyWnd,"Close",1852700000, 610, 10)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.showPreBuyWnd")
	end

	_GUIHandle = GUI:ImageCreate(DealerBuyList.hPreBuyWnd, "BgTitle", 1850900032, 38, 54)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "Text1", 396, 76, 200, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "确认购买下列道具？")
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(DealerBuyList.hPreBuyWnd,"RightItem", 1850400004, 364, 120, 66, 66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByKeyName(DealerBuyList.hPreBuyWnd, "RightItem", "霸业神剑", 0, false)
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "RightName", 437, 125, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "Edit_UnitPrice", 495, 163, 110, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetMaxCharNum(_GUIHandle, 10)
	end

	_GUIHandle = GUI:ImageCreate(DealerBuyList.hPreBuyWnd, "Price_Icon0", 1850300006, 450, 160)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "Text_TotalPrice", 360, 274, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "总价：")
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "Text_Amount", 360, 226, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "数量：")
	end

	_GUIHandle = GUI:ImageCreate(DealerBuyList.hPreBuyWnd,"AmountBg", 0, 418, 220)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 179, 39)
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "Edit_Amount", 460, 228, 90, 24)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWnd2DEditCL_str_change, "DealerBuyList.AmountChange")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.AmountSetEnable")
		GUI:EditSetTextM(_GUIHandle, "1")
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetMaxCharNum(_GUIHandle, 5)
	end

	_GUIHandle = GUI:ButtonCreate(DealerBuyList.hPreBuyWnd, "Btn_decrease", 1852000026, 420, 222)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.Decrease")
	end

	_GUIHandle = GUI:ButtonCreate(DealerBuyList.hPreBuyWnd, "Btn_increase", 1851000016, 560, 222)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.Increase")
	end

	_GUIHandle = GUI:ImageCreate(DealerBuyList.hPreBuyWnd,"PriceBg", 0, 418, 268)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 179, 39)
		--GUI:ImageSetAroundImage(_GUIHandle, 1850600043, 1850600045, 1850600049, 1850600051, 1850600047,1850600044, 1850600050, 1850600046, 1850600048)
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
	end

	_GUIHandle = GUI:ImageCreate(DealerBuyList.hPreBuyWnd, "Price_Icon", 1850300006, 430, 274)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "Edit_TotalPrice", 475, 276, 110, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "0")
		GUI:EditSetMaxCharNum(_GUIHandle, 10)
	end

	_GUIHandle = GUI:ButtonCreate(DealerBuyList.hPreBuyWnd, "Btn_Sell", 1850000307, 425, 335)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle, "购 买")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.confirmBuy")
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "LeftName", 90, 62, 180, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "其他玩家正在出售")
	end

	_GUIHandle = GUI:ItemCtrlCreate(DealerBuyList.hPreBuyWnd,"LeftItem", 1850400004, 40, 100, 66, 66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByKeyName(DealerBuyList.hPreBuyWnd, "LeftItem", "霸业神剑", 1, false)
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "LeftText1", 115, 110, 60, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "类型：")
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "LeftText2", 230, 110, 60, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "职业：")
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "LeftText3", 115, 140, 60, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "等级：")
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "LeftText4", 205, 140, 60, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "性别：")
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "LeftEdit1", 155, 110, 80, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "武器")
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "LeftEdit2", 280, 110, 60, 24)
	if _GUIHandle ~= 0 then
		--GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "战士")
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "LeftEdit3", 162, 140, 30, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "100")
	end

	_GUIHandle = GUI:EditCreate(DealerBuyList.hPreBuyWnd, "LeftEdit4", 255, 140, 60, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "无限制")
	end

	_GUIHandle = GUI:WndCreateWnd(DealerBuyList.hPreBuyWnd,"DetailWnd", 0, 50, 190)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 260, 211)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		DealerBuyList.hDetailWnd = _GUIHandle
		_GUIHandle = GUI:RichEditCreate(DealerBuyList.hDetailWnd, "details", 0, 0, 260, 611)
		if _GUIHandle ~= 0 then
			--GUI:WndSetEnableM(_GUIHandle, true)
			--GUI:WndSetCanRevMsg(_GUIHandle, false)
			GUI:RichEditSetEditEnable(_GUIHandle, false)
		end
	end

	DealerBuyList.UIInit(_Parent)
end

DealerBuyList.WndHandle = 0
DealerBuyList.isTyping = 0
DealerBuyList.selectedType = 0
--UI Logic Code Start
function DealerBuyList.UIInit(_Handle)
	DealerBuyList.WndHandle = _Handle
	UI:Lua_SubmitForm("手游交易行表单", "Trade_GetAllItem", "")
end

--点击装备类按钮
function DealerBuyList.ShowSubTypeWnd(_Handle)
	GUI:WndDlgClear(DealerBuyList.hTabList)
	local _GUIHandle = GUI:WndFindWindow(DealerBuyList.hTabList, "SubTypeWnd")
	if _GUIHandle ~= 0 then
		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Equip", 1850900025, 0, 0)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "装 备")
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.ShowSubTypeWnd")
			_GUIHandle = GUI:ImageCreate(_GUIHandle,"Img_Arrow", 1850900029, 180, 22)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
			end
		end
		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Type11", 1850900025, 0, 60)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "杂货品")
			GUI:WndSetParam(_GUIHandle, 11)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
		end
		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Type10", 1850900025, 0, 120)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "消耗品")
			GUI:WndSetParam(_GUIHandle, 10)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
		end
		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Type12", 1850900025, 0, 180)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "材 料")
			GUI:WndSetParam(_GUIHandle, 12)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
		end
	else
		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Equip", 1850900025, 0, 0)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "装 备")
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.ShowSubTypeWnd")
			_GUIHandle = GUI:ImageCreate(_GUIHandle,"Img_Arrow", 1850900030, 180, 22)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
			end
		end
		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Type11", 1850900025, 0, 613)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "杂货品")
			GUI:WndSetParam(_GUIHandle, 11)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
		end
		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Type10", 1850900025, 0, 673)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "消耗品")
			GUI:WndSetParam(_GUIHandle, 10)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
		end

		_GUIHandle = GUI:ButtonCreate(DealerBuyList.hTabList, "Btn_Type12", 1850900025, 0, 733)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle, "材 料")
			GUI:WndSetParam(_GUIHandle, 12)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
		end
		local SubTypeWnd = GUI:WndCreateWnd(DealerBuyList.hTabList,"SubTypeWnd", 0, 23, 58)
		if SubTypeWnd ~= 0 then
			GUI:WndSetVisible(SubTypeWnd, true)
			GUI:WndSetSizeM(SubTypeWnd, 238, 550)
			_GUIHandle = GUI:ButtonCreate(SubTypeWnd, "Btn_Type1", 1850100024, 0, 0)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle, "头 盔")
				GUI:WndSetParam(_GUIHandle, 1)
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
			end
			_GUIHandle = GUI:ButtonCreate(SubTypeWnd, "Btn_Type2", 1850100024, 0, 60)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle, "项 链")
				GUI:WndSetParam(_GUIHandle, 2)
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
			end
			_GUIHandle = GUI:ButtonCreate(SubTypeWnd, "Btn_Type3", 1850100024, 0, 120)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle, "武 器")
				GUI:WndSetParam(_GUIHandle, 3)
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
			end
			_GUIHandle = GUI:ButtonCreate(SubTypeWnd, "Btn_Type4", 1850100024, 0, 180)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle, "衣 服")
				GUI:WndSetParam(_GUIHandle, 4)
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
			end
			_GUIHandle = GUI:ButtonCreate(SubTypeWnd, "Btn_Type5", 1850100024, 0, 240)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle, "护 腕")
				GUI:WndSetParam(_GUIHandle, 5)
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
			end
			_GUIHandle = GUI:ButtonCreate(SubTypeWnd, "Btn_Type6", 1850100024, 0, 300)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle, "护 盾")
				GUI:WndSetParam(_GUIHandle, 6)
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
			end
			_GUIHandle = GUI:ButtonCreate(SubTypeWnd, "Btn_Type7", 1850100024, 0, 360)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle, "戒 指")
				GUI:WndSetParam(_GUIHandle, 7)
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
			end
			_GUIHandle = GUI:ButtonCreate(SubTypeWnd, "Btn_Type8", 1850100024, 0, 420)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle, "腰 带")
				GUI:WndSetParam(_GUIHandle,8)
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
			end
			_GUIHandle = GUI:ButtonCreate(SubTypeWnd, "Btn_Type9", 1850100024, 0, 480)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextM(_GUIHandle, "鞋 子")
				GUI:WndSetParam(_GUIHandle, 9)
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DealerBuyList.TypeBtnClicked")
			end
		end
	end
end


--点击道具类型按钮
function DealerBuyList.TypeBtnClicked(_Handle)
	if DealerBuyList.selectedType ~= 0 then
		GUI:ButtonSetIsActivePageBtn(DealerBuyList.selectedType, false)
	end
	local param = GUI:WndGetParam(_Handle)
	DealerBuyList.selectedType = _Handle
	GUI:ButtonSetIsActivePageBtn(_Handle, true)
	--msg(""..param)
	UI:Lua_SubmitForm("手游交易行表单", "Trade_GetItemByType", ""..param)
end

--升序
local function Ascending(a, b)
	return a["cus"]["i"]["Trade_price"] < b["cus"]["i"]["Trade_price"]
end

--降序
local function Descending(a, b)
	return a["cus"]["i"]["Trade_price"] > b["cus"]["i"]["Trade_price"]
end

--价格排序
function DealerBuyList.sort(_Handle)
	local param = tonumber(GUI:WndGetParam(_Handle))
	local _GUIHandle = GUI:WndFindWindow(_Handle, "Img_Arrange")
	if _GUIHandle ~= 0 then
		if param == 1 then
			local data = DealerBuyList.tItem
			table.sort(data,Descending)
			DealerBuyList.fillItemList(data)
			GUI:WndSetParam(_Handle, 0)
			GUI:WndSetImageID(_GUIHandle, 1850900031)
		else
			local data = DealerBuyList.tItem
			table.sort(data, Ascending)
			DealerBuyList.fillItemList(data)
			GUI:WndSetParam(_Handle, 1)
			GUI:WndSetImageID(_GUIHandle, 1850900037)
		end
	end
end

--搜索
function DealerBuyList.Search()
	local _GUIHandle = GUI:WndFindWindow(DealerBuyList.WndHandle, "Edit_Search")
	local sKey = ""
	if _GUIHandle ~= 0 then
		sKey = GUI:EditGetTextM(_GUIHandle)
	end
	UI:Lua_SubmitForm("手游交易行表单", "Trade_SearchItemByStr", sKey)
end

local tColor =
{
	["GREENG"] = GUI:MakeARGB(255,55,181,111),
	["WHITE"] = GUI:MakeARGB(255,255,255,255),
	["BLUE"] = GUI:MakeARGB(255,0,128,255),
	["RED"] = GUI:MakeARGB(255,255,0,0),
	["PURPLE"] = GUI:MakeARGB(255,128,0,255),
	["ORANGE"] = GUI:MakeARGB(255,255,125,0)
}



--填充道具list
function DealerBuyList.UpdateItemList(data)
	--默认升序
	table.sort(data, Ascending)
	DealerBuyList.fillItemList(data)
end

function DealerBuyList.fillItemList(data)

	DealerBuyList.clrItemList()
	if data == nil then
		return
	end

	DealerBuyList.tItem = data

	for i = 1, #data do
		local _GUIHandle = GUI:ImageCreate(DealerBuyList.hItemList,"BgImg"..i, 0, 0, (i - 1)*86)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle, 600, 87)
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerBuyList.ItemListClicked")
			GUI:ImageSetAroundImage(_GUIHandle,1853000028,1853000030,1853000034,1853000036,1853000032,1853000029,1853000035,1853000031,1853000033)
		end

		_GUIHandle = GUI:ItemCtrlCreate(DealerBuyList.hItemList,"Item"..i, 1850400004, 10, (i - 1)*86 + 8, 66, 66)
		if _GUIHandle ~= 0 then
			RDItemCtrlSetGUIDataPropByItemID(DealerBuyList.hItemList, "Item"..i, data[i]["i"], data[i]["a"], false)
		end

		_GUIHandle = GUI:EditCreate(DealerBuyList.hItemList,"Name"..i, 95, (i - 1)*86 + 30, 180, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextM(_GUIHandle, data[i]["n"])
			if CL:GetItemTemplatePropByID(data[i]["i"], ITEM_PROP_COLOR) then
				if tColor[LuaRet] ~= nil then
					GUI:WndSetTextColorM(_GUIHandle, tColor[LuaRet])
				end
			end
		end

		_GUIHandle = GUI:EditCreate(DealerBuyList.hItemList,"Level"..i, 252, (i - 1)*86 + 30, 40, 24)
		if _GUIHandle ~= 0 then
			GUI:EditSetFontCenter(_GUIHandle)
			GUI:WndSetEnableM(_GUIHandle, false)
			if CL:GetItemTemplatePropByID(data[i]["i"], ITEM_PROP_LEVEL) then
				GUI:EditSetTextM(_GUIHandle, tostring(LuaRet))
			end
		end

		_GUIHandle = GUI:EditCreate(DealerBuyList.hItemList,"TimeLimit"..i, 352, (i - 1)*86 + 30, 80, 24)
		if _GUIHandle ~= 0 then
			GUI:EditSetFontCenter(_GUIHandle)
			GUI:WndSetEnableM(_GUIHandle, false)
			local d, h, m, s = GetDetailTime(data[i]["Time"])
			if 0 < h then
				GUI:EditSetTextM(_GUIHandle, h.."小时")
			else
				GUI:EditSetTextM(_GUIHandle, m.."分钟")
			end
		end

		_GUIHandle = GUI:ImageCreate(DealerBuyList.hItemList,"YBImg"..i, 1850300006, 480, (i - 1)*86 + 26)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:EditCreate(DealerBuyList.hItemList,"Price"..i, 520, (i - 1)*86 + 30, 100, 24)
		if _GUIHandle ~= 0 then
			--GUI:EditSetFontCenter(_GUIHandle)
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextM(_GUIHandle, tostring(data[i]["cus"]["i"]["Trade_price"]))
		end
	end
end

--清空道具列表
function DealerBuyList.clrItemList()
	if DealerBuyList.hItemList ~= nil then
		--msg("清空")
		GUI:WndDlgClear(DealerBuyList.hItemList)
	end
end

--隐藏所有二级弹窗
function DealerBuyList.hideBackWnd(_Handle)
	GUI:WndSetVisible(DealerBuyList.hPreBuyWnd, false)
	GUI:WndSetVisible(_Handle, false)
end

--显示/隐藏购买窗口
function DealerBuyList.showPreBuyWnd()
	if not GUI:WndGetVisible(DealerBuyList.hPreBuyWnd) then
		GUI:WndSetVisible(DealerBuyList.hPreBuyWnd, true)
		local _GUIHandle = GUI:WndFindWindow(DealerBuyList.WndHandle, "backWnd")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, true)
		end
	else
		GUI:WndSetVisible(DealerBuyList.hPreBuyWnd, false)
		local _GUIHandle = GUI:WndFindWindow(DealerBuyList.WndHandle, "backWnd")
		if _GUIHandle ~= 0 then
			GUI:WndSetVisible(_GUIHandle, false)
		end
	end
end

--点击道具列表购买道具界面
function DealerBuyList.ItemListClicked(_Handle)
	local data = DealerBuyList.tItem
	local param = tonumber(GUI:WndGetParam(_Handle))

	DealerBuyList.AmountEditIni() --数量编辑框初始化
	DealerBuyList.showPreBuyWnd()
	DealerBuyList.nowIndex = param
	DealerBuyList.nowIndex_Amount = data[param]["a"]

	local _GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "RightName")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, data[param]["n"])
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_COLOR) then
			if tColor[LuaRet] ~= nil then
				GUI:WndSetTextColorM(_GUIHandle, tColor[LuaRet])
			end
		end
	end
	_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "RightName")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, data[param]["n"])
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_COLOR) then
			if tColor[LuaRet] ~= nil then
				GUI:WndSetTextColorM(_GUIHandle, tColor[LuaRet])
			end
		end
		
	end
	_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftName")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, data[param]["n"])
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_COLOR) then
			if tColor[LuaRet] ~= nil then
				GUI:WndSetTextColorM(_GUIHandle, tColor[LuaRet])
			end
		end
		
	end
	_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "Edit_UnitPrice")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, tostring(data[param]["cus"]["i"]["Trade_price"]))
	end
	_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "Edit_Amount")
	if _GUIHandle ~= 0 then
		DealerBuyList.AmountChange(_GUIHandle)
	end

	RDItemCtrlSetGUIDataPropByItemID(DealerBuyList.hPreBuyWnd, "RightItem", data[param]["i"], data[param]["a"], false)
	RDItemCtrlSetGUIDataPropByItemID(DealerBuyList.hPreBuyWnd, "LeftItem", data[param]["i"], data[param]["a"], false)

	local tSubTypeName = {"武器", "头盔", "护腕", "衣服", "符咒", "鞋子", "腰带", "项链", "戒指", "勋章", "宝石", "翅膀", "法宝", "坐骑", "盾牌", "时装", "斗笠", "手套", "宝珠", "眼镜"}
	_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftEdit1")
	if _GUIHandle ~= 0 then
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_TYPE) then
			if LuaRet == 1 then
				if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_TYPE) then
					GUI:EditSetTextM(_GUIHandle, tSubTypeName[tonumber(LuaRet)])
				end
				local tJobName = {"无限制", "战士", "法师", "道士"}
				_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftEdit2")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, true)
					if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_JOB) then
						GUI:EditSetTextM(_GUIHandle, tJobName[LuaRet + 1])
					end
				end

				local tGender = {"无限制", "男", "女"}
				_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftEdit4")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, true)
					if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_GENDER) then
						GUI:EditSetTextM(_GUIHandle, tGender[LuaRet + 1])
					end
				end

			elseif LuaRet == 2 then
				GUI:EditSetTextM(_GUIHandle, "消耗品")
				--消耗品第二个为次数
				_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftText2")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, false)
					--GUI:EditSetTextM(_GUIHandle, "次数")
				end
				_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftEdit2")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, false)
					--if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_USECOUNT ) then
						--GUI:EditSetTextM(_GUIHandle, tJobName[LuaRet + 1])
					--end
				end

				--消耗品不显示性别
				_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftText4")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, false)
				end
				_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftEdit4")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, false)
				end

			elseif LuaRet == 4 then
				GUI:EditSetTextM(_GUIHandle, "材料")
			else
				GUI:EditSetTextM(_GUIHandle, "杂货")

				--杂货不显示职业
				_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftText2")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, false)
				end

				_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftEdit2")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, false)
				end

				--杂货不显示性别
				_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftText4")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, false)
				end
				_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftEdit4")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, false)
				end
			end
		end
	end

	_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "LeftEdit3")
	if _GUIHandle ~= 0 then
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_LEVEL) then
			GUI:EditSetTextM(_GUIHandle, tostring(LuaRet))
		end
	end

	--道具详细属性
	_GUIHandle = GUI:WndFindWindow(DealerBuyList.hDetailWnd, "details")
	if _GUIHandle ~= 0 then
		local maAtk, miAtk = 0, 0
		local maMo, miMo = 0, 0
		local maDao, miDao = 0, 0
		local maPhyDef, miPhyDef = 0, 0
		local maMagDef, miMagDef = 0, 0
		GUI:RichEditClear(_GUIHandle)
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_MAXPHYATK) then
			maAtk = LuaRet
		end
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_MINPHYATK) then
			miAtk = LuaRet
		end
		if maAtk > 0 then
			GUI:RichEditAppendString(_GUIHandle, "   物理攻击："..miAtk.." - "..maAtk.."\n")
		end

		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_MAXMAGATK) then
			maMo = LuaRet
		end
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_MINMAGATK) then
			miMo = LuaRet
		end
		if maMo > 0 then
			GUI:RichEditAppendString(_GUIHandle, "   魔法攻击："..miMo.." - "..maMo.."\n")
		end

		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_MAXTAOATK) then
			maDao = LuaRet
		end
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_MINTAOATK) then
			miDao = LuaRet
		end
		if maDao > 0 then
			GUI:RichEditAppendString(_GUIHandle, "   道术攻击："..miDao.." - "..maDao.."\n")
		end

		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_MAXPHYDEF) then
			maPhyDef = LuaRet
		end
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_MINPHYDEF) then
			miPhyDef = LuaRet
		end
		if maPhyDef > 0 then
			GUI:RichEditAppendString(_GUIHandle, "   物理防御："..miPhyDef.." - "..maPhyDef.."\n")
		end

		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_MAXMAGDEF) then
			maMagDef = LuaRet
		end
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_MINMAGDEF) then
			miMagDef = LuaRet
		end
		if maMagDef > 0 then
			GUI:RichEditAppendString(_GUIHandle, "   魔法防御："..miMagDef.." - "..maMagDef.."\n")
		end
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_SUIT) then
			local suitID = LuaRet
			if CL:GetSuitPropByID(suitID, SUIT_PROP_NAME) then
				GUI:RichEditAppendString(_GUIHandle, "\n   #COLORCOLOR_GREENG#"..LuaRet)
			end
			if CL:GetSuitItemListByID(suitID) then
				local tEquip = LuaRet
				GUI:RichEditAppendString(_GUIHandle, "（0/"..#tEquip.."）#COLOREND#\n")
				for i = 1, #tEquip do
					if CL:GetItemTemplatePropByID(tEquip[i], ITEM_PROP_NAME) then
						GUI:RichEditAppendString(_GUIHandle, "     #COLORCOLOR_GRAY#"..LuaRet.."\n")
					end
				end
				GUI:RichEditAppendString(_GUIHandle, "   #COLORCOLOR_GREENG#套装属性\n#COLORCOLOR_GRAY#")
				local index = 3
				local tAttName = {["3"] = "血量上限", ["6"] = "物防上限", ["7"] = "物防下限", ["8"] = "魔防上限", ["9"] = "魔防下限",
								["11"] = "物攻下限", ["10"] = "物攻上限", ["13"] = "魔攻下限", ["12"] = "魔攻上限", ["15"] = "道攻下限", ["14"] = "道攻上限"}
				for i = 1, 10 do
					if CL:GetSuitPropByID(suitID, index) then
						if LuaRet > 0 then
							GUI:RichEditAppendString(_GUIHandle, "     0/"..LuaRet)
						end
					end
					index = index + 1
					if CL:GetSuitPropByID(suitID, index) then
						GUI:RichEditAppendString(_GUIHandle, " "..tAttName[tostring(LuaRet)].."提升")
					end
					index = index + 1
					if CL:GetSuitPropByID(suitID, index) then
						GUI:RichEditAppendString(_GUIHandle, " "..LuaRet.."\n")
					end
					index = index + 1
				end
				GUI:RichEditAppendString(_GUIHandle, "#COLOREND#\n")
			end
		end
		--物品说明
		if CL:GetItemTemplatePropByID(data[param]["i"], ITEM_PROP_DESC) then
			if LuaRet ~= "0" then
				GUI:RichEditAppendString(_GUIHandle, LuaRet.."\n")
			end
		end
		--GUI:WndCalSize(_GUIHandle)
	end
end

--确认购买
function DealerBuyList.confirmBuy()
	local index = DealerBuyList.nowIndex
	local data = DealerBuyList.tItem
	local itemID = data[index]["i"] --要购买道具的ID
	local itemGUID = data[index]["cus"]["s"]["Trade_GUID"] --物品GUID
	local amount = 0
	local _GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "Edit_Amount")
	if _GUIHandle ~= 0 then
		amount = tonumber(GUI:EditGetTextM(_GUIHandle))
	end
	if itemGUID ~= nil and itemID ~= nil and amount ~= nil then
		DealerBuyList.showPreBuyWnd()
		--msg("amount = "..amount)
		--msg("itemGUID = "..itemGUID.. " amount = "..amount)
		UI:Lua_SubmitForm("手游交易行表单", "Trade_buyItem", itemID.."#"..itemGUID.."#"..amount)
	end
end

--减少购买数量
function DealerBuyList.Decrease(_Handle)
	DealerBuyList.isTyping = 0
	local _GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "Edit_Amount")
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

--增加购买数量
function DealerBuyList.Increase(_Handle)
	DealerBuyList.isTyping = 0
	local _GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "Edit_Amount")
	if _GUIHandle ~= 0 then
		local amount = DealerBuyList.tItem[DealerBuyList.nowIndex]["a"]
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

--购买数量变化
function DealerBuyList.AmountChange(_Handle)
	local unitPrice = 0
	local maxAmount = DealerBuyList.nowIndex_Amount
	local _GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "Edit_UnitPrice")
	if _GUIHandle ~= 0 then
		unitPrice = tonumber(GUI:EditGetTextM(_GUIHandle))
	end

	if unitPrice == nil then
		unitPrice = 0
	end
	if maxAmount == nil then
		maxAmount = 1
	end
	local amount = GUI:EditGetTextM(_Handle)
	if DealerBuyList.isTyping ~= 1 then
		if amount == "" or amount == nil then
			GUI:EditSetTextM(_Handle, "1")
			amount = 1
		elseif tonumber(amount) > tonumber(maxAmount) then
			GUI:EditSetTextM(_Handle, tostring(maxAmount))
			amount = maxAmount
		end
	else
		if amount == "" or amount == nil then
			amount = 0
		else
			if amount == "0" then
				GUI:EditSetTextM(_Handle, "1")
				amount = 1
			elseif tonumber(amount) > tonumber(maxAmount) then
				GUI:EditSetTextM(_Handle, tostring(maxAmount))
				amount = maxAmount
			end
		end
	end

	_GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "Edit_TotalPrice")
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, tostring(unitPrice * amount))
	end
end

--购买成功后服务端调用
function DealerBuyList.BuySuccess(amount)
	amount = tonumber(amount) --购买数量
	local data = DealerBuyList.tItem
	local index = DealerBuyList.nowIndex
	if data[index]["a"] <= amount then
		table.remove(data, index)
	else
		data[index]["a"] = data[index]["a"] - amount
	end
	DealerBuyList.fillItemList(data)
end


function DealerBuyList.AmountSetEnable(_Handle)
	DealerBuyList.isTyping = 1
	GUI:EditSetTextM(_Handle, "")
	DealerBuyList.AmountChange(_Handle)
end

function DealerBuyList.AmountEditIni()
	local _GUIHandle = GUI:WndFindWindow(DealerBuyList.hPreBuyWnd, "Edit_Amount")
	if _GUIHandle ~= 0 then
		DealerBuyList.isTyping = 0
		GUI:EditSetTextM(_GUIHandle, "1")
	end
end

DealerBuyList.main()