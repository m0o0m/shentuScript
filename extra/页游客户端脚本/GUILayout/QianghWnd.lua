QianghWnd = {}
function QianghWnd.main()
	local ui = "<form default_parent='ForgeWnd'> <dialog OnInit='QianghWnd.UIInit' id='QianghWnd' image='0' x='0' y='0' w='16' h='16' drag='true' revmsg='true'>"
	.."	<image id='image_back' image='1802400001' x='15' y='74' w='245' h='10' />"
	.."	<image id='item_image' image='1802400003' x='130' y='60' w='150' h='150' />"
	.."	<itemctrl id='item' x='176' y='113' w='60' h='60' auto_manage='true' enable='true' use_back='0' revmsg='true'/>"
	.."	<image id='item_magic' x='176' y='113' w='60' h='60' />"
	.."	<image id='xingback_image' image='1802400024' x='38' y='199' w='343' h='25' revmsg='false'/>"
	.."	<image id='xing1' image='0' x='70' y='203' w='19' h='17' revmsg='false'/>"
	.."	<image id='xing2' image='0' x='93' y='203' w='19' h='17' revmsg='false'/>"
	.."	<image id='xing3' image='0' x='117' y='203' w='19' h='17' revmsg='false'/>"
	.."	<image id='xing4' image='0' x='141' y='203' w='19' h='17' revmsg='false'/>"
	.."	<image id='xing5' image='0' x='165' y='203' w='19' h='17' revmsg='false'/>"
	.."	<image id='xing6' image='0' x='190' y='203' w='19' h='17' revmsg='false'/>"
	.."	<image id='xing7' image='0' x='215' y='203' w='19' h='17' revmsg='false'/>"
	.."	<image id='xing8' image='0' x='239' y='203' w='19' h='17' revmsg='false'/>"
	.."	<image id='xing9' image='0' x='263' y='203' w='19' h='17' revmsg='false'/>"
	.."	<image id='xing10' image='0' x='287' y='203' w='19' h='17' revmsg='false'/>"
	.."	<image id='xing11' image='0' x='312' y='203' w='19' h='17' revmsg='false'/>"
	.."	<image id='xing12' image='0' x='336' y='203' w='19' h='17' revmsg='false'/>"
	.."	<button id='jia' image='1802400030' x='340' y='160' w='30' h='30' OnLButtonUp='QianghWnd.jia' shine = 'true' visible = 'false' revmsg='true' />"
	.."	<image id='gong_image1' image='1802400023' x='31' y='232' w='146' h='81' revmsg='false'/>"
	.."	<image id='gong_image2' image='1802400023' x='233' y='232' w='146' h='81' revmsg='false'/>"	
	.."	<edit id='edit_gong2' x='36' y='235' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='edit_gon2' x='235' y='234' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='gong_s2' x='92' y='238' w='100' h='26' revmsg='false'  text='' />"
	.."	<edit id='gong_2' x='292' y='237' w='100' h='26' revmsg='false' text_color='#00FF01' text='' />"	
	.."	<edit id='edit_gong1' x='36' y='257' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='edit_gon1' x='235' y='256' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='gong_s1' x='92' y='260' w='100' h='26' revmsg='false'  text='' />"
	.."	<edit id='gong_1' x='292' y='259' w='100' h='26' revmsg='false' text_color='#00FF01' text='' />"	
	.."	<edit id='edit_gong3' x='36' y='279' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='edit_gon3' x='235' y='278' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='gong_s3' x='92' y='282' w='100' h='26' revmsg='false'  text='' />"
	.."	<edit id='gong_3' x='292' y='283' w='100' h='26' revmsg='false' text_color='#00FF01' text='' />"	
	.."	<image id='TestWndChild_28' image='1800000366' x='183' y='243' w='43' h='58' revmsg='false'/>"
	.."	<image id='qhcheng_image' image='1801500119' x='93' y='318' w='132' h='28' revmsg='false'/>"
	.."	<image id='succ_image1' image='' x='232' y='318' w='20' h='26' revmsg='false'/>"
	.."	<image id='succ_image2' image='' x='252' y='318' w='20' h='26' revmsg='false'/>"
	.."	<image id='succ_image3' image='' x='272' y='318' w='20' h='26' revmsg='false'/>"
	.."	<image id='succ_image4' image='' x='292' y='318' w='20' h='26' revmsg='false'/>"	
	.."	<richedit id='ybsm' x='100' y='363' w='250' h='25' revmsg='true'  text='' />"
	.."	<check id='yb' x='263' y='359' w='20' h='20' image='1800000176' OnCheckChange='QianghWnd.YbChange' visible='false' revmsg='true' text=''/>"
	.."	<richedit id='chongz' x='316' y='365' w='70' h='23' revmsg='true' text_color='#0AE71D' visible='false' text='' />"
	.."	<edit id='gold_need' x='85' y='392' w='72' h='25' revmsg='true' text_color='#C2B6A0' text='消耗金币：' />"
	.."	<image id='gold_back' image='1802400006' x='155' y='391' w='137' h='26' image_color='#C2B6A0' revmsg='true'/>"
	.."	<edit id='gold' x='175' y='392' w='74' h='24' revmsg='true' text_color='#C2B6A0' text='' />"
	.."	<button id='qianghua' image='1802400007' x='140' y='436' w='132' h='57' OnLButtonUp='QianghWnd.qiangh' revmsg='true' text_color='#C2B6A0'/>"
	.."	<richedit id='shuom' x='50' y='475' w='70' h='23' revmsg='true' text_color='#C2B6A0' text='' />"
	.."	<button id='qianghsm' image='1800000297' x='22' y='467' w='27' h='30' revmsg='true' text_color='#C2B6A0'/>"
	
	.."	<button id='tip1' image='1804600019' x='453' y='109' w='188' h='50' visible='false' revmsg='false' text='选择强化装备' text_color='#DBC300'/>"
	.."	<button id='tip2' image='1804600019' x='273' y='441' w='188' h='50' visible='false' revmsg='false' text='点击强化装备' text_color='#DBC300'/>"
	.."	<button id='tip3' image='1804600019' x='615' y='-8' w='188' h='50' visible='false' revmsg='false' text='关闭强化面板' text_color='#DBC300'/>"
	
	.." </dialog>"
	.."</form>"
	
	GenFormByString(ui)
