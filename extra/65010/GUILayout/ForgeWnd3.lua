ForgeWnd = {}
function ForgeWnd.main()
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

    --第二层背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",0,30,64)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,1076, 446)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GoldImg",1850300005,45,32)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"GoldEdit",90,32,100,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"YuanBaoImg",1850300006,195,32)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"IngotEdit",240,32,100,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BindYuanBaoImg",1850300007,345,32)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"BindIngotEdit",390,32,100,20)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button1",1851000001,477,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.Qiangh")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button2",1851000005,625,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.Zhuany")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button3",1800000076,773,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.zhul")
        GUI:WndSetTextM(_GUIHandle,"装备蕴魂")
        GUI:WndSetTextColorM(_GUIHandle, 4284505673)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button4",1800000076,921,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.huis")
        GUI:WndSetTextM(_GUIHandle,"蕴魂回收")
        GUI:WndSetTextColorM(_GUIHandle, 4284505673)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
    if _GUIHandle ~= 0 then
    	GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.closeWnd")
    end
	
    --[[
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"roleequip",1800000076,399,77)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.equip")
        GUI:WndSetTextM(_GUIHandle,"身上装备")
        GUI:WndSetTextColorM(_GUIHandle, 4284505673)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"package",1800000076,464,77)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.pg")
        GUI:WndSetTextM(_GUIHandle,"背包装备")
        GUI:WndSetTextColorM(_GUIHandle, 4284505673)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback1",0,400,111,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback2",0,449,111,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback3",0,498,111,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback4",0,547,111,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback5",0,400,158,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback9",0,400,207,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback13",0,400,255,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback17",0,400,303,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback21",0,400,351,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback25",0,400,399,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback6",0,449,159,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback8",0,547,159,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback7",0,498,159,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback10",0,449,207,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback11",0,498,207,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback16",0,547,255,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback14",0,449,255,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback15",0,498,255,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback28",0,547,399,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback27",0,498,399,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback26",0,449,399,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback12",0,547,207,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback18",0,449,303,46,46)
    if _GUIHandle ~= 0 then
    end
     
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback19",0,498,303,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback20",0,547,303,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback22",0,449,351,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback23",0,498,351,46,46)
    if _GUIHandle ~= 0 then
    end
     
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemback24",0,547,351,46,46)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"page1",1800000279,464,454)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"page2",480,460,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"1")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"page3",490,460,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"/")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"page4",500,460,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"1")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"page5",1800000094,434,462)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.up_page")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"page6",1800000098,532,461)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ForgeWnd.down_page")
    end

    ]]--
	
    ForgeWnd.UIInit(_Parent)
end

function ForgeWnd.closeWnd(_handle)	
	GUI:WndClose(ForgeWnd.WndHandle)
end


