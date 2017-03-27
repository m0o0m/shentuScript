--2016 3.21 10.30 zhuxunrun

ForgeWnd = {}
function ForgeWnd.main()
	local ui = "<form> <dialog OnInit='ForgeWnd.UIInit' id='ForgeWnd' image='1802400029' x='0' y='0' w='609' h='517' center = 'true' esc_close='true' drag='true' revmsg='true'>"
	
	.."	<button id='button1' image='1800000076' x='19' y='45' w='62' h='25' OnLButtonUp='ForgeWnd.Qiangh' revmsg='true' text='装备强化' text_color='#605E49'/>"
	.."	<button id='button2' image='1800000076' x='90' y='45' w='62' h='25' OnLButtonUp='ForgeWnd.Zhuany' revmsg='true' text='强化转移' text_color='#605E49'/>"
	.."	<button id='button3' image='1800000076' x='160' y='45' w='62' h='25' OnLButtonUp='ForgeWnd.zhul' revmsg='true' text='装备注灵' text_color='#605E49'/>"
	.."	<button id='button4' image='1800000076' x='228' y='45' w='62' h='25' OnLButtonUp='ForgeWnd.huis' revmsg='true' text='注灵回收' text_color='#605E49'/>"
	.."	<button id='close' image='1800000043' x='575' y='4' w='26' h='26' OnLButtonUp='ForgeWnd.closeWnd' revmsg='true'/>"
	.."	<button id='roleequip' image='1800000076' x='399' y='77' w='62' h='25' OnLButtonUp='ForgeWnd.equip' revmsg='true' text='身上装备' text_color='#605E49'/>"
	.."	<button id='package' image='1800000076' x='464' y='77' w='62' h='25' OnLButtonUp='ForgeWnd.pg' revmsg='true' text='背包装备' text_color='#605E49'/>"
	.."	<itemctrl id='itembcak1' x='400' y='111' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak2' x='449' y='111' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak3' x='498' y='111' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak4' x='547' y='111' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak5' x='400' y='158' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak9' x='400' y='207' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak13' x='400' y='255' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak17' x='400' y='303' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak21' x='400' y='351' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak25' x='400' y='399' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak6' x='449' y='159' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak8' x='547' y='159' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak7' x='498' y='159' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak10' x='449' y='207' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak11' x='498' y='207' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak16' x='547' y='255' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak14' x='449' y='255' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak15' x='498' y='255' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak28' x='547' y='399' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak27' x='498' y='399' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak26' x='449' y='399' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak12' x='547' y='207' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak18' x='449' y='303' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak19' x='498' y='303' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak20' x='547' y='303' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak22' x='449' y='351' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak23' x='498' y='351' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<itemctrl id='itembcak24' x='547' y='351' w='39' h='39' auto_manage='true' use_back='1800000080' enable='true' revmsg='true'/>"
	.."	<image id='page_back' image='1800000279' x='464' y='454' w='58' h='34' revmsg='true'/>"
	.."	<edit id='page' x='480' y='460' w='34' h='22' revmsg='true' text='1/1' />"
	.."	<button id='up_page' image='1800000094' x='434' y='462' w='20' h='19' revmsg='true'/>"
	.."	<button id='down_page' image='1800000098' x='532' y='461' w='20' h='19' revmsg='true'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end


ForgeWnd.WndHandle = 0
ForgeWnd.itemlist = {}

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
	
	for i = 1, 28 do
		_Handle = GUIWndFindChildM(_GUIHandle,"itemback" .. i)
		if _Handle ~= 0 then
			GUIItemCtrlSetBackImageID(_Handle, 1800000080)
			GUIItemCtrlSetHighlightImageID(_Handle, 1900110036)
		end
	end
	
	ButtonSetIsActivePageBtn(_GUIHandle,"button1",true)	
	ButtonSetIsActivePageBtn(_GUIHandle,"roleequip",true)
	UI:Lua_OpenWindow(0,"QianghWnd.lua")
	
	local itemlist = {}
	if as3.tolua(UI:Lua_GetPlayerSelfEquipData()) then
		itemlist = getTable(as3.tolua(LuaRet))
	end
	ForgeWnd.get_equip(itemlist)
	for i = 1 , 24 do 
		local handle = GetWindow(nil,"ForgeWnd,itembcak"..i)
		GUIWndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "ForgeWnd.clickItem")
	end
	
end


