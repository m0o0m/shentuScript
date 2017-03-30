ZhulWnd = {}

function ZhulWnd.main()		
	local ui = ""
	.."<form default_parent='ForgeWnd'>" 
	.."<dialog OnInit='	ZhulWnd.UIInit' id='ZhulWnd' image='0' x='0' y='0' w='16' h='16' drag='true' revmsg='true'>"	
	.."	<image id='image_back' image='1802400001' x='15' y='74' w='375' h='269' />"
	.."	<image id='item_image' image='1802400003' x='130' y='60' w='150' h='150' />"
	.."	<itemctrl id='item' x='176' y='113' w='60' h='60' auto_manage='true' enable='true' revmsg='true' use_back='0'/>"
	.."	<image id='item_magic' x='176' y='113' w='60' h='60' />"
	.."	<image id='nengliangback_image' image='1802400027' x='70' y='199' w='267' h='24' revmsg='false'/>"
	.."	<image id='nengliang' x='82' y='204' w='243' h='14' image='1802400028' revmsg='true' enable='false' visible='false'/>"	
	.."	<edit id='zhullv' x='190' y='198' w='70' h='26' revmsg='false'  text='' />"
	.."	<image id='gong_image1' image='1802400023' x='31' y='245' w='146' h='81' revmsg='false'/>"
	.."	<image id='gong_image2' image='1802400023' x='233' y='245' w='146' h='81' revmsg='false'/>"	
	.."	<image id='TestWndChild_28' image='1800000366' x='183' y='255' w='43' h='58' revmsg='false'/>"
	.."	<edit id='sm2' x='36' y='247' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='sm1' x='36' y='270' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='sm3' x='36' y='292' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='sz2' x='102' y='251' w='100' h='26' revmsg='false'  text='' />"
	.."	<edit id='sz1' x='102' y='273' w='100' h='26' revmsg='false'  text='' />"
	.."	<edit id='sz3' x='102' y='295' w='100' h='26' revmsg='false'  text='' />"
	.."	<edit id='hsm2' x='235' y='247' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='hsm1' x='235' y='269' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='hsm3' x='235' y='291' w='65' h='32' revmsg='false' text_color='#C2B6A0' text='' />"
	.."	<edit id='hsz2' x='302' y='251' w='100' h='26' revmsg='false' text_color='#00FF01' text='' />"	
	.."	<edit id='hsz1' x='302' y='272' w='100' h='26' revmsg='false' text_color='#00FF01' text='' />"
	.."	<edit id='hsz3' x='302' y='296' w='100' h='26' revmsg='false' text_color='#00FF01' text='' />"	
	.."	<richedit id='goumails' x='292' y='375' w='100' h='23' revmsg='true' text_color='#C2B6A0' visible='true' text='' />"
	.."	<edit id='lingli_have' x='75' y='370' w='72' h='25' revmsg='true' text_color='#C2B6A0' text='拥有魂力：' />"	
	.."	<image id='lingli_back' image='1802400006' x='145' y='367' w='137' h='26' image_color='#C2B6A0' revmsg='true'/>"
	.."	<edit id='lingli1' x='170' y='370' w='74' h='24' revmsg='false' align='center' text_color='#C2B6A0' text='' />"
	.."	<edit id='lingli_need' x='75' y='402' w='72' h='25' revmsg='true' text_color='#C2B6A0' text='消耗魂力：' />"	
	.."	<image id='lingli_back2' image='1802400006' x='145' y='402' w='137' h='26' image_color='#C2B6A0' revmsg='true'/>"
	.."	<edit id='lingli2' x='170' y='405' w='74' h='24' revmsg='false' align='center' text_color='#C2B6A0' text='' />"
	.."	<button id='zhuling' image='1802400015' x='140' y='436' w='132' h='57' OnLButtonUp='ZhulWnd.zhul' revmsg='true' text_color='#C2B6A0'/>"
	.."	<richedit id='shuom' x='50' y='475' w='70' h='23' revmsg='true' text_color='#C2B6A0' text='' />"
	.."	<button id='zhulsm' image='1800000297' x='22' y='467' w='27' h='30' revmsg='true' text_color='#C2B6A0'/>"
	.." </dialog>"
	.."</form>"	
	GenFormByString(ui)
end


