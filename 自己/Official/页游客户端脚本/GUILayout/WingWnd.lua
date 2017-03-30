WingWnd ={}
function WingWnd.main()
	local ui = "<form> <dialog OnInit='WingWnd.UIInit' id='WingWnd' x='0' y='0' w='714' h='504' center='true' image='1802300001' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='wing_title' x='304' y='3' w='77' h='24' image='1801500083' enable='false' />"
	.."	<button id='Close' x='676' y='4' w='26' h='26' image='1800000043' OnLButtonUp='WingWnd.closeWnd' />"
	.."	<image id='jindut_back' x='459' y='319' w='192' h='20' image='1802300003' revmsg='false'/>"
	.."	<image id='jindut' x='476' y='323' w='158' h='12' image='1802300004' revmsg='false' enable='false' visible='false'/>"
	.."	<edit id='peiy_edit' x='545' y='323' w='161' h='12' canedit='false' revmsg='false' enable='false' text_color='#E1CB51' text='0'/>"
	.."	<edit id='wing_edit' x='153' y='63' w='100' h='30' canedit='false' revmsg='false' enable='false' text_color='#1BC7E4' font='SIMLI18' text=''/>"
	.."	<edit id='wing_edit3' x='435' y='58' w='100' h='30' canedit='false' revmsg='false' enable='false' text_color='#59D600' font='SIMLI18' text='可培养为'/>"
	.."	<edit id='wing_edit2' x='510' y='58' w='100' h='30' canedit='false' revmsg='false' enable='false' text_color='#1BC7E4' font='SIMLI18' text=''/>"
	.."	<edit id='edit_pei' x='500' y='290' w='100' h='32' canedit='false' revmsg='false' enable='false' text_color='#F1B90C' font='SIMLI18' text='培养祝福值'/>"
	.."	<edit id='edit_shux' x='140' y='327' w='120' h='24' canedit='false' revmsg='false' enable='false' text_color='#F1B90C' font='SIMLI18' text='人物属性加成'/>"
	.."	<image id='TestWndChild_1' x='343' y='59' w='33' h='57'  image='1802300002' revmsg='false'/>"
	.."	<edit id='level_edit1' x='343' y='65' w='30' h='100' canedit='false' revmsg='true' enable='false' text_color='#FE0100' font='SIMLI18'/>"
	.."	<image id='TestWndChild_2' x='652' y='57' w='33' h='57' image='1802300002' revmsg='false'/>"
	.."	<edit id='level_edit2' x='652' y='65' w='30' h='100' canedit='false' revmsg='true' enable='false' text_color='#FE0100' font='SIMLI18'/>"
	.."	<image id='dangq_image' x='190' y='230' w='16' h='16' enable='false' revmsg='false'/>"
	.."	<edit id='mubiao_i' x='445' y='100' w='200' h='130'  canedit='false' revmsg='true'   text='  '/>"
	.."	<image id='mubiao_image' x='545' y='230' w='16' h='16' enable='false' revmsg='false'/>"
	
	.."	<edit id='edit_gong' x='89' y='377' w='42' h='23' canedit='false' revmsg='false' enable='false' text_color='#FE0100' text='攻击：'/>"
	.."	<edit id='edit_fan' x='88' y='410' w='42' h='23' canedit='false' revmsg='false' enable='false' text_color='#00FE2A' text='物防：'/>"
	.."	<edit id='edit_mo' x='88' y='443' w='42' h='23' canedit='false' revmsg='false' enable='false' text_color='#02D3FE' text='魔防：'/>"
	.."	<image id='editback1' x='135' y='373' w='16' h='16' image='1802300005' revmsg='false' enable='false'/>"
	.."	<image id='editback2' x='135' y='406' w='16' h='16' image='1802300005' revmsg='false' enable='false'/>"
	.."	<image id='editback3' x='135' y='440' w='16' h='16' image='1802300005' revmsg='false' enable='false'/>"
	.."	<edit id='edit1' x='155' y='378' w='140' h='22' canedit='false' revmsg='true' enable='false' text_color='#C2B6A0'/>"
	.."	<edit id='edit2' x='155' y='411' w='140' h='22' canedit='false' revmsg='true' enable='false' text_color='#C2B6A0'/>"
	.."	<edit id='edit3' x='155' y='444' w='140' h='22' canedit='false' revmsg='true' enable='false' text_color='#C2B6A0'/>"
	.."	<edit id='edit_miaos' x='478' y='343' w='178' h='25' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='祝福值越高，进阶越容易'/>"
	.."	<edit id='edit_miaos1' x='425' y='380' w='70' h='19' canedit='false' revmsg='true' enable='false' text_color='#CFB360' text='消耗培养:'/>"
	.."	<image id='yu_image' x='485' y='362' w='45' h='45' fitsize='true' image='1881410064' revmsg='false' enable='false'/>"
	.."	<image id='gold_image' x='600' y='385' w='16' h='14' image='1800000052' revmsg='false' enable='false'/>"
	.."	<edit id='yug_num' x='525' y='380' w='40' h='20' canedit='false' align='center' revmsg='true' enable='false' text_color='#00FE2A'/>"
	.."	<edit id='yug_one' x='558' y='380' w='40' h='20' canedit='false' revmsg='true' enable='false' text_color='#C2B6A0'/>"
	.."	<edit id='gold_edit' x='620' y='380' w='40' h='20' canedit='false' revmsg='true' enable='false' text_color='#00FE2A'/>"
	.."	<check id='zid' x='460' y='410' w='182' h='21' image='1800000176'  revmsg='true' OnLButtonUp='WingWnd.GetCheckState' text='材料不足时，自动从商场购买'/>"
	.."	<button id='begin_button' x='450' y='445' w='84' h='32' image='1800000150' OnLButtonUp='WingWnd.begin' revmsg='true' text='开始培养'/>"
	.."	<button id='Auto_button' x='570' y='445' w='84' h='32' image='1800000150' OnLButtonUp='WingWnd.Auto' revmsg='true' text='自动培养'/>"
	.."	<edit id='msg1' x='440' y='428' w='220' h='25' text_color='RED' align='center' text='' />"
	.."	<edit id='msg2' x='440' y='428' w='220' h='25' text_color='RED' align='center' text='' />"
	.."	<edit id='msg3' x='440' y='428' w='220' h='25' text_color='RED' align='center' text='' />"
	.."	<edit id='msg4' x='440' y='428' w='220' h='25' text_color='RED' align='center' text='' />"
	.."	<edit id='msg5' x='440' y='428' w='220' h='25' text_color='RED' align='center' text='' />"
	
	.."	<button id='TRAIN_BTN_PROMPT' image='1804600019' x='552' y='436' w='188' h='50' visible='false' revmsg='false' text='培养翅膀' text_color='#DBC300'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

