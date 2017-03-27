ZhulSelWnd = {}
function ZhulSelWnd:main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"ZhulSelWnd",0,270,10)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,360, 392)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,15,55)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,330, 310)
    end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000385, 300, 15)
    if _GUIHandle ~= 0 then
    	GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ZhulSelWnd.CloseWnd")
    end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Edit1Bg",1851000023,79,12)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,268, 42)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_0",90,11,150,41)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetFontM(_GUIHandle,"SIMLI18")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 198, 165, 55))
		GUI:EditSetTextM(_GUIHandle,"请选择蕴魂石")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

    ZhulSelWnd:UIInit(_Parent)
end

--UI Logic Code Start
ZhulSelWnd.WndHandle = 0
ZhulSelWnd.itemlist = {}
function ZhulSelWnd:UIInit(_Handle)
    self.WndHandle = _Handle
	
    local BgImg = GUI:WndFindWindow(_Handle, "BgImage")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850700035,1850700037,1850700041,1850700043,1850700039,1850700036,1850700042,1850700038,1850700040)
    end 

    local BgImg1 = GUI:WndFindWindow(_Handle, "BgImage1")
    if BgImg1 then
        GUI:ImageSetAroundImage(BgImg1, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
    end 
	
	self.ItemList = {};
    if CL:GetPackageItemGUIDList() then
        self.ItemList = LuaRet
    end
    self:item_filter()
		dbg("self.ItemList==="..serialize(self.ItemList))
    self:CreateItemList()
end

function ZhulSelWnd:item_filter()
    local DATA = self.ItemList
    self.ItemList = {}
    for i = 1 , #DATA do 
		
        local KeyName = ""
		if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_KEYNAME) then
			KeyName = tostring(LuaRet);
		end
		dbg("KeyName=////////////////"..KeyName);
		if KeyName ~= "" then
			local index = KeyName:find("蕴魂石");
			if index ~= nil then 
				-- dbg("KeyName=////////////////"..KeyName);
				local ele = {};
				ele[1] = DATA[i];
				if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_QUALITY) then 
					local quality = LuaRet;
					ele[2] = quality;
				end
				
				if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_ID) then 
					local ID = LuaRet;
					ele[3] = ID;
				end
				table.insert(self.ItemList, ele);
			end
		end
		
    end
	function compare1(a, b)
		return a[2] > b[2];
	end
	table.sort(self.ItemList, compare1);
	
	-- function compare2(a, b)
		-- return a[3] < b[3];
	-- end
	-- table.sort(self.ItemList, compare2);
end


--蕴魂石列表
function ZhulSelWnd:CreateItemList()
	
	self._listView = GUI:WndCreateWnd(self.WndHandle, "stoneListWnd", 0, 20, 55)
	if self._listView ~= 0 then
		GUI:WndSetSizeM(self._listView, 310, 310)
		GUI:WndSetEnableM(self._listView, false)
		GUI:WndSetFlagsM(self._listView, flg_wndBase_useBkBuffer)
	end
	for i = 1, #self.ItemList do
		self:CreateUI(i);
	end
end

function ZhulSelWnd:CreateUI(i)	
	dbg("i"..i)
	local _Parent = self._listView
	_Parent = GUI:ButtonCreate(_Parent, "ItemBgBtn"..i, 1851000009, 0, (i -1)*100)
	if _Parent ~= 0 then
		GUI:WndSetParam(_Parent, i)
		-- GUI:WndSetSizeM(_Parent,251, 75)
		-- GUI:ImageSetFitSize(_Parent, true)  
		GUI:WndRegistScript(_Parent, RDWndBaseCL_mouse_lbUp, "ZhulSelWnd._ClickItem")
	end
	
	local _GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrlBG",1850500016,20,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
	end	

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCtrl",0,22,22,64,64)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByGUID(_GUIHandle, "",  self.ItemList[i][1]);
	end 
	
	if not CL:GetItemEntityPropByGUID(self.ItemList[i][1], ITEM_PROP_NAME) then
		dbg("ITEM_PROP_NAME 错误false")
		return
	end
	local Name = LuaRet
	
	local color_str = ""
	if not CL:GetItemEntityPropByGUID(self.ItemList[i][1], ITEM_PROP_COLOR) then
		dbg("ITEM_PROP_COLOR 错误false")
		return
	else
		local color =  LuaRet
		if color == "PURPLE" then  --紫   -- 黄  -- 红  -- 绿
			color_str = "#COLORCOLOR_PURPLE#";
		elseif color == "GOLD" or color == "YELLOW" then
			color_str = "#COLORCOLOR_GOLD#";
		elseif color == "RED" then
			color_str = "#COLORCOLOR_RED#";
		elseif color == "SKYBLUE" then
			color_str = "#COLORCOLOR_SKYBLUE#";
		elseif color == "GREENG" then
			color_str = "#COLORCOLOR_GREENG#";
		elseif color == "WHITE" then
			color_str = "#COLORCOLOR_WHITE#";
		end
	end
	_GUIHandle = GUI:RichEditCreate(_Parent,"Name"..i, 116, 25,200,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:RichEditClear(_GUIHandle)
		GUI:RichEditAppendString(_GUIHandle, color_str..Name.."#COLOREND#")
	end

end

--物品框点击回调事件
function ZhulSelWnd._ClickItem(_Handle)	
    local _handle = GetWindow(_Handle, "ItemCtrl")
    if _handle ~= 0 then 
		local item_guid = RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID)
		if item_guid ~= 0 and item_guid ~= nil then
			ZhulWnd:FillItemCtr(item_guid);
			GUI:WndClose(ZhulSelWnd.WndHandle)
		end
    end
end	

function ZhulSelWnd.CloseWnd(_Handle)
    if _Handle ~= 0 then 
        local _ParentHandle = GUI:WndGetParentM(_Handle)
        if _ParentHandle ~= 0 then
            GUI:WndClose(_ParentHandle)
        end
    end
end



ZhulSelWnd:main()