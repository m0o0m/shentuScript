GameMall = {}
GameMall.WndHandle = 0
GameMall.listView = 0
function GameMall.main()

    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
	
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
	

    --大背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage0",0,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300016,1850300018,1850300022,1850300024,1850300020,1850300017,1850300023,1850300019,1850300021)
    end
	
	--背景框
	_GUIHandle = GUI:ImageCreate(_Parent,"BackImage1",1850600079,325,67)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,778, 498)
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006,1850400008,1850400012,1850400014,1850400010,1850400007,1850400013,1850400009,1850400011)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	

	

	_GUIHandle = GUI:ImageCreate(_Parent,"SortMallTitle",1851800014,52,65)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,274, 39)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab0",1851800017,207,8)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,137, 57)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
		
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab2",1851800021,349,8)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,137, 57)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab3",1851800025,491,8)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,137, 57)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab4",1851800029,633,8)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,137, 57)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab6",1851800033,775,8)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,137, 57)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab5",1851800037,917,8)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,137, 57)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1850000385,1093,8)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,38, 38)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "GameMall.CloseWnd")
	end

---------------------促销商品---------------------------------
	--背景框
	_GUIHandle = GUI:ImageCreate(_Parent,"Back2",1850600079,33,101)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,286, 464)
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006,1850400008,1850400012,1850400014,1850400010,1850400007,1850400013,1850400009,1850400011)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"SortBackImage0",1851800008,51,107)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,249, 153)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSortButItem")
		--GUI:WndSetCanRevMsg(_GUIHandle, false)
		--GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"SortBackImage1",1851800008,51,257)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,249, 153)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSortButItem")
		--GUI:WndSetCanRevMsg(_GUIHandle, false)
		--GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"SortBackImage2",1851800008,51,408)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,249, 153)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSortButItem")
		--GUI:WndSetCanRevMsg(_GUIHandle, false)
		--GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"SortItemBackImage0",1850500016,84,165)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem0",0,90,170,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,58, 58)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"SortItemBackImage1",1850500016,84,315)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem1",0,90,320,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,58, 58)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"SortItemBackImage2",1850500016,84,465)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"SortItem2",0,90,470,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,58, 58)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"salesNameBack1",1851800012,64,120)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,211, 34)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUI:ImageCreate(_Parent,"salesNameBack2",1851800012,64,270)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,211, 34)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end	
	_GUIHandle = GUI:ImageCreate(_Parent,"salesNameBack3",1851800012,64,421)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,211, 34)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end


	_GUIHandle = GUI:EditCreate(_Parent,"SortName0",133, 125,91,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:EditSetTextM(_GUIHandle,"道具名称")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUI:EditCreate(_Parent,"SortName1",133, 275,91,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:EditSetTextM(_GUIHandle,"道具名称")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUI:EditCreate(_Parent,"SortName2",133, 425,91,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:EditSetTextM(_GUIHandle,"道具名称")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	--左上角的热销图片	
	_GUIHandle = GUI:ImageCreate(_Parent,"SortHotImage0",1851800013,59,117)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,73, 64)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUI:ImageCreate(_Parent,"SortHotImage1",1851800013,59,267)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,73, 64)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUI:ImageCreate(_Parent,"SortHotImage2",1851800013,59,418)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,73, 64)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	

	
	_GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice0",170,169,100,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "000")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice1",170,318,100,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "000")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"SortNowPrice2",170,467,100,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "000")
    end
    


	_GUIHandle = GUI:ButtonCreate(_Parent,"SortBuy0",1850000307,168,190)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndSetTextM(_GUIHandle,"购买")
		GUI:WndSetTextOffset(_GUIHandle, 15, 0)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,251,194,46))
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSortButItem")
	end
	

	handle = GUI:ImageCreate(_GUIHandle,"buyBtnIcon",1851800016,13,15)
	if handle ~= 0 then
		GUI:WndSetSizeM(handle,31, 17)
		GUI:WndSetCanRevMsg(handle, false)
		GUI:ImageSetCheckPoint(handle, 0)
		GUI:WndSetEnableM(handle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"SortBuy1",1850000307,168,340)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndSetTextM(_GUIHandle,"购买")
		GUI:WndSetTextOffset(_GUIHandle, 15, 0)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,251,194,46))
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSortButItem")
	end
	

	
	handle = GUI:ImageCreate(_GUIHandle,"buyBtnIcon",1851800016,13,15)
	if handle ~= 0 then
		GUI:WndSetSizeM(handle,31, 17)
		GUI:WndSetCanRevMsg(handle, false)
		GUI:ImageSetCheckPoint(handle, 0)
		GUI:WndSetEnableM(handle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"SortBuy2",1850000307,168,490)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndSetTextM(_GUIHandle,"购买")
		GUI:WndSetTextOffset(_GUIHandle, 15, 0)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,251,194,46))
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSortButItem")
	end
	
	handle = GUI:ImageCreate(_GUIHandle,"buyBtnIcon",1851800016,13,15)
	if handle ~= 0 then
		GUI:WndSetSizeM(handle,31, 17)
		GUI:WndSetCanRevMsg(handle, false)
		GUI:ImageSetCheckPoint(handle, 0)
		GUI:WndSetEnableM(handle, false)
	end
	
	

	
	--------------底部UI
	_GUIHandle = GUI:ImageCreate(_Parent,"BackImage00",1800000055,308,600)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
    end
	
	 _GUIHandle = GUI:ImageCreate(_Parent,"BackImage01",1850300007,459,591)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage02",1850300006,615,591)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        
    end
	
	_GUIHandle = GUI:EditCreate(_Parent,"JiFen",325,600,100,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,251,194,46))
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"BindYuanBao",500,600,100,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,251,194,46))
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"YuanBao",655,600,100,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,251,194,46))
    end
    
    

	--快速充值按钮
	_GUIHandle = GUI:ButtonCreate(_Parent,"AddYuanBao",1851800004,861,571)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,204, 63)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.PayMoney")
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
GameMall.WndPageCount = 9
function GameMall.UIInit(_Handle)
    GameMall.WndHandle = _Handle
	for _Idx = 0, 2 do
		local _GUIIDString = "SortItem".._Idx
		local _WndHandle = GUI:WndFindChildM(_Handle, _GUIIDString)
		if 0 ~= _WndHandle then
			--GUI:ItemCtrlSetIconImageType(_WndHandle, 1) -- 设置显示图标为大图标
		end
	end

	
