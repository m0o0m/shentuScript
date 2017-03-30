Tzboss_buy ={}   

local ui = "<form default_parent='Tzboss'> <dialog OnInit='Tzboss_buy.UIInit' id='Tzboss_buy' image='1803300008' x='714' y='0' w='317' OnMove='Tzboss_buy.Move' h='504' esc_close='true' drag='true'  revmsg='true'>"
	.."	<image id='TestWndChild_2' image='1801500149' x='102' y='3' w='123' h='23' check_point='0' enable='false' revmsg='true'/>"
	
	.."	<edit id='TestWndChild_3' x='137' y='43' w='57' h='20' revmsg='true' text_color='#DBCB52' text='等级兑换' font='system'/>"
	.."	<edit id='TestWndChild_4' x='56' y='70' w='52' h='20' revmsg='true' text_color='#CDB063' text='当前等级' font='system'/>"
	.."	<edit id='TestWndChild_5' x='208' y='70' w='64' h='20' revmsg='true' text_color='#CDB063' text='兑换后等级' font='system'/>"
	
	.."	<edit id='before' x='65' y='102' w='30' h='22' revmsg='true' text_color='#C2B6A0' center='ture' text='85' font='system'/>"
	.."	<edit id='after' x='223' y='102' w='30' h='22' revmsg='true' text_color='#C2B6A0' center='ture' text='84' font='system'/>"
	
	.."	<edit id='TestWndChild_9' x='76' y='141' w='111' h='20' revmsg='true' text_color='#CDB063' text='兑换后可获得积分：' font='system'/>"
	.."	<edit id='TestWndChild_10' x='182' y='141' w='91' h='20' revmsg='true' text_color='#00CA00' text='1991000' font='system'/>"
	.."	<edit id='TestWndChild_11' x='59' y='167' w='62' h='20' revmsg='true' text_color='#CDB063' text='兑换消耗：' font='system'/>"
	.."	<image id='TestWndChild_12' image='1803300009' x='115' y='165' w='155' h='25' check_point='0' revmsg='true'/>"
	.."	<edit id='TestWndChild_13' x='272' y='167' w='20' h='20' revmsg='true' text_color='#CDB063' text='万' font='system'/>"
	.."	<image id='TestWndChild_14' image='1800000398' x='138' y='170' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='gold' x='168' y='167' w='76' h='20' revmsg='true' text_color='#C2B6A0' text='50' font='system'/>"
	.."	<button id='TestWndChild_16' image='1800000150' x='122' y='211' w='84' h='32' OnLButtonUp='Tzboss_buy.Duih'  revmsg='true' text='兑换积分' text_color='#C2B6A0'/>"
	--[[.."	<edit id='TestWndChild_17' x='97' y='249' w='108' h='20' revmsg='true' text_color='#6D5F4B' text='今日剩余兑换次数：' font='system'/>"
	.."	<edit id='cishu' x='202' y='249' w='65' h='20' revmsg='true' text_color='#00CA00' text='3' font='system'/>"--]]
	
	.."	<edit id='TestWndChild_17' x='135' y='250' w='108' h='20' revmsg='true' text_color='#6D5F4B' text='级以上才能使用' font='system'/>"
	.."	<edit id='TestWndChild_34' x='114' y='250' w='65' h='20' revmsg='true' text_color='#FF0000' text='101' font='system'/>"
	.."	<image id='TestWndChild_40' image='1800000366' x='143' y='83' w='43' h='58' revmsg='true'/>"	

	.."	<edit id='TestWndChild_7' x='137' y='279' w='55' h='20' revmsg='true' text_color='#DBCB52' text='快捷购买' font='system'/>"
	.."	<image id='TestWndChild_18' image='1800900041' x='23' y='318' w='273' h='78' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_19' image='1800900041' x='23' y='404' w='273' h='78' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item1' use_back='1800000147'  x='42' y='339' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2' use_back='1800000147'  x='42' y='425' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='TestWndChild_24' x='114' y='328' w='142' h='20' revmsg='true' text_color='#CDB063' text='高级BOSS积分精魄' font='system'/>"
	.."	<edit id='TestWndChild_25' x='114' y='418' w='142' h='20' revmsg='true' text_color='#CDB063' text='超级BOSS积分精魄' font='system'/>"
	.."	<image id='TestWndChild_26' image='1800000054' x='114' y='364' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_27' image='1800000054' x='114' y='451' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='TestWndChild_28' x='137' y='445' w='43' h='20' revmsg='true' text_color='#DBCB52' text='9888' font='system'/>"
	.."	<edit id='TestWndChild_29' x='134' y='358' w='43' h='20' revmsg='true' text_color='#DBCB52' text='1000' font='system'/>"
	.."	<button id='TestWndChild_31' image='1800000043' OnLButtonUp='Tzboss_buy.Close' x='286' y='1' w='26' h='26' revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='button1' image='1803300012'  x='190' y='354' w='96' h='31' OnLButtonUp='Tzboss_buy.buy' revmsg='true' text='购买并使用' text_color='#CDB063' param='1' />"
	.."	<button id='button2' image='1803300012'  x='190' y='440' w='96' h='31' OnLButtonUp='Tzboss_buy.buy' revmsg='true' text='购买并使用' text_color='#CDB063' param='2'/>"  

	.." </dialog>"
	.."</form>"

