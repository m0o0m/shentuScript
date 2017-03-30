ForgeWnd = {}
function ForgeWnd.main()
	local ui = "<form> <dialog OnInit='ForgeWnd.UIInit' id='ForgeWnd' image='1802400029' x='0' y='0' w='609' h='517' center = 'true' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='forge_title' x='265' y='3' w='78' h='24' image='1801500084' enable='false' />"
	.."	<button id='button1' image='1800000076' x='19' y='45' w='62' h='25' OnLButtonUp='ForgeWnd.Qiangh' revmsg='true' text='装备强化' text_color='#605E49'/>"
	.."	<button id='button2' image='1800000076' x='90' y='45' w='62' h='25' OnLButtonUp='ForgeWnd.Zhuany' revmsg='true' text='强化转移' text_color='#605E49'/>"
	.."	<button id='button3' image='1800000076' x='160' y='45' w='62' h='25' OnLButtonUp='ForgeWnd.zhul' revmsg='true' text='装备蕴魂' text_color='#605E49'/>"
	.."	<button id='button4' image='1800000076' x='228' y='45' w='62' h='25' OnLButtonUp='ForgeWnd.huis' revmsg='true' text='蕴魂回收' text_color='#605E49'/>"
	.."	<button id='close' image='1800000043' x='575' y='4' w='26' h='26' OnLButtonUp='ForgeWnd.closeWnd' revmsg='true'/>"
	.."	<button id='roleequip' image='1800000076' x='399' y='77' w='62' h='25' OnLButtonUp='ForgeWnd.equip' revmsg='true' text='身上装备' text_color='#605E49'/>"
	.."	<button id='package' image='1800000076' x='464' y='77' w='62' h='25' OnLButtonUp='ForgeWnd.pg' revmsg='true' text='背包装备' text_color='#605E49'/>"
	.."	<itemctrl id='itemback1' x='400' y='111' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback2' x='449' y='111' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback3' x='498' y='111' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback4' x='547' y='111' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback5' x='400' y='158' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback9' x='400' y='207' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback13' x='400' y='255' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback17' x='400' y='303' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback21' x='400' y='351' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback25' x='400' y='399' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback6' x='449' y='159' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback8' x='547' y='159' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback7' x='498' y='159' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback10' x='449' y='207' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback11' x='498' y='207' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback16' x='547' y='255' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback14' x='449' y='255' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback15' x='498' y='255' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback28' x='547' y='399' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback27' x='498' y='399' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback26' x='449' y='399' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback12' x='547' y='207' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback18' x='449' y='303' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback19' x='498' y='303' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback20' x='547' y='303' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback22' x='449' y='351' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback23' x='498' y='351' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itemback24' x='547' y='351' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<image id='page1' image='1800000279' x='464' y='454' w='58' h='34' revmsg='true'/>"
	.."	<edit id='page2' x='480' y='460' w='10' h='22' revmsg='true' text='1' />"
	.."	<edit id='page3' x='490' y='460' w='10' h='22' revmsg='true' text='/' />"
	.."	<edit id='page4' x='500' y='460' w='10' h='22' revmsg='true' text='1' />"
	.."	<button id='page5' image='1800000094' x='434' y='462' w='20' h='19' OnLButtonUp='ForgeWnd.up_page' revmsg='true'/>"
	.."	<button id='page6' image='1800000098' x='532' y='461' w='20' h='19' OnLButtonUp='ForgeWnd.down_page' revmsg='true'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end


