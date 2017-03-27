

ForgeWnd = 
{
	WndHandle = 0,
	
	ItemList = {};

	SUBWND = {"QianghWnd","ZhuanyWnd"},
	ITEMFORM= {"强化表单","转移表单"},
}

function ForgeWnd:main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"ForgeWnd",0,0,0)
    if _Parent ~= 0 then
    end

    --大背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    if _GUIHandle ~= 0 then
       GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
    end
	
	_GUIHandle = GUI:EditCreate(_Parent,"GUI_HEAD",547,15,130,20)
    if _GUIHandle ~= 0 then
		GUI:EditSetFontM(_GUIHandle,"SIMLI18")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 198, 165, 55))
        GUI:EditSetTextM(_GUIHandle,"装备强化")
		GUI:WndSetEnableM(_GUIHandle, false)
		
    end 
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD_LEFT",1850100038,435,15)
    if _GUIHandle ~= 0 then
		
    end
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD_RIGHT",1850100039,655,15)
    if _GUIHandle ~= 0 then
		
    end

    -- 第二层背景
    -- _GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",0,380,64)
    -- if _GUIHandle ~= 0 then
         -- GUI:WndSetSizeM(_GUIHandle,700, 446)
    -- end
	

	--第三层背景,装备列表背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,50,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,340, 452)
    end
	
	--装备列表
	self._listView = GUI:WndCreateWnd(_Parent, "ListWnd", 0, 50, 80)
	if self._listView ~= 0 then
		GUI:WndSetSizeM(self._listView, 340, 420)
		GUI:WndSetEnableM(self._listView, false)
		GUI:WndSetFlagsM(self._listView, flg_wndBase_useBkBuffer)
	end
	

    _GUIHandle = GUI:ImageCreate(_Parent,"GoldImg",1850300005,45,28)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"GoldEdit",90,32,100,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"YuanBaoImg",1850300006,195,28)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"IngotEdit",240,32,100,20)
    if _GUIHandle ~= 0 then
    end
	
	--暂时不显示绑定元宝,这数据对强化没用
    -- _GUIHandle = GUI:ImageCreate(_Parent,"BindYuanBaoImg",1850300007,345,32)
    -- if _GUIHandle ~= 0 then
    -- end

    -- _GUIHandle = GUI:EditCreate(_Parent,"BindIngotEdit",390,32,100,20)
    -- if _GUIHandle ~= 0 then
    -- end
    
    -- _GUIHandle = GUI:ButtonCreate(_Parent,"button1",1851000001,690,4)
    -- if _GUIHandle ~= 0 then
        -- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.Qiangh")
    -- end
    
    -- _GUIHandle = GUI:ButtonCreate(_Parent,"button2",1851000005,830,4)
    -- if _GUIHandle ~= 0 then
        -- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.Zhuany")
    -- end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 80, 5)
    if _GUIHandle ~= 0 then
    	GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.CloseWnd")
    end
    self:UIInit(_Parent)
end