end


----武器1，护腕3，戒指9，项链8，攻击
local shux1 = {
	{{81,80},{83,82},{85,84}},
	{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}}, 	
} 
----衣服4，腰带7，鞋子6，头盔2，攻击,物防，魔防
local shux2 = {
	{{{81,80},{83,82},{85,84}},{77,76},{79,78}},
	{{{1,1},{1,6},{1,6}},{{2,2},{2,8},{2,8}},{{3,3},{4,10},{3,11}},{{3,4},{5,12},{4,14}},{{4,6},{7,16},{6,17}},{{4,7},{9,21},{7,21}},
	{{5,10},{11,26},{9,26}},{{5,13},{13,32},{9,31}},{{6,17},{14,38},{11,36}},{{8,22},{16,44},{13,43}},{{9,27},{18,51},{15,49}},{{10,33},{22,60},{17,54}}}, 	
}
----护盾 15    物防，魔防
local shux3 = {
	{{77,76},{79,78}},
	{{{1,3},{1,2}},{{2,6},{2,4}},{{2,9},{3,6}},{{3,12},{4,9}},{{4,15},{5,11}},{{4,18},{5,14}},
	{{5,21},{6,18}},{{7,25},{7,25}},{{9,29},{9,30}},{{11,33},{11,38}},{{14,38},{13,48}},{{18,41},{15,60}},}, 	
}
----宝石11 , 魂珠19    攻击
local shux4 = {
	{{81,80},{83,82},{85,84}},
	{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}},
}
----勋章10     攻击
local shux5 = {
	{{81,80},{83,82},{85,84}},
	{{1,7},{2,9},{3,10},{5,11},{6,14},{8,17},{8,20},{10,24},{11,28},{13,33},{16,39},{20,45}},
}
local suc_img = {
	{1801500108,1801500109,1801500110,1801500111,1801500112,1801500113,1801500114,1801500115,1801500116,1801500107}, --imageid
	{100,90,85,75,65,55,50,30,20,10,5,1},
	{200000,400000,1000000,1600000,3400000,7000000,8000000,10400000,14000000,16200000,20400000,26000000},
	{0,9,28,84,252,758,1517,3040,6069,9104,13656,20484},
	{0,1000,5000,10000,210000,630000,1260000,2520000,151,227,341,535}
}


