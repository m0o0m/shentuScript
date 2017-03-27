ZhulWnd = {}
function ZhulWnd:main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"ZhulWnd",1851000051,400,64)
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
	
	_GUIHandle = GUI:ImageCreate(_Parent,"arrow",1800000366,282,66)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,43, 58)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"arrowMagic",2147483647,274,66)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,43, 58)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetAnimateEnable(_GUIHandle, true, 100)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"arrow2",1800000366,295,240)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,43, 58)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"arrowMagic2",2147483647,287,240)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,43, 58)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"gong_image1",1802400023,376,29)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,225, 149)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"title_back1",1851000056,409,40)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,153, 30)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"title1",442,40,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"当前蕴魂")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,223,144,58))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong4",400,69,230,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,255,0,0))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong5",390,105,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong6",390,140,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s4",491,69,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s5",491,105,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s6",490,140,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image1",1851000014,123,46)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,96, 96)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item1",0,141,64,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"name1",115,159,266,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"LineImg1",1850500023,128,191)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,466, 5)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image2",1851000014,125,224)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,96, 96)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item2",0,143,242,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ZhulWnd.EquipSelect")
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"itemBtn",1850800004,137,237)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,72, 72)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ZhulWnd.EquipSelect")
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"name2",116,332,266,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		
	end
	
	

	
	_GUIHandle = GUI:ImageCreate(_Parent,"gong_image2",1802400023,378,212)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,225, 149)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"title_back2",1851000056,411,223)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,153, 30)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"title2",444,223,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"概率附加")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,223,144,58))
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong1",392,252,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong2",392,288,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong3",392,323,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s1",493,252,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s2",493,288,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s3",492,323,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"LineImg2",1850500023,125,370)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,466, 5)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"gold_need",124,390,104,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"消耗金币：")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"gold_back",1850300005,227,393)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,37, 25)
		GUI:ImageSetColor(_GUIHandle, 4290950816)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"gold",276,390,99,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"zhuling",1850000307,474,390)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "ZhulWnd.zhul")
		GUI:WndSetTextM(_GUIHandle,"蕴 魂")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,223,144,58))
	end
	
	ZhulWnd:UIInit(_Parent)
end


--UI Logic Code Start
local miaos = 
{
	[3] = "生命上限: ",
	[7] = "物理防御: ",
	[9] = "魔法防御: ",
	[11] = "物理攻击:",
	[13] = "魔法攻击:",
	[15] = "道术攻击:", 
}
local EDIT_COLOR =
{
	["低级"] = {0xFFffffff, 0xFF00ff00, 0xFF0000ff},
	["中级"] = {0xFF00ff00, 0xFF00ff00, 0xFFA020F0},
	["高级"] = {0xFF00ff00, 0xFFA020F0, 0xFFFFA500},
}

ZhulWnd.WndHandle = 0
ZhulWnd.job = 0
ZhulWnd.DelayTaskId = nil
function ZhulWnd:UIInit(_GUIHandle)	
	ZhulWnd.WndHandle = _GUIHandle
	-- WndMoveToParentTop(_GUIHandle, "");
	handle = GUI:WndFindChildM(_GUIHandle, "item");
	if handle ~= 0 then
		RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
	end	
end	

function ZhulWnd:UpData(DATA)
	local item_guid = DATA[1];
	
	for i = 4 , 6 do 
		EditSetText(ZhulWnd.WndHandle,"edit_gon"..i,"")
		EditSetText(ZhulWnd.WndHandle,"gong_"..i,"")
	end
	

	local handle = GetWindow(nil,"ForgeWnd2,ZhulWnd,item1")
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




function ZhulWnd:OnEquipIn(_handle,item_guid)
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
	
	local handle = GetWindow(ZhulWnd.WndHandle,"name1")
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
	
	local Entity = CL:GetItemEntityHandleByGUID(item_guid)
	local att_prop_name = CL:GetItemEntityCustomVarInt(Entity,"_da1")
	if att_prop_name ~= 0 then 
		
		local yunhun_keyname = CL:GetItemEntityCustomVarStr(Entity,"yunhun_keyname")
		local yunhun_random_index = CL:GetItemEntityCustomVarInt(Entity,"yunhun_random")
		-- dbg("yunhun_keyname=="..yunhun_keyname..";yunhun_random_index=="..yunhun_random_index)
		local index_str = yunhun_keyname:sub(1,6);
		EditSetTextColor(ZhulWnd.WndHandle, "gong_s5", EDIT_COLOR[index_str][yunhun_random_index]);
		EditSetTextColor(ZhulWnd.WndHandle, "edit_gong5", EDIT_COLOR[index_str][yunhun_random_index]);
		EditSetText(ZhulWnd.WndHandle, "edit_gong4", "")
		EditSetText(ZhulWnd.WndHandle, "edit_gong5", miaos[att_prop_name])
		if att_prop_name == 3 then 
			att_prop_value = CL:GetItemEntityCustomVarInt(Entity,"_dv1")
			EditSetText(ZhulWnd.WndHandle, "gong_s5", att_prop_value)
			
		else
			local att_prop_min = CL:GetItemEntityCustomVarInt(Entity,"_dv1")
			local att_prop_max = CL:GetItemEntityCustomVarInt(Entity,"_dv2")
			EditSetText(ZhulWnd.WndHandle, "gong_s5", ""..att_prop_min.." - "..att_prop_max)
		end
		
	else
		EditSetText(ZhulWnd.WndHandle, "edit_gong4", "当前装备还未蕴魂")
		EditSetText(ZhulWnd.WndHandle, "edit_gong5", "")
		EditSetText(ZhulWnd.WndHandle, "gong_s5", "")
	end
	
	