--UI Logic Code Start
ForgeWnd.WndHandle = 0
ForgeWnd.itemlist = {}
ForgeWnd._pg = {}
ForgeWnd.nowPage = 1
function ForgeWnd.UIInit(_GUIHandle)
	ForgeWnd.WndHandle = _GUIHandle
    --RegisterUIEvent(LUA_EVENT_PROPERTYDATA, "ForgeWnd", ForgeWnd.propDataChange)

    local BgImg = GUI:WndFindWindow(ForgeWnd.WndHandle, "BgImage")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
    end

     --第二层背景
    local BgImg0 = GUI:WndFindWindow(_GUIHandle, "BgImage0")
    if BgImg0 then
        GUI:ImageSetAroundImage(BgImg0, 1850700035, 1850700037, 1850700041, 1850700043, 1850700039, 1850700036, 1850700042, 1850700038, 1850700040)
    end 


    local _EditHandle = GUI:WndFindWindow(ForgeWnd.WndHandle, "GoldEdit")
    if _EditHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_GOLD) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_EditHandle,Property)   
    end

    _EditHandle = GUI:WndFindWindow(ForgeWnd.WndHandle, "IngotEdit")
    if _EditHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_EditHandle,Property)   
    end

    _EditHandle = GUI:WndFindWindow(ForgeWnd.WndHandle, "BindIngotEdit")
    if _EditHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_BIND_INGOT) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_EditHandle,Property)   
    end


	local uih = 0
	for i = 1, 4 do
		uih = GUI:WndFindChildM(_GUIHandle,"button" .. i)
		if uih ~= 0 then
			GUI:WndSetTextArrangeType(uih,0,2,0,0);
			GUI:ButtonSetStateTextColor(uih,0,MakeARGB(255, 96, 94, 73))
			GUI:ButtonSetStateTextColor(uih,2,MakeARGB(255, 208, 179, 99))
		end
        ButtonSetIsActivePageBtn(_GUIHandle,"button" .. i,true) 
        ButtonSetIsActivePageBtn(_GUIHandle,"button" .. i,false) 
	end
	
    ButtonSetIsActivePageBtn(_GUIHandle,"button1",true) 
    

	local _Handle = GUI:WndFindChildM(_GUIHandle,"roleequip")
	if _Handle ~= 0 then
		GUI:WndSetTextArrangeType(_Handle,0,2,0,0);
		GUI:ButtonSetStateTextColor(_Handle,0,MakeARGB(255, 96, 94, 73))
		GUI:ButtonSetStateTextColor(_Handle,2,MakeARGB(255, 208, 179, 99))
	end
	ButtonSetIsActivePageBtn(_GUIHandle,"roleequip",true)

	_Handle = GUI:WndFindChildM(_GUIHandle,"package")
	if _Handle ~= 0 then
		GUI:WndSetTextArrangeType(_Handle,0,2,0,0);
		GUI:ButtonSetStateTextColor(_Handle,0,MakeARGB(255, 96, 94, 73))
		GUI:ButtonSetStateTextColor(_Handle,2,MakeARGB(255, 208, 179, 99))
        ButtonSetIsActivePageBtn(_GUIHandle,"package",true)
        ButtonSetIsActivePageBtn(_GUIHandle,"package",false)
	end
	
	for i = 1, 28 do
		_Handle = GUI:WndFindChildM(_GUIHandle,"itemback" .. i)
		if _Handle ~= 0 then
			GUI:ItemCtrlSetIconSize(_Handle,46,46)
			GUI:ItemCtrlClearItemData(_Handle)
			RDItemCtrlSetGUIDataPropByType(_Handle, nil, ITEMGUIDATA_INVALIDATE, true)
		end
	end	
	
	for i = 1 , 6 do 
		_Handle = GUI:WndFindChildM(ForgeWnd.WndHandle,"page"..i)	
		if _Handle ~= 0 then ForgeWnd._pg[i] = _Handle end
	end
	for i = 1 , 6 do 
        if ForgeWnd._pg[i] ~= nil then 
		  GUI:WndSetVisible(ForgeWnd._pg[i],false)
        end
	end	
	
	ForgeWnd.itemlist  = {}
	if UI:Lua_GetPlayerSelfEquipData() then
		ForgeWnd.itemlist  = LuaRet
	end
	ForgeWnd.item_filter()
	ForgeWnd.forge_data()
	
	UI:Lua_OpenWindow(ForgeWnd.WndHandle,"QianghWnd.lua")
	for i = 1 , 28 do 
		local handle = GUI:WndFindChildM(ForgeWnd.WndHandle,"itemback"..i)	
		GUI:WndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "ForgeWnd.clickItem")
	end	
end

function ForgeWnd.item_filter()
	local data = ForgeWnd.itemlist
	ForgeWnd.itemlist = {}
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
			ForgeWnd.itemlist[a] = data[i]
			a = a + 1
			UI:Lua_Log("data[i] = "..data[i].."Type = "..Type.."subType"..subType)
		end	
	end
end

