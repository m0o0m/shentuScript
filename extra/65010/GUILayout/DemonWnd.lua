DemonWnd ={}
local ui = "<form> <dialog OnInit='DemonWnd.UIInit' id='DemonWnd' image='1806100012' x='26' y='6' w='384' h='505' esc_close='true' center='true' drag='true' revmsg='true'>"
	.."	<image id='lineImage1' image='1806100013' x='43' y='160' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1806100013' x='42' y='399' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='tittle' image='1805500038' x='164' y='11' w='68' h='19' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='closeButton' image='1805900080' x='325' y='5' w='34' h='38' OnLButtonUp='DemonWnd.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='t1' x='42' y='176' w='145' h='14' revmsg='true' text_color='#E4C19F' text='�����' font='system'/>"
	.."	<richedit id='enterMap' x='150' y='418' w='100' h='20' text_color='#00FF00' text='#SELECT#��ȥ���������#SELECTEND#' OnLButtonUp='DemonWnd.EnterMap' revmsg='true' font='system'/>"
	.."	<edit id='TestWndChild_0' x='146' y='101' w='73' h='20' revmsg='true' text_color='#00FF00' text='19:25-19:40' font='system'/>"
	.."	<edit id='t2' x='56' y='243' w='281' h='14' revmsg='true' text_color='#E4C19F' text='�߽���' font='system'/>"
	.."	<edit id='t3' x='56' y='268' w='296' h='14' revmsg='true' text_color='#E4C19F' text='2�������ʱ������            ��     ��ҽ���' font='system'/>"
	.."	<edit id='t4' x='56' y='293' w='281' h='14' revmsg='true' text_color='#E4C19F' text='������ս        �Ļ���' font='system'/>"
	.."	<edit id='t8' x='57' y='218' w='296' h='14' revmsg='true' text_color='#E4C19F' text='1����ͼ�ڽ�ˢ�´���    �����亣��        ����ɱ' font='system'/>"
	.."	<edit id='t0' x='256' y='218' w='58' h='14' revmsg='true' text_color='#00FF00' text='BOSS����' font='system'/>"
	.."	<edit id='t5' x='56' y='318' w='281' h='14' revmsg='true' text_color='#E4C19F' text='3��        �м��ʵ���    װ��' font='system'/>"
	.."	<edit id='t9' x='82' y='81' w='258' h='20' revmsg='true' text_color='#E4C19F' text='�����ÿ�ܶ��� �ģ� ������' font='system'/>"
	.."	<edit id='t11' x='82' y='101' w='64' h='20' revmsg='true' text_color='#E4C19F' text='�ʱ�䣺' font='system'/>"
	.."	<edit id='t12' x='213' y='101' w='94' h='20' revmsg='true' text_color='#E4C19F' text='�����ɽ�����' font='system'/>"
	.."	<edit id='TestWndChild_1' x='146' y='121' w='73' h='20' revmsg='true' text_color='#00FF00' text='19:40-20:00' font='system'/>"
	.."	<edit id='t13' x='82' y='121' w='64' h='20' revmsg='true' text_color='#E4C19F' text='����ʱ�䣺' font='system'/>"
	.."	<edit id='t14' x='213' y='121' w='109' h='20' revmsg='true' text_color='#E4C19F' text='����ս�ռ�BOSS��' font='system'/>"
	.."	<edit id='t15' x='172' y='218' w='58' h='14' revmsg='true' text_color='#00FF00' text='BOSS' font='system'/>"
	.."	<edit id='t16' x='93' y='243' w='58' h='14' revmsg='true' text_color='#00FF00' text='�����' font='system'/>"
	.."	<edit id='t17' x='170' y='268' w='74' h='14' revmsg='true' text_color='#00FF00' text='���������' font='system'/>"
	.."	<edit id='t18' x='255' y='268' w='74' h='14' revmsg='true' text_color='#00FF00' text='ǰ5��' font='system'/>"
	.."	<edit id='t19' x='104' y='293' w='58' h='14' revmsg='true' text_color='#00FF00' text='�ռ�BOSS' font='system'/>"
	.."	<edit id='t20' x='75' y='318' w='58' h='14' revmsg='true' text_color='#00FF00' text='�ռ�BOSS' font='system'/>"
	.."	<edit id='t21' x='182' y='318' w='58' h='14' revmsg='true' text_color='#00FF00' text='ת10' font='system'/>"
	.." </dialog>"
	.."</form>" 

function DemonWnd.main()
	GenFormByString(ui)
end

--UI Logic Code Start
function DemonWnd.UIInit(_Handle) 
	
end
DemonWnd.main()

function DemonWnd.closeWnd()     --�رհ�ť
	local hand = GetWindow(nil,"DemonWnd")
	if hand ~= 0 then
		GUI:WndClose(hand)
	end
end

function DemonWnd.EnterMap()
	UI:Lua_SubmitForm("ħ�����ֱ�", "EnterMap", "")
end

function DemonWnd.msg(str)
	local hand = GetWindow(nil,"DemonWnd,enterMap")
	if hand ~= 0 then 
		window_msg_up(hand,str,-71,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end