QianghWnd.WndHandle = 0
QianghWnd.job = 0
QianghWnd.YbYes = 0
QianghWnd.tip1 = 0
function QianghWnd.UIInit(_GUIHandle)
	QianghWnd.WndHandle = _GUIHandle
	local handle = GetWindow(_GUIHandle,"shuom")
	if handle ~= 0 then
		GUIRichEditAppendString(handle,"#SELECT#强化说明#SELECTEND#")
		GUIWndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "QianghWnd.ShuoMEditOnLBTNUp")
		GUIWndSetHint(handle, "<font color='#D58840'>强化说明：\n</font><font color='#B8A085'>1.强化成功优先消耗绑定金币，强化失败不消耗金币\n2.强化失败不降级，但会消耗强化次数，使用元宝可以\n保证100%成功\n3.强化次数用完后，可以购买次数继续强化</font>")
	end	
	local handle = GetWindow(_GUIHandle,"qianghsm")
	if handle ~= 0 then
		GUIWndSetHint(handle, "<font color='#D58840'>强化说明：\n</font><font color='#B8A085'>1.强化成功优先消耗绑定金币，强化失败不消耗金币\n2.强化失败不降级，但会消耗强化次数，使用元宝可以\n保证100%成功\n3.强化次数用完后，可以购买次数继续强化</font>")
	end	
	
	local handle = GetWindow(_GUIHandle,"chongz")
	if handle ~= 0 then
		GUIRichEditAppendString(handle,"#SELECT#前往充值#SELECTEND#")
		GUIWndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "QianghWnd.ChongzEditOnLBTNUp")
	end	
	--QianghWnd.tip()
	UI:Lua_SubmitForm("强化表单", "item_setint", "")
end

function QianghWnd.tip(tip1)
	
	local handle = GetWindow(QianghWnd.WndHandle, "tip1")
	if handle ~= 0 then
		if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
			local level = tonumber(as3.tolua(LuaRet))
			if level >= 60 then 
				local _hand = GetWindow(nil,"ForgeWnd,itemback1")   --物品框的箭头
				if _hand ~= 0 then 
					local item_guid = RDItemCtrlGetGUIDataPropByType(_hand, nil,ITEMGUIDATA_ITEMGUID)
					if item_guid ~= 0 and item_guid ~= nil then 
						if CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID) then 
							--local tip1 = tonumber(CLGetPlayerCustomIntData(as3.tolua(LuaRet),"Qiang_tip1"))
							if tonumber(tip1) == 0 then 
								GUIWndSetVisible(handle, true)
								GUIWndSetTextArrangeType(handle,10,0,0,0)
								QianghWnd.itemTweenUp01(handle)
								GUIButtonSetTextFont(handle,"SIMLI18")
								WndAddEffect(nil,"ForgeWnd,itemback1",3020101000,-26,-26,150,0)
								CLAddDelayTask("QianghWnd.Script1()", 10000, 1)
							end
						end
					else  
						WndDelEffect(nil,"ForgeWnd,itemback1") 
						GUIWndSetVisible(handle, false)
					end
				end
			end
		end
	end
end

function QianghWnd.Script1()  
	local handle = GetWindow(QianghWnd.WndHandle, "tip1")	
	if handle ~= 0 then 
		WndDelEffect(nil,"ForgeWnd,itemback1") 
		if not GUIWndGetVisible(handle) then return end
	end
	if GetWindow(nil, "ForgeWnd,QianghWnd") == 0 then return end  
	local _handle =  GetWindow(nil,"ForgeWnd,itemback1")
	if _handle ~= 0 then 
		local item_guid = tostring(RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID))
		if item_guid ~= 0 and item_guid ~= nil then 
			local _hand =  GetWindow(nil,"ForgeWnd,QianghWnd,item")
			if _hand ~= 0 then  
				local mainitem_guid = RDItemCtrlGetGUIDataPropByType(_hand, nil,ITEMGUIDATA_ITEMGUID)
				if mainitem_guid == nil or mainitem_guid == 0  then 
					UI:Lua_SubmitForm("强化表单", "item_set", item_guid)
				else
					UI:Lua_SubmitForm("强化表单", "num_set", "Qiang_tip1")
				end
			end
		end
	end
	
end

