ZhuanyWnd = {}
function ZhuanyWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"ZhuanyWnd",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent, "fireMagic", 3020201000, 37, 52)
    if _GUIHandle ~= 0 then
    	GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"orig_image1",1806700003,81,159)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,70, 19)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"dest_image1",1806700004,321,159)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,67, 19)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item11",1806700028,79,194)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,74, 74)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item12",1806700028,318,194)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,74, 74)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item1",0,84,199,64,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 64)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item2",0,323,199,64,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 64)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_28",1806700024,217,209)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,37, 46)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"atm",0,212,138)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,43, 43)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"gold_need",134,373,60,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"消耗金币：")
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"gold_back",1806700023,211,374)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetColor(_GUIHandle, 4290950816)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"gold",224,375,114,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"zhuanyi",1806700041,189,417)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ZhuanyWnd.zhuany")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,126, 45)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"zhuanyism",1806700018,47,452)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,75, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"msg",100,360,220,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293935424)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    ZhuanyWnd.UIInit(_Parent)
end

--UI Logic Code Start
ZhuanyWnd.WndHandle = 0
ZhuanyWnd.OrigHaveEquip = false
ZhuanyWnd.DestHavaEquip = false
ZhuanyWnd.canBeTrans = false
ZhuanyWnd.DelayTaskId = nil

function ZhuanyWnd.UIInit(_GUIHandle)
	ZhuanyWnd.WndHandle = _GUIHandle	
	local handle = GetWindow(_GUIHandle,"shuom")
	if handle ~= 0 then
		GUI:RichEditAppendString(handle, "#SELECT#转移说明#SELECTEND#")
	end
	
	local handle = GetWindow(_GUIHandle,"zhuanyism")
	if handle ~= 0 then
		GUI:WndSetHintWidth(handle, 300)
		local txt = "转移说明：                                        "
		txt = txt.."1.目标装备强化等级必须为零，原始装备强化等级需要  大于零                                            "
		txt = txt.."2.目标装备的可强化次数不能小于原始装备的强化等级  "
		txt = txt.."3.强化转移不能转移注灵属性"
		GUI:WndSetHint(handle, txt)
	end
	
	local hanlde = 0
	for i = 1, 2 do
		handle = GetWindow(_GUIHandle, "item" .. i)
		GUI:WndSetParam(handle, i)
		GUI:WndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "ZhuanyWnd.clickItem")
		RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
	end
end 

function ZhuanyWnd.clickItem(_handle)
	local itemNum = GUI:WndGetParam(_handle)
	local handle = 0
	if itemNum == 1 then
		handle = GetWindow(ZhuanyWnd.WndHandle, "item1")
		ZhuanyWnd.OrigHaveEquip = false
	else
		handle = GetWindow(ZhuanyWnd.WndHandle, "item2")
		ZhuanyWnd.DestHavaEquip = false
	end
	local editHandle = GetWindow(ZhuanyWnd.WndHandle, "gold")
	if editHandle ~= 0 then
		GUI:EditSetTextM(editHandle, "")
	end
	GUI:ItemCtrlClearItemData(_handle)
	ZhuanyWnd.canBeTrans = false
end

function ZhuanyWnd.zhuany(_handle)
	if ZhuanyWnd.canBeTrans then
		local handle1 = GetWindow(0, "ForgeWnd,ZhuanyWnd,item1")		--获取原始物品栏窗口句柄
		local handle2 = GetWindow(0, "ForgeWnd,ZhuanyWnd,item2")		--获取目标物品栏窗口句柄
		local item1_guid = RDItemCtrlGetGUIDataPropByType(handle1, nil, ITEMGUIDATA_ITEMGUID)
		local item2_guid = RDItemCtrlGetGUIDataPropByType(handle2, nil, ITEMGUIDATA_ITEMGUID)
		UI:Lua_GUID2Str(item1_guid)
		local item1_guidstr = LuaRet
		UI:Lua_GUID2Str(item2_guid)
		local item2_guidstr = LuaRet
		local str = "" .. item1_guidstr .. "," .. item2_guidstr
		UI:Lua_SubmitForm("转移表单", "ZhuanyPreview", str)
		GUI:ItemCtrlClearItemData(handle1)
		GUI:ItemCtrlClearItemData(handle2)
		EditSetText(ZhuanyWnd.WndHandle,"gold","")
	elseif	ZhuanyWnd.DestHavaEquip == false then
		ZhuanyWnd.msg_up("请放入目标装备")
	else 
		ZhuanyWnd.msg_up("请放入原始装备")
	end
end

