TreasureBag_c = {}
function TreasureBag_c.main()
	local _Parent = GetWindow(nil,"TreasureHouse_c")
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TreasureBag_c",1803500010,910,40)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,444, 469)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bag",1803500060,165,-15)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_itemType1",1803500054,40,31)--1803500053
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureBag_c.ShowMyTreasureByType")
		GUI:WndSetTextM(_GUIHandle,"全 部 ")
		GUI:WndSetParam(_GUIHandle, 1)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_itemType2",1803500054,115,31)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureBag_c.ShowMyTreasureByType")
		GUI:WndSetTextM(_GUIHandle,"道 具 ")
		GUI:WndSetParam(_GUIHandle, 2)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_itemType3",1803500054,190,31)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureBag_c.ShowMyTreasureByType")
		GUI:WndSetTextM(_GUIHandle,"装 备 ")
		GUI:WndSetParam(_GUIHandle, 3)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl11",1803500057,31,63,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl12",1800000138,79,63,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl13",1800000138,127,63,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl14",1800000138,175,63,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl15",1800000138,223,63,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl16",1800000138,271,63,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl17",1800000138,319,63,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl18",1800000138,367,63,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl21",1800000138,31,110,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl22",1800000138,79,110,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl23",1800000138,127,110,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl24",1800000138,175,110,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl25",1800000138,223,110,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl26",1800000138,271,110,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl27",1800000138,319,110,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl28",1800000138,367,110,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl31",1800000138,31,157,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl32",1800000138,79,157,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl33",1800000138,127,157,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl34",1800000138,175,157,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl35",1800000138,223,157,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl36",1800000138,271,157,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl37",1800000138,319,157,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl38",1800000138,367,157,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)	
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl41",1800000138,31,204,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl42",1800000138,79,204,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl43",1800000138,127,204,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl44",1800000138,175,204,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl45",1800000138,223,204,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl46",1800000138,271,204,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl47",1800000138,319,204,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl48",1800000138,367,204,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl51",1800000138,31,251,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl52",1800000138,79,251,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl53",1800000138,127,251,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl54",1800000138,175,251,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl55",1800000138,223,251,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl56",1800000138,271,251,44,44)
	if _GUIHandle ~= 0 then
				
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)		
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl57",1800000138,319,251,44,44)
	if _GUIHandle ~= 0 then
			
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl58",1800000138,367,251,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl61",1800000138,31,298,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl62",1800000138,79,298,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl63",1800000138,127,298,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl64",1800000138,175,298,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl65",1800000138,223,298,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl66",1800000138,271,298,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl67",1800000138,319,298,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl68",1800000138,367,298,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl71",1800000138,31,345,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl72",1800000138,79,345,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl73",1800000138,127,345,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl74",1800000138,175,345,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl75",1800000138,223,345,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl76",1800000138,271,345,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl77",1800000138,319,345,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"imageCtrl78",1800000138,367,345,44,44)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetSizeM(_GUIHandle,44, 44)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 44, 44)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_get",1803500045,200,400)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureBag_c.GetEquip")
		GUI:WndSetSizeM(_GUIHandle,107, 41)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_sort",1803500049,310,400)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureBag_c.Sort")
		GUI:WndSetSizeM(_GUIHandle,107, 41)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_close",1800000043,400,10)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureBag_c.closeWnd")
		GUI:WndSetSizeM(_GUIHandle,26, 26)
	end
	
	
	
	TreasureBag_c.UIInit(_Parent)
end

TreasureBag_c.WndHandle = 0
TreasureBag_c.AllTreasure = {}  	--所有物品
TreasureBag_c.EquipTreasure = {} 	--装备
TreasureBag_c.ItemTreasure = {} 	--道具
TreasureBag_c.BTN_TabItem = {}		--上侧标签栏
TreasureBag_c.myItemList = {}		--物品框
TreasureBag_c.BtnTypeFlag = 0		--分类标签（1.全部 2.道具 3.装备）
TreasureBag_c.ClickItemHandle = 0		--被点击的物品框位置索引（1 - 56）
TreasureBag_c.ClickItemName = ""		--被点击的物品框KeyName