function QianghWnd.Script2(tip1)
	QianghWnd.tip1 = tip1
	local handle = GetWindow(nil, "ForgeWnd,QianghWnd,tip1")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false)
	end
	if CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID) then 
		--local tip1 =tonumber(CLGetPlayerCustomIntData(as3.tolua(LuaRet),"Qiang_tip2"))
		if tonumber(tip1) == 0 then 
			handle = GetWindow(QianghWnd.WndHandle, "tip2")    --强化按钮的箭头
			if handle ~= 0 then
				GUIWndSetVisible(handle, true)
				GUIWndSetTextArrangeType(handle,10,0,0,0)
				QianghWnd.itemTweenUp02(handle)
				GUIButtonSetTextFont(handle,"SIMLI18") 
				WndAddEffect(QianghWnd.WndHandle,"qianghua",3020100800,-2,-3,100,0)
			end  
			CLAddDelayTask("QianghWnd.Script3()", 10000, 1)
		end
	end
	
end

function QianghWnd.Script3()
	
	if GetWindow(nil, "ForgeWnd,QianghWnd") == 0 then return end 	
	local handle = GetWindow(QianghWnd.WndHandle, "tip2")	
	if handle ~= 0 then 
		WndDelEffect(QianghWnd.WndHandle,"qianghua") 
		if not GUIWndGetVisible(handle) then return end
		GUIWndSetVisible(handle, false)   
	end
	QianghWnd.qiangh()
end

function QianghWnd.itemTweenUp01(hand)     
	GUIWndTween(hand, "<Tween><Frame time='0.8' x='463' /></Tween>", "QianghWnd.itemTweenDown01("..hand..")")
end 
function QianghWnd.itemTweenDown01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='453' /></Tween>" , "QianghWnd.itemTweenUp01("..hand..")")
end 