--UI Logic Code Start
function ForgeWnd:UIInit(_GUIHandle)
	RegisterUIEvent(LUA_EVENT_PLAYERATTREXTREF, "ForgeWnd", ForgeWnd.propDataChange)
	self.WndHandle = _GUIHandle
    

    local BgImg = GUI:WndFindWindow(_GUIHandle, "BgImage")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
    end

    --第二层背景
    -- local BgImg0 = GUI:WndFindWindow(_GUIHandle, "BgImage0")
    -- if BgImg0 then
        -- GUI:ImageSetAroundImage(BgImg0, 1850700035, 1850700037, 1850700041, 1850700043, 1850700039, 1850700036, 1850700042, 1850700038, 1850700040)
    -- end 
	
    local BgImg1 = GUI:WndFindWindow(_GUIHandle, "BgImage1")
    if BgImg1 then
        GUI:ImageSetAroundImage(BgImg1, 1850400015, 1850400017, 1850400021, 1850400023, 1850400019, 1850400016, 1850400022, 1850400018, 1850400020)
    end 


    local _EditHandle = GUI:WndFindWindow(_GUIHandle, "GoldEdit")
    if _EditHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_GOLD) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_EditHandle,Property)   
    end

    _EditHandle = GUI:WndFindWindow(_GUIHandle, "IngotEdit")
    if _EditHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_EditHandle,Property)   
    end

    _EditHandle = GUI:WndFindWindow(_GUIHandle, "BindIngotEdit")
    if _EditHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_BIND_INGOT) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_EditHandle,Property)   
    end


	for i = 1, 2 do
		local uih = GUI:WndFindChildM(_GUIHandle,"button" .. i)
		if uih ~= 0 then
			GUI:WndSetTextArrangeType(uih,0,2,0,0);
			GUI:ButtonSetStateTextColor(uih,0,MakeARGB(255, 96, 94, 73))
			GUI:ButtonSetStateTextColor(uih,2,MakeARGB(255, 208, 179, 99))
		end
        ButtonSetIsActivePageBtn(_GUIHandle,"button" .. i,true) 
        ButtonSetIsActivePageBtn(_GUIHandle,"button" .. i,false) 
	end
    ButtonSetIsActivePageBtn(_GUIHandle,"button1",true) 
    


	for i = 1, 28 do
		_Handle = GUI:WndFindChildM(_GUIHandle,"itemback" .. i)
		if _Handle ~= 0 then
			GUI:ItemCtrlSetIconSize(_Handle,46,46)
			GUI:ItemCtrlClearItemData(_Handle)
			RDItemCtrlSetGUIDataPropByType(_Handle, nil, ITEMGUIDATA_INVALIDATE, true)
		end
	end	
	

	
	ForgeWnd:CreateEquipList()
	UI:Lua_OpenWindow(_GUIHandle,"QianghWnd.lua")
	local _handle = GetWindow(self._listView, "ItemBgBtn1")
	if _handle ~= 0 then 
		ForgeWnd._ClickItem(_handle)
	end
	-- UI:Lua_OpenWindow(_GUIHandle,"QianghSelWnd.lua")
end

function ForgeWnd.CloseWnd()	
	GUI:WndClose(ForgeWnd.WndHandle);
end

--创建装备列表
function ForgeWnd:CreateEquipList()
    if UI:Lua_GetPlayerSelfEquipData() then
        if type(LuaRet) ~= "number" then
            self.ItemList = LuaRet
			-- dbg('ForgeWnd.Equip='.. #self.ItemList)
			-- dbg(serialize(self.ItemList))
			self:item_filter()
        end
    end
	for i = 1, #self.ItemList do
		self:CreateUI(i,i);
	end
	
	local num = #self.ItemList
	self.ItemList = {};
    if CL:GetPackageItemGUIDList() then
        self.ItemList = LuaRet
		-- dbg('ForgeWnd.Package='.. #self.ItemList)
		-- dbg(serialize(self.ItemList))
    end
	if #self.ItemList > 0 then
		self:item_filter()
	end
	for i = 1, #self.ItemList do
		local index = num + i
		self:CreateUI(i,index);
	end

	
	
end

--筛选出身上装备
function ForgeWnd:item_filter()
	local DATA = self.ItemList;
	self.ItemList = {};
	for i = 1 , #DATA do 
		local Temp = CL:GetItemTemplateHandleByGUID(DATA[i]);
		local Type = 0;
		local subType = 0;
		if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_TYPE) then
			Type = tonumber(LuaRet);		
		end
		if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_SUBTYPE) then
			subType = tonumber(LuaRet);		
		end
		if Type == 1 and subType ~= 12 and subType ~= 5 then
			table.insert(self.ItemList, DATA[i]);
		end	
	end

end