end

--热销商品购买
function GameMall.OnSortButItem(_Handle, _Param)
    if 0 ~= _Handle then
	    local _Param = GUI:WndGetParam(_Handle)
		
        CL:BuySortMallItemByIndex(_Param, true, true)
    end
end




function GameMall.OnTabChange(_Handle, _Param)
	local _CurTab = GUI:WndGetParam(_Handle)
    if _CurTab ~= GameMall.CurTab then
        GameMall.PageCount = 0
        GameMall.CurPage = 1
		GameMall.CurTab = _CurTab
    end
end



--创建商品列表
function GameMall.CreateSortList()
	---------------------普通商品------------------------------
	--[[ --不需要清除,自动回清除
	local _WndHandle = GUI:WndFindChildM(GameMall.WndHandle, "subWnd")
	if 0 ~= _WndHandle then
		GUI:WndDlgClear(_WndHandle)
	end
	--]]
	GameMall.listView = GUI:WndCreateWnd(GameMall.WndHandle,"subWnd",0,315,70)
	if GameMall.listView ~= 0 then
		GUI:WndSetSizeM(GameMall.listView,778, 490)
		GUI:WndSetEnableM(GameMall.listView, false)
		GUI:WndSetFlagsM(GameMall.listView, flg_wndBase_useBkBuffer)
	end
	--msg('GameMall.ItemCount='..GameMall.ItemCount)
	local rows = math.floor(GameMall.ItemCount/3)
	local rest = GameMall.ItemCount%3
	local k = 1
	for i = 1, rows do
		for j = 1, 3 do
			
			_GUIHandle = GUI:ButtonCreate(GameMall.listView, "itemBack"..k,1851800000, 11 + (j-1)*255, 8 + (i-1)*200)
			if _GUIHandle ~= 0 then
				GUI:WndSetSizeM(_GUIHandle,266, 201)
				GUI:ImageSetFitSize(_GUIHandle, true)
				GUI:ImageSetCheckPoint(_GUIHandle, 0)
				GUI:WndSetParam(_GUIHandle, k)
				GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
			end
			_GUIHandle = GUI:ImageCreate(GameMall.listView,"ItemImg"..k,1850500016, 35 + (j-1)*255, 45 + (i-1)*200)
			if _GUIHandle ~= 0 then
				GUI:WndSetParam(_GUIHandle, 0)
			end
			_GUIHandle = GUI:ItemCtrlCreate(GameMall.listView,"Item"..k, 0, 40 + (j-1)*255, 50 + (i-1)*200,63,63)
			if _GUIHandle ~= 0 then
				GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSelectItem")
				GUI:WndSetParam(_GUIHandle, 0)
				GUI:WndSetSizeM(_GUIHandle,55, 55)
				GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
				GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
				GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
				GUI:WndSetEnableM(_GUIHandle, true)
			end
			_GUIHandle = GUI:EditCreate(GameMall.listView,"Name"..k, 110 + (j-1)*255, 52 + (i-1)*200,170,24)
			if _GUIHandle ~= 0 then
				GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
				GUI:EditSetTextM(_GUIHandle,"道具名称")
				GUI:WndSetEnableM(_GUIHandle, false)
			end
			_GUIHandle = GUI:RichEditCreate(GameMall.listView,"NowPrice"..k, 110 + (j-1)*255, 87 + (i-1)*200, 150,14)
			if _GUIHandle ~= 0 then
				GUI:WndSetParam(_GUIHandle, 0)
				GUI:RichEditSetEditEnable(_GUIHandle, false)
				GUI:RichEditAppendString(_GUIHandle, "")
			end
			_GUIHandle = GUI:ButtonCreate(GameMall.listView,"Buy"..k,1850000307, 90 + (j-1)*255, 130 + (i-1)*200)
			if _GUIHandle ~= 0 then
				GUI:WndSetParam(_GUIHandle, k)
				GUI:WndSetSizeM(_GUIHandle,107, 47)
				GUI:WndSetTextM(_GUIHandle,"购买")
				--GUI:WndSetTextOffset(_GUIHandle, 15, 0)
				GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,251,194,46))
				GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
			end
			--[[
			handle = GUI:ImageCreate(_GUIHandle,"buyBtnIcon",1851800016,13,15)
			if handle ~= 0 then
				GUI:WndSetSizeM(handle,31, 17)
				GUI:WndSetCanRevMsg(handle, false)
				GUI:ImageSetCheckPoint(handle, 0)
				GUI:WndSetEnableM(handle, false)
			end
			--]]
			k = k + 1
		end
	end
	
	for j = 1, rest do 
		_GUIHandle = GUI:ButtonCreate(GameMall.listView, "itemBack"..k,1851800000,11 + (j-1)*255, 8 + rows*200)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,263, 201)
			GUI:ImageSetFitSize(_GUIHandle, true)
			GUI:ImageSetCheckPoint(_GUIHandle, 0)
			GUI:WndSetParam(_GUIHandle, k)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
		end
		_GUIHandle = GUI:ImageCreate(GameMall.listView,"ItemImg"..k,1850500016, 35 + (j-1)*255, 58 + rows*200)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
		end
		_GUIHandle = GUI:ItemCtrlCreate(GameMall.listView,"Item"..k, 0, 40 + (j-1)*255, 63 + rows*200,63,63)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnSelectItem")
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetSizeM(_GUIHandle,55, 55)
			GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
			GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
			GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
			GUI:WndSetEnableM(_GUIHandle, true)
		end
		_GUIHandle = GUI:EditCreate(GameMall.listView,"Name"..k, 110 + (j-1)*255, 62 + rows*200,170,24)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
			GUI:EditSetTextM(_GUIHandle,"道具名称")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:RichEditCreate(GameMall.listView,"NowPrice"..k, 110 + (j-1)*255, 97 + rows*200, 150,14)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:RichEditSetEditEnable(_GUIHandle, false)
			GUI:RichEditAppendString(_GUIHandle, "")
		end
		_GUIHandle = GUI:ButtonCreate(GameMall.listView,"Buy"..k,1850000307, 90 + (j-1)*255, 130 + rows*200)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, k)
			GUI:WndSetSizeM(_GUIHandle,107, 47)
			GUI:WndSetTextM(_GUIHandle,"购买")
			--GUI:WndSetTextOffset(_GUIHandle, 15, 0)
			GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,251,194,46))
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnBuyItem")
		end
		--[[
		handle = GUI:ImageCreate(_GUIHandle,"buyBtnIcon",1851800016,13,15)
		if handle ~= 0 then
			GUI:WndSetSizeM(handle,31, 17)
			GUI:WndSetCanRevMsg(handle, false)
			GUI:ImageSetCheckPoint(handle, 0)
			GUI:WndSetEnableM(handle, false)
		end
		--]]
		k = k + 1
	end
	
	