function QianghWnd.itemTweenUp02(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' x='283' /></Tween>", "QianghWnd.itemTweenDown02("..hand..")")
end 
function QianghWnd.itemTweenDown02(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='273' /></Tween>" , "QianghWnd.itemTweenUp02("..hand..")")
end 

function QianghWnd.itemTweenUp03(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' x='625' /></Tween>", "QianghWnd.itemTweenDown03("..hand..")")
end 
function QianghWnd.itemTweenDown03(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='615' /></Tween>" , "QianghWnd.itemTweenUp03("..hand..")")
end 

function QianghWnd.Qiangh_item(itemguid,xing_n,index)
	
	
	for j = 1 , 12 do 
		ImageSetImageID(QianghWnd.WndHandle,"xing"..j,0)
	end
	for i = 1 , 3 do 
		EditSetText(QianghWnd.WndHandle,"edit_gong"..i,"")
		EditSetText(QianghWnd.WndHandle,"edit_gon"..i,"")
		EditSetText(QianghWnd.WndHandle,"gong_s"..i,"")
		EditSetText(QianghWnd.WndHandle,"gong_"..i,"")
	end
	local handle = GetWindow(QianghWnd.WndHandle,"jia")
	if handle ~= 0 then 
		GUIWndSetVisible(handle,false)
	end	
	local handle1 = GetWindow(QianghWnd.WndHandle,"yb")
	if handle1 ~= 0 then
		GUIWndSetVisible(handle1, false) 
	end
	local handle2 = GetWindow(QianghWnd.WndHandle,"chongz")
	if handle2 ~= 0 then
		GUIWndSetVisible(handle2, false) 
	end
	local handle = GetWindow(QianghWnd.WndHandle,"ybsm")
	if handle ~= 0 then
		GUIRichEditClear(handle)
	end
	local handle = GetWindow(nil,"ForgeWnd,QianghWnd,item")
	GUIItemCtrlClearItemData(handle)
	RDItemCtrlSetGUIDataPropByGUID(handle, nil, itemguid)
	if index ~= nil then
		if tonumber(index) == 1 then
			QianghWnd.YbYes = 0
			GUICheckBoxSetCheck(handle1,false)
		end
	end
	
	QianghWnd.OnEquipIn(handle,xing_n)
end	

function QianghWnd.OnEquipIn(_handle,xing_num)
	local item_guid = RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID)
	local Temp = CLGetItemTemplateHandleByGUID(item_guid)
	local Entity = CLGetItemEntityHandleByGUID(item_guid)
	local xing_num = CLGetItemEntityCustomVarInt(Entity, "xing_num")	
	local xing_n = tonumber(CLGetItemEntityCustomVarInt(Entity, "xing_n"))
	local level = 0
	if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_LEVEL) then
		level = tonumber(as3.tolua(LuaRet))	
	end
	local subType = 0
	if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_SUBTYPE) then
		subType = tonumber(as3.tolua(LuaRet))		
	end
	local num = tonumber(xing_num) 
	local q_level = 0
	if UI:Lua_GetItemEntityPropByHandle(Entity,ITEM_PROP_EQUIP_REFINELEVEL) then
		q_level = tonumber(as3.tolua(LuaRet))
	end	
	if q_level == xing_n then
		return 
	end	
	if q_level ~= 0 then
		for i = 1 , q_level do 
			ImageSetImageID(QianghWnd.WndHandle,"xing"..i,1802400025)
		end
		local a = q_level + 1 
		if a <= num then
			for j = a , num do 
				ImageSetImageID(QianghWnd.WndHandle,"xing"..j,1802400026)
			end
		else
			local handle = GetWindow(QianghWnd.WndHandle,"jia")
			local str = ""
			if a < 9 then
				str = "<font color='#D2B48C'>加星需要消耗</font><font color='#FF0000'>".. suc_img[5][a] .."绑定金币</font> "
			else
				str = "<font color='#D2B48C'>加星需要消耗</font><font color='#FF0000'>".. suc_img[5][a] .."元宝</font>"
			end
			GUIWndSetHint(handle, str)
			GUIWndSetVisible(handle,true)
		end	
	else
		if num ~= 0 then
			for j = 1 , num do 
				ImageSetImageID(QianghWnd.WndHandle,"xing"..j,1802400026)
			end
		end	
	end	
	
	local l = q_level + 1 
	local handle = GetWindow(QianghWnd.WndHandle,"ybsm")
	if handle ~= 0 then
		if l > 1 then
			local handle1 = GetWindow(QianghWnd.WndHandle,"yb")
			if handle1 ~= 0 then
				GUIWndSetVisible(handle1, true) 
			end
			local handle2 = GetWindow(QianghWnd.WndHandle,"chongz")
			if handle2 ~= 0 then
				GUIWndSetVisible(handle2, true) 
			end
			GUIRichEditClear(handle)
			GUIRichEditAppendString(handle,"#COLORCOLOR_DARKGOLD#消耗#COLOREND# #COLORCOLOR_GREENG#"..suc_img[4][l]
			.."#COLOREND# #COLORCOLOR_DARKGOLD#元宝保证100%成功#COLOREND#")
		end	
	end	
	local miaos = {{"物理攻击:","魔法攻击:","道术攻击:"},"物防:","魔防:"}
	local job = 0 
	if subType == 1 or subType == 9 or subType == 8 or subType == 3 then	
		if level >= 100 then
			local a = 5
			for i = 1 , 3 do 
				local wug_max = 0 
				local wug_min = 0		
				if CLGetItemTemplatePropByHandle(Temp,shux1[1][i][2]) then
					wug_max = tonumber(as3.tolua(LuaRet))
				end
				if CLGetItemTemplatePropByHandle(Temp,shux1[1][i][1]) then
					wug_min = tonumber(as3.tolua(LuaRet))
				end		
				if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
					local data = getTable(as3.tolua(LuaRet))
					if as3.tolua(data[a]) ~= nil and as3.tolua(data[a][PROPERTY_ATTR_NAME]) ~= nil and as3.tolua(data[9][PROPERTY_ATTR_VALUE]) ~= 0  then
						wug_min = as3.tolua(data[a][PROPERTY_ATTR_VALUE]) + wug_min
						a = a + 1
						wug_max = as3.tolua(data[a][PROPERTY_ATTR_VALUE]) + wug_max
					end	
				end	
				local w_min = shux1[2][l][1] + wug_min 
				local w_max = shux1[2][l][2] + wug_max 				
				EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[1][i])
				EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[1][i])					
				EditSetText(QianghWnd.WndHandle,"gong_s"..i,""..wug_min.." - "..wug_max)
				EditSetText(QianghWnd.WndHandle,"gong_"..i,""..w_min.." - "..w_max)
				a = a + 1
			end
		else		
			local wug_max = 0 
			local wug_min = 0
			local tz_min = 0
			local tz_max = 0
			if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then
				if as3.tolua(LuaRet) ~= nil then
					job = tonumber(as3.tolua(LuaRet))	
				end	
			end 
			if job == 0 then
				return 
			end	
			if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
				local data = getTable(as3.tolua(LuaRet))
				if as3.tolua(data[9]) ~= nil and as3.tolua(data[9][PROPERTY_ATTR_NAME]) ~= nil and as3.tolua(data[9][PROPERTY_ATTR_VALUE]) ~= 0  then
					tz_min = as3.tolua(data[9][PROPERTY_ATTR_VALUE])
					tz_max = as3.tolua(data[10][PROPERTY_ATTR_VALUE])
				end	
			end	
			
			if CLGetItemTemplatePropByHandle(Temp,shux1[1][job][2]) then
				wug_max = tonumber(as3.tolua(LuaRet)) + tonumber(tz_max)
			end
			if CLGetItemTemplatePropByHandle(Temp,shux1[1][job][1]) then
				wug_min = tonumber(as3.tolua(LuaRet)) + tonumber(tz_min)
			end		
			local w_min = shux1[2][l][1] + wug_min 
			local w_max = shux1[2][l][2] + wug_max 
			
			EditSetText(QianghWnd.WndHandle,"edit_gong1",miaos[1][job])
			EditSetText(QianghWnd.WndHandle,"edit_gon1",miaos[1][job])
			EditSetText(QianghWnd.WndHandle,"gong_s1",""..wug_min.." - "..wug_max)
			EditSetText(QianghWnd.WndHandle,"gong_1",""..w_min.." - "..w_max)
		end
	elseif subType == 2 or subType == 4 or subType == 6 or subType == 7 then		
		if level >= 100 then
			if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) then 
				job = as3.tolua(LuaRet)
			end 
		else
			if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then
				if as3.tolua(LuaRet) ~= nil then
					job = tonumber(as3.tolua(LuaRet))	
				end	
			end 
		end		
		if job == 0 then
			return
		end		
		local a = 5
		for i = 1 , 3 do 
			local wug_max = 0 
			local wug_min = 0
			if i == 1 then
				if CLGetItemTemplatePropByHandle(Temp,shux2[1][i][job][2]) then
					wug_max = tonumber(as3.tolua(LuaRet))	
				end
				if CLGetItemTemplatePropByHandle(Temp,shux2[1][i][job][1]) then
					wug_min = tonumber(as3.tolua(LuaRet))	
				end	
			else
				if CLGetItemTemplatePropByHandle(Temp,shux2[1][i][2]) then
					wug_max = tonumber(as3.tolua(LuaRet))	
				end
				if CLGetItemTemplatePropByHandle(Temp,shux2[1][i][1]) then
					wug_min = tonumber(as3.tolua(LuaRet))	
				end	
			
			end			
			if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
				local data = getTable(as3.tolua(LuaRet))
				if as3.tolua(data[a]) ~= nil and as3.tolua(data[a][PROPERTY_ATTR_NAME]) ~= nil and as3.tolua(data[9][PROPERTY_ATTR_VALUE]) ~= 0  then
					wug_min = as3.tolua(data[a][PROPERTY_ATTR_VALUE]) + wug_min
					a = a + 1
					wug_max = as3.tolua(data[a][PROPERTY_ATTR_VALUE]) + wug_max
				end	
			end	
	
			local w_min = shux2[2][l][i][1] + wug_min 
			local w_max = shux2[2][l][i][2] + wug_max 
			if i == 1 then
				EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[i][job])
				EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[i][job])
				
			else
				EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[i])
				EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[i])			
			end		
			EditSetText(QianghWnd.WndHandle,"gong_s"..i,""..wug_min.." - "..wug_max)
			EditSetText(QianghWnd.WndHandle,"gong_"..i,""..w_min.." - "..w_max)
			a = a + 1
		end
	elseif subType == 15 then
		local miaos = {"魔防: ","物防: "}
		local a = 7
		for i = 1 , 2 do 
			local wug_max = 0 
			local wug_min = 0
			if CLGetItemTemplatePropByHandle(Temp,shux3[1][i][2]) then
				wug_max = tonumber(as3.tolua(LuaRet))	
			end
			if CLGetItemTemplatePropByHandle(Temp,shux3[1][i][1]) then
				wug_min = tonumber(as3.tolua(LuaRet))	
			end		
			if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
				local data = getTable(as3.tolua(LuaRet))
				if as3.tolua(data[a]) ~= nil and as3.tolua(data[a][PROPERTY_ATTR_NAME]) ~= nil and as3.tolua(data[9][PROPERTY_ATTR_VALUE]) ~= 0  then
					wug_min = as3.tolua(data[a][PROPERTY_ATTR_VALUE]) + wug_min
					a = a + 1
					wug_max = as3.tolua(data[a][PROPERTY_ATTR_VALUE]) + wug_max
				end	
			end	
			local w_min = shux3[2][l][i][1] + wug_min 
			local w_max = shux3[2][l][i][2] + wug_max 
			EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[i])
			EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[i])				
			EditSetText(QianghWnd.WndHandle,"gong_s"..i,""..wug_min.." - "..wug_max)
			EditSetText(QianghWnd.WndHandle,"gong_"..i,""..w_min.." - "..w_max)
			a = a + 1
		end
	elseif subType == 11 or subType == 13 then
		local miaos = {"物理攻击: ","魔法攻击: ","道术攻击: "}
		local a = 5
		for i = 1 , 3 do 
			local wug_max = 0 
			local wug_min = 0
			if CLGetItemTemplatePropByHandle(Temp,shux4[1][i][2]) then
				wug_max = tonumber(as3.tolua(LuaRet))	
			end
			if CLGetItemTemplatePropByHandle(Temp,shux4[1][i][1]) then
				wug_min = tonumber(as3.tolua(LuaRet))	
			end		
			if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
				local data = getTable(as3.tolua(LuaRet))
				if as3.tolua(data[a]) ~= nil and as3.tolua(data[a][PROPERTY_ATTR_NAME]) ~= nil and as3.tolua(data[9][PROPERTY_ATTR_VALUE]) ~= 0  then
					wug_min = as3.tolua(data[a][PROPERTY_ATTR_VALUE]) + wug_min
					a = a + 1
					wug_max = as3.tolua(data[a][PROPERTY_ATTR_VALUE]) + wug_max
				end	
			end	
			local w_min = shux4[2][l][1] + wug_min 
			local w_max = shux4[2][l][2] + wug_max 
			EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[i])
			EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[i])				
			EditSetText(QianghWnd.WndHandle,"gong_s"..i,""..wug_min.." - "..wug_max)
			EditSetText(QianghWnd.WndHandle,"gong_"..i,""..w_min.." - "..w_max)
			a = a + 1
		end
	elseif subType == 10 then
		local a = 5
		local miaos = {"物理攻击: ","魔法攻击: ","道术攻击: "}
		for i = 1 , 3 do 
			local wug_max = 0 
			local wug_min = 0
			if CLGetItemTemplatePropByHandle(Temp,shux5[1][i][2]) then
				wug_max = tonumber(as3.tolua(LuaRet))	
			end
			if CLGetItemTemplatePropByHandle(Temp,shux5[1][i][1]) then
				wug_min = tonumber(as3.tolua(LuaRet))	
			end		
			if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
				local data = getTable(as3.tolua(LuaRet))
				if as3.tolua(data[a]) ~= nil and as3.tolua(data[a][PROPERTY_ATTR_NAME]) ~= nil and as3.tolua(data[9][PROPERTY_ATTR_VALUE]) ~= 0  then
					wug_min = as3.tolua(data[a][PROPERTY_ATTR_VALUE]) + wug_min
					a = a + 1
					wug_max = as3.tolua(data[a][PROPERTY_ATTR_VALUE]) + wug_max
				end	
			end	
			local w_min = shux5[2][l][1] + wug_min 
			local w_max = shux5[2][l][2] + wug_max 
			EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[i])
			EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[i])				
			EditSetText(QianghWnd.WndHandle,"gong_s"..i,""..wug_min.." - "..wug_max)
			EditSetText(QianghWnd.WndHandle,"gong_"..i,""..w_min.." - "..w_max)
			a = a + 1
		end
	end
	local suc_s = suc_img[2][l]
	local gold = suc_img[3][l]
	local jb , bjb = 0 , 0
	if UI:Lua_GetPlayerSelfProperty64(5) then 
		bjb = as3.tolua(LuaRet)
	end    
	if UI:Lua_GetPlayerSelfProperty64(4) then 
		jb= as3.tolua(LuaRet) + bjb
	end      
	EditSetText(QianghWnd.WndHandle,"gold",""..gold)
	if jb < gold then
		local handle = GetWindow(QianghWnd.WndHandle,"gold")
		GUIEditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
	else
		local handle = GetWindow(QianghWnd.WndHandle,"gold")
		GUIEditSetTextColor(handle, MakeARGB(255, 194, 182, 160))
	end	
	local handle1 = GetWindow(QianghWnd.WndHandle,"yb")
	if handle1 ~= 0 then 
		if GUICheckBoxGetCheck(handle1) then
			QianghWnd.YbYes = 1
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1801500108)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1801500107)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1801500107)
		else
			if suc_s < 10 then
				ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][suc_s])
				ImageSetImageID(QianghWnd.WndHandle,"succ_image3",0)	
			elseif suc_s >= 10 and suc_s < 100 then
				local a = math.floor(suc_s/10) 
				local b = suc_s%10
				if b == 0 then
					b = 10
				end
				ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][a])
				ImageSetImageID(QianghWnd.WndHandle,"succ_image3",suc_img[1][b])		
			else
				ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1801500108)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1801500107)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1801500107)
			end
		end
	end	
	
	ImageSetImageID(QianghWnd.WndHandle,"succ_image4",1801500120)
	if job ~= 0 then
		QianghWnd.job = job 
	end
	