-----------------------------------------------------------------table-----------------------------------------------------------------------------
----武器1，护腕3，戒指9，项链8，攻击(根据职业三选一)
local shux1 = {	
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}}, 	
} 
----衣服4，腰带7，鞋子6，头盔2，攻击,物防，魔防
local shux2 = {
	{{{11,10},{13,12},{15,14}},{7,6},{9,8}},
	{{{2,1},{2,2},{2,2}},{{3,1},{5,4},{4,4}},{{4,1},{7,6},{6,6}},{{4,2},{10,9},{8,8}},{{5,2},{12,11},{10,10}},{{6,3},{16,12},{13,12}},{{7,4},{19,14},{16,15}},
	{{9,6},{23,17},{19,18}},{{11,7},{27,20},{21,20}},{{13,10},{31,24},{25,23}},{{15,12},{38,28},{29,27}},{{44,32},{18,15},{34,30}}},	
}
----护盾 15    物防，魔防
local shux3 = {
	{{7,6},{9,8}},
	{{{2,2},{2,2}},{{3,3},{3,3}},{{4,4},{5,5}},{{5,5},{7,7}},{{7,7},{9,8}},{{9,9},{11,10}},{{11,11},{12,11}},{{14,14},{16,13}},{{17,17},{19,17}},
	{{21,20},{21,21}},{{27,22},{24,23}},{{34,24},{27,26}}},	
}
----宝石11， 魂珠13     攻击
local shux4 = {	
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}}, 	
}
----勋章10     攻击
local shux5 = {   
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,4},{8,5},{10,6},{12,8},{14,9},{16,11},{19,13},{23,15},{27,18},{33,23}},
}

----每级注灵升级所需要的灵力值
local req_ll = {8,26,68,131,235,377,566,821,1149,1586,2157,2873}

ZhulWnd.WndHandle = 0
ZhulWnd.job = 0

function ZhulWnd.UIInit(_GUIHandle)	
	ZhulWnd.WndHandle = _GUIHandle
	local _handle = GetWindow(_GUIHandle,"shuom")
	if _handle ~= 0 then
		GUIRichEditAppendString(_handle,"#SELECT#蕴魂说明#SELECTEND#")
		GUIWndSetHint(_handle, "<font color='#D58840'>蕴魂说明：\n</font><font color='#B8A085'>1.双击使用魂石精华可以获得魂力\n2.将魂力注入到装备中，可以提高装备的战斗属性\n3.魂石精华可以通过活动、怪物掉落、商城购买获得</font>")
	end	
	_handle = GetWindow(_GUIHandle,"goumails")
	if _handle ~= 0 then
		GUIRichEditAppendString(_handle,"#SELECT#购买蕴魂石＞#SELECTEND#")
		GUIWndRegistScript(_handle, RDWndBaseCL_mouse_lbUp, "ZhulWnd.buy_ls")
	end					
end	

function ZhulWnd.updata(item,lingli_have)	
	for i = 1 , 3 do 
		EditSetText(ZhulWnd.WndHandle,"sm"..i,"")
		EditSetText(ZhulWnd.WndHandle,"sz"..i,"")
		EditSetText(ZhulWnd.WndHandle,"hsm"..i,"")
		EditSetText(ZhulWnd.WndHandle,"hsz"..i,"")
	end	
	local handle = GetWindow(nil,"ForgeWnd,ZhulWnd,item")
	GUIItemCtrlClearItemData(handle)	
	RDItemCtrlSetGUIDataPropByGUID(handle, nil, item)	
	ZhulWnd.OnEquipIn(handle,lingli_have)
end

