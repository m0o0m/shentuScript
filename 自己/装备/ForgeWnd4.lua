

ForgeWnd4 = 
{
	WndHandle = 0,
	ItemList = {};
}
 
function ForgeWnd4:main()
    local _Parent = LuaGlobal["AttachPartent"]
	
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    local _Parent = GUI:WndCreateWnd(_Parent, "ForgeWnd4",0,0,0)
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
        GUI:EditSetTextM(_GUIHandle," 炼  制")
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

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 80, 5)
    if _GUIHandle ~= 0 then
    	GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd4.CloseWnd")
    end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"button1",1851900001,430,64)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"魂石炼化")
		GUI:WndRegistScript(_GUIHandle,1003, "ForgeWnd4._BtnLc")
		GUI:WndSetParam(_GUIHandle, 1)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"button2",1851900001,549,64)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"宝石升级")
		GUI:WndRegistScript(_GUIHandle,1003, "ForgeWnd4._BtnLc")
		GUI:WndSetParam(_GUIHandle, 2)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"button3",1851900001,669,64)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"装备锻造")
		GUI:WndRegistScript(_GUIHandle,1003, "ForgeWnd4._BtnLc")
		GUI:WndSetParam(_GUIHandle, 3)
	end
    
    self:UIInit(_Parent)
end




--UI Logic Code Start
local SCRIPT = 
{
	{"SmeltWnd", "CrystalSynthesis", "EquipForge"},
	{"SmeltWnd.lua", "CrystalSynthesis.lua", "EquipForge.lua"},
	
}
function ForgeWnd4:UIInit(_GUIHandle)
	RegisterUIEvent(LUA_EVENT_PLAYERATTREXTREF, "ForgeWnd4", ForgeWnd4.propDataChange)
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

	

	for i = 1, 3 do
		local _handle = GUI:WndFindChildM(_GUIHandle,"button" .. i)
		if _handle ~= 0 then
			GUI:ButtonSetDownTextPosChange(_handle, true);
			GUI:WndSetTextArrangeType(_handle, -5, 3, 0, 0);
			GUI:ButtonSetStateTextColor(_handle, 0, mkcolor("GRAY"));
			GUI:ButtonSetStateTextColor(_handle, 1, mkcolor("GOLD2"));
			GUI:ButtonSetStateTextColor(_handle, 2, mkcolor("GOLD2"));
		end
	end
	local _handle = GetWindow(_GUIHandle, "button1");
	if _handle ~= 0 then 
		ForgeWnd4._BtnLc(_handle);
	end 
end




function ForgeWnd4._BtnLc(_handle)
	if ButtonGetIsActivePageBtn(_handle, nil) then 
		return
	end
	local param = GUI:WndGetParam(_handle);
	for i = 1, 3 do 
		local _hand = GetWindow(ForgeWnd4.WndHandle, "button"..i);
		if _hand ~= 0 then 
			GUI:WndSetTextColorM(_hand, 4284637794)
			ButtonSetIsActivePageBtn(_hand, nil, false);
		end 
		_hand = GetWindow(ForgeWnd4.WndHandle, SCRIPT[1][i]);
		if _hand ~= 0 then 
			GUI:WndClose(_hand);
		end
	end 
	ButtonSetIsActivePageBtn(_handle, nil, true);
	GUI:WndSetTextColorM(_handle, mkcolor("GOLD2"))
	UI:Lua_OpenWindow(ForgeWnd4.WndHandle, SCRIPT[2][tonumber(param)]);
end

--筛选出身上装备
function ForgeWnd4:item_filter()
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


function ForgeWnd4:CreateUI(i,index)

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
		GUI:WndRegistScript(_Parent,RDWndBaseCL_mouse_lbUp, "ForgeWnd4._ClickItem")
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


function ForgeWnd4.Get_EquipUpdate()
	local handle = GUI:WndFindChildM(ForgeWnd4.WndHandle,"roleequip")	
	local Is_true = ButtonGetIsActivePageBtn(handle)
	for i = 1 , #ForgeWnd4.itemlist do 
			local handle = GUI:WndFindChildM(ForgeWnd4.WndHandle,"itemback"..i)	
			GUI:ItemCtrlClearItemData(handle)
	end
	if Is_true then		
		if UI:Lua_GetPlayerSelfEquipData() then
			ForgeWnd4.itemlist = LuaRet
		end
	else
		if CL:GetPackageItemGUIDList() then
			ForgeWnd4.itemlist = LuaRet
		end
	end
	ForgeWnd4.item_filter()
	ForgeWnd4.forge_data()

end	


function ForgeWnd4.propDataChange()
	
    if LuaParam[2] == ROLE_PROP64_GOLD then
        _GUIHandle = GUI:WndFindChildM(ForgeWnd4.WndHandle, "GoldEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty64(ROLE_PROP64_GOLD) then 
                Property = LuaRet
                GUI:EditSetTextM(_GUIHandle,Property) 
			else
				msg("ForgeWnd4获取玩家64位属性失败")
            end    
        end
    end

    if LuaParam[2] == ROLE_PROP64_INGOT then
        _GUIHandle = GUI:WndFindChildM(ForgeWnd4.WndHandle, "IngotEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then 
                Property = LuaRet
                GUI:EditSetTextM(_GUIHandle,Property)   
            end  
        end
    end

end

function ForgeWnd4.CloseWnd()	
	GUI:WndClose(ForgeWnd4.WndHandle);
end


ForgeWnd4:main()