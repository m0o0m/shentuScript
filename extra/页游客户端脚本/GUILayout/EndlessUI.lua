EndlessUI ={}
local ui = "<form> <dialog OnInit='EndlessUI.UIInit' id='EndlessUI' image='1806100012' x='236' y='75' w='384' h='505' esc_close='true' center='true' drag='true' revmsg='true'>"
	.."	<image id='lineImage1' image='1800600004' x='20' y='136' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1800600004' x='21' y='402' w='327' h='2' check_point='0' revmsg='true'/>"
	--.."	<edit id='tittle' x='175' y='8' w='127' h='22' revmsg='true' text_color='#FCFF00' text='无尽深渊' font='SIMLI18'/>"
	.."	<image id='tittle' image='1805500037' x='156' y='13' w='127' h='22' revmsg='false' enable='false' font='system'/>"
	.."	<button id='closeButton' image='1805900080' x='327' y='4' w='34' h='38' OnLButtonUp='EndlessUI.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<richedit id='introduceText' x='58' y='86' w='287' h='53' canedit='false' text_color='#E4C19F' text='    无尽深渊中潜藏着许多强大的恶魔，吸引了无数勇士前去挑战，寻找宝藏！！！' revmsg='true' font='system'/>"
	.."	<edit id='t1' x='64' y='158' w='145' h='14' revmsg='true' text_color='#E4C19F' text='说明：' font='system'/>"
	.."	<richedit id='enterMap' x='149' y='446' w='88' h='20' text='#SELECT#进入无尽深渊#SELECTEND#' OnLButtonUp='EndlessUI.EnterMap' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<edit id='TestWndChild_0' x='155' y='182' w='166' h='16' revmsg='true' text_color='#00FF00' text=' 10:00-10:15  14:00-14:15 	' font='system'/>"
	.."	<edit id='TestWndChild_1' x='155' y='203' w='166' h='16' revmsg='true' text_color='#00FF00' text=' 22:00-22:15' font='system'/>"
	.."	<edit id='t2' x='64' y='228' w='281' h='16' revmsg='true' text_color='#E4C19F' text='2.无尽深渊共13层，每一层都镇守着一个BOSS，' font='system'/>"
	.."	<edit id='t3' x='64' y='253' w='281' h='16' revmsg='true' text_color='#E4C19F' text='有几率掉落稀有道具' font='system'/>"
	.."	<edit id='TestWndChild_2' x='124' y='253' w='166' h='16' revmsg='true' text_color='#00FF00' text='稀有道具' font='system'/>"
	.."	<edit id='t4' x='64' y='278' w='281' h='16' revmsg='true' text_color='#E4C19F' text='3.每进入一层都可获得大量绑金与蕴魂石' font='system'/>"
	.."	<edit id='TestWndChild_3' x='184' y='278' w='53' h='16' revmsg='true' text_color='#00FF00' text='大量绑金' font='system'/>"
	.."	<edit id='TestWndChild_4' x='244' y='278' w='60' h='16' revmsg='true' text_color='#00FF00' text='蕴魂石' font='system'/>"
	.."	<edit id='t5' x='64' y='303' w='281' h='16' revmsg='true' text_color='#E4C19F' text='4.需要击杀深渊守护者收集足够的深渊凭证才' font='system'/>"
	.."	<edit id='t6' x='64' y='328' w='281' h='16' revmsg='true' text_color='#E4C19F' text='可进入下一层' font='system'/>"
	.."	<edit id='TestWndChild_5' x='124' y='303' w='68' h='16' revmsg='true' text_color='#00FF00' text='深渊守护者' font='system'/>"
	.."	<edit id='TestWndChild_6' x='243' y='303' w='60' h='16' revmsg='true' text_color='#00FF00' text='深渊凭证' font='system'/>"
	.."	<edit id='t7' x='64' y='353' w='281' h='16' revmsg='true' text_color='#E4C19F' text='5.每次进入限时2小时，超时自动传出' font='system'/>"
	.."	<edit id='t8' x='64' y='183' w='113' h='14' revmsg='true' text_color='#E4C19F' text='1.入口开放时间：' font='system'/>"
	.." </dialog>"
	.."</form>"

function EndlessUI.main()
	GenFormByString(ui)
end
EndlessUI.Wnd=0
--UI Logic Code Start
function EndlessUI.UIInit(_Handle)
	EndlessUI.Wnd=_Handle
	--[[GUIWndSetSizeM(_Handle, 361 ,524)
	CenterWnd(_Handle)--]]
end

function EndlessUI.EnterMap()
	UI:Lua_SubmitForm("无尽深渊表单", "EnterMap", "")
	
end

function EndlessUI.closeWnd()     --关闭按钮
	local hand = GetWindow(nil,"EndlessUI")
	if hand ~= 0 then
		GUIWndClose(hand)
	end
end

function EndlessUI.msg(str)
	--[[UI:Lua_GetScreenSize()
	local _SW = as3.tolua(LuaRet[1])
	local _SH = as3.tolua(LuaRet[2])--]]
	--local hand = GUIEditCreate(nil,"Edit0",_SW/2-100,_SH/2-30,100,30)
	local hand = GetWindow(nil,"EndlessUI,enterMap")
	if hand ~= 0 then 
		--GUIWndMoveToParentTop(hand)
		window_msg_up(hand,str,-77,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end

EndlessUI.main()