function ZhulWnd.OnEquipIn(_handle,lingli_have)	
	local item_guid = RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID)
	local Temp = CLGetItemTemplateHandleByGUID(item_guid)
	local Entity = CLGetItemEntityHandleByGUID(item_guid)
	local item_lv = 0
	if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_LEVEL) then
		item_lv = tonumber(as3.tolua(LuaRet))	
	end
	local subtype = 0
	if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_SUBTYPE) then
		subtype = tonumber(as3.tolua(LuaRet))	
	end

	local zhul_lv = CLGetItemEntityCustomVarInt(Entity, "zhul_level")	
	local next_zhul_lv = zhul_lv + 1
	local zhul_num = CLGetItemEntityCustomVarInt(Entity, "zhul_num")
	local _nengliang = GetWindow(nil,"ForgeWnd,ZhulWnd,nengliang")
	if _nengliang ~= 0 then
		local value = 0
		local a = zhul_lv
		local b = zhul_num
		value = a/b
		if value > 0 then
			GUIWndSetVisible(_nengliang,true)
			GUIImageSetDrawRect(_nengliang,0,value,0,1)
			EditSetText(ZhulWnd.WndHandle,"zhullv",""..a.."/"..b)
		else
			GUIWndSetVisible(_nengliang,false)
			EditSetText(ZhulWnd.WndHandle,"zhullv",""..a.."/"..b)
		end

	end	
	
	if zhul_lv < 12 then 
		EditSetText(ZhulWnd.WndHandle,"lingli1",""..lingli_have)	
		if lingli_have < req_ll[next_zhul_lv] then
			local handle = GetWindow(ZhulWnd.WndHandle,"lingli1")
			GUIEditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
		else
			local handle = GetWindow(ZhulWnd.WndHandle,"lingli1")
			GUIEditSetTextColor(handle, MakeARGB(255,194, 182, 160))
		end	
		EditSetText(ZhulWnd.WndHandle,"lingli2",""..req_ll[next_zhul_lv])
	else
		EditSetText(ZhulWnd.WndHandle,"lingli1",""..lingli_have)	
		EditSetText(ZhulWnd.WndHandle,"lingli2","0")
		return ""
	end

	local k = 10
	local miaos = {{"物理攻击:","魔法攻击:","道术攻击:"},"物防:","魔防:"}
	
	----武器1，护腕3，戒指9，项链8 攻击(根据职业三选一)
	if subtype == 1 or subtype == 3 or subtype == 8 or subtype == 9 then
		if item_lv >= 100 then
			for i = 1, 3 do	
				--取数据
				local old_prop_min = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_min = old_prop_min + shux1[2][next_zhul_lv][1]
				k = k + 1	
				local old_prop_max = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_max = old_prop_max + shux1[2][next_zhul_lv][2]
				k = k + 1
				--给控件设置数据
				EditSetText(ZhulWnd.WndHandle,"sm"..i,miaos[1][i])
				EditSetText(ZhulWnd.WndHandle,"hsm"..i,miaos[1][i])					
				EditSetText(ZhulWnd.WndHandle,"sz"..i,""..old_prop_min.." - "..old_prop_max)
				EditSetText(ZhulWnd.WndHandle,"hsz"..i,""..new_prop_min.." - "..new_prop_max)		
			end
		else
			if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then
				if as3.tolua(LuaRet) ~= nil then ZhulWnd.job = tonumber(as3.tolua(LuaRet)) end	
			end 
			if ZhulWnd.job == 0 then return end	
			local old_prop_min = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
			local new_prop_min = old_prop_min + shux1[2][next_zhul_lv][1]
			k = k + 1	
			local old_prop_max = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
			local new_prop_max = old_prop_max + shux1[2][next_zhul_lv][2]
			--msg(""..old_prop_min)
			EditSetText(ZhulWnd.WndHandle,"sm1",miaos[1][ZhulWnd.job])
			EditSetText(ZhulWnd.WndHandle,"hsm1",miaos[1][ZhulWnd.job])					
			EditSetText(ZhulWnd.WndHandle,"sz1",""..old_prop_min.." - "..old_prop_max)
			EditSetText(ZhulWnd.WndHandle,"hsz1",""..new_prop_min.." - "..new_prop_max)
		end
	----勋章 10 ，宝石 11 ，魂珠 13   --- 攻击
	elseif subtype == 10 or subtype == 11 or subtype == 13 then
			for i = 1, 3 do	
				--取数据
				local old_prop_min = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_min = old_prop_min + shux1[2][next_zhul_lv][1]
				k = k + 1	
				local old_prop_max = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_max = old_prop_max + shux1[2][next_zhul_lv][2]
				k = k + 1
				--给控件设置数据
				EditSetText(ZhulWnd.WndHandle,"sm"..i,miaos[1][i])
				EditSetText(ZhulWnd.WndHandle,"hsm"..i,miaos[1][i])					
				EditSetText(ZhulWnd.WndHandle,"sz"..i,""..old_prop_min.." - "..old_prop_max)
				EditSetText(ZhulWnd.WndHandle,"hsz"..i,""..new_prop_min.." - "..new_prop_max)		
			end			
	----衣服4，腰带7，鞋子6，头盔2，---攻击, 物防, 魔防
	elseif subtype == 2 or subtype == 4 or subtype == 6 or subtype == 7 then
		if item_lv >= 100 then		
			if CLGetPlayerSelfPropBase(ROLE_PROP_JOB) then ZhulWnd.job = as3.tolua(LuaRet) end 
		else
			if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then
				if as3.tolua(LuaRet) ~= nil then ZhulWnd.job = tonumber(as3.tolua(LuaRet)) end	
			end 
		end				
		if ZhulWnd.job == 0 then return end	
			
		for i = 1 , 3 do 
			if i == 1 then
				local old_prop_min = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_min = old_prop_min + shux2[2][next_zhul_lv][i][1]					
				k = k + 1	
				local old_prop_max = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
				local new_prop_max = old_prop_max + shux2[2][next_zhul_lv][i][2]
				if item_lv >= 100 then 
					k = k + 5 
				else
					k = k +1
				end
				EditSetText(ZhulWnd.WndHandle,"sm"..i,miaos[i][ZhulWnd.job])
				EditSetText(ZhulWnd.WndHandle,"hsm"..i,miaos[i][ZhulWnd.job])					
				EditSetText(ZhulWnd.WndHandle,"sz"..i,""..old_prop_min.." - "..old_prop_max)
				EditSetText(ZhulWnd.WndHandle,"hsz"..i,""..new_prop_min.." - "..new_prop_max)
			else 
				old_prop_min = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
				new_prop_min = old_prop_min + shux2[2][next_zhul_lv][i][1]			
				k = k + 1	
				old_prop_max = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
				new_prop_max = old_prop_max + shux2[2][next_zhul_lv][i][2]		
				k = k + 1
				EditSetText(ZhulWnd.WndHandle,"sm"..i,miaos[i])
				EditSetText(ZhulWnd.WndHandle,"hsm"..i,miaos[i])					
				EditSetText(ZhulWnd.WndHandle,"sz"..i,""..old_prop_min.." - "..old_prop_max)
				EditSetText(ZhulWnd.WndHandle,"hsz"..i,""..new_prop_min.." - "..new_prop_max)	
			end 
		end
		
	----护盾 15    物防，魔防	
	elseif subtype == 15 then
		for i = 2, 3 do	
			local l = i -1
			local old_prop_min = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
			local new_prop_min = old_prop_min + shux3[2][next_zhul_lv][l][1]			
			k = k + 1	
			local old_prop_max = CLGetItemEntityCustomVarInt(Entity,"_dv"..k)
			local new_prop_max = old_prop_max + shux3[2][next_zhul_lv][l][2]
			k = k + 1	
			EditSetText(ZhulWnd.WndHandle,"sm"..i,miaos[i])
			EditSetText(ZhulWnd.WndHandle,"hsm"..i,miaos[i])				
			EditSetText(ZhulWnd.WndHandle,"sz"..i,""..old_prop_min.." - "..old_prop_max)
			EditSetText(ZhulWnd.WndHandle,"hsz"..i,""..new_prop_min.." - "..new_prop_max)
		end

	
	end
			