end

function QianghWnd.ChongzEditOnLBTNUp()
	CLOpenUrlUseIEByType(3)
end

function QianghWnd.YbChange(_Handle)
	local _Istrue = GUICheckBoxGetCheck(_Handle)
	if _Istrue then
		QianghWnd.YbYes = 1
		ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1801500108)
		ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1801500107)
		ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1801500107)
	else
		QianghWnd.YbYes = 0
		local handle = GetWindow(nil,"ForgeWnd,QianghWnd,item")
		local item_guid = RDItemCtrlGetGUIDataPropByType(handle,nil,ITEMGUIDATA_ITEMGUID)
		local Entity = CLGetItemEntityHandleByGUID(item_guid)
		local q_level = 0
		if UI:Lua_GetItemEntityPropByHandle(Entity,ITEM_PROP_EQUIP_REFINELEVEL) then
			q_level = tonumber(as3.tolua(LuaRet)) + 1
		end	
		local suc_s = suc_img[2][q_level]
		if suc_s < 10 then
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][suc_s])
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",0)	
		elseif suc_s >= 10 and suc_s < 100 then
			local a = math.floor(suc_s/10) 
			local b = suc_s%10
			if b == 0 then
				b = 10
			end
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][a])
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",suc_img[1][b])		
		else
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1801500108)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1801500107)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1801500107)
		end	
	end	
	
