ArenaNPC ={}
local ui = "<form> <dialog OnInit='ArenaNPC.UIInit' id='ArenaNPC' image='1806100012' x='356' y='46' w='384' h='505' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='lineImage1' image='1806100013' x='43' y='138' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1806100013' x='42' y='348' w='299' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='tittle' image='1805500027' x='136' y='13' w='68' h='19' check_point='0' enable='false'/>"
	.."	<button id='closeButton' image='1805900080' x='325' y='5' w='34' h='38' OnLButtonUp='ArenaNPC.CloseWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<edit id='introduceText' x='80' y='79' w='68' h='16' revmsg='true' text_color='#E4C19F' text='����ʱ�䣺' font='system'/>"
	.."	<edit id='t1' x='42' y='154' w='145' h='55' revmsg='true' text_color='#E4C19F' text='�˵����' font='system'/>"
	.."	<edit id='TestWndChild_0' x='140' y='79' w='162' h='16' revmsg='true' text_color='#00FF00' text='12:40-12:49' font='system'/>"
	.."	<edit id='t2' x='71' y='226' w='281' h='16' revmsg='true' text_color='#E4C19F' text='2. ����Ψһ������ҿɻ��' font='system'/>"
	.."	<edit id='t4' x='71' y='246' w='267' h='16' revmsg='true' text_color='#E4C19F' text='3. ����������������������Ʒ' font='system'/>"
	.."	<edit id='t8' x='71' y='206' w='281' h='14' revmsg='true' text_color='#E4C19F' text='1. ������ҿɻ��' font='system'/>"
	.."	<edit id='t0' x='174' y='205' w='152' h='16' revmsg='true' text_color='#00FF00' text='�������' font='system'/>"
	.."	<edit id='0' x='80' y='104' w='63' h='16' revmsg='true' text_color='#E4C19F' text='��ʼʱ�䣺' font='system'/>"
	.."	<edit id='TestWndChild_1' x='140' y='104' w='162' h='16' revmsg='true' text_color='#00FF00' text='12:50-13:20' font='system'/>"
	.."	<edit id='TestWndChild_2' x='205' y='79' w='68' h='16' revmsg='true' text_color='#E4C19F' text='����ֹpk��' font='system'/>"
	.."	<edit id='TestWndChild_3' x='205' y='104' w='68' h='16' revmsg='true' text_color='#E4C19F' text='������pk��' font='system'/>"
	.."	<edit id='TestWndChild_4' x='233' y='226' w='152' h='16' revmsg='true' text_color='#00FF00' text='1000Ԫ��' font='system'/>"
	.."	<edit id='TestWndChild_5' x='71' y='266' w='267' h='16' revmsg='true' text_color='#E4C19F' text='4. �����ʱ��Ϊ' font='system'/>"
	.."	<edit id='TestWndChild_6' x='174' y='267' w='162' h='16' revmsg='true' text_color='#00FF00' text='12:50-13:20' font='system'/>"
	.."	<edit id='TestWndChild_7' x='241' y='267' w='113' h='16' revmsg='true' text_color='#E4C19F' text='������ʱ���' font='system'/>"
	.."	<edit id='TestWndChild_8' x='71' y='287' w='113' h='16' revmsg='true' text_color='#E4C19F' text='�޷���ȡ����' font='system'/>"
	.."	<richedit id='enterMap' x='149' y='372' w='86' h='17' canedit='false' text='#SELECT#����˭������#SELECTEND#' OnLButtonUp='ArenaNPC.EnterMap' text_color='#00FF00' revmsg='true' font='system'/>"
	.."	<richedit id='getAward' x='137' y='398' w='104' h='17' canedit='false' text='#SELECT#��ȡ˭�����潱��#SELECTEND#' OnLButtonUp='ArenaNPC.GetAward' text_color='#00FF00' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"

function ArenaNPC.main()
	local handle = GetWindow(0,"ArenaNPC")
	if handle ~= 0 then
		GUI:WndClose(handle)
		return
	end
	GenFormByString(ui)
end

--UI Logic Code Start
function ArenaNPC.UIInit(_Handle)
	--[[CenterWnd(_Handle) 
	GUI:WndSetSizeM(_Handle, 361, 524)--]]
end

function ArenaNPC.CloseWnd()     --�رհ�ť
	local hand = GetWindow(0,"ArenaNPC")
	if hand ~= 0 then
		GUI:WndClose(hand)
	end
end

function ArenaNPC.GetAward()
	UI:Lua_SubmitForm("˭�������", "Award", "")
end

function ArenaNPC.EnterMap()
	UI:Lua_SubmitForm("˭�������", "Enter", "")
end

function ArenaNPC.AlertMsg(str)
	local hand = GetWindow(0,"ArenaNPC,enterMap")
	if hand ~= 0 then 
		window_msg_up(hand,str,-78,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end

ArenaNPC.main()