function TreasureBag_c.UIInit(_GUIHandle)
	TreasureBag_c.WndHandle = _GUIHandle
	GUI:WndSetSizeM(_GUIHandle, 444, 469)
	
	local _ScreenWidth = CL:GetScreenWidth()
	if TreasureHouse_c.WndHandle ~= 0 then 
		GUI:WndGetPosM(TreasureHouse_c.WndHandle)
		local x = LuaRet[1]
		local y = LuaRet[2]
		if x > ((_ScreenWidth-904)/2-220) then 
			GUI:WndSetPosM(TreasureHouse_c.WndHandle,x-220, y)
		end
	 
		if _ScreenWidth < 1348 then 
			CenterWnd(TreasureHouse_c.WndHandle)
			GUI:WndGetPosM(_GUIHandle)
			local x = LuaRet[1]
			local y = LuaRet[2]
			GUI:WndSetPosM( _GUIHandle, x-480, y)
		end
	end
	for i = 1, 3 do
		TreasureBag_c.BTN_TabItem[i] = GetWindow(TreasureBag_c.WndHandle, "btn_itemType" .. i)
		GUI:WndSetTextColorM(TreasureBag_c.BTN_TabItem[i],MakeARGB(255, 206, 178, 80))
		
		--[[GUI:ButtonSetStateTextColor(TreasureBag_c.BTN_TabItem[i],0,MakeARGB(255, 107, 91, 80))
		GUI:ButtonSetStateTextColor(TreasureBag_c.BTN_TabItem[i],2,MakeARGB(255, 237, 192, 162))--]]
	end
	for i = 1, 7 do
		TreasureBag_c.myItemList[i] = {}
		for j = 1, 8 do
			TreasureBag_c.myItemList[i][j] = GetWindow(TreasureBag_c.WndHandle, "imageCtrl" .. i .. j)
			GUI:WndRegistScript(TreasureBag_c.myItemList[i][j], RDWndBaseCL_mouse_lbUp, "TreasureBag_c.clickItem")
			GUI:WndSetParam(TreasureBag_c.myItemList[i][j], (i - 1) * 8 + j)
		end
	end
	GUI:ButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[1], false)
	TreasureBag_c.BtnTypeFlag = 1
	UI:Lua_SubmitForm("TreasureBag_s", "getAllTreasure", "")
end

