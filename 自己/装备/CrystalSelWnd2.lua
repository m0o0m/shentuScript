CrystalSelWnd2 = {}
function CrystalSelWnd2:main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"CrystalSelWnd2",0,270,10)
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
    	GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CrystalSelWnd2.CloseWnd")
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
		GUI:EditSetTextM(_GUIHandle,"请选择宝石")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

    CrystalSelWnd2:UIInit(_Parent)
end

--UI Logic Code Start
CrystalSelWnd2.WndHandle = 0
CrystalSelWnd2.itemlist = {}
function CrystalSelWnd2:UIInit(_Handle)
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
	dbg("self.ItemList==="..serialize(self.ItemList))
    self:item_filter()
    self:CreateItemList()
	
end

function CrystalSelWnd2:item_filter()
    local DATA = self.ItemList
    self.ItemList = {}
    for i = 1 , #DATA do 
		local boolIsPile = 0;
        local KeyName = ""
		if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_KEYNAME) then
			KeyName = tostring(LuaRet);
		end
		-- local Type = 0
		-- if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_TYPE) then
			-- Type = tonumber(LuaRet);
		-- end
		if KeyName ~= "" then
			local index = KeyName:find(CrystalSynthesis.crystalType);
			-- msg("index=================="..index) --特么的这里为什么是个nil,然而程序确是正常的
			if index ~= nil then 
				for k = 1, #self.ItemList do 
					if KeyName == self.ItemList[k][5] then 
						if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_ENTITY_AMOUNT) then
							local count = tonumber(LuaRet);
							self.ItemList[k][4] = self.ItemList[k][4] + count;
							boolIsPile = 1;  --要是堆叠过了,就做一个标记,后面看到这个标记就不执行后续代码
							break;
						end
					end
				end
				if boolIsPile == 0 then 
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
					
					if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_ENTITY_AMOUNT) then
						local count = tonumber(LuaRet);
						ele[4] = count;
					end
					ele[5] = KeyName;
					table.insert(self.ItemList, ele);
				end
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
function CrystalSelWnd2:CreateItemList()
	
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


function CrystalSelWnd2:CreateUI(i)	
	dbg("i"..i)
	local _Parent = self._listView
	_Parent = GUI:ButtonCreate(_Parent, "ItemBgBtn"..i, 1851000009, 0, (i -1)*100)
	if _Parent ~= 0 then
		GUI:WndSetParam(_Parent, i)
		-- GUI:WndSetSizeM(_Parent,251, 75)
		-- GUI:ImageSetFitSize(_Parent, true)  
		GUI:WndRegistScript(_Parent, RDWndBaseCL_mouse_lbUp, "CrystalSelWnd2._ClickItem")
	end
	
	local _GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrlBG",1850500016,20,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
	end	

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCtrl",0,22,22,64,64)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle, "",  self.ItemList[i][5], self.ItemList[i][4]);
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
function CrystalSelWnd2._ClickItem(_Handle)	
    local _handle = GetWindow(_Handle, "ItemCtrl")
    if _handle ~= 0 then 
		local item_id = RDItemCtrlGetGUIDataPropByType(_handle, nil, ITEMGUIDATA_ITEMID)
		if item_id ~= 0 and item_id ~= nil then
			local KeyName = ""
			if CL:GetItemTemplatePropByID(item_id, ITEM_PROP_KEYNAME) then 
				KeyName = LuaRet;
			end
			if not CrystalSynthesis[KeyName] then 
				CrystalSynthesis[KeyName] = 0
			end
			--这里的count为宝石物品框中已经填充了的宝石数量
			local count = CrystalSynthesis[KeyName];
			dbg("count-------------------"..count)
			if count then
				for k = 1, #CrystalSelWnd2.ItemList do 
					if KeyName == CrystalSelWnd2.ItemList[k][5] then 
						if count >= CrystalSelWnd2.ItemList[k][4] then 
							win_msg_up(KeyName.."数量不足");
							return;
						end
					end
				end
			end
			CrystalSynthesis:FillOriginItemCtr(item_id);
			GUI:WndClose(CrystalSelWnd2.WndHandle)
			CrystalSelWnd2 = {};
		end
    end
end	


function CrystalSelWnd2.CloseWnd(_Handle)
    if _Handle ~= 0 then 
        local _ParentHandle = GUI:WndGetParentM(_Handle)
        if _ParentHandle ~= 0 then
            GUI:WndClose(_ParentHandle)
        end
    end
end



CrystalSelWnd2:main()