--UI Logic Code Start

WingWnd.WndHandle = 0
WingWnd.wing = {}
WingWnd.yug = {} --羽根
WingWnd.gold = {}
WingWnd.pei = {}
WingWnd.level = 0
WingWnd.peiy = 0
WingWnd.yugnum = 0
function WingWnd.UIInit(_Handle)
	WingWnd.WndHandle = _Handle	
	GUIWndSetSizeM(_Handle, 714, 504)
	if tonumber(FIRST_OPEN_WINGWINDOW) == 1 then
		local handle = GetWindow(_Handle, "TRAIN_BTN_PROMPT")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
			GUIWndSetTextArrangeType(handle,10,0,0,0)
			WingWnd.itemTweenUp01(handle)
			GUIButtonSetTextFont(handle,"SIMLI18")
		end
	end

	if WndAddEffect(_Handle,"edit_shux",3000100500,-133,-220,150,0) then
	end
	if WndAddEffect(_Handle,"edit_pei",3000100500,-146,-185,150,0) then
	end
	local _handle =  GetWindow(WingWnd.WndHandle,"dangq_image",nil)
	GUIImageSetDrawCenter(_handle,true)
	local _handle =  GetWindow(WingWnd.WndHandle,"mubiao_image",nil)
	GUIImageSetDrawCenter(_handle,true)
	GUIWndRegistScript(_Handle, RDWndBaseCL_wnd_close, "WingWnd.Winclose")
	local _handle =  GetWindow(_Handle,"zid",nil)
	GUIWndSetHint(_handle, "羽毛<font color='#00BBFF'>30元宝</font>/每根 ")
	UI:Lua_SubmitForm("翅膀升阶表单", "main", "")
