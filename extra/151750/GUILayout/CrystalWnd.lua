CrystalWnd = {}
function CrystalWnd:main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"CrystalWnd",1851000051,400,64)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,697, 452)
	end
	
		_GUIHandle = GUI:ImageCreate(_Parent,"fireMagic",3020201000,150,45)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,150, 150)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetAnimateEnable(_GUIHandle, true, 100)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image1",1851000014,314,18)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,96, 96)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item1",0,332,36,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"name1",316,123,366,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"LineImg1",1850500023,128,157)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,466, 5)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image2",1851000014,125,173)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,96, 96)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"crystalItem1",0,143,191,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalWnd.EquipSelect")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"crystalBtn1",1850800004,137,186)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalWnd.EquipSelect")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,72, 72)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"seal1",1852000000,132,179)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,80, 80)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"crystalName1",122,279,141,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"LineImg2",1850500023,125,373)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,466, 5)
	end
	

	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image3",1851000014,314,172)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,96, 96)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"crystalItem2",0,332,190,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalWnd.EquipSelect")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"crystalBtn2",1850800004,326,185)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalWnd.EquipSelect")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,72, 72)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"seal2",1852000000,322,179)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,80, 80)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image4",1851000014,481,173)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,96, 96)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"crystalItem3",0,499,191,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalWnd.EquipSelect")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"crystalBtn3",1850800004,493,186)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalWnd.EquipSelect")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,72, 72)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"seal3",1852000000,490,179)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,80, 80)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"crystalName2",309,278,141,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"crystalName3",480,277,141,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"inlayCrystalBtn1",1850000307,127,312)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 238, 199, 150))
		GUI:WndSetTextM(_GUIHandle,"解 锁")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndAddProperty(_GUIHandle, "按钮功能", "解锁")
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalWnd.OnClick")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"inlayCrystalBtn2",1850000307,319,311)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 238, 199, 150))
		GUI:WndSetTextM(_GUIHandle,"解 锁")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndAddProperty(_GUIHandle, "按钮功能", "解锁")
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalWnd.OnClick")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"inlayCrystalBtn3",1850000307,482,310)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 238, 199, 150))
		GUI:WndSetTextM(_GUIHandle,"解 锁")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndAddProperty(_GUIHandle, "按钮功能", "解锁")
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalWnd.OnClick")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Upgrade",1850000307,322,390)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 238, 199, 150))
		GUI:WndRegistScript(_GUIHandle,1002, "CrystalWnd.Upgrade")
		GUI:WndSetTextM(_GUIHandle,"宝石升级")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,107, 47)
	end
	
	CrystalWnd:UIInit(_Parent)
end


--UI Logic Code Start
local UNSEAL_MONEY = 
{	--消耗类型1金币 2元宝
	{2, 1000},
	{2, 2000},
	{2, 3000},
}
CrystalWnd.WndHandle = 0
function CrystalWnd:UIInit(_GUIHandle)	
	CrystalWnd.WndHandle = _GUIHandle
	-- WndMoveToParentTop(_GUIHandle, "");
	handle = GUI:WndFindChildM(_GUIHandle, "item");
	if handle ~= 0 then
		RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
	end	
end	

function CrystalWnd:UpData(DATA)
	local item_guid = DATA[1];
	local handle = GetWindow(nil,"ForgeWnd3,CrystalWnd,item1")
	if handle ~= 0 then 
		GUI:ItemCtrlClearItemData(handle)
		GUI:ItemCtrlSetEffectImageID(handle, 0, 1.0)
		if UI:Lua_Str2GUID(item_guid) then 
			item_guid = LuaRet;
			RDItemCtrlSetGUIDataPropByGUID(handle, "",  item_guid);
			self:OnEquipIn(handle, item_guid)
		end
	end
end




