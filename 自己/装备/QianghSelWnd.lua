QianghSelWnd = {}
function QianghSelWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"QianghSelWnd",0,150,18)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    -- _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    -- if _GUIHandle ~= 0 then
         -- GUI:WndSetSizeM(_GUIHandle,380, 506)
    -- end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,28,55)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,324, 426)
    end

    -- _GUIHandle = GUI:EditCreate(_Parent,"Edit0",154,26,100,20)
    -- if _GUIHandle ~= 0 then
        -- GUI:EditSetTextM(_GUIHandle,"选择装备")
		-- GUI:WndSetEnableM(_GUIHandle, false)
    -- end

    -- _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000385,328, 8)
    -- if _GUIHandle ~= 0 then
        -- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "QianghSelWnd.Close")
    -- end

    _GUIHandle = GUI:ImageCreate(_Parent,"Edit1Bg",1851000023,10,452)
    if _GUIHandle ~= 0 then
    end

     -- _GUIHandle = GUI:EditCreate(_Parent,"Edit1",114,460,300,20)
    -- if _GUIHandle ~= 0 then
        -- GUI:EditSetTextM(_GUIHandle,"选择要强化的装备")
		-- GUI:WndSetEnableM(_GUIHandle, false)
    -- end


    QianghSelWnd.UIInit(_Parent)
end

--UI Logic Code Start
QianghSelWnd.WndHandle = 0
QianghSelWnd.ClipWndHandle = 0
QianghSelWnd.itemlist = {}
function QianghSelWnd.UIInit(_Handle)
    QianghSelWnd.WndHandle = _Handle
	
    local BgImg = GUI:WndFindWindow(_Handle, "BgImage")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850700035, 1850700037, 1850700041, 1850700043, 1850700039, 1850700036, 1850700042, 1850700038, 1850700040)
    end 

     local BgImg1 = GUI:WndFindWindow(_Handle, "BgImage1")
    if BgImg1 then
        GUI:ImageSetAroundImage(BgImg1, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
    end 

  --[[  for i = 1, 28 do
        _Handle = GUI:WndFindChildM(_Handle,"SelItemCtrl" .. i)
        if _Handle ~= 0 then
            GUI:ItemCtrlSetIconSize(_Handle,64,64)
            GUI:ItemCtrlClearItemData(_Handle)
            RDItemCtrlSetGUIDataPropByType(_Handle, nil, ITEMGUIDATA_INVALIDATE, true)
        end
    end --]]
	
	local _ClipWndHandle = GUI:WndCreateWnd(_Handle,"QianghSelClipWnd",0,2,66)
	if _ClipWndHandle then
		GUI:WndSetFlagsM(_ClipWndHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(_ClipWndHandle,340 ,400)
		QianghSelWnd.ClipWndHandle = _ClipWndHandle
	end
	
	local package_data = {}
    if CL:GetPackageItemGUIDList() then
        package_data = LuaRet
    end
    
	local equip_data = {}
    if UI:Lua_GetPlayerSelfEquipData() then
        if type(LuaRet) ~= "number" then
            equip_data = LuaRet
        end
    end

	-- 组合 身上装备 和 背包装备
	QianghSelWnd.itemlist = {}
	for i = 1, #equip_data do
		table.insert(QianghSelWnd.itemlist, equip_data[i])
	end
	
	for i = 1, #package_data do
		table.insert(QianghSelWnd.itemlist, package_data[i])
	end
	
    QianghSelWnd.item_filter()
    QianghSelWnd.forge_data()
end



QianghSelWnd.handle = {"QianghWnd","ZhuanyWnd","ZhulWnd","Zhul_hs"}
QianghSelWnd.itemForm= {"强化表单","转移表单","注灵表单","注灵回收表单"}
function QianghSelWnd.clickItem(item_guid)    
    if UI:Lua_GUID2Str(item_guid) then
         UI:Lua_SubmitForm(QianghSelWnd.itemForm[1], "item_set", LuaRet)
    end           
end 

function QianghSelWnd.item_filter()
    local data = QianghSelWnd.itemlist
    QianghSelWnd.itemlist = {}
    local a = 1
    for i = 1 , #data do 
        local Temp = CL:GetItemTemplateHandleByGUID(data[i])
        local Type = 0
        local subType = 0
        if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_TYPE) then
            Type = tonumber(LuaRet)     
        end
        if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_SUBTYPE) then
            subType = tonumber(LuaRet)      
        end
        if Type == 1 and subType ~= 12 then 
            QianghSelWnd.itemlist[a] = data[i]
            a = a + 1
            CL:Log("data[i] = "..data[i].."Type = "..Type.."subType"..subType)
        end 
    end
end