function ForgeWnd.equip(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ButtonSetIsActivePageBtn(_handle,nil,true)
		ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"package",false)
		
		for i = 1 , 6 do 
            if ForgeWnd._pg[i] ~= nil then 
			 GUI:WndSetVisible(ForgeWnd._pg[i],false)
            end
		end	
		
		ForgeWnd.itemlist = {}
		if UI:Lua_GetPlayerSelfEquipData() then
            if type(LuaRet) ~= "number" then
			    ForgeWnd.itemlist = LuaRet
            end
		end
		
		ForgeWnd.nowPage = 1
		ForgeWnd.item_filter()
		ForgeWnd.forge_data()
	end	
	UI:Lua_SubmitForm("强化表单", "item_setint", "")
end

function ForgeWnd.pg(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ButtonSetIsActivePageBtn(_handle,nil,true)
		ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"roleequip",false)
		for i = 1 , 6 do 
			if ForgeWnd._pg[i] ~= nil then 
             GUI:WndSetVisible(ForgeWnd._pg[i],false)
            end
		end
        if ForgeWnd._pg[5] ~= nil then 
		  GUI:WndSetEnableM(ForgeWnd._pg[5],false)
        end
		for i = 1 , #ForgeWnd.itemlist do 
			local handle = GUI:WndFindChildM(ForgeWnd.WndHandle,"itemback"..i)	
			GUI:ItemCtrlClearItemData(handle)
		end
		ForgeWnd.nowPage = 1
		ForgeWnd.updatePgBtn()
		ForgeWnd.forge_data()
	end	
	UI:Lua_SubmitForm("强化表单", "item_setint", "")
end

function ForgeWnd.up_page(_handle)
	ForgeWnd.nowPage = ForgeWnd.nowPage - 1
	ForgeWnd.updatePgBtn()
	ForgeWnd.forge_data()
end

function ForgeWnd.down_page(_handle)
	ForgeWnd.nowPage = ForgeWnd.nowPage + 1
	ForgeWnd.updatePgBtn()
	ForgeWnd.forge_data()
end

