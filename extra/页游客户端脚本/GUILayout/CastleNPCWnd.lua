CastleNPCWnd ={}
local ui = "<form> <dialog OnInit='CastleNPCWnd:UIInit' id='CastleNPCWnd' image='1806100012' x='366' y='27' w='384' h='505' esc_close='true' drag='true' center='true' revmsg='true'>"
	--.."	<image id='title' image='1805500018' x='124' y='12' w='126' h='22' check_point='0' revmsg='false' enable='false'/>"
	.."	<edit id='title' x='171' y='10' w='126' h='22' revmsg='true' enable='false' text='����ս' font='SIMLI18'/>"
	.."	<button id='closeBtn' image='1805900080' x='341' y='2' w='34' h='38' OnLButtonUp='CastleNPCWnd:CloseWnd' revmsg='true'/>"
	.."	<edit id='text4' x='58' y='72' w='60' h='20' revmsg='true' text_color='#00FF00' text='����˵����' font='system'/>"
	.."	<edit id='text1' x='58' y='98' w='290' h='20' revmsg='true' text_color='#E4C19F' text='1��������  ���ͷ���  �죬�Զ������״ι���ս��' font='system'/>"
	.."	<edit id='text7' x='116' y='98' w='18' h='20' revmsg='true' text_color='#00FF00' text='4' font='system'/>"
	.."	<edit id='text10' x='187' y='97' w='15' h='20' revmsg='true' text_color='#00FF00' text='7' font='system'/>"
	.."	<edit id='text2' x='58' y='122' w='276' h='20' revmsg='true' text_color='#E4C19F' text='2����һ����᳤�����᳤���빤��ս�����й���' font='system'/>"
	.."	<edit id='text3' x='58' y='173' w='290' h='20' revmsg='true' text_color='#E4C19F' text='3�����빥��ս��Ҫ����1��         ������ɹ���' font='system'/>"
	.."	<edit id='text5' x='58' y='148' w='276' h='20' revmsg='true' text_color='#E4C19F' text='   ���ɲ��빥�ǻ��' font='system'/>"
	.."	<edit id='text8' x='205' y='172' w='60' h='20' revmsg='true' text_color='#00FF00' text='��������' font='system'/>"
	.."	<edit id='text9' x='58' y='198' w='60' h='20' revmsg='true' text_color='#00FF00' text='   ����' font='system'/>"
	.."	<edit id='text6' x='58' y='199' w='276' h='20' revmsg='true' text_color='#E4C19F' text='����    ��������ս��' font='system'/>"
	.."	<edit id='text11' x='58' y='223' w='290' h='20' revmsg='true' text_color='#E4C19F' text='4���ݻٻʹ��ź�������ǻʹ���ͼ��ÿ��ʮ����' font='system'/>"
	.."	<edit id='text12' x='58' y='249' w='276' h='20' revmsg='true' text_color='#E4C19F' text='�� �����Ǳ���ʱռ�лᣮ' font='system'/>"
	.."	<richedit id='btn1' x='120' y='286' w='150' h='28' revmsg='true' font='system' text='#SELECT#����Ǳ����ţ�100W��ң�#SELECTEND#' OnLButtonUp='CastleNPCWnd.RepairCastleDoor' />"
	.."	<richedit id='btn2' x='120' y='316' w='150' h='28' revmsg='true' font='system' text='#SELECT#����ʹ����ţ�ÿ��100W��ң�#SELECTEND#' OnLButtonUp='CastleNPCWnd.RepairPalaceDoor' />"
	.."	<richedit id='btn3' x='155' y='353' w='150' h='28' revmsg='true' font='system' text='#SELECT#���빥��ս#SELECTEND#' OnLButtonUp='CastleNPCWnd.RequestCastleWar' />"
	.."	<richedit id='btn4' x='155' y='383' w='150' h='28' revmsg='true' font='system' text='#SELECT#��ѯ����ս#SELECTEND#' OnLButtonUp='CastleNPCWnd.QueryCastleWar' />"
	.."	<richedit id='btn5' x='133' y='413' w='150' h='28' revmsg='true' font='system' text='#SELECT#��ȡ����սԪ������#SELECTEND#' OnLButtonUp='CastleNPCWnd.Award' />"
	.." </dialog>"
	.."</form>"


function CastleNPCWnd.main()
	GenFormByString(ui)
end

--UI Logic Code Start
function CastleNPCWnd:UIInit(_Handle)
	self._wmd = _Handle
	CastleNPCWnd.Handle = _Handle
	
end

function CastleNPCWnd.RepairCastleDoor()
	UI:Lua_SubmitForm("NPC����ս��", "RepairCastleDoor", "")
end

function CastleNPCWnd.RepairPalaceDoor()
	UI:Lua_SubmitForm("NPC����ս��", "RepairPalaceDoor", "")
end

function CastleNPCWnd.RequestCastleWar()
	UI:Lua_SubmitForm("NPC����ս��", "RequestCastleWar", "")
end

function CastleNPCWnd.QueryCastleWar()
	UI:Lua_SubmitForm("NPC����ս��", "QueryCastleWar", "")
end

function CastleNPCWnd.Award()
	UI:Lua_SubmitForm("NPC����ս��", "Award", "")
end

function CastleNPCWnd.Msg(index, str)
	index = tonumber(index);
	local hand = GetWindow(nil,"CastleNPCWnd,btn"..index);
	if hand ~= 0 then 
		window_msg_up(hand,str,-50,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end



function CastleNPCWnd:CloseWnd()	
	--GUI:WndClose(self._wnd)
	WndClose(self._wmd)
end


CastleNPCWnd.main()