function Tzboss_buy.main()
	GenFormByString(ui)
end
Tzboss_buy.Wnd = 0 
--UI Logic Code Start
function Tzboss_buy.UIInit(_Handle)
	Tzboss_buy.Wnd = _Handle
	local _hand = GetWindow(_Handle,"item1")		
	if _hand ~= 0  then                        
		RDItemCtrlSetGUIDataByKeyName(_hand, "高级BOSS积分精魄", 0, false)
	end
	_hand = GetWindow(_Handle,"item2")		
	if _hand ~= 0  then                       
		RDItemCtrlSetGUIDataByKeyName(_hand, "超级BOSS积分精魄", 0, false)
	end
	
	
	local hYuanbao = GUIWndFindWindow(_Handle, "TestWndChild_26")
	if hYuanbao ~= 0 then
		GUIWndSetHint(hYuanbao, "<font color='#D58840'>元宝\n</font><font color='#B8A085'>元宝可用于购买商城中的道具，元宝可以通过参\n加活动、充值人民币获得，每充值1元=100元宝</font>")
	end
	
	hYuanbao = GUIWndFindWindow(_Handle, "TestWndChild_27")
	if hYuanbao ~= 0 then
		GUIWndSetHint(hYuanbao, "<font color='#D58840'>元宝\n</font><font color='#B8A085'>元宝可用于购买商城中的道具，元宝可以通过参\n加活动、充值人民币获得，每充值1元=100元宝</font>")
	end
	
	Tzboss_buy.level()
	
end

function Tzboss_buy.level()
	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		local level = as3.tolua(LuaRet)
		_hand = GetWindow(Tzboss_buy.Wnd,"before")  
		if _hand ~= 0  then                       
			GUIEditSetFontM(_hand,"SIMLI18")
			GUIEditSetTextM(_hand,level) 
			GUIWndSetTextColorM(_hand, CLMakeARGB(255,255,247,0))
		end
		_hand = GetWindow(Tzboss_buy.Wnd,"after")  
		if _hand ~= 0  then  
			if level == 100 then 
				GUIWndSetPosM(_hand, 227, 102)
			end 
			GUIEditSetFontM(_hand,"SIMLI18")
			GUIEditSetTextM(_hand,level-1) 
			GUIWndSetTextColorM(_hand, CLMakeARGB(255,255,247,0)) 
		end
	end
end
    
function Tzboss_buy.buy(_Handle)
	local num = GUIWndGetParam(_Handle) 
	UI:Lua_SubmitForm("Tzboss_buy_s", "buyuse", num)
end

function Tzboss_buy.Close()   
	if Tzboss.Wnd ~= 0 then 
		CenterWnd(Tzboss.Wnd)
	end
	if Tzboss_buy.Wnd ~= 0 then 
		GUIWndClose(Tzboss_buy.Wnd)
	end
end


function Tzboss_buy.msgbox()
		luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"Tzboss_buy.chongz", "Tzboss_buy.out"}, "")
end
function Tzboss_buy.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end
function Tzboss_buy.out(h)
	luaWndClose(h)
end

function Tzboss_buy.shuaxin(points) 
	local mon_tab = {"Tzboss_dragon","Tzboss_tiger","Tzboss_bird","Tzboss_tortoise"}
	for i=1,#mon_tab do 
		local hand = GUIWndFindWindow(nil,"Tzboss,"..mon_tab[i])  
		if hand ~=0 then 
			UI:Lua_SubmitForm("Tzboss_buy_s", "own",i)
		end
	end
end

function Tzboss_buy.Duih(_Handle)
	if CLGetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		local level = as3.tolua(LuaRet)
		if level < 101 then 
			window_msg_up(_Handle, "等级不足", -73, -19, 30, MakeARGB(255,255,0,0), 2)
		else
			UI:Lua_SubmitForm("Tzboss_buy_s", "Duih","")
		end
	end
end

function Tzboss_buy.Move(_Handle)
	WndMoveToParentTop(Tzboss.Wnd,"Tzboss_buy")
end

Tzboss_buy.main()