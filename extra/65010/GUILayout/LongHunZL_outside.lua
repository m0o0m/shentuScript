LongHunZL_outside ={}
local ui = "<form> <dialog OnInit='LongHunZL_outside.UIInit' id='LongHunZL_outside' center='true' image='1806100012' x='296' y='68' w='384' h='505' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='lineImage1' image='1806100013' x='43' y='138' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1806100013' x='42' y='399' w='299' h='2' check_point='0' revmsg='true'/>"
	--.."	<edit id='tittle' x='155' y='10' w='127' h='22' revmsg='true' text_color='#FCFF00' text='龙魂之刃' font='system'/>"
	.."	<image id='tittle' image='1805500036' x='156' y='13' w='127' h='22' revmsg='false' enable='false' font='system'/>"
	.."	<button id='closeButton' image='1805900080' x='325' y='5' w='34' h='38' OnLButtonUp='LongHunZL_outside.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='introduceText' x='80' y='79' w='68' h='16' revmsg='true' text_color='#E4C19F' text='活动时间：' font='system'/>"
	.."	<edit id='t1' x='42' y='154' w='145' h='55' revmsg='true' text_color='#E4C19F' text='活动说明：' font='system'/>"
	.."	<edit id='TestWndChild_0' x='140' y='77' w='162' h='16' revmsg='true' text_color='#00FF00' text='16:00-16:15' font='system'/>"
	.."	<edit id='t2' x='71' y='243' w='281' h='16' revmsg='true' text_color='#E4C19F' text='2.活动中玩家死亡不掉落物品' font='system'/>"
	.."	<edit id='t4' x='70' y='277' w='267' h='16' revmsg='true' text_color='#E4C19F' text='3.活动期间，玩家进入龙魂之刃地图无次数限制。' font='system'/>"
	.."	<edit id='t8' x='71' y='200' w='281' h='14' revmsg='true' text_color='#E4C19F' text='1.参与玩家有机会获得' font='system'/>"
	.."	<edit id='t0' x='194' y='199' w='152' h='16' revmsg='true' text_color='#00FF00' text='经验、BOSS积分、绑定' font='system'/>"
	.."	<edit id='0' x='80' y='104' w='63' h='16' revmsg='true' text_color='#E4C19F' text='参与等级：' font='system'/>"
	.."	<edit id='t15' x='81' y='216' w='113' h='16' revmsg='true' text_color='#00FF00' text='元宝和不绑定元宝。' font='system'/>"
	.."	<edit id='TestWndChild_1' x='140' y='104' w='162' h='16' revmsg='true' text_color='#00FF00' text='50级' font='system'/>"
	.."	<richedit id='enterMap' x='119' y='418' w='150' h='28' canedit='false' text_color='#00FF00' text='#SELECT#→ 『进入龙魂之刃』 ←#SELECTEND#' OnLButtonUp='LongHunZL_outside.EnterMap' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"

function LongHunZL_outside.main()
	local handle = GetWindow(nil,"LongHunZL_outside")
	if handle ~= 0 then
		GUI:WndClose(handle)
		return
	end
	GenFormByString(ui)
end

--UI Logic Code Start
function LongHunZL_outside.UIInit(_Handle)
	--[[CenterWnd(_Handle) 
	GUI:WndSetSizeM(_Handle, 361, 524)--]]
end

function LongHunZL_outside.closeWnd()     --关闭按钮
	local hand = GetWindow(nil,"LongHunZL_outside")
	if hand ~= 0 then
		GUI:WndClose(hand)
	end
end

function LongHunZL_outside.EnterMap()
	UI:Lua_SubmitForm("龙魂之刃表单", "enter", "")
end

function LongHunZL_outside.msg(str)
	local hand = GetWindow(nil,"LongHunZL_outside,enterMap")
	if hand ~= 0 then 
		window_msg_up(hand,str,-48,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end

LongHunZL_outside.main()