ForgeWnd.handle = {"QianghWnd","ZhuanyWnd","ZhulWnd","HuisWnd"}
ForgeWnd.itemForm = {"强化表单","转移表单","注灵表单","回收表单"}
ForgeWnd.Form = {"强化表单","强化表单","注灵表单","注灵表单"}

function ForgeWnd.get_equip(itemlist)	
	if #itemlist > 0 then
		--------------------------------------------------------------------------------------------------------------2016 3.21 10.30 zhuxunrun
		for i = 1 , #ForgeWnd.handle do
			
			--关闭的窗口句柄获取不到，
			local handle = GetWindow(nil, "ForgeWnd,".. ForgeWnd.handle[i])
			if handle ~= 0 then
				local str = serialize(itemlist)
				UI:Lua_SubmitForm(ForgeWnd.Form[i], "get_equiplist", str)
				msg("提交表单"..ForgeWnd.Form[i])
			end
		
		end
		----------------------------------------------------------------------------------------------------------------------------------------
	end
end	


function ForgeWnd.forge_data(data)
	ForgeWnd.itemlist = data
	for i = 1 , #ForgeWnd.itemlist do 
		local handle = GetWindow(nil,"ForgeWnd,itembcak"..i)
		GUIItemCtrlSetJson(handle,ForgeWnd.itemlist[i])
		
	end
end	


function ForgeWnd.equip(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ButtonSetIsActivePageBtn(_handle,nil,true)
		ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"package",false)
		
		for i = 1 , #ForgeWnd.itemlist do 
			local handle = GetWindow(nil,"ForgeWnd,itembcak"..i)
			GUIItemCtrlClearItemData(handle)
		end
		ForgeWnd.itemlist = {}
		local itemlist = {}
		if UI:Lua_GetPlayerSelfEquipData() then
			itemlist = getTable(as3.tolua(LuaRet))
		end
		ForgeWnd.get_equip(itemlist)
	end	
end


function ForgeWnd.pg(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ButtonSetIsActivePageBtn(_handle,nil,true)
		ButtonSetIsActivePageBtn(ForgeWnd.WndHandle,"roleequip",false)
		
		for i = 1 , #ForgeWnd.itemlist do 
			local handle = GetWindow(nil,"ForgeWnd,itembcak"..i)
			GUIItemCtrlClearItemData(handle)
			msg("清空")
		end
		ForgeWnd.itemlist = {}
		local itemlist = {}
		if CLGetPackageItemGUIDList() then
			itemlist = getTable(as3.tolua(LuaRet))
			msg("获得背包装备列表成功")
		end
		
		ForgeWnd.get_equip(itemlist)
		
	end	
end



function ForgeWnd.clickItem(_handle)
	
	local item_guid = RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID)
	if item_guid ~= 0 and item_guid ~= nil then
		for i = 1, #ForgeWnd.handle do
		--	local handle = GetWindow(nil, "ForgeWnd,button"..i)
			
			--关闭的窗口句柄获取不到，
			local handle = GetWindow(nil, "ForgeWnd,".. ForgeWnd.handle[i])
			if handle ~= 0 then
				UI:Lua_SubmitForm(ForgeWnd.itemForm[i], "item_set", item_guid)
				msg("已提交表单去服务端item_set"..ForgeWnd.itemForm[i])                                --测试
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
		--CLSetSettingWindowTab(1)
		
		UI:Lua_OpenWindow(ForgeWnd.WndHandle, "ZhulWnd.lua")
	end	

end

function ForgeWnd.huis(_handle)
	local Is_true = ButtonGetIsActivePageBtn(_handle)
	if not Is_true then
		ForgeWnd.update(_handle)
		--CLSetSettingWindowTab(2)
		
		UI:Lua_OpenWindow(ForgeWnd.WndHandle,"HuisWnd.lua")
	end	

end

function ForgeWnd.Get_EquipUpdate()
	local handle = GetWindow(nil,"ForgeWnd,roleequip")
	if handle == 0 then 
		msg("handle == 0")
		return
	end 
	local Is_true = ButtonGetIsActivePageBtn(handle)
	local itemlist = {}
	if Is_true then		
		if UI:Lua_GetPlayerSelfEquipData() then
			itemlist = getTable(as3.tolua(LuaRet))
		end
	else
		if CLGetPackageItemGUIDList() then
			itemlist = getTable(as3.tolua(LuaRet))
		end
	end
	
	ForgeWnd.get_equip(itemlist)

end	


function ForgeWnd.closeWnd(_handle)
		
	GUIWndClose(ForgeWnd.WndHandle)

end

ForgeWnd.main()