function ForgeWnd:CreateUI(i,index)

	if not CL:GetItemEntityPropByGUID(self.ItemList[i], ITEM_PROP_NAME) then
		dbg("ITEM_PROP_NAME 错误false")
		return
	end
	local Name = LuaRet
	
	if not CL:GetItemEntityPropByGUID(self.ItemList[i], ITEM_PROP_EQUIP_REFINELEVEL) then
		dbg("ITEM_PROP_EQUIP_REFINELEVEL 错误false")
		return
	end
	local refineLevel = LuaRet

	-- dbg("index"..index)
	local _GUIHandle = 0
	local YOffset = 0
	local YInterval = 113
	local _Parent = self._listView
	_Parent = GUI:ButtonCreate(_Parent, "ItemBgBtn"..index, 1851000009, 10, YOffset + YInterval * (index -1))
	if _Parent ~= 0 then
		GUI:WndSetParam(_Parent, index)
		GUI:WndRegistScript(_Parent,RDWndBaseCL_mouse_lbUp, "ForgeWnd._ClickItem")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrlBG",1850500016,20,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,66, 66)
	end	

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCtrl",0,22,22,64,64)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByGUID(_GUIHandle, "",  self.ItemList[i]);
	end 
	
	local color_str = ""
	if not CL:GetItemEntityPropByGUID(self.ItemList[i], ITEM_PROP_COLOR) then
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
	
	_GUIHandle = GUI:RichEditCreate(_Parent, "ItemName",116,25,200,20)
	if _GUIHandle ~= 0 then
		GUI:RichEditClear(_GUIHandle)
		GUI:RichEditAppendString(_GUIHandle, color_str..Name.."#COLOREND##COLORCOLOR_GREENG#+"..refineLevel.."#COLOREND#")
	end
end



--物品框点击回调事件
function ForgeWnd._ClickItem(_Handle)	
	if ForgeWnd._saveHanle ~= 0 and ForgeWnd._saveHanle ~= nil then 
		GUI:ButtonSetIsActivePageBtn(ForgeWnd._saveHanle, false);
	end
	GUI:ButtonSetIsActivePageBtn(_Handle, true);
	ForgeWnd._saveHanle = _Handle;
    local _handle = GetWindow(_Handle, "ItemCtrl")
    if _handle ~= 0 then 
		local item_guid = RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID)
		dbg("item_guid"..item_guid)
		if item_guid ~= 0 and item_guid ~= nil then
			if UI:Lua_GUID2Str(item_guid) then
				item_guid = LuaRet;
				dbg("item_guid------------------"..item_guid)
				UI:Lua_SubmitForm("强化表单", "OfferData", item_guid)

				-- for i = 1, #ForgeWnd.SUBWND do
					-- _handle = GUI:WndFindChildM(ForgeWnd._wnd, ForgeWnd.SUBWND[i])
					-- if _handle ~= 0 then
						-- UI:Lua_SubmitForm(ForgeWnd.ITEMFORM[i], "item_set", item_guid)
					-- end
				-- end
				
			end
		end
    end
end	





function ForgeWnd:Get_EquipUpdate()
	self:CreateEquipList();
end	


function ForgeWnd.propDataChange()
	
	dbg("-----------------------------------------------------"..serialize(LuaParam));
    if LuaParam[2] == ROLE_PROP64_GOLD then
        _GUIHandle = GUI:WndFindChildM(ForgeWnd.WndHandle, "GoldEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty64(ROLE_PROP64_GOLD) then 
                Property = LuaRet
                GUI:EditSetTextM(_GUIHandle,Property) 
			else
				msg("ForgeWnd获取玩家64位属性失败")
            end    
        end
    end

    if LuaParam[2] == ROLE_PROP64_INGOT then
        _GUIHandle = GUI:WndFindChildM(ForgeWnd.WndHandle, "IngotEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then 
                Property = LuaRet
                GUI:EditSetTextM(_GUIHandle,Property)   
            end  
        end
    end

end




ForgeWnd:main()