function ForgeWnd.updatePgBtn()
	ForgeWnd.itemlist = {}
	if CL:GetPackageItemGUIDList() then
		ForgeWnd.itemlist = LuaRet
	end
	ForgeWnd.item_filter()
	local pgCount = math.ceil(#ForgeWnd.itemlist/28)
	if pgCount <= 0 then pgCount = 1 end
	EditSetText(ForgeWnd.WndHandle,"page4",""..pgCount)
	EditSetText(ForgeWnd.WndHandle,"page2",""..ForgeWnd.nowPage)
	if ForgeWnd._pg[6] ~= nil then
        if pgCount == 1 then
    		  GUI:WndSetEnableM(ForgeWnd._pg[6],false)
    	else
    		GUI:WndSetEnableM(ForgeWnd._pg[6],true)
    	end
    end
	--是否是首页
    if ForgeWnd._pg[5] ~= nil then
    	if ForgeWnd.nowPage == 1 then
    		GUI:WndSetEnableM(ForgeWnd._pg[5], false)
    	else
    		GUI:WndSetEnableM(ForgeWnd._pg[5], true)
    	end
    end
	--是否是尾页
    if ForgeWnd._pg[6] ~= nil then
    	if ForgeWnd.nowPage == pgCount then
    		GUI:WndSetEnableM(ForgeWnd._pg[6],false)
    	else
    		GUI:WndSetEnableM(ForgeWnd._pg[6],true)
    	end
    end
end

ForgeWnd.RDItemCtrlSetGUIDataPropByGUIDEx = function(_Handle, _Info, _ItemGUID)
	--模版句柄
	UI:Lua_Log("_Handle = ".._Handle.." _ItemGUID = ".._ItemGUID)
	if not UI:Lua_GetItemTemplateHandleByGUID(_ItemGUID) then 
		return false 
	end
	local _Template = LuaRet
	UI:Lua_Log("_Template 等于".._Template)
	--没有触发item_ctrl_gui_data_update事件
	--物品图片ID
	if not UI:Lua_GetItemTemplatePropByHandle(_Template, ITEM_PROP_TIPSICON) then
		UI:Lua_Log("ITEM_PROP_TIPSICON 错误false")
		--return false 
	end
	
	local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_Handle)
	LuaArg = LuaRet
	UI:Lua_Log("ImageID 等于"..LuaRet.."_ItemDataHandle".._ItemDataHandle)
	CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)

	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_IMAGEID, LuaRet) then
		UI:Lua_Log("ITEMGUIDATA_IMAGEID 错误false")
		return false 
	end
	--物品GUID
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID, _ItemGUID) then
		UI:Lua_Log("ITEMGUIDATA_ITEMGUID 错误false")
		return false 
	end
	--实体句柄
	if not UI:Lua_GetItemEntityHandleByGUID(_ItemGUID) then
		UI:Lua_Log("_ItemGUID 错误false")
		return false 
	end
	local _Entity = LuaRet
	--物品模版ID
	if not UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_ID) then
		UI:Lua_Log("ITEM_PROP_ENTITY_ID 错误false")
		return false 
	end
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMID, LuaRet) then
		UI:Lua_Log("ITEMGUIDATA_ITEMID 错误false")
		return false 
	end
	--物品数量
	if not UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_AMOUNT) then
		UI:Lua_Log("ITEM_PROP_ENTITY_AMOUNT 错误false")
		return false 
	end
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMCOUNT, LuaRet) then
		UI:Lua_Log("ITEMGUIDATA_ITEMCOUNT 错误false")
		return false 
	end
	--物品绑定状态
	if not UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_IS_BOUND) then
		UI:Lua_Log("ITEM_PROP_ENTITY_IS_BOUND 错误false")
		return false 
	end
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ISSHOWBIND, LuaRet) then
		UI:Lua_Log("ITEMGUIDATA_ISSHOWBIND 错误false")
		return false 
	end
	--有效状态
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, true) then
		UI:Lua_Log("ITEMGUIDATA_INVALIDATE 错误false")
		return false 
	end
	UI:Lua_Log("RDItemCtrlSetGUIDataPropByGUIDEx 执行到最后")
	return true
end

function ForgeWnd.forge_data()
	for i = 1 , 28 do 
		local handle = GUI:WndFindChildM(ForgeWnd.WndHandle, "itemback"..i)
		GUI:ItemCtrlClearItemData(handle)
	end
	local index = (ForgeWnd.nowPage - 1)*28 + 1
	UI:Lua_Log("forge_data  index"..index)
	for i = 1 , #ForgeWnd.itemlist do 
		local handle = GUI:WndFindChildM(ForgeWnd.WndHandle, "itemback"..i)
		UI:Lua_Log("ForgeWnd,itemback"..i.." = "..handle.." ForgeWnd.itemlist[index] = "..ForgeWnd.itemlist[index])
		if handle == 0 or ForgeWnd.itemlist[index] == nil then
			return
		end
		UI:Lua_Log("forge_data".."开始设置"..ForgeWnd.itemlist[index])
		ForgeWnd.RDItemCtrlSetGUIDataPropByGUIDEx(handle, nil, ForgeWnd.itemlist[index])
		LuaParam = handle
		UI:Lua_RDItemCtrlUpdateRefineAnimate()
		index = index + 1
	end

end	

ForgeWnd.handle = {"QianghWnd","ZhuanyWnd","ZhulWnd","Zhul_hs"}
ForgeWnd.itemForm= {"强化表单","转移表单","注灵表单","注灵回收表单"}
function ForgeWnd.clickItem(_handle)	
	local item_guid = RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID)
	if item_guid ~= 0 and item_guid ~= nil then
		for i = 1, #ForgeWnd.handle do
			local handle = GUI:WndFindChildM(ForgeWnd.WndHandle, ForgeWnd.handle[i])
			if handle ~= 0 then
				if UI:Lua_GUID2Str(item_guid) then
					UI:Lua_SubmitForm(ForgeWnd.itemForm[i], "item_set", LuaRet)
				end
				break
			end
		end
	end
