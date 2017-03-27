GameMall = {}
ForgeWnd = {}
GameMall.WndHandle = 0
GameMall.listView = 0
function GameMall.main()

    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
	
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
	
	_Parent = GUI:WndCreateWnd(_Parent,"RankWnd",0,0,0)
    if _Parent ~= 0 then
    end
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
	--[[
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
	--]]
	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab5",1851000001,775,8)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,137, 57)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMall.OnTabChange")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Tab6",1851000005,917,8)
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

---------------------身上装备---------------------------------
	--背景框
	_GUIHandle = GUI:ImageCreate(_Parent, "Back2", 1850600079, 33, 101)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,286, 464)
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006,1850400008,1850400012,1850400014,1850400010,1850400007,1850400013,1850400009,1850400011)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
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
	
	ForgeWnd.EquipItemList  = {}
	ForgeWnd.itemlist  = {}
	GameMall.CreateSortList()
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
	--[[
	local _handle = GetWindow(0, "gamemall");
	if _handle ~= 0 then 
		WndClose(_handle)
	end
	--]]
	GUI:WndClose(GameMall.WndHandle);
end

GameMall.main()
--RegisterUIEvent(LUA_EVENT_UPDATAMALLITEM, EVENT_DEFAULT_TAG, GameMall.OnItemUpdata)