function TreasureBag_c.clickItem(_handle)
	local tb = {}
	if TreasureBag_c.BtnTypeFlag == 1 then
		tb = TreasureBag_c.AllTreasure
	elseif TreasureBag_c.BtnTypeFlag == 2 then
		tb = TreasureBag_c.ItemTreasure
	elseif TreasureBag_c.BtnTypeFlag == 3 then
		tb = TreasureBag_c.EquipTreasure
	end
	local itemNum = GUI:WndGetParam(_handle)
	if tonumber(itemNum) <= tonumber(#tb) then
		TreasureBag_c.ClickItemHandle = _handle
		TreasureBag_c.ClickItemName = tb[itemNum]
		UI:Lua_SubmitForm("TreasureBag_s", "getItem", tb[itemNum])
	end
end

function TreasureBag_c.RemoveAitem()
	local clickPos = GUI:WndGetParam(TreasureBag_c.ClickItemHandle)
	local length = 0
	--GUI:ItemCtrlClearItemData(TreasureBag_c.ClickItemHandle)
	if TreasureBag_c.BtnTypeFlag == 1 then
		--[[length = #TreasureBag_c.AllTreasure
		if length > 0 then
			for i = 1, length do
				if TreasureBag_c.AllTreasure[i] == TreasureBag_c.ClickItemName then
					--table.remove(TreasureBag_c.AllTreasure, i)
					TreasureBag_c.AllTreasure[i] = ""
					break
				end
			end
		end--]]
		TreasureBag_c.AllTreasure[clickPos] = ""
		GUI:ItemCtrlClearItemData(TreasureBag_c.ClickItemHandle)
		local model = CL:GetItemTemplateHandleByKeyName(TreasureBag_c.ClickItemName)
		if CL:GetItemTemplatePropByHandle(model, ITEM_PROP_TYPE) then
			local itemType = LuaRet
			if itemType == 1 then
				length = #TreasureBag_c.EquipTreasure
				if length > 0 then
					for i = 1, length do
						if TreasureBag_c.EquipTreasure[i] == TreasureBag_c.ClickItemName then
							table.remove(TreasureBag_c.EquipTreasure, i)
							--TreasureBag_c.EquipTreasure[i] = ""
							break
						end
					end
				end
			else
				length = #TreasureBag_c.ItemTreasure
				if length > 0 then
					for i = 1, length do
						if TreasureBag_c.ItemTreasure[i] == TreasureBag_c.ClickItemName then
							table.remove(TreasureBag_c.ItemTreasure, i)
							--TreasureBag_c.ItemTreasure[i] = ""
							break
						end
					end
				end
			end
		end
	elseif TreasureBag_c.BtnTypeFlag == 2 then
		length = #TreasureBag_c.AllTreasure
		if length > 0 then
			for i = 1, length do
				if TreasureBag_c.AllTreasure[i] == TreasureBag_c.ClickItemName then
					table.remove(TreasureBag_c.AllTreasure, i)
					--TreasureBag_c.AllTreasure[i] = ""
					break
				end
			end
		end
		--[[length = #TreasureBag_c.ItemTreasure
		if length > 0 then
			for i = 1, length do
				if TreasureBag_c.ItemTreasure[i] == TreasureBag_c.ClickItemName then
					--table.remove(TreasureBag_c.ItemTreasure, i)
					TreasureBag_c.ItemTreasure[i] = ""
					break
				end
			end
		end	--]]
		TreasureBag_c.ItemTreasure[clickPos] = ""
		GUI:ItemCtrlClearItemData(TreasureBag_c.ClickItemHandle)
	elseif TreasureBag_c.BtnTypeFlag == 3 then
		length = #TreasureBag_c.AllTreasure
		if length > 0 then
			for i = 1, length do
				if TreasureBag_c.AllTreasure[i] == TreasureBag_c.ClickItemName then
					table.remove(TreasureBag_c.AllTreasure, i)
					--TreasureBag_c.AllTreasure[i] = ""
					break
				end
			end
		end
		--[[length = #TreasureBag_c.EquipTreasure
		if length > 0 then
			for i = 1, length do
				if TreasureBag_c.EquipTreasure[i] == TreasureBag_c.ClickItemName then
					--table.remove(TreasureBag_c.EquipTreasure, i)
					TreasureBag_c.EquipTreasure[i] = ""
					break
				end
			end
		end	--]]
		TreasureBag_c.EquipTreasure[clickPos] = ""
		GUI:ItemCtrlClearItemData(TreasureBag_c.ClickItemHandle)
	end
end


function TreasureBag_c.SortMyTreasure(itemList)
	--每次调用前清空
	TreasureBag_c.ClearTreasureBag()
	TreasureBag_c.AllTreasure = {}
	TreasureBag_c.EquipTreasure = {}
	TreasureBag_c.ItemTreasure = {}
	local tb_handel = {}
	local tb_type = {}
	for i = 1, 7 do
		for j = 1, 8 do
			tb_handel[#tb_handel+1] = "imageCtrl".. tostring(i) .. tostring(j) 
		end
	end
	for i = 1, #itemList do
		RDItemCtrlSetGUIDataPropByKeyName(TreasureBag_c.WndHandle,tb_handel[i],itemList[i], 1, false)
		local mouldHandle = CL:GetItemTemplateHandleByKeyName(itemList[i])
		if CL:GetItemTemplatePropByHandle(mouldHandle, ITEM_PROP_TYPE) then
			tb_type[i] = LuaRet
		end
	end
	for i = 1, #tb_type do
		table.insert(TreasureBag_c.AllTreasure, itemList[i])
		if tb_type[i] == 1 then
			table.insert(TreasureBag_c.EquipTreasure, itemList[i])
		else 
			table.insert(TreasureBag_c.ItemTreasure, itemList[i])
		end
	end
	for i = 1, 3 do
		if TreasureBag_c.BTN_TabItem[i] ~= 0 then
			if i == 1 then
				GUI:ButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[i], true)
			else
				GUI:ButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[i], false)
			end
		end
	end
end

function TreasureBag_c.ClearTreasureBag() --清空宝藏仓库
	for i = 1, 7 do
		for j = 1, 8 do
			GUI:ItemCtrlClearItemData(TreasureBag_c.myItemList[i][j])
		end
	end
end

