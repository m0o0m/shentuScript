BuyWnd ={}
local ui = "<form> <dialog OnInit='BuyWnd.UIInit' id='BuyWnd' image='1804600001' x='159' y='251' w='256' h='191' revmsg='true' visible='false'>"
	.."	<itemctrl id='TestWndChild_12'  init_item='�����' x='25' y='79' w='48' h='48' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<button id='TestWndChild_13' image='1804600007' x='227' y='11' w='24' h='23' revmsg='true' text_color='#C2B6A0' OnLButtonUp='BuyWnd.closeWnd'/>"
	.."	<button id='TestWndChild_14' image='1800000134' x='44' y='143' w='70' h='37' revmsg='true' text='ȷ��' text_color='#C2B6A0' OnLButtonUp='BuyWnd.Sure'/>"
	.."	<button id='TestWndChild_15' image='1800000134' x='146' y='143' w='70' h='37' revmsg='true' text='ȡ��' text_color='#C2B6A0' OnLButtonUp='BuyWnd.closeWnd'/>"
	.."	<edit id='TestWndChild_16' x='115' y='6' w='91' h='23' revmsg='true' text_color='#C2B6A0' text='ϵͳ' font='system' enable='false'/>"
	.."	<edit id='TestWndChild_0' x='95' y='75' w='83' h='20' revmsg='true' text_color='#C2B6A0' text='������û�С�' font='system'/>"
	.."	<edit id='TestWndChild_1' x='169' y='75' w='64' h='20' revmsg='true' text_color='#D3D3D3' text='�����' font='system'/>"
	.."	<edit id='TestWndChild_2' x='209' y='75' w='64' h='20' revmsg='true' text_color='#C2B6A0' text='����' font='system'/>"
	.."	<edit id='TestWndChild_3' x='95' y='95' w='64' h='20' revmsg='true' text_color='#C2B6A0' text='�񻨷�' font='system'/>"
	.."	<edit id='TestWndChild_4' x='134' y='95' w='88' h='20' revmsg='true' text_color='#E6B802' text='1000�󶨽��' font='system'/>"
	.."	<edit id='TestWndChild_5' x='210' y='95' w='64' h='20' revmsg='true' text_color='#C2B6A0' text='����' font='system'/>"
	.."	<edit id='TestWndChild_6' x='144' y='115' w='64' h='20' revmsg='true' text_color='#C2B6A0' text='ʹ�ã�' font='system'/>"
	.." </dialog>"
	.."</form>"

function BuyWnd.main()
	if GetWindow(0, "BuyWnd") ~= 0 then 
		GUI:WndClose(GetWindow(0, "BuyWnd"))
	else
		GenFormByString(ui) 
	end
end

--UI Logic Code Start
function BuyWnd.UIInit(_Handle)
	GUI:WndSetSizeM(_Handle, 256, 191)
	CenterWnd(_Handle) 
	GUI:WndSetVisible(_Handle, true)
end

function BuyWnd.Sure()
	UI:Lua_SubmitForm("��ɽ�ǿ�����", "Buy_sure", "")
end 

function BuyWnd.closeWnd()
	local handle = GetWindow(0,"BuyWnd")
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

BuyWnd.main()