end

function ZhulWnd.buy_ls(_handle)
	local _handle1 = GetWindow(nil,"ForgeWnd, Buy_ls")
	if _handle1 == 0 then
		UI:Lua_OpenWindow(ForgeWnd.WndHandle, "Buy_ls.lua")
	else
		GUIWndClose(_handle1)
	end
end

function ZhulWnd.zhul(_handle)
	
	local handle = GetWindow(nil,"ForgeWnd,ZhulWnd,item")	
	local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil,ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid) == 0 or item_guid == nil then
		msg_up("请放入需要强化的装备")
		return
	end
	
	--2秒保护时间
	local _handle = GetWindow(nil,"ForgeWnd,ZhulWnd,zhuling")
	if _handle ~= 0 then 
		GUIWndSetEnableM(_handle, false)
		--msg('dis')
		CLAddDelayTask("ZhulWnd.setbtnEnable()", 2000, 1)
	end
	
	
	UI:Lua_SubmitForm("注灵表单", "zhul_item", ""..item_guid.."#"..ZhulWnd.job)
end

function ZhulWnd.setbtnEnable()
	local _handle = GetWindow(nil,"ForgeWnd,ZhulWnd,zhuling")
	if _handle ~= 0 then 
		--msg('dis')
		GUIWndSetEnableM(_handle, true)
	end
end

function msg_up(str)
	local _handle = GetWindow(nil,"ForgeWnd,ZhulWnd,zhuling")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , -45 , -16 , 70 , color , 3)	
end	


ZhulWnd.main()