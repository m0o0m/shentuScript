CrystalSynthesis = {}
function CrystalSynthesis.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"CrystalSynthesis",1851000058,400,108)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,697, 403)
	end


	
	-- _GUIHandle = GUI:ImageCreate(_Parent,"fireMagic", 3020201000,146,12)
	-- if _GUIHandle ~= 0 then
		-- GUI:ImageSetAnimateEnable(_GUIHandle, true, 100)
		-- GUI:WndSetEnableM(_GUIHandle, false)
		-- GUI:WndSetParam(_GUIHandle, 0)
		-- GUI:WndSetSizeM(_GUIHandle,400, 250)
		-- GUI:ImageSetParam(_GUIHandle, 0)
		-- GUI:ImageSetCheckPoint(_GUIHandle, 0)
	-- end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"desitem_image",1850700002,280,96)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,148, 96)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"desItem",0,324,113,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"desName",270,196,164,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image1",1850500016,175,34)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item1",0,180,39,58,58)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,58, 58)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalSynthesis._CrystalSelect")
		-- RDItemCtrlSetGUIDataPropByType(_GUIHandle, nil, ITEMGUIDATA_INVALIDATE, true)
		-- GUI:WndRegistScript(_GUIHandle,1002, "CrystalSynthesis._CrystalSelect")
		-- local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_GUIHandle)
		-- if 0 ~= _ItemDataHandle then
			-- LuaArg = 1891420024
			-- CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
			-- LuaArg = 0xFFFF
			-- CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
		-- end
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"name1",155,104,140,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image2",1850500016,449,36)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item2",0,454,41,58,58)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,58, 58)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalSynthesis._CrystalSelect")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"name2",430,106,140,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image3",1850500016,69,126)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item3",0,74,131,58,58)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,58, 58)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalSynthesis._CrystalSelect")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"name3",50,196,140,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image4",1850500016,568,119)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item4",0,573,124,58,58)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,58, 58)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalSynthesis._CrystalSelect")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"name4",550,188,140,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image5",1850500016,180,206)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item5",0,185,211,58,58)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,58, 58)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalSynthesis._CrystalSelect")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"name5",160,276,140,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image6",1850500016,454,207)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item6",0,459,212,58,58)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,58, 58)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalSynthesis._CrystalSelect")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"name6",435,276,140,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"progressBarBack",1851000042,280,231)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,164, 19)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"progressBar",1851000043,280,230)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,164, 19)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"progressNum",280,231,164,18)
	if _GUIHandle ~= 0 then
		
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"line",1850500023,103,333)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,466, 5)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"gold_need",220,350,104,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"消耗金币：")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"gold_back",1850300005,323,353)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,37, 25)
		GUI:ImageSetColor(_GUIHandle, 4290950816)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"gold",472,350,99,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"oneKey",1850000307,544,276)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1001, "CrystalSynthesis._OneKeyInput")
		GUI:WndSetTextM(_GUIHandle,"一键放入")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetTextArrangeType(_GUIHandle, 3, 3, 0, 0);
		GUI:WndSetTextColorM(_GUIHandle, 4294894158)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"lianhua",1850000307,545,347)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalSynthesis._YunHunSmelt")
		GUI:WndSetTextM(_GUIHandle,"炼  化")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndSetTextArrangeType(_GUIHandle, 5, 3, 0, 0);
		GUI:WndSetTextColorM(_GUIHandle, 4294894158)
	end
	
	CrystalSynthesis:UIInit(_Parent)
end

local EQUIP = {
	"武器",
	"头盔",
	"护腕",
	"衣服",
	"符咒",
	"鞋子",
	"护肩",
	"项链",
	"戒指",
	"勋章",
	"宝石",
	"翅膀",
	"守护",
	"坐骑",
}  

