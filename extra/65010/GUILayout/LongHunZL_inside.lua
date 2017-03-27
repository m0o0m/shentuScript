LongHunZL_inside ={}
local ui = "<form> <dialog OnInit='LongHunZL_inside.UIInit' id='LongHunZL_inside' center='true' image='1806100012' x='297' y='61' w='384' h='505' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='lineImage1' image='1806100013' x='43' y='138' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1806100013' x='42' y='399' w='299' h='2' check_point='0' revmsg='true'/>"
	--.."	<edit id='tittle' x='155' y='10' w='127' h='22' revmsg='true' text_color='#FCFF00' text='龙魂之刃' font='system'/>"
	.."	<image id='tittle' image='1805500036' x='156' y='13' w='127' h='22' revmsg='false' enable='false' font='system'/>"
	.."	<button id='closeButton' image='1805900080' x='325' y='5' w='34' h='38' OnLButtonUp='LongHunZL_inside.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='introduceText' x='80' y='79' w='68' h='16' revmsg='true' text_color='#E4C19F' text='活动时间：' font='system'/>"
	.."	<edit id='t1' x='59' y='166' w='145' h='27' revmsg='true' text_color='#E4C19F' text='活动介绍：' font='system'/>"
	.."	<edit id='TestWndChild_0' x='140' y='77' w='162' h='16' revmsg='true' text_color='#00FF00' text='16:00-16:15' font='system'/>"
	.."	<edit id='t2' x='59' y='225' w='281' h='16' revmsg='true' text_color='#E4C19F' text='内，即可获得大量奖励。' font='system'/>"
	.."	<edit id='t4' x='59' y='263' w='267' h='16' revmsg='true' text_color='#E4C19F' text='如图所示：' font='system'/>"
	.."	<edit id='t8' x='74' y='205' w='281' h='14' revmsg='true' text_color='#E4C19F' text='活动开启后，只要站在龙魂之刃周围8格区域' font='system'/>"
	.."	<edit id='0' x='80' y='104' w='254' h='16' revmsg='true' text_color='#E4C19F' text='活动期间可自由进出龙魂之刃地图' font='system'/>"
	.."	<edit id='TestWndChild_2' x='77' y='300' w='41' h='16' revmsg='true' text_color='#00FF00' text='口口口' font='system'/>"
	.."	<edit id='TestWndChild_3' x='77' y='319' w='41' h='16' revmsg='true' text_color='#00FF00' text='口☆口' font='system'/>"
	.."	<edit id='TestWndChild_4' x='77' y='338' w='41' h='16' revmsg='true' text_color='#00FF00' text='口口口' font='system'/>"
	.."	<edit id='TestWndChild_5' x='133' y='319' w='16' h='16' revmsg='true' text_color='#00FF00' text='☆' font='system'/>"
	.."	<edit id='TestWndChild_6' x='154' y='319' w='79' h='16' revmsg='true' text_color='#E4C19F' text='代表龙魂之刃' font='system'/>"
	.."	<edit id='TestWndChild_7' x='133' y='338' w='16' h='16' revmsg='true' text_color='#00FF00' text='口' font='system'/>"
	.."	<edit id='TestWndChild_8' x='154' y='338' w='128' h='16' revmsg='true' text_color='#E4C19F' text='代表获得奖励区域' font='system'/>"
	.." </dialog>"
	.."</form>"

function LongHunZL_inside.main()
	local handle = GetWindow(nil,"LongHunZL_inside")
	if handle ~= 0 then
		GUI:WndClose(handle)
		return
	end
	GenFormByString(ui)
end

--UI Logic Code Start
function LongHunZL_inside.UIInit(_Handle)
	--[[CenterWnd(_Handle) 
	GUI:WndSetSizeM(_Handle, 361, 524)--]]
end

function LongHunZL_inside.closeWnd()     --关闭按钮
	local hand = GetWindow(nil,"LongHunZL_inside")
	if hand ~= 0 then
		GUI:WndClose(hand)
	end
end



LongHunZL_inside.main()