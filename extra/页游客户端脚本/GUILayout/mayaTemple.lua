mayaTemple ={}
local ui = "<form> <dialog OnInit='mayaTemple.UIInit' id='mayaTemple' image='1806100012' x='298' y='46' w='384' h='505' esc_close='true' drag='true' revmsg='true' center='true'>"
	.."	<image id='title' image='1805500019' x='124' y='12' w='126' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='lineImage1' image='1806100013' x='43' y='138' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1806100013' x='42' y='399' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<button id='closeButton' image='1805900080' x='325' y='5' w='34' h='38' OnLButtonUp='mayaTemple.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='t1' x='174' y='163' w='145' h='20' revmsg='true' text_color='#00FF00' text='˵ ��' font='system'/>"
	.."	<edit id='t2' x='70' y='238' w='281' h='20' revmsg='true' text_color='#E4C19F' text='2��BOSS������ÿ��' font='system'/>"
	.."	<edit id='t4' x='71' y='270' w='212' h='20' revmsg='true' text_color='#E4C19F' text='3��ˢ��ʱ�䣺30-180����' font='system'/>"
	.."	<edit id='t8' x='70' y='204' w='281' h='20' revmsg='true' text_color='#E4C19F' text='1������������ֱ�ӽ���Զ�����' font='system'/>"
	.."	<edit id='t0' x='248' y='204' w='79' h='20' revmsg='true' text_color='#00FF00' text='һ��' font='system'/>"
	.."	<edit id='t6' x='71' y='302' w='159' h='20' revmsg='true' text_color='#E4C19F' text='4��������ϣ�' font='system'/>"
	.."	<edit id='t7' x='70' y='332' w='281' h='20' revmsg='true' text_color='#E4C19F' text='5������װ����' font='system'/>"
	.."	<edit id='0' x='83' y='73' w='233' h='20' revmsg='true' text_color='#E4C19F' text='Զ�����ˢ��ȫϵ��BOSS������BOSS�࣬' font='system'/>"
	.."	<edit id='t9' x='180' y='238' w='83' h='20' revmsg='true' text_color='#00FF00' text='3��' font='system'/>"
	.."	<edit id='t12' x='205' y='238' w='108' h='20' revmsg='true' text_color='#E4C19F' text='��Զ����4�㣩' font='system'/>"
	.."	<edit id='t13' x='154' y='302' w='121' h='20' revmsg='true' text_color='#00FF00' text='ȫϵ�в���' font='system'/>"
	.."	<edit id='t15' x='154' y='332' w='66' h='20' revmsg='true' text_color='#00FF00' text='ȫϵ��װ��' font='system'/>"
	.."	<edit id='t16' x='126' y='443' w='156' h='20' revmsg='true' text_color='#E4C19F' text='ֱ����ѽ������һ��' font='system'/>"
	.."	<edit id='1' x='59' y='105' w='233' h='20' revmsg='true' text_color='#E4C19F' text='���ɶ�õĴ�BOSS�õط���' font='system'/>"
	.."	<richedit id='enterMap' x='119' y='418' w='150' h='28' text_color='#00FF00' text='#SELECT#�� ������Զ���� ��#SELECTEND#' OnLButtonUp='mayaTemple.EnterMap' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"
	
	
function mayaTemple.main()
	local handle = GetWindow(nil,"mayaTemple")
	if handle ~= 0 then
		GUIWndClose(handle)
		return
	end
	GenFormByString(ui)
end

--UI Logic Code Start
function mayaTemple.UIInit(_Handle)
	--GUIWndSetSizeM(_Handle, 361, 524)
	--CenterWnd(_Handle) 
end
mayaTemple.main()

function mayaTemple.closeWnd()     --�رհ�ť
	local hand = GetWindow(nil,"mayaTemple")
	if hand ~= 0 then
		GUIWndClose(hand)
	end
end

function mayaTemple.EnterMap()
	UI:Lua_SubmitForm("��������", "enter", "")
end

function mayaTemple.msg(str)
	local hand = GetWindow(nil,"mayaTemple,enterMap")
	if hand ~= 0 then 
		window_msg_up(hand,str,-77,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end