BossWnd_buy ={}
local ui = "<form default_parent = 'BossWnd'> <dialog OnInit='BossWnd_buy.UIInit' id='BossWnd_buy' image='1803300008' x='714' y='0' w='317' OnMove='BossWnd_buy.Move' h='504' esc_close='true' drag='true'  revmsg='true'>"
	.."<image id='TestWndChild_2' image='1801500149' x='102' y='3' w='123' h='23' check_point='0' enable='false' revmsg='true'/>"
	..""
	.."<edit id='TestWndChild_3' x='137' y='43' w='57' h='20' revmsg='true' text_color='#DBCB52' text='等级兑换' font='system'/>"
	.."<edit id='TestWndChild_4' x='56' y='70' w='52' h='20' revmsg='true' text_color='#CDB063' text='当前等级' font='system'/>"
	.."<edit id='TestWndChild_5' x='208' y='70' w='64' h='20' revmsg='true' text_color='#CDB063' text='兑换后等级' font='system'/>"
	..""
	.."<edit id='before' x='71' y='102' w='30' h='22' revmsg='true' text_color='#C2B6A0' center='ture' text='85' font='system'/>"
	.."<edit id='after' x='229' y='102' w='30' h='22' revmsg='true' text_color='#C2B6A0' center='ture' text='84' font='system'/>"
	..""
	.."<edit id='TestWndChild_9' x='76' y='141' w='111' h='20' revmsg='true' text_color='#CDB063' text='兑换后可获得积分：' font='system'/>"
	.."<edit id='TestWndChild_10' x='182' y='141' w='91' h='20' revmsg='true' text_color='#00CA00' text='1991000' font='system'/>"
	.."<edit id='TestWndChild_11' x='59' y='167' w='62' h='20' revmsg='true' text_color='#CDB063' text='兑换消耗：' font='system'/>"
	.."<image id='TestWndChild_12' image='1803300009' x='115' y='165' w='155' h='25' check_point='0' revmsg='true'/>"
	.."<edit id='TestWndChild_13' x='272' y='167' w='20' h='20' revmsg='true' text_color='#CDB063' text='万' font='system'/>"
	.."<image id='TestWndChild_14' image='1800000398' x='138' y='170' w='16' h='14' check_point='0' revmsg='true'/>"
	.."<edit id='gold' x='168' y='167' w='76' h='20' revmsg='true' text_color='#C2B6A0' text='50' font='system'/>"
	.."<button id='Duih' image='1800000150' x='122' y='211' w='84' h='32' OnLButtonUp='BossWnd_buy.Duih'  revmsg='true' text='兑换积分' text_color='#C2B6A0'/>"
	..""
	.."<edit id='TestWndChild_17' x='135' y='250' w='108' h='20' revmsg='true' text_color='#6D5F4B' text='级以上才能使用' font='system'/>"
	.."<edit id='TestWndChild_34' x='114' y='250' w='65' h='20' revmsg='true' text_color='#FF0000' text='101' font='system'/>"
	.."<image id='TestWndChild_40' image='1800000366' x='143' y='83' w='43' h='58' revmsg='true'/>	"
	..""
	.."<edit id='TestWndChild_7' x='137' y='279' w='55' h='20' revmsg='true' text_color='#DBCB52' text='快捷购买' font='system'/>"
	.."<image id='TestWndChild_18' image='1800900041' x='23' y='318' w='273' h='78' check_point='0' revmsg='true'/>"
	.."<image id='TestWndChild_19' image='1800900041' x='23' y='404' w='273' h='78' check_point='0' revmsg='true'/>"
	.."<itemctrl id='item1' use_back='0' init_item='高级BOSS积分精魄' x='42' y='339' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."<itemctrl id='item2' use_back='0' init_item='超级BOSS积分精魄' x='42' y='425' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."<edit id='TestWndChild_24' x='114' y='328' w='142' h='20' revmsg='true' text_color='#CDB063' text='高级BOSS积分精魄' font='system'/>"
	.."<edit id='TestWndChild_25' x='114' y='418' w='142' h='20' revmsg='true' text_color='#CDB063' text='超级BOSS积分精魄' font='system'/>"
	.."<image id='TestWndChild_26' image='1806600012' x='114' y='379' w='16' h='14' check_point='0' revmsg='true'/>"
	.."<image id='TestWndChild_27' image='1806600012' x='114' y='441' w='16' h='14' check_point='0' revmsg='true'/>"
	.."<edit id='TestWndChild_28' x='143' y='445' w='43' h='20' revmsg='true' text_color='#DBCB52' text='9888' font='system'/>"
	.."<edit id='TestWndChild_29' x='143' y='358' w='43' h='20' revmsg='true' text_color='#DBCB52' text='1000' font='system'/>"
	.."<button id='TestWndChild_31' image='1800000043' OnLButtonUp='BossWnd_buy.Close' x='286' y='1' w='26' h='26' revmsg='true' text_color='#C2B6A0'/>"
	.."<button id='button1' image='1803300012'  x='190' y='354' w='96' h='31' OnLButtonUp='BossWnd_buy.buy' revmsg='true' text='购买并使用' text_color='#CDB063' param='1' />"
	.."<button id='button2' image='1803300012'  x='190' y='440' w='96' h='31' OnLButtonUp='BossWnd_buy.buy' revmsg='true' text='购买并使用' text_color='#CDB063' param='2'/>  "
	.." </dialog>"
	.."</form>"

