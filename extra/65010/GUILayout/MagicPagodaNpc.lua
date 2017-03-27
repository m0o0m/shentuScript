MagicPagodaWnd ={}
local ui = "<form> <dialog OnInit='MagicPagodaWnd.UIInit' id='MagicPagodaWnd' image='1806100012' x='26' y='6' w='384' h='505' esc_close='true' center='true' drag='true' revmsg='true'>"
	.."	<image id='lineImage1' image='1806100013' x='43' y='160' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1806100013' x='42' y='399' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='tittle' image='1805500026' x='135' y='11' w='68' h='19' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='closeButton' image='1805900080' x='325' y='5' w='34' h='38' OnLButtonUp='MagicPagodaWnd.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='t1' x='42' y='176' w='145' h='14' revmsg='true' text_color='#E4C19F' text='活动规则：' font='system'/>"
	.."	<richedit id='enterMap' x='150' y='428' w='100' h='30' text_color='#00FF00' text='#SELECT#进入镇魔宝塔#SELECTEND#' OnLButtonUp='MagicPagodaWnd.EnterMap' revmsg='true' font='system'/>"
	.."	<edit id='TestWndChild_0' x='146' y='101' w='73' h='20' revmsg='true' text_color='#00FF00' text='19:25-19:50' font='system'/>"
	.."	<edit id='t3' x='57' y='248' w='296' h='14' revmsg='true' text_color='#E4C19F' text='2、奖励阶段，可用        ，兑换         ;' font='system'/>"
	.."	<edit id='t17' x='160' y='248' w='74' h='14' revmsg='true' text_color='#00FF00' text='镇魔令牌' font='system'/>"
	.."	<edit id='t4' x='245' y='248' w='74' h='14' revmsg='true' text_color='#00FF00' text='海量材料' font='system'/>"
	.."	<edit id='t8' x='57' y='218' w='290' h='14' revmsg='true' text_color='#E4C19F' text='1、地图内将刷新大量    ，击杀后掉落         ;' font='system'/>"
	.."	<edit id='t0' x='270' y='218' w='58' h='14' revmsg='true' text_color='#00FF00' text='镇魔令牌' font='system'/>"
	.."	<edit id='t5' x='57' y='278' w='281' h='14' revmsg='true' text_color='#E4C19F' text='3、活动时间内可自由进出地图' font='system'/>"
	.."	<edit id='t16' x='57' y='308' w='281' h='14' revmsg='true' text_color='#E4C19F' text='4、活动时间内死亡有几率掉落装备' font='system'/>"
	.."	<edit id='t9' x='82' y='81' w='258' h='20' revmsg='true' text_color='#E4C19F' text='活动将于每周一， 三，五开放' font='system'/>"
	.."	<edit id='t11' x='82' y='101' w='64' h='20' revmsg='true' text_color='#E4C19F' text='活动时间：' font='system'/>"
	.."	<edit id='t12' x='213' y='101' w='94' h='20' revmsg='true' text_color='#E4C19F' text='（挑战BOSS）' font='system'/>"
	.."	<edit id='TestWndChild_1' x='146' y='121' w='73' h='20' revmsg='true' text_color='#00FF00' text='19:50-20:00' font='system'/>"
	.."	<edit id='t13' x='82' y='121' w='64' h='20' revmsg='true' text_color='#E4C19F' text='奖励时间：' font='system'/>"
	.."	<edit id='t14' x='213' y='121' w='109' h='20' revmsg='true' text_color='#E4C19F' text='（兑换奖励）' font='system'/>"
	.."	<edit id='t15' x='171' y='218' w='58' h='14' revmsg='true' text_color='#00FF00' text='BOSS' font='system'/>"


	.." </dialog>"
	.."</form>" 

function MagicPagodaWnd.main()
	GenFormByString(ui)
end

--UI Logic Code Start
function MagicPagodaWnd.UIInit(_Handle) 
	
end
MagicPagodaWnd.main()

function MagicPagodaWnd.closeWnd()     --关闭按钮
	local hand = GetWindow(nil,"MagicPagodaWnd")
	if hand ~= 0 then
		GUI:WndClose(hand)
	end
end

function MagicPagodaWnd.EnterMap()
	UI:Lua_SubmitForm("镇魔宝塔表单", "enterMap", "")
end

function MagicPagodaWnd.msg(str)
	local hand = GetWindow(nil,"MagicPagodaWnd,enterMap")
	if hand ~= 0 then 
		window_msg_up(hand,str,-71,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end