NpcSell = {}
local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117) --棕黄
color.text2 = GUI:MakeARGB(255,198,192,163) --白色
color.number = GUI:MakeARGB(255,55,181,111) --绿色
function NpcSell.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	

	--[[_GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, _DeviceSizeX, _DeviceSizeY)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
	end--]]

	local offset_X = (_DeviceSizeX - 1076)/2
	local offset_Y = 65

	_GUIHandle = GUI:ImageCreate(_Parent,"Icon_Gold", 1850300005, offset_X, offset_Y - 30)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 37, 25)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUI:EditCreate(_Parent, "Edit_Gold", offset_X + 40 , offset_Y - 27, 200, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "1111111111")
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"Icon_BindGold", 1850300005, offset_X + 150, offset_Y - 30)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 37, 25)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUI:EditCreate(_Parent, "Edit_BindGold", offset_X + 190 , offset_Y - 27, 200, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "1111111111")
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Icon_YB", 1850300006, offset_X + 300, offset_Y - 30)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 37, 25)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUI:EditCreate(_Parent, "Edit_YB", offset_X + 340 , offset_Y - 27, 200, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "1111111111")
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end
	_GUIHandle = GUI:ImageCreate(_Parent,"Icon_BindYB", 1850300007, offset_X + 450, offset_Y - 30)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 37, 25)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUI:EditCreate(_Parent, "Edit_BindYB", offset_X + 490 , offset_Y - 27, 200, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "1111111111")
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end
	--第二层背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage0", 1852100037, offset_X, offset_Y)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 1076, 536)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300025, 1850300027, 1850300031, 1850300033, 1850300029, 1850300026, 1850300032, 1850300028, 1850300030)
	end
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1", 0, offset_X + 1, offset_Y + 1)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,450, 534)
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006,1850400008,1850400012,1850400014,1850400010,1850400007,1850400013,1850400009,1850400011)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage2", 0, offset_X + 463, offset_Y + 1)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,612, 534)
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006,1850400008,1850400012,1850400014,1850400010,1850400007,1850400013,1850400009,1850400011)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	--[[_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423, _DeviceSizeX - 70, 8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "NpcSell.Close")
		GUI:WndSetSizeM(_GUIHandle, 52, 52)
	end--]]

	_GUIHandle = GUI:WndCreateWnd(_Parent,"ItemList", 0, offset_X + 10, offset_Y + 5)
	if 0 ~=_GUIHandle then
		GUI:WndSetSizeM(_GUIHandle, 440, 526)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
		NpcSell.hItemList = _GUIHandle
		local intervalY = 110
		for i = 1, 8 do
				local index = i - 1
				_GUIHandle = GUI:ButtonCreate(NpcSell.hItemList, "ItemBtn"..tostring(index), 1850500012, 0, 10 + intervalY*(i - 1))
				if _GUIHandle ~= 0 then
					-- GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "NpcSell.itemClicked")
					GUI:WndSetSizeM(_GUIHandle, 432, 118)
					-- GUI:WndSetParam(_GUIHandle, index)
				end

				local _GUIHandle = GUI:ItemCtrlCreate(NpcSell.hItemList, "Item"..tostring(index), 1850400004, 36, 26 + 10 + intervalY*(i - 1), 66, 66)
				if _GUIHandle ~= 0 then
					--RDItemCtrlSetGUIDataPropByItemID(_GUIHandle, nil, 10052, 1, false)
				end

				_GUIHandle = GUI:ImageCreate(NpcSell.hItemList,"lineImg"..tostring(index), 1850500022, 115, 56 + 10 + intervalY*(i - 1))
				if _GUIHandle ~= 0 then
					GUI:WndSetSizeM(_GUIHandle, 279, 6)
					GUI:WndSetEnableM(_GUIHandle, false)
				end

				_GUIHandle = GUI:EditCreate(NpcSell.hItemList, "Name"..tostring(index), 160, 26 + 10 + intervalY*(i - 1), 150, 24)
				if _GUIHandle ~= 0 then
					--GUI:EditSetFontCenter(_GUIHandle)
					GUI:WndSetEnableM(_GUIHandle, false)
					--GUI:EditSetTextM(_GUIHandle, "一二三四五六七")
					GUI:EditSetTextColor(_GUIHandle, color.text1)
				end

				_GUIHandle = GUI:EditCreate(NpcSell.hItemList, "Level"..tostring(index), 320, 26 + 10 + intervalY*(i - 1), 60, 24)
				if _GUIHandle ~= 0 then
					GUI:WndSetEnableM(_GUIHandle, false)
					GUI:EditSetTextM(_GUIHandle, "Lv.")
					GUI:EditSetTextColor(_GUIHandle, color.number)
				end
				_GUIHandle = GUI:EditCreate(NpcSell.hItemList, "JBPrice"..tostring(index), 160, 70 + 10 + intervalY*(i - 1), 200, 24)
				if _GUIHandle ~= 0 then
					GUI:EditSetTextM(_GUIHandle, "金币")
					GUI:WndSetEnableM(_GUIHandle, false)
				end

				_GUIHandle = GUI:EditCreate(NpcSell.hItemList, "Price"..tostring(index),  210, 70 + 10 + intervalY*(i - 1), 200, 24)
				if _GUIHandle ~= 0 then
					GUI:WndSetEnableM(_GUIHandle, false)
				end

				_GUIHandle = GUI:ImageCreate(NpcSell.hItemList,"DiscouotImg"..tostring(index), 1850500022, 0, 0 + intervalY*(i - 1))
				if _GUIHandle ~= 0 then
					GUI:WndSetEnableM(_GUIHandle, false)
				end
		end
		
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"ItemDetail", 0, offset_X + 463, offset_Y + 1)
	if 0 ~=_GUIHandle then
		GUI:WndSetSizeM(_GUIHandle,612, 534)
		NpcSell.hDetailWnd = _GUIHandle
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetCanRevMsg(_GUIHandle, false)

		local _Handle = GUI:ImageCreate(_GUIHandle,"BgImage0", 0, 15, 300)
		if _Handle ~= 0 then
			GUI:WndSetSizeM(_Handle,582, 220)
			GUI:ImageSetAroundImage(_Handle, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029,1850600026, 1850600032, 1850600028, 1850600030)
			GUI:WndSetEnableM(_Handle, false)
		end

		_Handle = GUI:ImageCreate(_GUIHandle,"titleBack", 1850500021, 103, 14)
		if _Handle ~= 0 then
			GUI:WndSetSizeM(_Handle, 406, 40)
			GUI:WndSetEnableM(_Handle, false)
		end

		_Handle = GUI:EditCreate(_GUIHandle, "title", 231, 23, 150, 24)
		if _Handle ~= 0 then
			GUI:EditSetFontCenter(_Handle)
			GUI:WndSetEnableM(_Handle, false)
			GUI:EditSetTextM(_Handle, "物品详情")
			GUI:EditSetTextColor(_Handle, color.text1)
		end

		_Handle = GUI:ImageCreate(_GUIHandle,"lineImg1", 1850700003, 126, 170)
		if _Handle ~= 0 then
			GUI:WndSetSizeM(_Handle, 359, 2)
			GUI:WndSetEnableM(_Handle, false)
		end

		_Handle = GUI:ImageCreate(_GUIHandle,"lineImg2", 1850700003, 126, 250)
		if _Handle ~= 0 then
			GUI:WndSetSizeM(_Handle, 359, 2)
			GUI:WndSetEnableM(_Handle, false)
		end

		_Handle = GUI:EditCreate(_GUIHandle, "textPrice", 110, 270, 100, 24)
		if _Handle ~= 0 then
			GUI:WndSetEnableM(_Handle, false)
			GUI:EditSetTextM(_Handle, "物品单价：")
			GUI:EditSetTextColor(_Handle, color.text1)
		end

		_Handle = GUI:ImageCreate(_GUIHandle,"titleBack2", 1850500021, 103, 309)
		if _Handle ~= 0 then
			GUI:WndSetSizeM(_Handle, 406, 40)
			GUI:WndSetEnableM(_Handle, false)
		end

		_Handle = GUI:EditCreate(_GUIHandle, "title2", 231, 319, 150, 24)
		if _Handle ~= 0 then
			GUI:EditSetFontCenter(_Handle)
			GUI:WndSetEnableM(_Handle, false)
			GUI:EditSetTextM(_Handle, "出售数量")
			GUI:EditSetTextColor(_Handle, color.text1)
		end

		_Handle = GUI:ImageCreate(_GUIHandle,"BgImage1", 0, 256, 360)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_Handle, 100, 41)
			GUI:ImageSetAroundImage(_Handle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
			GUI:WndSetEnableM(_Handle, false)
		end
	end

	_GUIHandle = GUI:RichEditCreate(_Parent, "info", offset_X + 568, offset_Y + 191, 425, 60)
	if _GUIHandle ~= 0 then
		GUI:RichEditSetDefaultTextColor(_GUIHandle, color.text2)
		--GUI:RichEditAppendString(_GUIHandle, "")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent, "itemCtrl", 1850400004, offset_X + 637, offset_Y + 78, 66, 66)
	if _GUIHandle ~= 0 then
		--RDItemCtrlSetGUIDataPropByItemID(_GUIHandle, nil, 10052, 1, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent, "name", offset_X + 743, offset_Y + 101, 150, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle, "霸业神剑")
		GUI:EditSetTextColor(_GUIHandle, color.text2)
	end

	_GUIHandle = GUI:EditCreate(_Parent, "price", offset_X + 670, offset_Y + 271, 200, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "0")
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetTextColor(_GUIHandle, color.number)	
	end

	_GUIHandle = GUI:EditCreate(_Parent, "moneyType", offset_X + 740, offset_Y + 271, 200, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "金币")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:EditCreate(_Parent, "amount", offset_X + 728, offset_Y + 369, 80, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetMaxCharNum(_GUIHandle, 6)
		GUI:EditSetTextM(_GUIHandle,"1")
		GUI:EditSetTextColor(_GUIHandle, color.number)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"decreaseBtn",1852000026, offset_X + 676, offset_Y + 361)
	if _GUIHandle ~= 0 then
		-- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "NpcSell.subtract")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"increaseBtn",1851000016, offset_X + 822, offset_Y + 361)
	if _GUIHandle ~= 0 then
		-- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "NpcSell.plus")
	end

	_GUIHandle = GUI:SlideCreate(_Parent, "slide", 1852600000, 1852600001, 1850800036, offset_X + 510, offset_Y + 430, 531, 19)
	if _GUIHandle ~= 0 then
		GUI:SlideSetPercent(_GUIHandle, 0)
		-- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "NpcSell.SlideEvent") -- trigger
		-- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_move, "NpcSell.SlideEvent") -- trigger
	end


	_GUIHandle = GUI:ButtonCreate(_Parent,"buyGold_Btn", 1850000307, offset_X + 917, offset_Y + 457)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 107, 47)
		--GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "NpcSell.gold_buy")
		GUI:WndSetTextM(_GUIHandle, "出  售")
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:EditCreate(_Parent, "text1", offset_X + 500, offset_Y + 470, 150, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "总价：")
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent, "totalPrice", offset_X + 553, offset_Y + 471, 200, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, color.number)
		GUI:EditSetTextM(_GUIHandle, "0")
		
	end
	_GUIHandle = GUI:EditCreate(_GUIHandle, "moneyType", offset_X + 553, offset_Y + 471, 50, 24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle, "金币")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end

	NpcSell.UIInit(_Parent)
