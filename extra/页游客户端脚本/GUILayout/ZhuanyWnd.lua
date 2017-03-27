ZhuanyWnd = {}
function ZhuanyWnd.main()
	local ui = " <form default_parent='ForgeWnd'>"
	.." <dialog OnInit = 'ZhuanyWnd.UIInit' id = 'ZhuanyWnd' image = '0' x='0' y='0' w='16' h='16' drag='true' revmsg='true'>"
	.." <image id = 'image_back' image = '1802400001' x='15' y='74' w='245' h='10' />"
	.." <image id = 'orig_image1' image='1801500086' x='40' y='162' w='85' h='25' />"
	.." <image id = 'orig_image2' image='1802400004' x='5' y='160' w='150' h='150' />"
	.."	<itemctrl id='item1' x='49' y='211' w='64' h='62' auto_manage='true' enable='true' use_back='0' revmsg='true'/>"
	.." <image id = 'dest_image1' image='1801500087' x='290' y='162' w='83' h='25' />"
	.."	<image id = 'dest_image2' image='1802400005' x='255' y='160' w='150' h='150' />"
	.."	<itemctrl id='item2' x='299' y='210' w='64' h='63' auto_manage='true' enable='true' use_back='0' revmsg='true'/>"
	.." <image id = 'TestWndChild_28' image='1800000366' x='183' y='213' w='43' h='58' revmsg='false'/>"
	.." <image id = 'atm' image='0' x='183' y='150' w='43' h='43' revmsg='false'/>"
	.."	<edit id = 'gold_need' x='85' y='392' w='60' h='25' revmsg='true' text_color='#C2B6A0' text='消耗金币：' />"
	.."	<image id= 'gold_back' image='1802400006' x='155' y='391' w='137' h='26' image_color='#C2B6A0' revmsg='true'/>"
	.."	<edit id= 'gold' x='175' y='394' w='114' h='21' revmsg='true' text_color='#C2B6A0' text='' />"
	.."	<button id= 'zhuanyi' image='1802400011' x='140' y='436' w='132' h='57' OnLButtonUp='ZhuanyWnd.zhuany' revmsg='true'/>"
	.."	<button id= 'zyshuom' image='1800000297' x='22' y='467' w='27' h='30' revmsg='true' text_color='#C2B6A0'/>"
	.." <richedit id='shuom' x='50' y='475' w='70' h='23' revmsg='true' text_color='#C2B6A0' text='' />"
	.." </dialog>"
	.." </form>"
	GenFormByString(ui)
	
end

ZhuanyWnd.WndHandle = 0
ZhuanyWnd.OrigHaveEquip = false
ZhuanyWnd.DestHavaEquip = false
ZhuanyWnd.canBeTrans = false

function ZhuanyWnd.UIInit(_GUIHandle)
	ZhuanyWnd.WndHandle = _GUIHandle	
	local handle = GetWindow(_GUIHandle,"shuom")
	if handle ~= 0 then
		GUIRichEditAppendString(handle, "#SELECT#转移说明#SELECTEND#")
		GUIWndSetHint(handle, "<font color='#D58840'>转移说明：\n</font><font color='#B8A085'>1.目标装备强化等级必须为零，原始装备强化等级需要大于零\n2.目标装备的可强化次数不能小于原始装备的强化等级\n3.强化转移不能转移注灵属性</font>")
	end
	
	local handle = GetWindow(_GUIHandle,"zyshuom")
	if handle ~= 0 then
		GUIWndSetHint(handle,  "<font color='#D58840'>转移说明：\n</font><font color='#B8A085'>1.目标装备强化等级必须为零，原始装备强化等级需要大于零\n2.目标装备的可强化次数不能小于原始装备的强化等级\n3.强化转移不能转移注灵属性</font>")
	end
	
	local hanlde = 0
	for i = 1, 2 do
		handle = GetWindow(_GUIHandle, "item" .. i)
		GUIWndSetParam(handle, i)
		GUIWndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "ZhuanyWnd.clickItem")
	end
end 

function ZhuanyWnd.clickItem(_handle)
	local itemNum = GUIWndGetParam(_handle)
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
		GUIEditSetTextM(editHandle, "")
	end
	GUIItemCtrlClearItemData(_handle)
	ZhuanyWnd.canBeTrans = false