function CrystalWnd:OnEquipIn(_handle,item_guid)
	--显示装备Name和精炼等级
	local refineLevel = 0;		
	if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_EQUIP_REFINELEVEL) then
		refineLevel = tonumber(LuaRet);
	else
		msg("客户端获取精炼等级失败") 	
		return false
	end

	local name = ""
	if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_NAME) then
		name = tostring(LuaRet);
	end
	
	local color_str = ""
	if not CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_COLOR) then
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
	
	local handle = GetWindow(CrystalWnd.WndHandle,"name1")
	if handle ~= 0 then
		GUI:RichEditClear(handle)
		GUI:RichEditAppendString(handle, color_str..name.."#COLOREND# #COLORCOLOR_GREENG#+"..refineLevel.."#COLOREND#")
	end	
	
	--根据强化等级设置显示特效
	if refineLevel > 0 then
		local _AnimateID = nil
		if refineLevel <= 10 then
			_AnimateID = 1096000100;
		elseif refineLevel <= 15 then
			_AnimateID = 1096000200;
		else
			_AnimateID = 1096000300;
		end
		if _AnimateID ~= nil then
			GUI:ItemCtrlSetEffectImageID(_handle, _AnimateID, 1.5)
		end
	end
	
	for i = 1, 3 do 

		
		local _handle = GetWindow(CrystalWnd.WndHandle, "crystalItem"..i)
		if _handle ~= 0 then 
			GUI:ItemCtrlClearItemData(_handle);
		end	
		
		_handle = GetWindow(CrystalWnd.WndHandle, "crystalBtn"..i)
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end

		_handle = GetWindow(CrystalWnd.WndHandle, "seal"..i)
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, true);
		end
		
		local _handle = GetWindow(self.WndHandle, "crystalName"..i)
		if _handle ~= 0 then 
			GUI:RichEditClear(_handle)
		end
		
		_handle = GetWindow(CrystalWnd.WndHandle, "inlayCrystalBtn"..i);
		if _handle ~= 0 then 
			GUI:WndSetTextM(_handle, "解 锁");
			GUI:WndAddProperty(_handle, "按钮功能", "解锁")
		end
	end
	
	
	
	local Entity = CL:GetItemEntityHandleByGUID(item_guid)
	local Gem_holeNum = CL:GetItemEntityCustomVarInt(Entity,"Gem_holeNum");
	dbg(""..Gem_holeNum)
	for i = 1, Gem_holeNum do 
		local _handle = GetWindow(CrystalWnd.WndHandle, "seal"..i)
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false);
		end
		local Gem_keyName = CL:GetItemEntityCustomVarStr(Entity,"EquipHole"..i);
		if Gem_keyName == "" then 
			_handle = GetWindow(CrystalWnd.WndHandle, "inlayCrystalBtn"..i);
			if _handle ~= 0 then 
				GUI:WndSetTextM(_handle, "镶 嵌");
				GUI:WndAddProperty(_handle, "按钮功能", "镶嵌")
			end
		else
			_handle = GetWindow(CrystalWnd.WndHandle, "crystalBtn"..i);
			if _handle ~= 0 then 
				GUI:WndSetVisible(_handle, false);
			end
			RDItemCtrlSetGUIDataPropByKeyName(CrystalWnd.WndHandle, "crystalItem"..i, Gem_keyName, 0, true)
			local _WndHandle = GUI:WndFindChildM(CrystalWnd.WndHandle, "crystalItem"..i)
			if 0 ~= _WndHandle then
				local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)
				if 0 ~= _ItemDataHandle then
					LuaArg = true
					CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)
					LuaArg = 0xFFFF
					CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
				end
			end
			-- _handle = GetWindow(CrystalWnd.WndHandle, "crystalItem"..i);
			-- if _handle ~= 0 then 
				
			-- end
			local TempID = CL:GetItemTemplateHandleByKeyName(Gem_keyName)
			if not CL:GetItemTemplatePropByHandle(TempID, ITEM_PROP_NAME) then
				dbg("ITEM_PROP_NAME 错误false")
				return
			end
			local Name = LuaRet
			local color_str = ""
			if not CL:GetItemTemplatePropByHandle(TempID, ITEM_PROP_COLOR) then
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
			_handle = GetWindow(self.WndHandle, "crystalName"..i)
			if _handle ~= 0 then 
				GUI:RichEditClear(_handle)
				GUI:RichEditAppendString(_handle, color_str..Name.."#COLOREND#")
			end
			_handle = GetWindow(self.WndHandle, "inlayCrystalBtn"..i);
			if _handle ~= 0 then 
				GUI:WndSetTextM(_handle, "摘 除");
				GUI:WndAddProperty(_handle, "按钮功能", "摘除")
			end
		end
		local param = GUI:WndGetProperty(_handle, "按钮功能")
		dbg(param)

	end
end



function CrystalWnd:FillItemCtr(item_guid)
	local index = CrystalWnd.index;
	local _handle = GetWindow(self.WndHandle, "crystalBtn"..index);
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle, false);
	end
	RDItemCtrlSetGUIDataPropByGUID(self.WndHandle, "crystalItem"..index,  item_guid);
	
	if not CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_NAME) then
		dbg("ITEM_PROP_NAME 错误false")
		return
	end
	local Name = LuaRet
	local color_str = ""
	if not CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_COLOR) then
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
	_handle = GetWindow(self.WndHandle, "crystalName"..index)
	if _handle ~= 0 then 
		GUI:RichEditClear(_handle)
		GUI:RichEditAppendString(_handle, color_str..Name.."#COLOREND#")
	end
	
end