end

--UI Logic Code Start
function NpcSell.UIInit(_Handle)
	if 0 ~= GameMainBar.WndHandle then
		GUI:WndSetVisible(GameMainBar.WndHandle, false)
	end

	NpcSell.WndHandle = _Handle
	local _GUIHandle = GUI:WndFindWindow(NpcSell.WndHandle, "totalPrice")
	if 0 ~= _GUIHandle then
		--GUI:EditSetTextM(_GUIHandle, "9999999")
	end
end

-- function NpcSell.itemClicked()
-- end

-- function NpcSell.SlideEvent(_Handle)
-- 	local _GUIHandle = GUI:WndFindWindow(NpcSell.WndHandle, "amount")
-- 	if _GUIHandle then
-- 		local pecent = GUI:SlideGetPercent(_Handle)
-- 		if 0 == pecent then
-- 			pecent = 1
-- 		end
-- 		GUI:EditSetTextM(_GUIHandle, tostring(pecent))
-- 		-- _GUIHandle = GUI:WndFindWindow(NpcSell.WndHandle, "totalPrice")
-- 		-- if 0 ~= _GUIHandle then
-- 		-- 	GUI:EditSetTextM(_GUIHandle, tostring(100 * pecent))
-- 		-- end
-- 	end
-- end

-- function NpcSell.plus()
-- 	--UI:Lua_OpenWindow(0, "SlideTest.lua")
-- 	local _GUIHandle = GUI:WndFindWindow(NpcSell.WndHandle, "amount")
-- 	if 0 ~= _GUIHandle then
-- 		local num = tonumber(GUI:EditGetTextM(_GUIHandle))
-- 		if nil == num then
-- 			num = 1
-- 		end
-- 		GUI:EditSetTextM(_GUIHandle, tostring(num + 1))
-- 		-- _GUIHandle = GUI:WndFindWindow(NpcSell.WndHandle, "totalPrice")
-- 		-- if 0 ~= _GUIHandle then
-- 		-- 	GUI:EditSetTextM(_GUIHandle, tostring((num + 1) * 100))
-- 		-- end
-- 		_GUIHandle = GUI:WndFindWindow(NpcSell.WndHandle, "slide")
-- 		if 0 ~= _GUIHandle then
-- 			GUI:SlideSetPercent(_GUIHandle, num)
-- 		end
-- 	end
-- end

