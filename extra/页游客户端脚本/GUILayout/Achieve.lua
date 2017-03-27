Achieve ={}
local ui = "<form> <dialog OnInit='Achieve.UIInit' id='Achieve' image='1806100012' x='212' y='61' w='384' h='505' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='lineImage1' image='1806100013' x='42' y='142' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1806100013' x='41' y='388' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<button id='close' image='1805900080' x='327' y='5' w='34' h='38' OnLButtonUp='Achieve.Closeed' revmsg='true'/>"
	.."	<edit id='TestWndChild_3' x='47' y='66' w='76' h='22' canedit='false' revmsg='true' text_color='#2EA3DA' text='经验、功勋 ' font='system'/>"
	.."	<richedit id='TestWndChild_4' x='64' y='96' w='275' h='49' text_color='#645748' text='    完成日常除魔任务可获得功勋，消耗功勋值可激活【神武功勋称号】，并获得强大属性加成！' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='TestWndChild_7' x='129' y='206' w='60' h='18' revmsg='true' text_color='#D4A88B' text='物理攻击' font='system'/>"
	.."	<edit id='TestWndChild_8' x='129' y='232' w='60' h='18' revmsg='true' text_color='#D4A88B' text='魔法攻击 ' font='system'/>"
	.."	<edit id='TestWndChild_9' x='129' y='258' w='60' h='18' revmsg='true' text_color='#D4A88B' text='道术攻击' font='system'/>"
	.."	<edit id='TestWndChild_10' x='129' y='284' w='60' h='18' revmsg='true' text_color='#D4A88B' text='物理免伤 ' font='system'/>"
	.."	<edit id='TestWndChild_11' x='129' y='310' w='60' h='18' revmsg='true' text_color='#D4A88B' text='魔法免伤' font='system'/>"
	.."	<edit id='sx0' x='112' y='182' w='146' h='18' revmsg='true' text_color='#F317C8' font='SIMLI18'/>"
	.."	<edit id='sx1' x='208' y='206' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='sx2' x='208' y='232' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='sx3' x='208' y='258' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='sx4' x='208' y='284' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='sx5' x='208' y='310' w='60' h='18' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='TestWndChild_17' x='60' y='344' w='60' h='18' revmsg='true' text_color='#9D8972' text='升级消耗：' font='system'/>"
	.."	<edit id='TestWndChild_18' x='260' y='345' w='42' h='18' canedit='false' revmsg='true' text_color='#9D8972' text='功勋值' font='system'/>"
	.."	<image id='TestWndChild_19' image='1802300005' x='118' y='341' w='137' h='26' check_point='0' revmsg='true'/>"
	.."	<image id='help' image='1800000297' x='296' y='340' w='27' h='30' check_point='0' tip='功勋可兑换高级称号\n功勋通过除魔任务和商城购买获得' revmsg='true'/>"
	.."	<richedit id='sx6' x='137' y='347' w='121' h='26' revmsg='true' text_color='#E4C19F' text='' align='center' font='system'/>"
	.."	<button id='button' image='1800000150' x='148' y='393' w='84' h='32' OnLButtonUp='Achieve.Up' revmsg='true' text='升级称号' text_color='#C2B6A0'/>"
	.."	<richedit id='TestWndChild_23' x='263' y='444' w='73' h='22' text='#SELECT#返回任务#SELECTEND#' OnLButtonUp='Achieve.Back' revmsg='true' font='system' text_color='#00FF00'/>"
	.."	<button id='tips' image='1804600019' x='275' y='384' w='188' h='50' text='点击获得称号' visible='false' text_color='#C2B6A0' revmsg='false'/>"
	.."	<button id='tips2' image='1804600019' x='381' y='-1' w='188' h='50' text='关闭称号兑换' visible='false' revmsg='false' text_color='#C2B6A0'/>"
	.."	<image id='TestWndChild_1' image='1806100010' x='44' y='152' w='224' h='28' revmsg='true'/>"
	.."	<image id='TestWndChild_2' image='1806100008' x='146' y='8' w='95' h='28' enable='false' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function Achieve.main()
	if GetWindow("", "Achieve")~= 0 then 
		WndClose(GetWindow("", "Achieve"))
		msg("1121")
	end
	GenFormByString(ui)
end
Achieve.Wnd = 0
Achieve.tips2 = 0
--UI Logic Code Start
function Achieve.UIInit(_Handle)
	local ach_tb = {30000, 210000, 550000, 870000, 950000, 1380000, 2590000, 3450000, 4320000, 7120000}
	Achieve.Wnd = _Handle
	CenterWnd(_Handle)
	GUIWndSetSizeM(_Handle,361,524)
	local hand = GetWindow(_Handle,"help")
	if hand ~=0 then 
		GUIWndSetHint(hand, "<font color='#9D8972'>功勋可兑换高级称号\n功勋通过除魔任务和商城购买获得</font>")
	end
	local handle = GetWindow("", "TitleWnd")
	if handle ~= 0 then
		local backhandle = GetWindow("", "Achieve,TestWndChild_23")
		if backhandle ~= 0 then 
			GUIWndSetVisible(backhandle, true)
		end
	else
		local backhandle = GetWindow("", "Achieve,TestWndChild_23")
		if backhandle ~= 0 then 
			GUIWndSetVisible(backhandle, false)
		end
	end
	UI:Lua_SubmitForm("功勋称号表单", "main", "")
	