ForgeWnd.WndHandle = 0
ForgeWnd.itemlist = {}
ForgeWnd._pg = {}
ForgeWnd.nowPage = 1
function ForgeWnd.UIInit(_GUIHandle)
	ForgeWnd.WndHandle = _GUIHandle
	local uih = 0
	for i = 1, 4 do
		uih = GUIWndFindChildM(_GUIHandle,"button" .. i)
		if uih ~= 0 then
			GUIWndSetTextArrangeType(uih,0,2,0,0);
			GUIButtonSetStateTextColor(uih,0,MakeARGB(255, 96, 94, 73))
			GUIButtonSetStateTextColor(uih,2,MakeARGB(255, 208, 179, 99))
		end
	end
	
	local _Handle = GUIWndFindChildM(_GUIHandle,"roleequip")
	if _Handle ~= 0 then
		GUIWndSetTextArrangeType(_Handle,0,2,0,0);
		GUIButtonSetStateTextColor(_Handle,0,MakeARGB(255, 96, 94, 73))
		GUIButtonSetStateTextColor(_Handle,2,MakeARGB(255, 208, 179, 99))
	end
	
	_Handle = GUIWndFindChildM(_GUIHandle,"package")
	if _Handle ~= 0 then
		GUIWndSetTextArrangeType(_Handle,0,2,0,0);
		GUIButtonSetStateTextColor(_Handle,0,MakeARGB(255, 96, 94, 73))
		GUIButtonSetStateTextColor(_Handle,2,MakeARGB(255, 208, 179, 99))
	end
	
--[[	for i = 1, 28 do
		_Handle = GUIWndFindChildM(_GUIHandle,"itemback" .. i)
		if _Handle ~= 0 then
			GUIItemCtrlSetBackImageID(_Handle, 1800000080)
			GUIItemCtrlSetHighlightImageID(_Handle, 1900110036)
		end
	end	--]]
	ButtonSetIsActivePageBtn(_GUIHandle,"button1",true)	
	ButtonSetIsActivePageBtn(_GUIHandle,"roleequip",true)
	ForgeWnd.ActivePageBtn = 1  --使用一个全局变量标识当前打开的标签
	
	for i = 1 , 6 do 
		_Handle = GetWindow(nil,"ForgeWnd,page"..i)
		if _Handle ~= 0 then ForgeWnd._pg[i] = _Handle end
	end
	for i = 1 , 6 do 
		GUIWndSetVisible(ForgeWnd._pg[i],false)
	end	
	
	ForgeWnd.itemlist  = {}
	if as3.tolua(UI:Lua_GetPlayerSelfEquipData()) then
		ForgeWnd.itemlist  = getTable(as3.tolua(LuaRet))
	end
	ForgeWnd.item_filter()
	ForgeWnd.forge_data()
	
	UI:Lua_OpenWindow(0,"QianghWnd.lua")
	for i = 1 , 28 do 
		local handle = GetWindow(nil,"ForgeWnd,itemback"..i)
		GUIWndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "ForgeWnd.clickItem")
		GUIWndSetParam(handle, i)
	end	
end

function ForgeWnd.item_filter()
	local data = ForgeWnd.itemlist
	ForgeWnd.itemlist = {}
	local a = 1
	for i = 1 , #data do 
		local Temp = CLGetItemTemplateHandleByGUID(data[i])
		local Type = 0
		local subType = 0
		if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_TYPE) then
			Type = tonumber(as3.tolua(LuaRet))		
		end
		if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_SUBTYPE) then
			subType = tonumber(as3.tolua(LuaRet))		
		end
		if Type == 1 and subType ~= 12 and subType ~= 5 then	
			ForgeWnd.itemlist[a] = data[i]
			a = a + 1
		end	
	end
end