end

function WingWnd.itemTweenUp01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' x='547' /></Tween>", "WingWnd.itemTweenDown01("..hand..")")
end 
function WingWnd.itemTweenDown01(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='557' /></Tween>" , "WingWnd.itemTweenUp01("..hand..")")
end 

function WingWnd.GetCheckState(_GUIhandle)
	local _Istrue = false
	if GUICheckBoxGetCheck(_GUIhandle) then
		--msg("in")
		_Istrue = as3.tolua(LuaRet)
	end
	if not _Istrue then
		WndDelEffect(_GUIhandle)
	else
		WndAddEffect(WingWnd.WndHandle, "zid", 3020100000, -2, -2, 100, 0)
	end
end

function wing_data(data)
	WingWnd.wing = data[1]
	WingWnd.yug = data[2]
	WingWnd.gold = data[3]
	WingWnd.pei = data[4]
	WingWnd.level = data[5]
	WingWnd.peiy = data[6]
	WingWnd.yugnum  = data[7]
	wing_update(WingWnd.level,WingWnd.peiy)
end

function wing_update(inde,peiy)
	
	if inde < 5 then
		WndAddEffect(WingWnd.WndHandle, "zid", 3020100000, -2, -2, 100, 0)
		WndAddEffect(WingWnd.WndHandle, "begin_button", 3020100700, -13, -8, 100, 0)
	end
	
	local tab_jie = {"零阶","一阶","二阶","三阶","四阶","五阶","六阶","七阶","八阶","九阶","十阶"}
	local tab = {}
	local index = inde + 1 	
	local temp1 = 0 
	if index == #WingWnd.wing then                 --当翅膀顶级时
		local _handle =  GetWindow(WingWnd.WndHandle,"level_edit1",nil)
		EditSetText(_handle,nil,tab_jie[index])
		GUIWndSetTextArrangeType(_handle,4,-2,4,1);
		local temp = CLGetItemTemplateHandleByKeyName(WingWnd.wing[index])
		local name = ""
		if CLGetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
			name = as3.tolua(LuaRet)
		end
		local _handle =  GetWindow(WingWnd.WndHandle,"wing_edit",nil)
		EditSetText(_handle,nil,name)
		local image = 0
		if CLGetItemTemplatePropByHandle(temp,14) then
			image = as3.tolua(LuaRet)
		end
		
		ImageSetImageID(WingWnd.WndHandle,"dangq_image",image)
		
		down()
		local tab1 = {{80,81},{76,77},{78,79}}
		local ms = {"攻击","物防","魔防"}
		local str = ""
		for i = 1 , 3 do 
			local mi = 0 
			local ma = 0
			if CLGetItemTemplatePropByHandle(temp,tab1[i][1]) then
				ma = as3.tolua(LuaRet)
			end
			if CLGetItemTemplatePropByHandle(temp,tab1[i][2]) then
				mi = as3.tolua(LuaRet)
			end
			local _handle =  GetWindow(WingWnd.WndHandle,"edit"..i,nil)
			EditSetText(_handle,nil,mi.." - "..ma)
		--[[	if temp1 ~= 0 then 
				if CLGetItemTemplatePropByHandle(temp1,tab1[i][1]) then
					ma = as3.tolua(LuaRet)
				end
				if CLGetItemTemplatePropByHandle(temp1,tab1[i][2]) then
					mi = as3.tolua(LuaRet)
				end
				str = str.."<font color='#00BBFF'>"..ms[i].."</font>: "..mi.." - "..ma.."\n"
			end	--]]
		end		
		
		ImageSetImageID(WingWnd.WndHandle,"mubiao_image",1802300006)	
		down1()
		
		local tab_visible = {"gold_edit","yug_num","yug_one","level_edit2","wing_edit2","jindut","wing_edit3","edit_pei","peiy_edit","jindut_back","TestWndChild_2","edit_miaos","edit_miaos1","yu_image","gold_image","zid","begin_button","Auto_button"}
		for i=1 ,#tab_visible do 
			local _hand = GetWindow(WingWnd.WndHandle,tab_visible[i],nil)
			if _hand ~= 0 then 
				GUIWndSetVisible(_hand,false)
			end 
		end
		return 
	end
	
	local _handle =  GetWindow(WingWnd.WndHandle,"level_edit1",nil)
	EditSetText(_handle,nil,tab_jie[index])
	GUIWndSetTextArrangeType(_handle,4,-2,4,1);
	local _handle =  GetWindow(WingWnd.WndHandle,"level_edit2",nil)
	EditSetText(_handle,nil,tab_jie[index + 1])
	GUIWndSetTextArrangeType(_handle,4,-2,4,1);	

		
	
	local _handle =  GetWindow(WingWnd.WndHandle,"yug_one",nil)
	EditSetText(_handle,nil,"/ "..WingWnd.yug[index])
	
	local _handle =  GetWindow(WingWnd.WndHandle,"gold_edit",nil)
	EditSetText(_handle,nil,""..WingWnd.gold[index])
	
	local temp = CLGetItemTemplateHandleByKeyName(WingWnd.wing[index])
	local name = ""
	if CLGetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
		name = as3.tolua(LuaRet)
	end
	local _handle =  GetWindow(WingWnd.WndHandle,"wing_edit",nil)
	EditSetText(_handle,nil,name)
	
	local image = 0
	if CLGetItemTemplatePropByHandle(temp,14) then
		image = as3.tolua(LuaRet)
	end
	ImageSetImageID(WingWnd.WndHandle,"dangq_image",image)
	down()

	
	if index < #WingWnd.wing then
		temp1 = CLGetItemTemplateHandleByKeyName(WingWnd.wing[index + 1])
		local name1 = ""
		if CLGetItemTemplatePropByHandle(temp1,ITEM_PROP_NAME) then
			name1 = as3.tolua(LuaRet)
		end
		local _handle1 =  GetWindow(WingWnd.WndHandle,"wing_edit2",nil)
		EditSetText(_handle1,nil,name1)
		local image1 = 0
		if CLGetItemTemplatePropByHandle(temp1,14) then
			image1 = as3.tolua(LuaRet)
		end
		ImageSetImageID(WingWnd.WndHandle,"mubiao_image",image1)
		down1()
	end	
	local tab1 = {{80,81},{76,77},{78,79}}
	local ms = {"攻击","物防","魔防"}
	local str = ""
	for i = 1 , 3 do 
		local mi = 0 
		local ma = 0
		if CLGetItemTemplatePropByHandle(temp,tab1[i][1]) then
			ma = as3.tolua(LuaRet)
		end
		if CLGetItemTemplatePropByHandle(temp,tab1[i][2]) then
			mi = as3.tolua(LuaRet)
		end
		local _handle =  GetWindow(WingWnd.WndHandle,"edit"..i,nil)
		EditSetText(_handle,nil,mi.." - "..ma)
		if temp1 ~= 0 then 
			if CLGetItemTemplatePropByHandle(temp1,tab1[i][1]) then
				ma = as3.tolua(LuaRet)
			end
			if CLGetItemTemplatePropByHandle(temp1,tab1[i][2]) then
				mi = as3.tolua(LuaRet)
			end
			str = str.."<font color='#00BBFF'>"..ms[i].."</font>: "..mi.." - "..ma.."\n"
		end	
	end
	local _handle =  GetWindow(WingWnd.WndHandle,"mubiao_i",nil)
	GUIWndSetHint(_handle, str)
	peiy_update(index,peiy,WingWnd.yugnum)
	
end
function up()
	local _handle =  GetWindow(WingWnd.WndHandle,"dangq_image",nil)
	if _handle ~= 0 then
		GUI:WndTween(_handle, "<Tween><Frame time='2' y = '230' /></Tween>","down()")
	end	
end	

function down()
	local _handle =  GetWindow(WingWnd.WndHandle,"dangq_image",nil)
	if _handle ~= 0 then
		GUI:WndTween(_handle, "<Tween><Frame time='2' y = '240' /></Tween>","up()")
	end	
end	
function up1()
	local _handle1 =  GetWindow(WingWnd.WndHandle,"mubiao_image",nil)
	if _handle1 ~= 0 then
		GUI:WndTween(_handle1, "<Tween><Frame time='2' y = '230' /></Tween>","down1()")
	end
end	

function down1()
	local _handle1 =  GetWindow(WingWnd.WndHandle,"mubiao_image",nil)
	if _handle1 ~= 0 then
		GUI:WndTween(_handle1, "<Tween><Frame time='2' y = '240' /></Tween>","up1()")
	end
end	
function peiy_update(inde,peiy,yugnum)
	local index = tonumber(inde)
	local _handle =  GetWindow(WingWnd.WndHandle,"yug_num",nil)
	EditSetText(_handle,nil,""..yugnum)
	
	local _handle = GetWindow(WingWnd.WndHandle,"peiy_edit",nil)
	EditSetText(_handle,nil,peiy)
	local _jindutImage = GetWindow(WingWnd.WndHandle,"jindut",nil)
	if _jindutImage ~= 0 then
		local value = 0
		if tonumber(peiy) > 0 then
			local a = tonumber(peiy)
			local b = tonumber(WingWnd.pei[index])
			value = a/b
		end
		if value > 0 then
			GUIWndSetVisible(_jindutImage,true)
			GUIImageSetDrawRect(_jindutImage,0,value,0,1)
		else
			GUIWndSetVisible(_jindutImage,false)
		end
	end	
	
	
end

function WingWnd.HidePrompt()
	local handle = GetWindow(WingWnd.WndHandle, "TRAIN_BTN_PROMPT")
	if handle ~= 0 then
		GUIWndSetVisible(handle,false)
	end
end

function WingWnd.begin(_handle)
	local _Istrue = false
	local _GUIhandle = GetWindow(WingWnd.WndHandle,"zid",nil)
	if GUICheckBoxGetCheck(_GUIhandle) then
		_Istrue = as3.tolua(LuaRet)
	end
	local index = 0 
	if _Istrue then
		index = 1
	end
	UI:Lua_SubmitForm("翅膀升阶表单", "begin", ""..index)
end	


function WingWnd.Auto(_handle)
	
	local _Istrue = false
	local _GUIhandle = GetWindow(WingWnd.WndHandle,"zid",nil)
	if GUICheckBoxGetCheck(_GUIhandle) then
		_Istrue = as3.tolua(LuaRet)
	end
	local index = 0 
	if _Istrue then
		index = 1
	end
	local str = GUIWndGetText(_handle)
	if str == "自动培养" then
		GUIWndSetTextM(_handle,"停止培养")
	else
		GUIWndSetTextM(_handle,"自动培养")
	end
	UI:Lua_SubmitForm("翅膀升阶表单", "Auto_begin", ""..index)
	
end	

function WingWnd.msgbox()
		luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"WingWnd.chongz", "WingWnd.out"}, "")