end

function GameMall.PriceTypeString(_PriceType)
    if _PriceType == 0 then
        --return "元宝"
        return "1851800016"
    elseif _PriceType == 1 then
        --return "绑元"
        return "1850300007"
    elseif _PriceType == 2 then
        --return "积分"
        return "1800000055"
    elseif _PriceType == 3 then
        --return "金币"
        return "1850300005"
    elseif _PriceType == 4 then
        --return "绑金"
        return "1806600014"
    end
    return ""
end

function GameMall.UpdataItem()
	
	if CL:GetMallItemInfo() then 
		local _MammInfoTable = LuaRet
		local str = serialize(_MammInfoTable)
		--msg("str="..string.sub(str, 200))
		GameMall.CreateSortList()
		for i = 1, GameMall.ItemCount do
			local _ItemID = _MammInfoTable[i][1]
			local _Count = _MammInfoTable[i][3]
			local _PriceUinit = _MammInfoTable[i][4]
			local _Price = _MammInfoTable[i][5]
			local _DisCountPrice = _MammInfoTable[i][6]
			
			local _GUIIDString = "Item"..i
			local _WndHandle = GUI:WndFindChildM(GameMall.listView, _GUIIDString)
			if 0 ~= _WndHandle then
				local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)
				if 0 ~= _ItemDataHandle then
					LuaArg = _ItemID
					CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID)
					LuaArg = true
					CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)
					LuaArg = 0xFFFF
					CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
					
					local _ItemTemplateHandle = CL:GetItemTemplateHandleByID(_ItemID)
					if _ItemTemplateHandle ~= 0 then
						if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_TIPSICON) then
							LuaArg = LuaRet
							CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
						end
						
						if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_NAME) then
							local _ItemName = LuaRet
							_GUIIDString = "Name"..i
							_WndHandle = GUI:WndFindChildM(GameMall.listView, _GUIIDString)
							if 0 ~= _WndHandle then
								GUI:EditSetTextM(_WndHandle, _ItemName)
							end
						end
					end
				end
			end
			
			
			_GUIIDString = "NowPrice"..i
			_WndHandle = GUI:WndFindChildM(GameMall.listView, _GUIIDString)
			if 0 ~= _WndHandle then
				local _UintString = GameMall.PriceTypeString(_PriceUinit)
				--local _PriceString = "#COLORCOLOR_GOLD#价格:#COLORCOLOR_WHITE#".._DisCountPrice.._UintString.."#COLORCOLOR_END#"
				local _PriceString = "#COLORCOLOR_GOLD#价格:#COLORCOLOR_END#".."#IMAGE".._UintString.."#".."#COLORCOLOR_WHITE#".._DisCountPrice.."#COLORCOLOR_END#"
				GUI:RichEditAppendString(_WndHandle, _PriceString)
			end	
			
		end
		
	else
		
	end
end


function GameMall.OnItemUpdata()
	
    GameMall.ItemCount = LuaParam[1]
    GameMall.UpdataItem()
end

function GameMall.OnBuyItem(_Handle, _Param)
    if 0~= _Handle then
        local _Param = GUI:WndGetParam(_Handle)
        local _MallIndex = _Param - 1
        --CL:BuyMallItemByIndex(_MallIndex, 1, true)--单个购买
		CL:BuyMallItemUseBulkWnd(_MallIndex)
    end
end



function GameMall.PayMoney(_Handle,_Param)
	CL:OpenUrlUseIEByType(3)--打开充值页面
end

function GameMall.CloseWnd()
	WndClose(GameMall.WndHandle)
end

GameMall.main()
RegisterUIEvent(LUA_EVENT_UPDATAMALLITEM, EVENT_DEFAULT_TAG, GameMall.OnItemUpdata)