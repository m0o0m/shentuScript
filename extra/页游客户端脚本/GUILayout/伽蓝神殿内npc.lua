MagicPagodaInWnd ={}
local ui = "<form> <dialog OnInit='MagicPagodaInWnd.UIInit' id='MagicPagodaInWnd' image='1806100012' x='778' y='215' w='384' h='505' esc_close='true' drag='true' revmsg='true'>"
	.."	<button id='TestWndChild_1' image='1805900080' x='328' y='3' w='34' h='38' revmsg='true' text_color='#C2B6A0' OnLButtonUp='MagicPagodaInWnd.closeWnd'/>"
	.."	<image id='TestWndChild_2' image='1806100013' x='43' y='162' w='299' h='2' revmsg='true'/>"
	.."	<image id='TestWndChild_3' image='1806100013' x='42' y='376' w='299' h='2' revmsg='true'/>"
	.."	<image id='tittle' image='1805500026' x='135' y='11' w='68' h='19' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='TestWndChild_5' x='81' y='85' w='263' h='20' revmsg='true' text_color='#C2B6A0' text='击杀镇魔宝塔任务可获得令牌，收集足够令牌' font='system'/>"
	.."	<edit id='TestWndChild_6' x='52' y='110' w='263' h='20' revmsg='true' text_color='#C2B6A0' text='即可换取丰厚奖励！每个角色每日可兑换3次' font='system'/>"
	.."	<edit id='TestWndChild_4' x='55' y='165' w='65' h='29' revmsg='true' text_color='#CD8E55' text='领取消耗' font='SLMI18'/>"
	.."	<edit id='edit1' x='55' y='255' w='65' h='29' revmsg='true' text_color='#CD8E55' text='奖励内容' font='SLMI18'/>"
	.."	<itemctrl id='item1' x='70' y='206' w='48' h='48' rbtn_use='true' use_back='1806000059' init_item='镇魔令牌' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2' x='70' y='295' w='48' h='48' rbtn_use='true' use_back='1806000059' init_item='羽毛' enable='true' revmsg='true'/>"
	.."	<edit id='TestWndChild_10' x='127' y='219' w='120' h='20' revmsg='true' text_color='#2798CB' text='镇魔令牌 *100' font='system'/>"
	.."	<edit id='TestWndChild_12' x='128' y='307' w='119' h='20' revmsg='true' text_color='#2798CB' text='羽毛 *36' font='system'/>"
	.."	<edit id='info1' x='60' y='385' w='119' h='19' revmsg='true' text_color='#C2B6A0' text='花费     元宝' font='system'/>"
	.."	<edit id='info2' x='88' y='385' w='58' h='18' revmsg='true' text_color='#FFD901' text='2588' font='system'/>"
	.."	<edit id='info3' x='60' y='418' w='119' h='19' revmsg='true' text_color='#C2B6A0' text='花费     元宝' font='system'/>"
	.."	<edit id='info4' x='90' y='418' w='58' h='18' revmsg='true' text_color='#FFD901' text='888' font='system'/>"
	.."	<richedit id='info5' x='238' y='387' w='74' h='20' text='#SELECT#领取4倍奖励#SELECTEND#' OnLButtonUp='MagicPagodaInWnd.GetReward' revmsg='true' text_color='#00FF00' param='3' font='system'/>"
	.."	<richedit id='info6' x='238' y='420' w='75' h='20' text='#SELECT#领取2倍奖励#SELECTEND#' OnLButtonUp='MagicPagodaInWnd.GetReward' revmsg='true' param='2' text_color='#00FF00' font='system'/>"
	.."	<richedit id='info7' x='238' y='453' w='77' h='20' text='#SELECT#免费领取奖励#SELECTEND#' OnLButtonUp='MagicPagodaInWnd.GetReward' revmsg='true' param='1' text_color='#00FF00' font='system'/>"
	
	.." </dialog>"
	.."</form>"
function MagicPagodaInWnd.main()
	if GetWindow("", "MagicPagodaInWnd") ~= 0 then 
		GUIWndClose(GetWindow("", "MagicPagodaInWnd"))
	else
		GenFormByString(ui) 
	end
	--GenFormByString(ui) 
end
function MagicPagodaInWnd.GetReward(h)       --领取奖励
	local index = GUIWndGetParam(h)
	UI:Lua_SubmitForm("镇魔宝塔表单","Get_Reward",index)
end
--UI Logic Code Start
function MagicPagodaInWnd.UIInit(_Handle) 
	
end


function MagicPagodaInWnd.closeWnd()     --关闭按钮
	local hand = GetWindow(nil,"MagicPagodaInWnd")
	if hand ~= 0 then
		GUIWndClose(hand)
	end
end


function MagicPagodaInWnd.msg(str)
	local hand = GetWindow(nil,"MagicPagodaInWnd,info6")
	if hand ~= 0 then 
		window_msg_up(hand,str,-71,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end
MagicPagodaInWnd.main()