function TreasureBag_c.ShowMyTreasureByType(_handle)
	TreasureBag_c.ClearTreasureBag()
	TreasureBag_c.Update(_handle)
	local btn_type = GUI:WndGetParam(_handle)
	--收集物品框句柄
	local tbb_handel = {}
	local a = 1
	for i = 1, 7 do
		for j = 1, 8 do
			--tbb_handel[a] = TreasureBag_c.myItemList[i][j]
			tbb_handel[a] = "imageCtrl".. tostring(i) .. tostring(j) 
			a = a + 1
		end
	end
	--1为全部，2为其他，3为装备
	local length = 0
	if btn_type == 1 then
		length = #TreasureBag_c.AllTreasure
		for i = 1, length do
			--[[if TreasureBag_c.AllTreasure[i] == "" then
				table.remove(TreasureBag_c.AllTreasure, i)
				i = i - 1
				length = length - 1
			else--]]
				RDItemCtrlSetGUIDataPropByKeyName(TreasureBag_c.WndHandle,tbb_handel[i],TreasureBag_c.AllTreasure[i], 1, false)
			--end
		end
	elseif btn_type == 2 then
		length = #TreasureBag_c.ItemTreasure
		for i = 1, #TreasureBag_c.ItemTreasure do
			--[[if TreasureBag_c.ItemTreasure[i] == "" then
				table.remove(TreasureBag_c.ItemTreasure, i)
				i = i - 1
				length = length - 1
			else--]]
				RDItemCtrlSetGUIDataPropByKeyName(TreasureBag_c.WndHandle,tbb_handel[i],TreasureBag_c.ItemTreasure[i], 1, false)
			--[[end--]]
		end
	else
		length = #TreasureBag_c.EquipTreasure
		for i = 1, #TreasureBag_c.EquipTreasure do
			--[[if TreasureBag_c.EquipTreasure[i] == "" then
				table.remove(TreasureBag_c.EquipTreasure, i)
				i = i - 1
				length = length - 1
			else--]]
				RDItemCtrlSetGUIDataPropByKeyName(TreasureBag_c.WndHandle,tbb_handel[i],TreasureBag_c.EquipTreasure[i], 1, false)
			--[[end--]]
		end
	end
end

function TreasureBag_c.GetEquip(_handle)
	local getItemTb = {}
	if TreasureBag_c.BtnTypeFlag == 1 then
		getItemTb = TreasureBag_c.AllTreasure
	elseif TreasureBag_c.BtnTypeFlag == 2 then
		getItemTb = TreasureBag_c.ItemTreasure
	else 
		getItemTb = TreasureBag_c.EquipTreasure
	end
	UI:Lua_SubmitForm("TreasureBag_s", "getTreasure", serialize(getItemTb))
end

function TreasureBag_c.Sort(_handle)
	for i = 1, #TreasureBag_c.BTN_TabItem do
		local btn_type = GUI:WndGetParam(TreasureBag_c.BTN_TabItem[i]) 
		if btn_type == 1 then
			GUI:ButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[i], true)
		else
			GUI:ButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[i], false)
		end
	end
	local sortTable = {}
	local equipTableLength = #TreasureBag_c.EquipTreasure
	local itemTableLength = #TreasureBag_c.ItemTreasure
	local j = 1
	for i = 1, equipTableLength + itemTableLength do
		if i <= equipTableLength then
			sortTable[i] = TreasureBag_c.EquipTreasure[i]
		else
			sortTable[i] = TreasureBag_c.ItemTreasure[j]
			j = j + 1
		end
	end
	UI:Lua_SubmitForm("TreasureBag_s", "sortTreasure", serialize(sortTable))
end

function TreasureBag_c.Update(_handle)
	for i = 1, #TreasureBag_c.BTN_TabItem do
		if TreasureBag_c.BTN_TabItem[i] == _handle then
			GUI:ButtonSetIsActivePageBtn(_handle, true)
			TreasureBag_c.BtnTypeFlag = i
		else
			GUI:ButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[i], false)
		end
	end
end

function TreasureBag_c.closeWnd(_handle)		--关闭窗口
	--[[local handle_house = GetWindow(nil, "TreasureHouse_c")
	reset_two_relationWnd(handle_house, 0)--]]
	GUI:WndClose(TreasureBag_c.WndHandle)
end

TreasureBag_c.main()