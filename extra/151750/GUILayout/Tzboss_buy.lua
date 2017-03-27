Tzboss_buy ={}   

local ui = "<form default_parent='Tzboss'> <dialog OnInit='Tzboss_buy.UIInit' id='Tzboss_buy' image='1803300008' x='714' y='0' w='317' OnMove='Tzboss_buy.Move' h='504' esc_close='true' drag='true'  revmsg='true'>"
	.."	<image id='TestWndChild_2' image='1801500149' x='102' y='3' w='123' h='23' check_point='0' enable='false' revmsg='true'/>"
	--[[.."	<edit id='TestWndChild_3' x='137' y='43' w='57' h='20' revmsg='true' text_color='#DBCB52' text='等级兑换' font='system'/>"
	.."	<edit id='TestWndChild_4' x='56' y='70' w='52' h='20' revmsg='true' text_color='#CDB063' text='当前等级' font='system'/>"
	.."	<edit id='TestWndChild_5' x='208' y='70' w='64' h='20' revmsg='true' text_color='#CDB063' text='兑换后等级' font='system'/>"
	.."	<edit id='before' x='71' y='99' w='24' h='22' revmsg='true' text_color='#C2B6A0' text='85' font='system'/>"
	.."	<edit id='after' x='228' y='99' w='24' h='22' revmsg='true' text_color='#C2B6A0' text='84' font='system'/>"
	.."	<edit id='TestWndChild_9' x='76' y='141' w='111' h='20' revmsg='true' text_color='#CDB063' text='兑换后可获得积分：' font='system'/>"
	.."	<edit id='TestWndChild_10' x='182' y='141' w='91' h='20' revmsg='true' text_color='#00CA00' text='9999999' font='system'/>"
	.."	<edit id='TestWndChild_11' x='59' y='167' w='62' h='20' revmsg='true' text_color='#CDB063' text='兑换消耗：' font='system'/>"
	.."	<image id='TestWndChild_12' image='1803300009' x='115' y='165' w='155' h='25' check_point='0' revmsg='true'/>"
	.."	<edit id='TestWndChild_13' x='272' y='167' w='20' h='20' revmsg='true' text_color='#CDB063' text='万' font='system'/>"
	.."	<image id='TestWndChild_14' image='1800000054' x='138' y='173' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='TestWndChild_15' x='168' y='167' w='76' h='20' revmsg='true' text_color='#C2B6A0' text='999' font='system'/>"
	.."	<button id='TestWndChild_16' image='1800000150' x='122' y='211' w='84' h='32' revmsg='true' text='兑换积分' text_color='#C2B6A0'/>"
	.."	<edit id='TestWndChild_17' x='97' y='249' w='108' h='20' revmsg='true' text_color='#6D5F4B' text='今日剩余兑换次数：' font='system'/>"
	.."	<edit id='TestWndChild_34' x='202' y='249' w='65' h='20' revmsg='true' text_color='#00CA00' text='999' font='system'/>"
	.."	<image id='TestWndChild_40' image='1800000366' x='143' y='83' w='43' h='58' revmsg='true'/>"	
	--]]
	.."	<edit id='TestWndChild_7' x='137' y='279' w='55' h='20' revmsg='true' text_color='#DBCB52' text='快捷购买' font='system'/>"
	.."	<image id='TestWndChild_18' image='1800900041' x='23' y='318' w='273' h='78' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_19' image='1800900041' x='23' y='404' w='273' h='78' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item1' x='42' y='339' w='40' h='40' rbtn_use='true' use_back='false' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2' x='42' y='425' w='40' h='40' rbtn_use='true' use_back='false' enable='true' revmsg='true'/>"
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
		--RDItemCtrlSetGUIDataByKeyName(_hand, "高级BOSS积分精魄", 0, false)
		RDItemCtrlSetGUIDataPropByKeyName(Tzboss_buy.Wnd ,"item1", "大特制疗伤药包", 1, false) 
	end
	_hand = GetWindow(_Handle,"item2")		
	if _hand ~= 0  then                       
		--RDItemCtrlSetGUIDataByKeyName(_hand, "超级BOSS积分精魄", 0, false)
		RDItemCtrlSetGUIDataPropByKeyName(Tzboss_buy.Wnd ,"item2", "大特制魔法药包", 1, false) 
	end
	_hand = GetWindow(_Handle,"before")  
	if _hand ~= 0  then                       
		GUI:EditSetFontM(_hand,"SIMLI18")
	end
	_hand = GetWindow(_Handle,"after")  
	if _hand ~= 0  then                        
		GUI:EditSetFontM(_hand,"SIMLI18")
		GUI:WndSetTextColorM(_hand, CL:MakeARGB(255,255,247,0)) 
	end
	
end
    
function Tzboss_buy.buy(_Handle)
	local num = GUI:WndGetParam(_Handle) 
	UI:Lua_SubmitForm("Tzboss_buy_s", "buyuse",tostring(num))
end

function Tzboss_buy.Close()   
	GUI:WndClose(Tzboss_buy.Wnd)
end


function Tzboss_buy.msgbox()
	luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"Tzboss_buy.chongz", "Tzboss_buy.out"}, "")
end
function Tzboss_buy.chongz(h)
	CL:OpenUrlUseIEByType(3)
	luaWndClose(h)
end
function Tzboss_buy.out(h)
	luaWndClose(h)
end

function Tzboss_buy.shuaxin(points) 
	local mon_tab = {"Tzboss_dragon","Tzboss_tiger","Tzboss_bird","Tzboss_tortoise"}
	for i=1,#mon_tab do 
		--local hand = GetWindow(nil,"Tzboss,"..mon_tab[i])  
		local hand = GUI:WndFindChildM(Tzboss.Wnd,mon_tab[i])  
		if hand ~=0 then 
			UI:Lua_SubmitForm("Tzboss_buy_s", "own",tostring(i))
		end
	end
end

function Tzboss_buy.Move(_Handle)
	WndMoveToParentTop(Tzboss.Wnd,"Tzboss_buy")
end

Tzboss_buy.main()