end
function ZhuanyWnd.zhuany(_handle)
	if ZhuanyWnd.canBeTrans then
		local handle1 = GetWindow(nil, "ForgeWnd,ZhuanyWnd,item1")		--获取原始物品栏窗口句柄
		local handle2 = GetWindow(nil, "ForgeWnd,ZhuanyWnd,item2")		--获取目标物品栏窗口句柄
		local item1_guid = RDItemCtrlGetGUIDataPropByType(handle1, nil, ITEMGUIDATA_ITEMGUID)
		local item2_guid = RDItemCtrlGetGUIDataPropByType(handle2, nil, ITEMGUIDATA_ITEMGUID)
		local str = "" .. item1_guid .. "," .. item2_guid
		UI:Lua_SubmitForm("转移表单", "ZhuanyPreview", str)
		--GUIItemCtrlClearItemData(handle1)
		--GUIItemCtrlClearItemData(handle2)
		--EditSetText(ZhuanyWnd.WndHandle,"gold","")
	elseif	ZhuanyWnd.DestHavaEquip == false then
		window_msg_up(_handle, "请放入目标装备", -40, -30, 100, MakeARGB(255, 255, 0, 0), 3)
	else 
		window_msg_up(_handle, "请放入原始装备", -40, -30, 100, MakeARGB(255, 255, 0, 0), 3)
	end
end

function ZhuanyWnd.Zhuany_item(item, jl_level)
	local handle = 0
	if tostring(jl_level) == "0" then
		handle = GetWindow(nil, "ForgeWnd,ZhuanyWnd,item2")
		ZhuanyWnd.DestHavaEquip = true
	else 
		handle = GetWindow(nil, "ForgeWnd,ZhuanyWnd,item1")
		ZhuanyWnd.OrigHaveEquip = true
	end
	GUIItemCtrlClearItemData(handle)
	RDItemCtrlSetGUIDataPropByGUID(handle, nil, item)	
	ZhuanyWnd.Zhuany_ready()
end

function ZhuanyWnd.Zhuany_ready()	
	if ZhuanyWnd.OrigHaveEquip == true and ZhuanyWnd.DestHavaEquip == true then
		ZhuanyWnd.canBeTrans = true
		local handle1 = GetWindow(nil, "ForgeWnd,ZhuanyWnd,item1")		--获取原始物品栏窗口句柄
		local handle2 = GetWindow(nil, "ForgeWnd,ZhuanyWnd,item2")		--获取目标物品栏窗口句柄
		local item1_guid = RDItemCtrlGetGUIDataPropByType(handle1, nil, ITEMGUIDATA_ITEMGUID)
		local item2_guid = RDItemCtrlGetGUIDataPropByType(handle2, nil, ITEMGUIDATA_ITEMGUID)
		local str = "" .. item1_guid .. "," .. item2_guid
		UI:Lua_SubmitForm("转移表单", "setZhuanyGold", str)
	end
end

function ZhuanyWnd.goldConsumption(gold)
	local jb , bjb = 0 , 0
	if UI:Lua_GetPlayerSelfProperty64(5) then 
		bjb = as3.tolua(LuaRet)
	end    
	if UI:Lua_GetPlayerSelfProperty64(4) then 
		jb= as3.tolua(LuaRet) + bjb
	end
	local handle = GetWindow(nil, "ForgeWnd,ZhuanyWnd,gold")
	EditSetText(ZhuanyWnd.WndHandle,"gold",""..gold)
	if jb < gold then
		local handle = GetWindow(ZhuanyWnd.WndHandle,"gold")
		GUIEditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
	else
		local handle = GetWindow(ZhuanyWnd.WndHandle,"gold")
		GUIEditSetTextColor(handle, MakeARGB(255, 194, 182, 160))
	end	
end

function ZhuanyWnd.ClearZhuanyMsg()
	for i = 1, 2 do
		local handle = GetWindow(ZhuanyWnd.WndHandle, "item" .. i)
		if handle ~= 0 then
			GUIItemCtrlClearItemData(handle)
		end
	end
	EditSetText(ZhuanyWnd.WndHandle,"gold","")
	ZhuanyWnd.OrigHaveEquip = false
	ZhuanyWnd.DestHavaEquip = false
	ZhuanyWnd.canBeTrans = false
--[[	local handle = GetWindow(ZhuanyWnd.WndHandle, "zhuanyi")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(handle , "转移成功" , -42, -30, 100, color , 3)--]]
--[[
	if WndAddEffect(ZhuanyWnd.WndHandle, "TestWndChild_28", 3020200500, -130, -70, 150, 1) then
		CLAddDelayTask("ZhuanyWnd.AnotherMagic();", 170, 1)
	end
--]]
end

function ZhuanyWnd.msg_up(str)
	local handle = GetWindow(ZhuanyWnd.WndHandle, "zhuanyi")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(handle , str, -42, -30, 100, color , 3)
end

ZhuanyWnd.main()