--颜色
local RDCOLOR = {}
RDCOLOR["WHITE"]=		4294967295--0xFFFFFFFF
-- RDCOLOR["橙"]=		4294352189--0xFFF69D3D
-- RDCOLOR["黄"]=		4294761476--0xFFFCDC04
-- RDCOLOR["蓝"]=		4279689899--0xFF16E2AB
RDCOLOR["SKYBLUE"]=		4279689899--0xFF16E2AB
-- RDCOLOR["暗蓝"]=		4280602623--0xFF24CFFF
RDCOLOR["GREENG"]=		4286185269--0xFF79FF35
-- RDCOLOR["暗青"]=		4286111031--0xFF78DD37
-- RDCOLOR["雅青"]=		4279755435--0xFF17E2AB
RDCOLOR["RED"]=			4293935424--0xFFF04140
-- RDCOLOR["洋红"]=		4294705574--0xFFFC01A6
-- RDCOLOR["棕色"]=		4292790139--0xFFDEC77B
RDCOLOR["GOLD"]=		4294894158--0xFFFEE24E
-- RDCOLOR["深金"]=		4294417725--0xFFF79D3D
RDCOLOR["PURPLE"]=		4293018073--0xFFE241D9
-- RDCOLOR["灰"]=		4284637794--0xFF626262
-- RDCOLOR["粉"]=		4293882016--0xFFEF70A0
-- RDCOLOR["黑色"]=		4278190080--0xFF000000
-- RDCOLOR["浅棕色"]=	4284293124--0xFF5D2004



local EXP = {
	25		,
	125     ,
	625     ,
	3125    ,
	15625   ,
	78125   ,
	390625  ,
	1953125 ,
}

local OFFER_EXP = {
	5		,
	25      ,
	125     ,
	625     ,
	3125    ,
	15625   ,
	78125   ,
	390625  ,
	1953125 ,
}
CrystalSynthesis.CrystalKeyNameList = {}
function CrystalSynthesis:UIInit(_GUIHandle)	
	CrystalSynthesis.WndHandle = _GUIHandle
	CrystalSynthesis.check = 0
	
	--宝石列表
	CrystalSynthesis._listView = GUI:WndCreateWnd(_GUIHandle, "ListWnd", 0, -350, -30)
	if CrystalSynthesis._listView ~= 0 then
		GUI:WndSetSizeM(CrystalSynthesis._listView, 340, 420)
		GUI:WndSetEnableM(CrystalSynthesis._listView, false)
		GUI:WndSetFlagsM(CrystalSynthesis._listView, flg_wndBase_useBkBuffer)
	end	
	self:CreateCrystalList()
	local _handle = GetWindow(self._listView, "ItemBgBtn1")
	if _handle ~= 0 then 
		CrystalSynthesis._ClickItem(_handle)
	end
end	


function CrystalSynthesis:CreateCrystalList()
	--创建身上装备含有宝石的列表
    if UI:Lua_GetPlayerSelfEquipData() then
        if type(LuaRet) ~= "number" then
            self.ItemList = LuaRet
			self:item_filter()
        end
    end
	for i = 1, #self.ItemList do
		self:CreateUI(i,i);
	end
	
	--创建背包装备含有宝石的列表
	local num = #self.ItemList
	self.ItemList = {};
    if CL:GetPackageItemGUIDList() then
        self.ItemList = LuaRet
    end
	if #self.ItemList > 0 then
		self:item_filter()
	end
	for i = 1, #self.ItemList do
		local index = num + 1
		self:CreateUI(i,index);
	end
end

--筛选出身上装备
function CrystalSynthesis:item_filter()
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
			local Entity = CL:GetItemEntityHandleByGUID(DATA[i])
			for index = 1, 3 do 
				local crystal_KeyName = CL:GetItemEntityCustomVarStr(Entity, "EquipHole"..index)
				if crystal_KeyName ~= "" then
					local ele = {};
					ele[1] = DATA[i];
					ele[2] = crystal_KeyName;
					ele[3] = subType;
					ele[4] = index;
					table.insert(self.ItemList, ele);
					table.insert(self.CrystalKeyNameList, ele);
				end
			end
		end	
	end
end