function ZhuanyWnd.Zhuany_item(item, jl_level)
	if UI:Lua_Str2GUID(item) then
		item = LuaRet
	end
	local handle = 0
	if tostring(jl_level) == "0" then
		handle = GetWindow(0, "ForgeWnd,ZhuanyWnd,item2")
		ZhuanyWnd.DestHavaEquip = true
		ZhuanyWnd.WndParam1 = ForgeWnd.WndParam
	else 
		handle = GetWindow(0, "ForgeWnd,ZhuanyWnd,item1")
		ZhuanyWnd.OrigHaveEquip = true
		ZhuanyWnd.WndParam2 = ForgeWnd.WndParam
	end
	GUI:ItemCtrlClearItemData(handle)
	GUI:ItemCtrlSetEffectImageID(handle, 0, 1.0)
	--RDItemCtrlSetGUIDataPropByGUID(handle, nil, item)	
	ForgeWnd.RDItemCtrlSetGUIDataPropByGUIDEx(handle, nil, item)
	--根据强化等级设置显示特效
	local Entity = CL:GetItemEntityHandleByGUID(item)
	local q_level = 0
	if UI:Lua_GetItemEntityPropByHandle(Entity,ITEM_PROP_EQUIP_REFINELEVEL) then
		q_level = tonumber(LuaRet)
		if q_level > 0 then
			local _AnimateID = nil
			if q_level <= 5 then
				_AnimateID = 1096000100;
			elseif q_level <= 10 then
				_AnimateID = 1096000200;
			else
				_AnimateID = 1096000300;
			end
			if _AnimateID ~= nil then
				GUI:ItemCtrlSetEffectImageID(handle, _AnimateID, 1.5)
			end
		end
	end
	ZhuanyWnd.Zhuany_ready()
end 

function ZhuanyWnd.Zhuany_ready()	
	if ZhuanyWnd.OrigHaveEquip == true and ZhuanyWnd.DestHavaEquip == true then
		ZhuanyWnd.canBeTrans = true
		local handle1 = GetWindow(0, "ForgeWnd,ZhuanyWnd,item1")		--获取原始物品栏窗口句柄
		local handle2 = GetWindow(0, "ForgeWnd,ZhuanyWnd,item2")		--获取目标物品栏窗口句柄
		local item1_guid = RDItemCtrlGetGUIDataPropByType(handle1, nil, ITEMGUIDATA_ITEMGUID)
		local item2_guid = RDItemCtrlGetGUIDataPropByType(handle2, nil, ITEMGUIDATA_ITEMGUID)
		UI:Lua_GUID2Str(item1_guid)
		local item1_guidstr = LuaRet
		UI:Lua_GUID2Str(item2_guid)
		local item2_guidstr = LuaRet
		local str = "" .. item1_guidstr .. "," .. item2_guidstr
		UI:Lua_SubmitForm("转移表单", "setZhuanyGold", str)
	end
end

function ZhuanyWnd.goldConsumption(gold)
	local jb , bjb = 0 , 0
	if UI:Lua_GetPlayerSelfProperty64(5) then 
		bjb = LuaRet
	end    
	if UI:Lua_GetPlayerSelfProperty64(4) then 
		jb= LuaRet + bjb
	end
	local handle = GetWindow(0, "ForgeWnd,ZhuanyWnd,gold")
	EditSetText(ZhuanyWnd.WndHandle,"gold",""..gold)
	if jb < gold then
		local handle = GetWindow(ZhuanyWnd.WndHandle,"gold")
		GUI:EditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
	else
		local handle = GetWindow(ZhuanyWnd.WndHandle,"gold")
		GUI:EditSetTextColor(handle, MakeARGB(255, 194, 182, 160))
	end	
end

function ZhuanyWnd.ClearZhuanyMsg()
	
	for i = 1 , 6 do 
		GUI:WndSetVisible(ForgeWnd._pg[i],true)
	end
	GUI:WndSetEnableM(ForgeWnd._pg[5],false)
	for i = 1 , #ForgeWnd.itemlist do 
		local handle = GetWindow(0,"ForgeWnd,itemback"..i)
		GUI:ItemCtrlClearItemData(handle)
	end
	ForgeWnd.updatePgBtn()
	ForgeWnd.forge_data()
	
	for i = 1, 2 do
		local handle = GetWindow(ZhuanyWnd.WndHandle, "item" .. i)
		if handle ~= 0 then
			GUI:ItemCtrlClearItemData(handle)
		end
	end
	EditSetText(ZhuanyWnd.WndHandle,"gold","")
	ZhuanyWnd.OrigHaveEquip = false
	ZhuanyWnd.DestHavaEquip = false
	ZhuanyWnd.canBeTrans = false
	local handle = GetWindow(ZhuanyWnd.WndHandle, "zhuanyi")
	local color = MakeARGB(255, 255, 0, 0)
	ZhuanyWnd.msg_up("转移成功")
end

function ZhuanyWnd.msg_up(str)
	local _handle = GUI:WndFindChildM(ZhuanyWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if ZhuanyWnd.DelayTaskId ~= nil then
		CL:DelDelayTask(ZhuanyWnd.DelayTaskId)
		ZhuanyWnd.DelayTaskId = nil
	end
	ZhuanyWnd.DelayTaskId = CL:AddDelayTask("ZhuanyWnd.clear()", 3000, 1)
end	

function ZhuanyWnd.clear()
	local _handle = GUI:WndFindChildM(ZhuanyWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end

ZhuanyWnd.main()