function CrystalWnd.EquipSelect(_handle)
	local intParam = GUI:WndGetParam(_handle);
	if intParam ~= 0 then 
		CrystalWnd.index = intParam;
	end
	local _GUIHandle = GUI:WndFindWindow(CrystalWnd.WndHandle, "CrystalSelWnd")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(CrystalWnd.WndHandle, "CrystalSelWnd.lua")
    end
end

function CrystalWnd.OnClick(_handle)
	local handle = GetWindow(nil,"ForgeWnd3,CrystalWnd,item1")	
	local item_guid1 = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid1) == 0 or item_guid1 == nil then
		msg("请放入装备")
		return
	end
	if UI:Lua_GUID2Str(item_guid1) then 
		item_guid1 = LuaRet
	end

	
	local intParam = GUI:WndGetParam(_handle);
	dbg(""..intParam);
	local strParam = GUI:WndGetProperty(_handle, "按钮功能");
	dbg(""..strParam);
	
	
	if strParam == "解锁" then
		CrystalWnd.item_guid1 = item_guid1;
		CrystalWnd.intParam = intParam;
		local money = ""
		if UNSEAL_MONEY[intParam][1] == 1 then 
			money = "金币"
		elseif UNSEAL_MONEY[intParam][1] == 2 then 
			money = "元宝"
		end
		local script = "CrystalWnd.unseal()"
		MessageBox( 1, "		开启"..intParam.."号镶嵌孔需要消耗"..UNSEAL_MONEY[intParam][2]..money, script)
		
	elseif strParam == "镶嵌" then
		handle = GetWindow(nil,"ForgeWnd3,CrystalWnd,crystalItem"..intParam)	
		local item_guid2 = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
		if tonumber(item_guid2) == 0 or item_guid2 == nil then
			msg("请放入宝石")
			return
		end

		if UI:Lua_GUID2Str(item_guid2) then 
			item_guid2 = LuaRet
		end
		UI:Lua_SubmitForm("宝石表单", "InlayCrystal", ""..item_guid1.."#"..intParam.."#"..item_guid2)
	elseif strParam == "摘除" then
		UI:Lua_SubmitForm("宝石表单", "RemoveCrystal", ""..item_guid1.."#"..intParam)
	end
	-- UI:Lua_SubmitForm("注灵表单", "YunHun_item", ""..item_guid1.."#"..item_guid2)
end

function CrystalWnd.unseal()
	UI:Lua_SubmitForm('宝石表单', 'Deblocking', ""..CrystalWnd.item_guid1.."#"..CrystalWnd.intParam)
end


function CrystalWnd:Deblocking(index)
	dbg(""..index)
	local _handle = GetWindow(CrystalWnd.WndHandle, "seal"..index);
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle, false);
	end
	_handle = GetWindow(CrystalWnd.WndHandle, "inlayCrystalBtn"..index);
	if _handle ~= 0 then 
		GUI:WndSetTextM(_handle, "镶 嵌");
		GUI:WndAddProperty(_handle, "按钮功能", "镶嵌");
	end
end


function CrystalWnd.Upgrade(_handle)
	
end


function CrystalWnd:ClearItemCtr2()
	local _handle = GetWindow(self.WndHandle, "item2")	
	if _handle ~= 0 then
		GUI:ItemCtrlClearItemData(_handle)	
	end
	_handle = GetWindow(self.WndHandle, "itemBtn")
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle, true);
	end
	_handle = GetWindow(self.WndHandle, "name2")
	if _handle ~= 0 then 
		GUI:RichEditClear(_handle)
	end
	for i = 1 , 3 do 
		EditSetText(self.WndHandle,"edit_gong"..i,"")
		EditSetText(self.WndHandle,"gong_s"..i,"")
	end
	EditSetText(self.WndHandle, "gold", "")
end

function CrystalWnd:RefillItemCtr2(item_guid)
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




function CrystalWnd.zhulsm()
	local _GUIHandle = GUI:WndFindWindow(CrystalWnd.WndHandle, "QianghSMWnd")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(CrystalWnd.WndHandle, "QianghSMWnd.lua")
    end

	local txt = "1.双击使用魂石精华可以获得魂力\r\n\r\n"
		txt = txt.."2.将魂力注入到装备中，可以提高装备的战斗属性\r\n\r\n"
		txt = txt.."3.魂石精华可以通过活动、怪物掉落、商城购买获得"

    local _QianghSMWnd = GUI:WndFindWindow(CrystalWnd.WndHandle, "QianghSMWnd")
    if _QianghSMWnd ~= 0 then
		local Edithandle = GUI:WndFindWindow(_QianghSMWnd, "Edit0")
    	if Edithandle ~= 0 then
        	GUI:EditSetTextM(Edithandle,txt)
    	end    
    end
end

CrystalWnd:main()