end

function Achieve.update(tab,score,level,ach_clink,tips2) 
 
	--CLOnTitleApply(2)
	
	local hand = GetWindow(Achieve.Wnd,"sx0")
	if hand ~= 0 then 
		GUIEditSetTextM(hand, "★"..tab[1].."★")
	end  
	Achieve.tips2 = tonumber(tips2)
	if Achieve.tips2 == 0 and tonumber(ach_clink) ~= 0 then 
		hand = GetWindow(Achieve.Wnd,"tips2")
		if hand ~= 0 then 
			GUIButtonSetTextFont(hand,"SIMLI18") 
			GUIWndSetTextArrangeType(hand,10,0,0,0)
			Achieve.itemTweenUp1(hand) 
			GUIWndSetVisible(hand, true)
		end
		hand = GetWindow(Achieve.Wnd,"close")
		if hand ~= 0 then 
			WndAddEffect(hand, nil, 3020100900, -2, -4, 100, 0)
		end 
	end
	
	for i=1,5 do 
		hand = GetWindow(Achieve.Wnd,"sx".. i)
		if hand ~= 0 then 
			if i<4 then 
				GUIEditSetTextM(hand, tab[2].."-"..tab[3])
			else  
				GUIEditSetTextM(hand, tab[4].."%")
			end
		end 
	end  
	hand = GetWindow(Achieve.Wnd,"sx6")
	if hand ~= 0 then 
		GUIRichEditClear(hand)
		GUIRichEditSetTotalLine(hand, 1)
		if score < tab[5] then   
			GUIRichEditAppendString(hand,"#COLORCOLOR_RED#"..score.."#COLOREND#/".."#COLORCOLOR_BROWN#".. tab[5].."#COLOREND#" ) 
		else 
			GUIRichEditAppendString(hand, "#COLORCOLOR_BROWN#"..score.."/"..tab[5].."#COLOREND#")
			if tonumber(ach_clink) == 0 then 
				handle = GetWindow(Achieve.Wnd,"tips")
				if handle ~= 0 then 
					Achieve.itemTweenUp(handle) 
					GUIButtonSetTextFont(handle,"SIMLI18") 
					GUIWndSetTextArrangeType(handle,10,0,0,0)
					GUIWndSetVisible(handle, true)
				end
			end
		end
	end
	local ach_tb = {30000, 210000, 550000, 870000, 950000, 1380000, 2590000, 3450000, 4320000, 7120000}
	local hand = GetWindow(nil,"Achieve,button")
	if tonumber(score) >= ach_tb[tonumber(level)+1] then	
		if hand ~= 0 then
			WndAddEffect(hand, nil, 3020100700, -13, -8, 100, 0)
		end
	else
		if hand ~= 0 then
			WndDelEffect(hand)
		end
	end

end

function Achieve.Up(_Handle)
	local handle = GetWindow(Achieve.Wnd,"tips")
	if handle ~= 0 then  
		GUIWndSetVisible(handle, false)
	end
	UI:Lua_SubmitForm("功勋称号表单", "up", "")
end

function Achieve.Back(_Handle)
	local handle = GetWindow(nil, "TitleWnd")
	if handle ~= 0 then
		GUIWndSetVisible(handle, true)
	end
	UI:Lua_SubmitForm("功勋称号表单", "Open_CM_Wnd", "")
	if Achieve.Wnd ~= 0 then 
		WndClose(Achieve.Wnd)
	end
end

function Achieve.Closeed()
	if Achieve.Wnd ~= 0 then 
		WndClose(Achieve.Wnd)
	end
	local handle = GetWindow("", "TitleWnd")
	if handle ~= 0 then 
		WndClose(handle)
	end
	if Achieve.tips2 == 0 then 
		UI:Lua_SubmitForm("功勋称号表单", "Setint", "")
	end
end

function msg_up(str)
	local _handle = GetWindow(nil,"Achieve,button")
	local color = MakeARGB(255, 255, 0, 0)
	window_msg_up(_handle , str , -70 , -16 , 70 , color , 3)
end	


function Achieve.itemTweenUp(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' x='260' /></Tween>", "Achieve.itemTweenDown("..hand..")")
end 
function Achieve.itemTweenDown(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='250' /></Tween>" , "Achieve.itemTweenUp("..hand..")")
end 

function Achieve.itemTweenUp1(hand) 
	GUIWndTween(hand, "<Tween><Frame time='0.8' x='390' /></Tween>", "Achieve.itemTweenDown1("..hand..")")
end 
function Achieve.itemTweenDown1(hand) 
	GUIWndTween(hand, "<Tween><Frame time='1' x='380' /></Tween>" , "Achieve.itemTweenUp1("..hand..")")
end 


Achieve.main()