--筛选出背包里的宝石
function CrystalSynthesis:Crystal_filter()
	local DATA = self.ItemList;
	self.ItemList = {};
	for i = 1 , #DATA do 
        local KeyName = ""
		if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_KEYNAME) then
			KeyName = tostring(LuaRet);
		end
		if KeyName ~= "" then
			local index = KeyName:find("蕴魂石");
			if index ~= nil then 
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
end


function CrystalSynthesis:CreateUI(i,index)

	local _GUIHandle = 0
	local YOffset = 0
	local YInterval = 113
	local _Parent = self._listView
	_Parent = GUI:ButtonCreate(_Parent, "ItemBgBtn"..index, 1851000009, 10, YOffset + YInterval * (index -1))
	if _Parent ~= 0 then
		GUI:WndSetParam(_Parent, index)
		GUI:WndRegistScript(_Parent,RDWndBaseCL_mouse_lbUp, "CrystalSynthesis._ClickItem")
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrlBG",1850500016,20,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,66, 66)
	end	

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCtrl",0,22,22,64,64)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByGUID(_GUIHandle, "",  self.ItemList[i][1]);
	end 
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrlFront",1851000045, 15,46)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		-- GUI:WndSetSizeM(_GUIHandle,66, 66)
	end	
	
	local Name = ""
	local color_str = ""
	local temp = CL:GetItemTemplateHandleByKeyName(self.ItemList[i][2]) 
	if CL:GetItemTemplatePropByHandle(temp, ITEM_PROP_NAME) then
		Name = LuaRet
	end	
	local color = ""
	if CL:GetItemTemplatePropByHandle(temp, ITEM_PROP_COLOR) then
		color = LuaRet
	end	

	_GUIHandle = GUI:EditCreate(_Parent, "CrystalName",116,25,200,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false);
		GUI:WndSetTextColorM(_GUIHandle, RDCOLOR[color]);
		GUI:EditSetTextM(_GUIHandle, Name)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent, "site",116, 68,200,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, self.ItemList[i][4]);
		GUI:WndSetEnableM(_GUIHandle, false);
		GUI:WndSetTextColorM(_GUIHandle, RDCOLOR["WHITE"]);
		GUI:EditSetTextM(_GUIHandle, "镶嵌部位："..EQUIP[tonumber(self.ItemList[i][3])])
	end
end


--物品框点击回调事件function CrystalSynthesis._ClickItem(_Handle)
	for i = 1, 6 do 
		local handle = GetWindow(CrystalSynthesis.WndHandle, "item"..i);
		if handle ~= 0 then 
			GUI:ItemCtrlClearItemData(handle);
		end
		EditSetText(CrystalSynthesis.WndHandle, "name"..i, "");
	end
	local param = GUI:WndGetParam(_Handle);
	if CrystalSynthesis._saveHanle ~= 0 and CrystalSynthesis._saveHanle ~= nil then 
		GUI:ButtonSetIsActivePageBtn(CrystalSynthesis._saveHanle, false);
	end
	GUI:ButtonSetIsActivePageBtn(_Handle, true);
	CrystalSynthesis._saveHanle = _Handle;
    local _handle = GetWindow(_Handle, "ItemCtrl");
    if _handle ~= 0 then 
		local item_guid = RDItemCtrlGetGUIDataPropByType(_handle, nil, ITEMGUIDATA_ITEMGUID)
		if item_guid ~= 0 and item_guid ~= nil then
			
			local crystal_KeyName = CrystalSynthesis.CrystalKeyNameList[param][2];
			local Name = ""
			local color_str = ""
			local temp = CL:GetItemTemplateHandleByKeyName(crystal_KeyName) 
			if CL:GetItemTemplatePropByHandle(temp, ITEM_PROP_NAME) then
				Name = LuaRet
			end	
			local color = ""
			if CL:GetItemTemplatePropByHandle(temp, ITEM_PROP_COLOR) then
				color = LuaRet
			end	
			WndSetTextColorM(CrystalSynthesis.WndHandle, "desName", RDCOLOR[color]);
			EditSetText(CrystalSynthesis.WndHandle, "desName", crystal_KeyName);
			
			
			CrystalSynthesis:FillDesItemCtr(crystal_KeyName);
			--储存当前宝石类型
			local crystalType = crystal_KeyName:match("级(.+)");
			CrystalSynthesis.crystalType = crystalType;
			-- dbg("crystalType----------------"..CrystalSynthesis.crystalType)
			
			local str_index = crystal_KeyName:match("(.+)级");
			local index = tonumber(str_index);
			local groupRequireExp = EXP[index];
			local sign = 0
			local handle = GetWindow(_Handle, "site");
			if handle ~= 0 then 
				sign = GUI:WndGetParam(handle);
			end
			if sign ~= 0 then 
				local Entity = CL:GetItemEntityHandleByGUID(item_guid);
				local crystalExp = CL:GetItemEntityCustomVarInt(Entity, "crystalExp"..sign);
				if groupRequireExp ~= 0 and groupRequireExp ~= nil then
					local percentage = crystalExp/groupRequireExp;
					EditSetText(CrystalSynthesis.WndHandle, "progressNum", ""..crystalExp.." / "..groupRequireExp);
					local handle = GetWindow(CrystalSynthesis.WndHandle, "progressBar");
					if handle ~= 0 then 
						GUI:ImageSetDrawRect(handle,0,percentage,0,1);
					end
				end
			end
		end
    end