function BossWnd_buy.main()
	GenFormByString(ui)
end

--UI Logic Code Start
BossWnd_buy.Wnd = 0 
function BossWnd_buy.UIInit(_Handle)
	BossWnd_buy.Wnd = _Handle
	local _hand = GetWindow(_Handle,"item1")		
	if _hand ~= 0  then                        
		RDItemCtrlSetGUIDataByKeyName(_hand, "高级BOSS积分精魄", 0xffff, false)
	end
	_hand = GetWindow(_Handle,"item2")		
	if _hand ~= 0  then                       
		RDItemCtrlSetGUIDataByKeyName(_hand, "超级BOSS积分精魄", 0xffff, false)
	end
	BossWnd_buy.level()
	
	local handel = GetWindow(_Handle,"Duih")	
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		local level = LuaRet
		if level < 101 then 
			GUI:WndSetEnableM(handel, false)
		else
			GUI:WndSetEnableM(handel, true)
		end
	end
end

function BossWnd_buy.level()
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		local level = LuaRet
		_hand = GetWindow(BossWnd_buy.Wnd,"before")  
		if _hand ~= 0  then                     
			--[[if level > 99 then 
				GUI:WndSetPosM(_hand, 65, 102)
			else 
				GUI:WndSetPosM(_hand, 71, 102)
			end	]]	
			GUI:EditSetFontM(_hand,"SIMLI18")
			GUI:EditSetTextM(_hand,tostring(level) )
			GUI:WndSetTextColorM(_hand, CL:MakeARGB(255,255,247,0))
		end
		_hand = GetWindow(BossWnd_buy.Wnd,"after")  
		if _hand ~= 0  then  
			--[[if level-1 > 99 then 
				GUI:WndSetPosM(_hand, 223, 102)
			else
				GUI:WndSetPosM(_hand, 229, 102)
			end]]
			GUI:EditSetFontM(_hand,"SIMLI18")
			GUI:EditSetTextM(_hand,tostring(level-1))
			GUI:WndSetTextColorM(_hand, CL:MakeARGB(255,255,247,0)) 
		end		
		_hand = GetWindow(BossWnd_buy.Wnd,"Duih")
		if level < 101 then 
			GUI:WndSetEnableM(_hand, false)
		else
			GUI:WndSetEnableM(_hand, true)
		end
	end
end
	
function BossWnd_buy.buy(_Handle)
	local num = GUI:WndGetParam(_Handle) 
	UI:Lua_SubmitForm("BossWnd_buy_s", "buyuse", tostring(num))
end

function BossWnd_buy.Close()
	if BossWnd.Wnd ~= 0 then
		CenterWnd(BossWnd.Wnd)
	end
	GUI:WndSetVisible(BossWnd_buy.Wnd,false)
end


function BossWnd_buy.msgbox()
	luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"BossWnd_buy.chongz", "BossWnd_buy.out"}, "")
end
function BossWnd_buy.chongz(h)
	CL:OpenUrlUseIEByType(3)
	luaWndClose(h)
end
function BossWnd_buy.out(h)
	luaWndClose(h)
end

function BossWnd_buy.shuaxin(points) 
	local mon_tab = {"BossWnd_dragon","BossWnd_tiger","BossWnd_bird","BossWnd_tortoise"}
	for i=1,#mon_tab do 
		local hand = GUI:WndFindWindow(0,"BossWnd,Points,"..mon_tab[i])  
		local tf = GUI:WndGetVisible(hand)
		if tf then 
			UI:Lua_SubmitForm("BossWnd_buy_s", "own",''..i)
		end
	end
end

function BossWnd_buy.Duih(_Handle)
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then
		local level = LuaRet
		if level < 101 then 
			GUI:WndSetEnableM(handel, false)
			--window_msg_up(_Handle, "等级不足", -73, -19, 30, MakeARGB(255,255,0,0), 2)
		else
			UI:Lua_SubmitForm("BossWnd_buy_s", "Duih","")
		end
	end
end

function BossWnd_buy.Move(_Handle)
	WndMoveToParentTop(BossWnd.Wnd,"BossWnd_buy")
end

BossWnd_buy.main()