function QianghSelWnd.forge_data()
	CL:Log("size = "..tostring(#QianghSelWnd.itemlist))
	local size = #QianghSelWnd.itemlist
    for i = 1, size do 
        local handle = GUI:WndFindChildM(QianghSelWnd.ClipWndHandle, "SelItemCtrl"..i)
        GUI:ItemCtrlClearItemData(handle)
    end
 
    for i = 1 , size do 
		QianghSelWnd.CreateUI(i)
        local handle = GUI:WndFindChildM(QianghSelWnd.ClipWndHandle, "SelItemCtrl"..i)
        CL:Log("QianghSelWnd,itemback"..i.." = "..handle.." QianghSelWnd.itemlist[index] = "..QianghSelWnd.itemlist[i])
        if handle == 0 or QianghSelWnd.itemlist[i] == nil then
            return
        end
        CL:Log("forge_data".."开始设置"..QianghSelWnd.itemlist[i])
		dbg("handle = "..handle)
        QianghSelWnd.RDItemCtrlSetGUIDataPropByGUIDEx(handle, nil, QianghSelWnd.itemlist[i])
        --上面这个函数没有实时的刷新 我这里自取自设置下
        local _ItemDataHandle = GUI:ItemCtrlGetGUIData(handle)
        GUI:ItemCtrlSetGUIData(handle,_ItemDataHandle)
        LuaParam = handle
    end
end 

function QianghSelWnd.CreateUI(i)
		if not UI:Lua_GetItemTemplateHandleByGUID(QianghSelWnd.itemlist[i]) then 
			return false 
		end
		local _Template = LuaRet
		
		if not CL:GetItemTemplatePropByHandle(_Template, ITEM_PROP_NAME) then
			CL:Log("ITEM_PROP_NAME 错误false")
			return
		end
		
		local Name = LuaRet
		CL:Log("aksjdklajsdklf"..i)
		local _GUIHandle = 0
		local YOffset = 0
		local YInterval = 113
		local _Parent = QianghSelWnd.ClipWndHandle
		local  butStr = "SelItemBgBtn"..i
		_GUIHandle = GUI:ButtonCreate(_Parent,butStr,1851000009,30,YOffset + YInterval * (i -1))
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "QianghSelWnd.SelItemCtrl")
		end
		local  imgStr = "SelItemCtrlBG"..i
		_GUIHandle = GUI:ImageCreate(_Parent,imgStr,1850400004,62,YOffset + 19+ YInterval * (i -1))
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetSizeM(_GUIHandle,66, 66)
		end	
	
		local ctrlStr = "SelItemCtrl"..i
		_GUIHandle = GUI:ItemCtrlCreate(_Parent,ctrlStr,0,63,YOffset + 20+ YInterval * (i -1),64,64)
			if _GUIHandle ~= 0 then
		end 
		
		local nameStr = "SelName"..i
		_GUIHandle = GUI:EditCreate(_Parent,nameStr,156,YOffset + 17+ YInterval * (i -1),100,20)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextM(_GUIHandle,Name)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
end

QianghSelWnd.RDItemCtrlSetGUIDataPropByGUIDEx = function(_Handle, _Info, _ItemGUID)
    --模版句柄
    CL:Log("_Handle = ".._Handle.." _ItemGUID = ".._ItemGUID)
    if not UI:Lua_GetItemTemplateHandleByGUID(_ItemGUID) then 
        return false 
    end
    local _Template = LuaRet
    CL:Log("_Template 等于".._Template)
    --没有触发item_ctrl_gui_data_update事件
    --物品图片ID
    if not UI:Lua_GetItemTemplatePropByHandle(_Template, ITEM_PROP_TIPSICON) then
        CL:Log("ITEM_PROP_TIPSICON 错误false")
        --return false 
    end
    
    local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_Handle)
    LuaArg = LuaRet
    CL:Log("ImageID 等于"..LuaRet.."_ItemDataHandle".._ItemDataHandle)
    CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)

    if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_IMAGEID, LuaRet) then
        CL:Log("ITEMGUIDATA_IMAGEID 错误false")
        return false 
    end
    --物品GUID
    if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID, _ItemGUID) then
        CL:Log("ITEMGUIDATA_ITEMGUID 错误false")
        return false 
    end
    --实体句柄
    if not UI:Lua_GetItemEntityHandleByGUID(_ItemGUID) then
        CL:Log("_ItemGUID 错误false")
        return false 
    end
    local _Entity = LuaRet
    --物品模版ID
    if not UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_ID) then
        CL:Log("ITEM_PROP_ENTITY_ID 错误false")
        return false 
    end
    if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMID, LuaRet) then
        CL:Log("ITEMGUIDATA_ITEMID 错误false")
        return false 
    end
    --物品数量
    if not UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_AMOUNT) then
        CL:Log("ITEM_PROP_ENTITY_AMOUNT 错误false")
        return false 
    end
    if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMCOUNT, LuaRet) then
        CL:Log("ITEMGUIDATA_ITEMCOUNT 错误false")
        return false 
    end
    --物品绑定状态
    if not UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_IS_BOUND) then
        CL:Log("ITEM_PROP_ENTITY_IS_BOUND 错误false")
        return false 
    end
    if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ISSHOWBIND, LuaRet) then
        CL:Log("ITEMGUIDATA_ISSHOWBIND 错误false")
        return false 
    end
    --有效状态
    if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, true) then
        CL:Log("ITEMGUIDATA_INVALIDATE 错误false")
        return false 
    end
    CL:Log("RDItemCtrlSetGUIDataPropByGUIDEx 执行到最后")
    return true
end



function QianghSelWnd.Close(_Handle)
    if _Handle ~= 0 then 
        local _ParentHandle = GUI:WndGetParentM(_Handle)
        if _ParentHandle ~= 0 then
            GUI:WndClose(_ParentHandle)
        end
    end
end

function QianghSelWnd.SelItemCtrl(_Handle)
	
    local _ItemDataHandle = 0
    local Param = GUI:WndGetParam(_Handle)
	dbg("Param = "..tostring(Param))
    local handle = GUI:WndFindChildM(QianghSelWnd.ClipWndHandle, "SelItemCtrl"..Param)
    if handle ~= 0 then 
        _ItemDataHandle = GUI:ItemCtrlGetGUIData(handle)
        CL:Log("获取到了Data".._ItemDataHandle)
    end

	local _handle = GetWindow(0, "ForgeWnd,QianghWnd");
    if _handle ~= 0 then
        QianghWnd.SelItemCtrl(_ItemDataHandle);
	else
		local _handle = GetWindow(0, "ForgeWnd,ZhuanyWnd");
		if _handle ~= 0 then
			ZhuanyWnd.SelItemCtrl(_ItemDataHandle);
		end

	end
    
end

QianghSelWnd.main()