end	


function CrystalSynthesis:FillDesItemCtr(crystal_KeyName)
	local _handle = GetWindow(CrystalSynthesis.WndHandle, "desItem");
	if _handle ~= 0 then 
		RDItemCtrlSetGUIDataPropByKeyName(_handle, nil, crystal_KeyName, 1, false);
		-- self:OnEquipIn(_handle, item_guid);
	end
end


function CrystalSynthesis:OnEquipIn(_handle,item_guid)
	
end





function CrystalSynthesis._CrystalSelect(_handle)
	local intParam = GUI:WndGetParam(_handle);
	if intParam ~= 0 then 
		CrystalSynthesis.index = intParam;
	end
	local _GUIHandle = GUI:WndFindWindow(CrystalSynthesis.WndHandle, "CrystalSelWnd2")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(CrystalSynthesis.WndHandle, "CrystalSelWnd2.lua")
    end
end

function CrystalSynthesis:FillOriginItemCtr(item_id)
	local Name = ""
	if CL:GetItemTemplatePropByID(item_id, ITEM_PROP_KEYNAME) then 
		Name = LuaRet;
	end
	
	local index = CrystalSynthesis.index;
	local handle = GetWindow(self.WndHandle, "item"..index);
	if handle ~= 0 then 
		local flag = GUI:WndGetProperty(handle, "IsFilled")
		if flag ~= "1" then 
			-- if not CrystalSynthesis[Name] then 
				-- CrystalSynthesis[Name] = 0 
			-- end
			CrystalSynthesis[Name] = CrystalSynthesis[Name] + 1;
			GUI:WndAddProperty(handle, "IsFilled", "1");
		end
		RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
		local _ItemDataHandle = GUI:ItemCtrlGetGUIData(handle)
		if 0 ~= _ItemDataHandle then
			local icon = ""
			if CL:GetItemTemplatePropByID(item_id, ITEM_PROP_ICON) then 
				icon = LuaRet;
			end
			LuaArg = icon
			CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
			LuaArg = 0xFFFF
			CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
		end
	end
	
	--最标准写法
	if not CL:GetItemTemplatePropByID(item_id, ITEM_PROP_COLOR) then
		return
	end
	local color =  LuaRet;
	WndSetTextColorM(CrystalSynthesis.WndHandle, "name"..index, RDCOLOR[color]);
	EditSetText(CrystalSynthesis.WndHandle, "name"..index, Name);
	
end

function CrystalSynthesis:ClearOriginItemCtr()
	local _handle = GetWindow(self.WndHandle, "item2")	
	if _handle ~= 0 then
		GUI:ItemCtrlClearItemData(_handle)	
	end
	_handle = GetWindow(self.WndHandle, "name2")
	if _handle ~= 0 then 
		GUI:RichEditClear(_handle)
	end
	for i = 1 , 3 do 
		EditSetText(self.WndHandle,"gong_s"..i,"")
	end