function ForgeWnd.equip(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ButtonSetIsActivePageBtn(_handle,nil,true)
		ForgeWnd.ActivePageBtn = 1
		ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"package",false)
		
		for i = 1 , 6 do 
		GUIWndSetVisible(ForgeWnd._pg[i],false)
		end	
		
		ForgeWnd.itemlist = {}
		if UI:Lua_GetPlayerSelfEquipData() then
			if type(LuaRet) ~= "number" then
				ForgeWnd.itemlist = getTable(as3.tolua(LuaRet))
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
		ForgeWnd.ActivePageBtn = 2
		ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"roleequip",false)
		
		for i = 1 , 6 do 
		GUIWndSetVisible(ForgeWnd._pg[i],true)
		end
		GUIWndSetEnableM(ForgeWnd._pg[5],false)
		for i = 1 , #ForgeWnd.itemlist do 
			local handle = GetWindow(nil,"ForgeWnd,itemback"..i)
			GUIItemCtrlClearItemData(handle)
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
	if CLGetPackageItemGUIDList() then
		ForgeWnd.itemlist = getTable(as3.tolua(LuaRet))
	end
	ForgeWnd.item_filter()
	local pgCount = math.ceil(#ForgeWnd.itemlist/28)
	if pgCount <= 0 then pgCount = 1 end
	EditSetText(ForgeWnd.WndHandle,"page4",""..pgCount)
	EditSetText(ForgeWnd.WndHandle,"page2",""..ForgeWnd.nowPage)
	if pgCount == 1 then
		GUIWndSetEnableM(ForgeWnd._pg[6],false)
	else
		GUIWndSetEnableM(ForgeWnd._pg[6],true)
	end
	--是否是首页
	if ForgeWnd.nowPage == 1 then
		GUIWndSetEnableM(ForgeWnd._pg[5], false)
	else
		GUIWndSetEnableM(ForgeWnd._pg[5], true)
	end
	--是否是尾页
	if ForgeWnd.nowPage == pgCount then
		GUIWndSetEnableM(ForgeWnd._pg[6],false)
	else
		GUIWndSetEnableM(ForgeWnd._pg[6],true)
	end
end

function ForgeWnd.forge_data()
	for i = 1 , 28 do 
			local handle = GetWindow(nil,"ForgeWnd,itemback"..i)
			GUIItemCtrlClearItemData(handle)
	end
	local index = (ForgeWnd.nowPage - 1)*28 + 1
	for i = 1 , #ForgeWnd.itemlist do 
		local handle = GetWindow(nil,"ForgeWnd,itemback"..i)
		if handle == 0 or ForgeWnd.itemlist[index] == nil then
			return
		end
		RDItemCtrlSetGUIDataPropByGUID(handle, nil, ForgeWnd.itemlist[index])
		index = index + 1
	end

end	

ForgeWnd.handle = {"QianghWnd","ZhuanyWnd","ZhulWnd","Zhul_hs"}
ForgeWnd.itemForm= {"强化表单","转移表单","注灵表单","注灵回收表单"}
function ForgeWnd.clickItem(_handle)
	ForgeWnd.WndParam = GUIWndGetParam(_handle)	
	ForgeWnd.ItemBelongTo = ForgeWnd.ActivePageBtn
	local item_guid = RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID)
	if item_guid ~= 0 and item_guid ~= nil then
		for i = 1, #ForgeWnd.handle do
			local handle = GetWindow(nil, "ForgeWnd,".. ForgeWnd.handle[i])
			if handle ~= 0 then
				UI:Lua_SubmitForm(ForgeWnd.itemForm[i], "item_set", item_guid)
				break
			end 
		end
	end
end	


function ForgeWnd.update(_handle)
	for i = 1 , #ForgeWnd.handle do 		
		local handle = GetWindow(nil,"ForgeWnd,button"..i)
		local handle1 = GetWindow(nil,"ForgeWnd,"..ForgeWnd.handle[i])	
		if handle == _handle then
			ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"button"..i,true)		
		else
			ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"button"..i,false)
			if handle1 ~= 0 then
				GUIWndClose(handle1)
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

function ForgeWnd.Get_EquipUpdate(item)
	--[[
	local handle = GetWindow(nil,"ForgeWnd,roleequip")
	local Is_true = ButtonGetIsActivePageBtn(handle)
	for i = 1 , #ForgeWnd.itemlist do 
			local handle = GetWindow(nil,"ForgeWnd,itemback"..i)
			GUIItemCtrlClearItemData(handle)
	end
	if Is_true then		
		if UI:Lua_GetPlayerSelfEquipData() then
			ForgeWnd.itemlist = getTable(as3.tolua(LuaRet))
		end
	else
		if CLGetPackageItemGUIDList() then
			ForgeWnd.itemlist = getTable(as3.tolua(LuaRet))
		end
	end
	ForgeWnd.item_filter()
	ForgeWnd.forge_data()
	--]]
	if ForgeWnd.ItemBelongTo ~= ForgeWnd.ActivePageBtn then
		return
	end
	
	local handle = GetWindow(nil,"ForgeWnd,itemback".. ForgeWnd.WndParam)
	GUIItemCtrlClearItemData(handle)
	RDItemCtrlSetGUIDataPropByGUID(handle, nil, item)
	
end	

function ForgeWnd.closeWnd(_handle)	
	GUIWndClose(ForgeWnd.WndHandle)
end

ForgeWnd.main()