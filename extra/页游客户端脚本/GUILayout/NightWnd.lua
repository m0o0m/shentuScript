NightWnd ={}
local ui = "<form> <dialog OnInit='NightWnd.UIInit' id='NightWnd' image='1806100012' x='778' y='215' w='384' h='505' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='lineImage1' image='1806100013' x='43' y='147' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1806100013' x='42' y='399' w='299' h='2' check_point='0' revmsg='true'/>"
	--.."	<edit id='tittle' x='165' y='8' w='127' h='22' revmsg='true' text_color='#FCFF00' text='ҹϮ��ɽ��' font='system'/>"
	
	.."	<image id='tittle' image='1805500044' x='157' y='11' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='closeButton' image='1805900080' x='325' y='5' w='34' h='38' OnLButtonUp='NightWnd.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<richedit id='introduceText' x='80' y='79' w='68' h='16' canedit='false' text_color='#E4C19F' text='�ʱ�䣺' revmsg='true' font='system'/>"
	.."	<edit id='t1' x='42' y='154' w='145' h='14' revmsg='true' text_color='#E4C19F' text='�˵����' font='system'/>"
	.."	<richedit id='enterMap' x='154' y='418' w='88' h='20' text_color='#00FF00' text='#SELECT#����ȺӢ����#SELECTEND#' OnLButtonUp='NightWnd.EnterMap' revmsg='true' font='system'/>"
	.."	<edit id='TestWndChild_0' x='140' y='77' w='162' h='16' revmsg='true' text_color='#00FF00' text='20:00-21:45 	' font='system'/>"
	.."	<edit id='t2' x='70' y='225' w='281' h='16' revmsg='true' text_color='#E4C19F' text='2.��������������������������Ӫ��ÿ5' font='system'/>"
	.."	<edit id='t3' x='70' y='250' w='281' h='16' revmsg='true' text_color='#E4C19F' text='�������·�����Ӫ' font='system'/>"
	.."	<edit id='t4' x='70' y='275' w='281' h='16' revmsg='true' text_color='#E4C19F' text='3.��ɱ��ҡ�ɱ�֡��������������Ի�û���' font='system'/>"
	.."	<edit id='t8' x='71' y='200' w='281' h='14' revmsg='true' text_color='#E4C19F' text='1.�����߿ɻ�ÿ�֮�顢BOSS���֡��ɾͻ���' font='system'/>"
	.."	<edit id='t0' x='155' y='200' w='190' h='14' revmsg='true' text_color='#00FF00' text='��֮�顢BOSS���֡��ɾͻ���' font='system'/>"
	.."	<edit id='t6' x='69' y='300' w='281' h='16' revmsg='true' text_color='#E4C19F' text='4.������󽫸����������Ž���' font='system'/>"
	.."	<edit id='t7' x='69' y='325' w='281' h='16' revmsg='true' text_color='#E4C19F' text='5.����������������������Ʒ' font='system'/>"
	.."	<richedit id='0' x='80' y='124' w='233' h='16' canedit='false' text_color='#E4C19F' text='��ڼ�����ɽ���ȺӢ���Ե�ͼ' revmsg='true' font='system'/>"


	.."	<edit id='TestWndChild_1' x='140' y='98' w='162' h='20' revmsg='true' text_color='#00FF00' text='50��	' font='system'/>"
	.."	<edit id='t5' x='79' y='98' w='145' h='20' revmsg='true' text_color='#E4C19F' text='����ȼ���' font='system'/>"
	
	.." </dialog>"
	.."</form>"

function NightWnd.main()
	if GetWindow("", "NightWnd") ~= 0 then 
		GUIWndClose(GetWindow("", "NightWnd"))
	else
		GenFormByString(ui) 
	end
end

--UI Logic Code Start
function NightWnd.UIInit(_Handle)
	GUIWndSetSizeM(_Handle, 361, 524)
	CenterWnd(_Handle) 
end
NightWnd.main()

function NightWnd.closeWnd()     --�رհ�ť
	local hand = GetWindow(nil,"NightWnd")
	if hand ~= 0 then
		GUIWndClose(hand)
	end
end

function NightWnd.EnterMap()
	UI:Lua_SubmitForm("ҹϮ��ɽ�Ǳ�", "EnterMap", "")
end

function NightWnd.msg(str)
	local hand = GetWindow(nil,"NightWnd,enterMap")
	if hand ~= 0 then 
		window_msg_up(hand,str,-71,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end

--[[	

	UI:Lua_GetScreenSize()
	local _SW = as3.tolua(LuaRet[1])
	local _SH = as3.tolua(LuaRet[2])
	msgs="30���ڻ�ɱͬһĿ�겻���ӻ��֣�5��������Ӫ"
	x=_SW/2-191
	y=_SH-200
	msg_tip(msgs,x,y)
	
	function msg_tip(msgs,x,y)
		local _GUIHandle = GUIImageCreate("","TestWndChild_0",1806200004 ,x,y) --1806000064
		if _GUIHandle ~= 0 then
			GUIWndSetParam(_GUIHandle, 0)
			GUIWndSetSizeM(_GUIHandle,382, 22)
		end
		local width = CLGetFontStrWidth("system", msgs)
		_GUIHandle = GUIEditCreate("","TestWndChild_1",x+(382-width)/2,y,width+10,22)
		if _GUIHandle ~= 0 then
			GUIWndSetParam(_GUIHandle, 0)
			GUIWndSetTextColorM(_GUIHandle, 4293841431)
			EditSetProp("", "TestWndChild_1", true, false, false, true, MakeARGB(255, 255, 204, 00), false, msgs)
		end
		CLAddDelayTask("msg_close()", 3000, 1)
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
		GUIWndTween(hand, "<Tween><Frame time='0.1' alpha='1' /></Tween>", "TweenDown("..hand..")")
	end 
	function TweenDown(hand) 
		GUIWndTween(hand, "<Tween><Frame time='1' alpha ='0.1' /></Tween>" , GUIWndSetVisible(hand,false))
	end --]]