end

function CrystalSynthesis:RefillOriginItemCtr(DATA)
	local keyname = DATA[1];
	local count = DATA[2];
	CrystalSynthesis.count = count;
	local _handle = GetWindow(self.WndHandle, "item2")	
	if _handle ~= 0 then
		GUI:ItemCtrlClearItemData(_handle)	
		RDItemCtrlSetGUIDataPropByKeyName(self.WndHandle, "item2",  keyname, count, false);
	end
end




function CrystalSynthesis._OneKeyInput(_handle)
	for i = 1, 6 do 
		local handle = GetWindow(CrystalSynthesis.WndHandle, "item"..i);
		if handle ~= 0 then 
			GUI:ItemCtrlClearItemData(handle);
		end
		EditSetText(CrystalSynthesis.WndHandle, "name"..i, "");
	end
	
	local DATA = {};
    if CL:GetPackageItemGUIDList() then
        DATA = LuaRet;
    end
	local fill_count = 0;
	for index = 1, 9 do 
		local findKeyname = index.."级"..CrystalSynthesis.crystalType;
		for i = 1 , #DATA do 
			local KeyName = ""
			if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_KEYNAME) then
				KeyName = tostring(LuaRet);
			end
			if KeyName == findKeyname then
				-- dbg("KeyName============="..KeyName)
				if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_ENTITY_AMOUNT) then
					local count = tonumber(LuaRet);
					-- dbg("count============="..count)
					for k = 1, count do 
						if fill_count > 6 then 
							return;
						end
						fill_count = fill_count + 1;
						--最标准写法
						if not CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_COLOR) then
							return
						end
						local color =  LuaRet;
						WndSetTextColorM(CrystalSynthesis.WndHandle, "name"..fill_count, RDCOLOR[color]);
						EditSetText(CrystalSynthesis.WndHandle, "name"..fill_count, ""..findKeyname);
						local handle = GetWindow(CrystalSynthesis.WndHandle, "item"..fill_count);
						if handle ~= 0 then 
							-- dbg("fill_count============================"..fill_count)
							RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
							local _ItemDataHandle = GUI:ItemCtrlGetGUIData(handle)
							if 0 ~= _ItemDataHandle then
								local icon = ""
								if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_ICON) then
									icon = tonumber(LuaRet);
								end
								LuaArg = icon
								CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
								LuaArg = 0xFFFF
								CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
							end
						end
						
					end
				end
			end	
		end
	end
end


function CrystalSynthesis._YunHunSmelt(_handle)
	dbg("---------------------------"..CrystalSynthesis.desItem_keyname)
	if CrystalSynthesis.count < 5 then 
		win_msg_up("数量不足5个,无法完成合成")
		return ""
	end
	local num = 0;
	local _handle = GetWindow(CrystalSynthesis.WndHandle, "input");
	if _handle ~= 0 then 
		num = GUI:EditGetInt(_handle);
	end
	if num == 0 then 
		win_msg_up("请输入所要炼化的数量");
		return
	end
	local check = 0;
	local hand = GetWindow(CrystalSynthesis.WndHandle, "Check");
	if hand ~= 0 then 
		local Is_true = GUI:CheckBoxGetCheck(hand)
		if Is_true then 
			check = 1;
		else
			check = 0;
		end
	end
	UI:Lua_SubmitForm("炼制表单", "Smelt_YunHun", CrystalSynthesis.desItem_keyname.."#"..num.."#"..check);
end

function CrystalSynthesis:RefillItemCtr2(item_guid)
	-- dbg("RefillItemCtr2----------------------------------------------")
	local _handle = GetWindow(self.WndHandle, "item2")	
	if _handle ~= 0 then
		GUI:ItemCtrlClearItemData(_handle)	
		if UI:Lua_Str2GUID(item_guid) then 
			item_guid = LuaRet
		end
		RDItemCtrlSetGUIDataPropByGUID(_handle, "",  item_guid);
	end
end
CrystalSynthesis:main()