end

function QianghWnd.jia(_handle)
	local handle = GetWindow(nil,"ForgeWnd,QianghWnd,item")
	local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil,ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid) == 0 or item_guid == nil then
		msg_up("请放入需要强化的装备")
		return
	end
	UI:Lua_SubmitForm("强化表单", "jia_xing", ""..item_guid)
end
	
function QianghWnd.qiangh(_handle)
	
	if QianghWnd.tip1 == 0 then 
		local hand = GetWindow(nil, "ForgeWnd,QianghWnd,tip2")
		if hand ~= 0 then
			WndDelEffect(QianghWnd.WndHandle,"qianghua") 
			GUIWndSetVisible(hand, false)
		end
		local handle = GetWindow(QianghWnd.WndHandle, "tip3")
		if handle ~= 0 then
			WndAddEffect(nil,"ForgeWnd,close",3020100900,-7,-7,100,0)
			GUIWndSetVisible(handle, true)
			GUIWndSetTextArrangeType(handle,10,0,0,0)
			QianghWnd.itemTweenUp03(handle)
			GUIButtonSetTextFont(handle,"SIMLI18")
			CLAddDelayTask("ForgeWnd.closeWnd()", 10000, 1)
		end
	end
	
	local handle = GetWindow(nil,"ForgeWnd,QianghWnd,item")
	local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil,ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid) == 0 or item_guid == nil then
		msg_up("请放入需要强化的装备")
		return
	end
	
	--2秒保护时间
	local _handle = GetWindow(nil,"ForgeWnd,QianghWnd,qianghua")
	if _handle ~= 0 then 
		GUIWndSetEnableM(_handle, false)
		--msg('dis')
		CLAddDelayTask("QianghWnd.setbtnEnable()", 2000, 1)
	end
	
	UI:Lua_SubmitForm("强化表单", "forge_item", ""..item_guid.."#"..QianghWnd.job.."#"..QianghWnd.YbYes)
end

function QianghWnd.setbtnEnable()
	local _handle = GetWindow(nil,"ForgeWnd,QianghWnd,qianghua")
	if _handle ~= 0 then 
		--msg('dis')
		GUIWndSetEnableM(_handle, true)
	end
end

function msg_up(str)
	local _handle = GetWindow(nil,"ForgeWnd,QianghWnd,qianghua")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , -45 , -16 , 70 , color , 3)
end	

QianghWnd.main()