end

function WingWnd.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function WingWnd.out(h)
	luaWndClose(h)
end



function WingWnd.msg_up(str)
	local index = 1 
	for i = 1 , 5 do 
		if EditGetText(WingWnd.WndHandle,"msg"..i) == "" then
			index = i
		end
	end	
	EditSetText(WingWnd.WndHandle,"msg"..index,str)
	local _handle = GetWindow(nil,"WingWnd,msg"..index)
	if _handle ~= 0 then
		GUI:WndTween(_handle, "<Tween><Frame time='2' y = '390' /></Tween>","WingWnd.clear("..index..")")
	end		
end	
function WingWnd.clear(index)
	EditSetText(WingWnd.WndHandle,"msg"..index,"")
	local _handle = GetWindow(nil,"WingWnd,msg"..index)
	GUI:WndTween(_handle, "<Tween><Frame time='0.5' y = '428' /></Tween>","")
end


function WingWnd.Changetext()
	local _GUIhandle = GetWindow(WingWnd.WndHandle,"Auto_button",nil)
	GUIWndSetTextM(_GUIhandle,"自动培养")
end	 


function WingWnd.closeWnd(_handle)	
	GUIWndClose(WingWnd.WndHandle)
end

function WingWnd.Winclose()
	UI:Lua_SubmitForm("翅膀升阶表单", "WinClose", "")
end	
WingWnd.main()