-- function NpcSell.subtract()
-- 	local _GUIHandle = GUI:WndFindWindow(NpcSell.WndHandle, "amount")
-- 	if 0 ~= _GUIHandle then
-- 		local num = tonumber(GUI:EditGetTextM(_GUIHandle))
-- 		if nil == num then
-- 			num = 1
-- 		end
-- 		if 1 < num then
-- 			GUI:EditSetTextM(_GUIHandle, tostring(num - 1))
-- 			-- _GUIHandle = GUI:WndFindWindow(NpcSell.WndHandle, "totalPrice")
-- 			-- if 0 ~= _GUIHandle then
-- 			-- 	GUI:EditSetTextM(_GUIHandle, tostring((num - 1) * 100))
-- 			-- end
-- 			_GUIHandle = GUI:WndFindWindow(NpcSell.WndHandle, "slide")
-- 			if 0 ~= _GUIHandle then
-- 				GUI:SlideSetPercent(_GUIHandle, num - 2)
-- 			end
-- 		end
		
-- 	end
-- end

function NpcSell.Close()
	GUI:WndClose(NpcSell.WndHandle)
	if not GUI:WndGetVisible(GameMainBar.WndHandle) then
		GUI:WndSetVisible(GameMainBar.WndHandle, true)
	end
end


NpcSell.main()