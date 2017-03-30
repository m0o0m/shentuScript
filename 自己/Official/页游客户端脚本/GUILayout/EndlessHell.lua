EndlessHell ={}
local ui = "<form> <dialog OnInit='EndlessHell.UIInit' id='EndlessHell' image='1806100012' x='222' y='159' w='384' h='505' center='true' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='lineImage1' image='1800600004' x='20' y='131' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='lineImage2' image='1800600004' x='21' y='352' w='327' h='2' check_point='0' revmsg='true'/>"
	.."	<image id='tittle' image='1806300017' x='144' y='7' w='127' h='22' revmsg='false' enable='false'/>"
	.."	<button id='closeButton' image='1805900080' x='327' y='4' w='34' h='38' OnLButtonUp='EndlessHell.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<richedit id='introduceText' x='57' y='81' w='287' h='53' text_color='#E4C19F' text='    �޾���Ԩ��Ǳ�������ǿ��Ķ�ħ��������������ʿǰȥ��ս��Ѱ�ұ��أ�����' revmsg='true' font='system'/>"
	.."	<edit id='t1' x='60' y='141' w='145' h='14' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<richedit id='bossName' x='61' y='160' w='295' h='40' revmsg='true' text_color='#E4C19F'  font='system'/>"
	.."	<richedit id='reward' x='61' y='204' w='293' h='70' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<richedit id='warning' x='61' y='279' w='290' h='58' revmsg='true' text_color='#E4C19F' font='system'/>"
	.."	<richedit id='enterMap' x='126' y='385' w='140' h='27' OnLButtonUp='EndlessHell.Clicked' revmsg='true' text_color='#00FF00' font='system'/>"
	.."	<richedit id='info' x='95' y='432' w='300' h='40' revmsg='true' text_color='#E4C19F' font='system'/>"
	.." </dialog>"
	.."</form>"

function EndlessHell.main()
	local handle = GetWindow(nil,"EndlessHell")
	if handle ~= 0 then
		GUIWndClose(handle)
	else
		GenFormByString(ui)
	end
end

--UI Logic Code Start
function EndlessHell.UIInit(_Handle)
	EndlessHell._h = _Handle
	local msgTb = deserialize(as3.tolua(FormParam[1]))
	if msgTb[1] ~= nil or  msgTb ~= "" then
		local handle = 0
		handle = GetWindow(_Handle, "t1")
		if handle ~= 0 then
			WndSetTextM(handle, "��"..msgTb[1].."��˵��")
		end
		
		handle = GetWindow(_Handle, "bossName")
		if handle ~= 0 then
			GUIRichEditAppendString(handle, "#COLORCOLOR_BGREENG#1.����BOSS: #COLOREND#".."#COLORCOLOR_RED#"..msgTb[2].."#COLOREND#")
		end
		
		handle = GetWindow(_Handle, "reward")
		if handle ~= 0 then
			GUIRichEditAppendString(handle,"#COLORCOLOR_BGREENG#2.�����"..msgTb[1].."�㽱����\n\n#COLOREND#".."#COLORCOLOR_DARKGOLD#   ��ʯ����(С)#COLOREND#".."#COLORCOLOR_BGREENG#x"..msgTb[3].."#COLOREND#".."#COLORCOLOR_DARKGOLD#\n\n   ��ש(С)#COLOREND#".."#COLORCOLOR_BGREENG#x"..msgTb[4].."#COLOREND#")
		end
		
		handle = GetWindow(_Handle, "warning")
		if handle ~= 0 then
			local a = msgTb[3] + msgTb[4]
			GUIRichEditAppendString(handle,"#COLORCOLOR_BGREENG#3.��ȡ������"..a.."�����ӣ���ȷ���������㹻�ռ�#COLOREND#")
		end
		
		handle = GetWindow(_Handle, "enterMap")
		if handle ~= 0 then
			GUIRichEditAppendString(handle,"#SELECT#".."�����޾���Ԩ"..msgTb[1].."��".."#SELECTEND#")
		end
		
		local str = ""
		if msgTb[6] >= msgTb[5] then
			str = "#COLORCOLOR_BGREENG#"..msgTb[6].."����#COLOREND#"
		else
			str = "#COLORCOLOR_RED#"..msgTb[6].."#COLOREND#".."#COLORCOLOR_BGREENG#����#COLOREND#"
		end
		handle = GetWindow(_Handle, "info")
		if handle ~= 0 then
			GUIRichEditAppendString(handle,"#COLORCOLOR_BGREENG#������Ԩƾ֤��"..msgTb[5].."����ӵ��#COLOREND#"..str)
		end
	else
		local handle = GetWindow(_Handle, "introduceText")
		if handle ~= 0 then
			GUIRichEditClear(handle)
			GUIRichEditAppendString(handle,"\n    ��ʿ�Ƿ��ջ����㹻��ı��أ���Ҫ��ȥ�ˣ�")
		end
		handle = GetWindow(_Handle, "enterMap")
		if handle ~= 0 then
			GUIRichEditAppendString(handle,"#SELECT#������ɽ��#SELECTEND#")
			GUIWndSetPosM(handle, 150, 418)
		end
	end
end

function EndlessHell.Clicked()
	UI:Lua_SubmitForm("�޾���Ԩ��", "_Transmit", "")
end

function EndlessHell.Alert(msg)     --warning message
	local h = GetWindow(EndlessHell._h, "enterMap")
	if h ~= 0 then
		local color = MakeARGB(255,255,0,0)
		window_msg_up(h, msg, -65, -30, 40, color, 2)
	end
end

function EndlessHell.closeWnd()     --�رհ�ť
	if EndlessHell._h ~= 0 then
		GUIWndClose(EndlessHell._h)
	end
end

EndlessHell.main()