NightWnd ={}
local ui = "<form> <dialog OnInit='NightWnd.UIInit' id='NightWnd' image='1806100012' x='298' y='46' w='384' h='505' esc_close='true' drag='true' revmsg='true' visible='false'>"
	.."	<image id='lineImage1' image='1806100013' x='43' y='138' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1806100013' x='42' y='399' w='299' h='2' check_point='0' revmsg='true'/>"
	.." <image id='tittle' x='133' y='12' w='126' h='22' image='1805500005' revmsg='false'/>"
	.."	<button id='closeButton' image='1805900080' x='325' y='5' w='34' h='38' OnLButtonUp='NightWnd.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<richedit id='introduceText' x='80' y='79' w='68' h='16' canedit='false' text_color='#E4C19F' text='活动时间：' revmsg='true' font='system'/>"
	.."	<edit id='t1' x='42' y='154' w='145' h='14' revmsg='true' text_color='#E4C19F' text='活动说明：' font='system'/>"
	.."	<richedit id='enterMap' x='144' y='418' w='88' h='20' text_color='#00FF00' text='#SELECT#参与夜袭巫山城#SELECTEND#' OnLButtonUp='NightWnd.EnterMap' revmsg='true' font='system'/>"
	.."	<edit id='TestWndChild_0' x='140' y='77' w='162' h='16' revmsg='true' text_color='#00FF00' text='20:00-21:45 	' font='system'/>"
	.."	<edit id='t2' x='70' y='225' w='281' h='16' revmsg='true' text_color='#E4C19F' text='2.进入活动后，玩家随机加入两个对立阵营，每5' font='system'/>"
	.."	<edit id='t3' x='70' y='250' w='281' h='16' revmsg='true' text_color='#E4C19F' text='分钟重新分配阵营' font='system'/>"
	.."	<edit id='t4' x='70' y='275' w='281' h='16' revmsg='true' text_color='#E4C19F' text='3.击杀玩家、助攻、杀怪、持续参与活动都可以获' font='system'/>"
	.."	<edit id='t8' x='71' y='200' w='281' h='14' revmsg='true' text_color='#E4C19F' text='1.参与者可获得狂暴之灵、BOSS积分、成就积分' font='system'/>"
	.."	<edit id='t0' x='155' y='200' w='190' h='14' revmsg='true' text_color='#00FF00' text='狂暴之灵、BOSS积分、成就积分' font='system'/>"
	.."	<edit id='t5' x='70' y='300' w='281' h='16' revmsg='true' text_color='#E4C19F' text='得积分' font='system'/>"
	.."	<edit id='t6' x='70' y='325' w='281' h='16' revmsg='true' text_color='#E4C19F' text='4.活动结束后将根据排名发放奖励' font='system'/>"
	.."	<edit id='t7' x='70' y='350' w='281' h='16' revmsg='true' text_color='#E4C19F' text='5.活动中玩家死亡不掉落自身物品' font='system'/>"
	.."	<richedit id='0' x='80' y='104' w='233' h='16' canedit='false' text_color='#E4C19F' text='活动期间可自由进入夜袭巫山城地图' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"

function NightWnd.main()
	GenFormByString(ui)
end

--UI Logic Code Start
function NightWnd.UIInit(_Handle)
	GUI:WndSetSizeM(_Handle, 361, 524)
	CenterWnd(_Handle) 
	GUI:WndSetMagicUI(_Handle, 1)
	GUI:WndSetVisible(_Handle, true)
end
NightWnd.main()

function NightWnd.closeWnd()     --关闭按钮
	local hand = GetWindow(nil,"NightWnd")
	if hand ~= 0 then
		GUI:WndClose(hand)
	end
end

function NightWnd.EnterMap()
	UI:Lua_SubmitForm("夜袭巫山城表单", "EnterMap", "")
end

function NightWnd.msg(str)
	local hand = GetWindow(nil,"NightWnd,enterMap")
	if hand ~= 0 then 
		window_msg_up(hand,str,-71,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end

--[[	

	UI:Lua_GetScreenSize()
	local _SW = LuaRet[1]
	local _SH = LuaRet[2]
	msgs="30秒内击杀同一目标不增加积分，5秒后分配阵营"
	x=_SW/2-191
	y=_SH-200
	msg_tip(msgs,x,y)
	
	function msg_tip(msgs,x,y)
		local _GUIHandle = GUI:ImageCreate("","TestWndChild_0",1806200004 ,x,y) --1806000064
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetSizeM(_GUIHandle,382, 22)
		end
		local width = CL:GetFontStrWidth("system", msgs)
		_GUIHandle = GUI:EditCreate("","TestWndChild_1",x+(382-width)/2,y,width+10,22)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetTextColorM(_GUIHandle, 4293841431)
			EditSetProp("", "TestWndChild_1", true, false, false, true, MakeARGB(255, 255, 204, 00), false, msgs)
		end
		CL:AddDelayTask("msg_close()", 3000, 1)
	end
	function msg_close()
		local hand = GetWindow("","TestWndChild_0")
		if hand ~= 0 then 
			TweenUp(hand)
		end
		local hand = GetWindow("","TestWndChild_1")
		if hand ~= 0 then 
			TweenUp(hand)
		end
	end
	function TweenUp(hand) 
		GUI:WndTween(hand, "<Tween><Frame time='0.1' alpha='1' /></Tween>", "TweenDown("..hand..")")
	end 
	function TweenDown(hand) 
		GUI:WndTween(hand, "<Tween><Frame time='1' alpha ='0.1' /></Tween>" , GUI:WndSetVisible(hand,false))
	end --]]