end



function ZhulWnd:FillItemCtr(item_guid)
	
	local _handle = GetWindow(self.WndHandle, "itemBtn")
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle, false);
	end
	RDItemCtrlSetGUIDataPropByGUID(self.WndHandle, "item2",  item_guid);
	
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
	_handle = GetWindow(self.WndHandle, "name2")
	if _handle ~= 0 then 
		GUI:RichEditClear(_handle)
		GUI:RichEditAppendString(_handle, color_str..Name.."#COLOREND#")
	end
	
	for i = 1 , 3 do 
		EditSetText(self.WndHandle,"edit_gong"..i,"")
		EditSetText(self.WndHandle,"gong_s"..i,"")
	end
	
	local Entity = CL:GetItemEntityHandleByGUID(item_guid)

	local att_name = CL:GetItemEntityCustomVarInt(Entity, "_da1")
	-- dbg('att_name******************************'..att_name)
	if att_name == 0 or (not miaos[att_name]) then 
		dbg("此蕴魂石不含有属性")
		return
	end
	local index_str = Name:sub(1,6);
	local index = 1;
	if att_name == 3 then 
		
		for i = 1, 3 do 
			local att_value = CL:GetItemEntityCustomVarInt(Entity, "_dv"..index)
			index = index + 1;
			EditSetText(self.WndHandle, "edit_gong"..i, miaos[att_name])
			EditSetText(self.WndHandle, "gong_s"..i, ""..att_value)
			
			EditSetTextColor(self.WndHandle, "edit_gong"..i, EDIT_COLOR[index_str][i])
			EditSetTextColor(self.WndHandle, "gong_s"..i, EDIT_COLOR[index_str][i])
			
		end
	else
		for i = 1, 3 do 
			local att_value_min = CL:GetItemEntityCustomVarInt(Entity, "_dv"..index)
			index = index + 1;
			local att_value_max = CL:GetItemEntityCustomVarInt(Entity, "_dv"..index)
			index = index + 1;
			EditSetText(self.WndHandle, "edit_gong"..i, miaos[att_name])
			EditSetText(self.WndHandle, "gong_s"..i, ""..att_value_min.." - "..att_value_max)
			EditSetTextColor(self.WndHandle, "edit_gong"..i, EDIT_COLOR[index_str][i])
			EditSetTextColor(self.WndHandle, "gong_s"..i, EDIT_COLOR[index_str][i])
			-- EditSetTextColor(self.WndHandle, "gong_s"..i, 0xFFffffff)
		end
	end
	
	local gold_consume = CL:GetItemEntityCustomVarInt(Entity, "yunhun_consume")
	EditSetText(self.WndHandle, "gold", ""..gold_consume)

end






function ZhulWnd.EquipSelect(_handle)
	local _GUIHandle = GUI:WndFindWindow(ZhulWnd.WndHandle, "ZhulSelWnd")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
		whoOpenZhulSelWnd = 1;
        UI:Lua_OpenWindow(ZhulWnd.WndHandle, "ZhulSelWnd.lua")
    end
end


function ZhulWnd.zhul(_handle)
	local handle = GetWindow(nil,"ForgeWnd2,ZhulWnd,item1")	
	local item_guid1 = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid1) == 0 or item_guid1 == nil then
		msg("请放入需要强化的装备")
		return
	end
	handle = GetWindow(nil,"ForgeWnd2,ZhulWnd,item2")	
	local item_guid2 = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid2) == 0 or item_guid2 == nil then
		msg("请放入蕴魂石")
		return
	end
	if UI:Lua_GUID2Str(item_guid1) then 
		item_guid1 = LuaRet
	end
	if UI:Lua_GUID2Str(item_guid2) then 
		item_guid2 = LuaRet
	end
	
	UI:Lua_SubmitForm("注灵表单", "YunHun_item", ""..item_guid1.."#"..item_guid2)
	-- dbg("item_guid1=============="..item_guid1..";item_guid2======"..item_guid2);
end


function ZhulWnd:ClearItemCtr2()
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

function ZhulWnd:RefillItemCtr2(item_guid)
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




function ZhulWnd.zhulsm()
	local _GUIHandle = GUI:WndFindWindow(ZhulWnd.WndHandle, "QianghSMWnd")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(ZhulWnd.WndHandle, "QianghSMWnd.lua")
    end

	local txt = "1.双击使用魂石精华可以获得魂力\r\n\r\n"
		txt = txt.."2.将魂力注入到装备中，可以提高装备的战斗属性\r\n\r\n"
		txt = txt.."3.魂石精华可以通过活动、怪物掉落、商城购买获得"

    local _QianghSMWnd = GUI:WndFindWindow(ZhulWnd.WndHandle, "QianghSMWnd")
    if _QianghSMWnd ~= 0 then
		local Edithandle = GUI:WndFindWindow(_QianghSMWnd, "Edit0")
    	if Edithandle ~= 0 then
        	GUI:EditSetTextM(Edithandle,txt)
    	end    
    end
end

ZhulWnd:main()