end	


function ForgeWnd.update(_handle)
	for i = 1 , #ForgeWnd.handle do 	
		local handle = GUI:WndFindChildM(ForgeWnd.WndHandle, "button"..i)	
		local handle1 = GUI:WndFindChildM(ForgeWnd.WndHandle, ForgeWnd.handle[i])	
		if handle == _handle then
			ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"button"..i,true)		
		else
			ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"button"..i,false)
			if handle1 ~= 0 then
				GUI:WndClose(handle1)
			end	
		end
	end
end



function ForgeWnd.Qiangh(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ForgeWnd.update(_handle)
		UI:Lua_OpenWindow(ForgeWnd.WndHandle, "QianghWnd.lua")
	end	

end

function ForgeWnd.Zhuany(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ForgeWnd.update(_handle)
		UI:Lua_OpenWindow(ForgeWnd.WndHandle,"ZhuanyWnd.lua")
	end	

end




function ForgeWnd.zhul(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ForgeWnd.update(_handle)
		UI:Lua_OpenWindow(ForgeWnd.WndHandle, "ZhulWnd.lua")
	end	

end

function ForgeWnd.huis(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ForgeWnd.update(_handle)
		UI:Lua_OpenWindow(ForgeWnd.WndHandle,"Zhul_hs.lua")
	end	

end

function ForgeWnd.Get_EquipUpdate()
	local handle = GUI:WndFindChildM(ForgeWnd.WndHandle,"roleequip")	
	local Is_true = ButtonGetIsActivePageBtn(handle)
	for i = 1 , #ForgeWnd.itemlist do 
			local handle = GUI:WndFindChildM(ForgeWnd.WndHandle,"itemback"..i)	
			GUI:ItemCtrlClearItemData(handle)
	end
	if Is_true then		
		if UI:Lua_GetPlayerSelfEquipData() then
			ForgeWnd.itemlist = LuaRet
		end
	else
		if CL:GetPackageItemGUIDList() then
			ForgeWnd.itemlist = LuaRet
		end
	end
	ForgeWnd.item_filter()
	ForgeWnd.forge_data()

end	

function ForgeWnd.msg_up(str)
	local _handle = GUI:WndFindChildM(QianghWnd.WndHandle, "msg")
	if _handle ~= 0 then
		 UI:Lua_Log("msg_up找到 设置字符串 = "..str)
		GUI:EditSetTextM(_handle, str)
	end
end


function ForgeWnd.propDataChange()
    if LuaParam[2] == ROLE_PROP64_GOLD then
        _GUIHandle = GUI:WndFindChildM(QianghWnd.WndHandle, "GoldEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty64(ROLE_PROP64_GOLD) then 
                Property = LuaRet
                GUI:EditSetTextM(_GUIHandle,Property) 
            end    
        end
    end

    if LuaParam[2] == ROLE_PROP64_INGOT then
        _GUIHandle = GUI:WndFindChildM(QianghWnd.WndHandle, "IngotEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then 
                Property = LuaRet
                GUI:EditSetTextM(_GUIHandle,Property)   
            end  
        end
    end

    if LuaParam[2] == ROLE_PROP64_BIND_INGOT then
        _GUIHandle = GUI:WndFindChildM(QianghWnd.WndHandle, "BindIngotEdit")
        if _GUIHandle ~= 0 then
            if CL:GetPlayerSelfProperty64(ROLE_PROP64_BIND_INGOT) then 
                Property = LuaRet
                GUI:EditSetTextM(_GUIHandle,Property) 
            end      
        end
    end
end

ForgeWnd.main()