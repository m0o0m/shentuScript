xldb_NPCShow ={}
local ui = "<form> <dialog OnInit='xldb_NPCShow.UIInit' id='xldb_NPCShow' image='1806100012' x='298' y='46' w='384' h='505' esc_close='true' drag='true' revmsg='true' visible='false' magic='1'>"
	.."	<image id='lineImage1' image='1806100013' x='43' y='138' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1806100013' x='42' y='399' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='TitleImg' image='1805500042' x='163' y='13' w='126' h='22' check_point='0' revmsg='false'/>"
	.."	<button id='closeButton' image='1805900080' x='325' y='5' w='34' h='38' OnLButtonUp='xldb_NPCShow:closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='introduceText' x='80' y='79' w='68' h='16' revmsg='true' text_color='#E4C19F' text='活动时间：'  font='system'/>"
	.."	<edit id='t1' x='42' y='154' w='145' h='55' revmsg='true' text_color='#E4C19F' text='活动说明：' font='system'/>"
	.."	<edit id='TestWndChild_0' x='140' y='77' w='162' h='16' revmsg='true' text_color='#00FF00' text='19:00-19:20	' font='system'/>"
	.."	<edit id='t2' x='71' y='229' w='281' h='16' revmsg='true' text_color='#E4C19F' text='2.拾取宝箱后可获得' font='system'/>"
	.."	<edit id='t3' x='196' y='260' w='70' h='16' revmsg='true' text_color='#E4C19F' text='可获得一次' font='system'/>"
	.."	<edit id='t4' x='71' y='260' w='135' h='16' revmsg='true' text_color='#E4C19F' text='3.持有宝箱每满' font='system'/>"
	.."	<edit id='t8' x='71' y='200' w='281' h='14' revmsg='true' text_color='#E4C19F' text='1.活动开始后击杀boss必掉' font='system'/>"
	.."	<edit id='t0' x='219' y='198' w='79' h='16' revmsg='true' text_color='#00FF00' text='宝箱' font='system'/>"
	.."	<edit id='t5' x='230' y='291' w='120' h='16' revmsg='true' text_color='#E4C19F' text='宝箱都会' font='system'/>"
	.."	<edit id='t6' x='71' y='292' w='159' h='16' revmsg='true' text_color='#E4C19F' text='4.夺宝者' font='system'/>"
	.."	<edit id='t7' x='70' y='322' w='281' h='16' revmsg='true' text_color='#E4C19F' text='5.活动结束后可开启宝箱，至多获得' font='system'/>"
	.."	<edit id='0' x='80' y='104' w='233' h='16' revmsg='true' text_color='#E4C19F' text='活动期间可自由进入寻龙夺宝地图' font='system'/>"
	.."	<edit id='t9' x='180' y='228' w='83' h='16' revmsg='true' text_color='#00FF00' text='【夺宝者】' font='system'/>"
	.."	<edit id='t10' x='158' y='260' w='36' h='16' revmsg='true' text_color='#00FF00' text='3分钟' font='system'/>"
	.."	<edit id='t11' x='260' y='259' w='66' h='16' revmsg='true' text_color='#00FF00' text='随机奖励' font='system'/>"
	.."	<edit id='t12' x='242' y='228' w='38' h='16' revmsg='true' text_color='#E4C19F' text='称号' font='system'/>"
	.."	<edit id='t13' x='124' y='291' w='121' h='16' revmsg='true' text_color='#00FF00' text='死亡、下线、回城，' font='system'/>"
	.."	<edit id='t14' x='282' y='291' w='66' h='16' revmsg='true' text_color='#00FF00' text='掉落' font='system'/>"
	.."	<edit id='t15' x='267' y='321' w='66' h='16' revmsg='true' text_color='#00FF00' text='2000元宝' font='system'/>"
	.."	<edit id='t16' x='71' y='351' w='281' h='16' revmsg='true' text_color='#E4C19F' text='6.活动地图中玩家死亡不掉落自身物品' font='system'/>"
	.."	<richedit id='enterMap' x='119' y='418' w='150' h='28' revmsg='true' text_color='#00FF00' text='#SELECT#→ 『进入寻龙夺宝』 ←#SELECTEND#' OnLButtonUp='xldb_NPCShow.EnterMap' font='system'/>"
	.." </dialog>"
	.."</form>"

function xldb_NPCShow.main()
	local handle = GetWindow(nil,"xldb_NPCShow")
	if handle ~= 0 then
		GUI:WndClose(handle)
		return
	end
	GenFormByString(ui)
end

--UI Logic Code Start
function xldb_NPCShow.UIInit(_Handle)
	GUI:WndSetSizeM(_Handle, 384, 505)
	CenterWnd(_Handle) 
	GUI:WndSetVisible(_Handle, true)
end
xldb_NPCShow.main()

function xldb_NPCShow:closeWnd()     --关闭按钮
	local hand = GetWindow(nil,"xldb_NPCShow")
	if hand ~= 0 then
		GUI:WndClose(hand)
	end
end

function xldb_NPCShow.EnterMap()
	UI:Lua_SubmitForm("寻龙夺宝表单", "enter", "")
end

function xldb_NPCShow.msg(str)
	local hand = GetWindow(nil,"xldb_NPCShow,enterMap")
	if hand ~= 0 then 
		window_msg_up(hand,str,-35,15,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end