OreWnd ={}
local ui = "<form> <dialog OnInit='OreWnd.UIInit' id='OreWnd' image='1806100012' x='778' y='215' w='384' h='505' esc_close='true' drag='true' revmsg='true' visible='false'>"
	.."	<button id='TestWndChild_1' image='1805900080' x='328' y='3' w='34' h='38' revmsg='true' text_color='#C2B6A0' OnLButtonUp='OreWnd.closeWnd'/>"
	.."	<image id='TestWndChild_2' image='1806100013' x='43' y='162' w='299' h='2' revmsg='true'/>"
	.."	<image id='TestWndChild_3' image='1806100013' x='42' y='391' w='299' h='2' revmsg='true'/>"
	.."	<edit id='TestWndChild_4' x='46' y='67' w='65' h='29' revmsg='true' text_color='#2798CB' text='���' font='SIMLI18'/>"
	.."	<edit id='TestWndChild_5' x='81' y='105' w='263' h='20' revmsg='true' text_color='#C2B6A0' text='�������������ˣ��Ҹ�����ܸ���·������' font='system'/>"
	.."	<edit id='TestWndChild_6' x='52' y='125' w='263' h='20' revmsg='true' text_color='#C2B6A0' text='�أ�����Ҫ�ľ��ǿ��ģ���Ǯ���һ��׬�������' font='system'/>"
	.."	<image id='TestWndChild_7' image='1806100000' x='46' y='175' w='224' h='28' revmsg='true'/>"
	.."	<image id='TestWndChild_8' image='1892100043' x='70' y='226' w='48' h='48' enable='true' revmsg='true' fitsize='true'/>"
	.."	<image id='ItemBkImg' image='1806000059' x='70' y='290' w='48' h='48' revmsg='false'/>"
	.."	<itemctrl id='TestWndChild_9' x='70' y='290' w='48' h='48' rbtn_use='true' use_back='0' init_item='��שС' enable='true' revmsg='true'/>"
	.."	<edit id='TestWndChild_10' x='127' y='239' w='42' h='20' revmsg='true' text_color='#C2B6A0' text='����' font='system'/>"
	.."	<edit id='TestWndChild_11' x='169' y='239' w='86' h='20' revmsg='true' text_color='#CD8E55' text='100000' font='system'/>"
	.."	<edit id='TestWndChild_12' x='128' y='302' w='119' h='20' revmsg='true' text_color='#CD8E55' text='��ש��С�� x3' font='system'/>"
	.."	<button id='button' image='1806100002' x='143' y='416' w='88' h='31' revmsg='true' text='' text_color='#C2B6A0' OnLButtonUp='OreWnd.GetTask'/>"
	.."	<edit id='TestWndChild_14' x='142' y='8' w='103' h='20' revmsg='true' text_color='#D4AC6C' text='�ڿ�����' font='SIMLI18' align='center' enable='false'/>"
	.."	<edit id='TestWndChild_15' x='43' y='456' w='90' h='20' revmsg='true' text_color='#C2B6A0' text='ʣ�����������' font='system'/>"
	.."	<edit id='int' x='125' y='456' w='90' h='20' revmsg='true' text_color='#DBBA00' text='' font='system'/>"
	.." </dialog>"
	.."</form>"

function OreWnd.main()
	if GetWindow(0, "OreWnd") ~= 0 then 
		GUI:WndClose(GetWindow(0, "OreWnd"))
	else
		GenFormByString(ui) 
	end
end

--UI Logic Code Start
OreWnd.Int = 0
function OreWnd.UIInit(_Handle)
	GUI:WndSetSizeM(_Handle, 384, 505)
	CenterWnd(_Handle) 
	GUI:WndSetVisible(_Handle, true)
	UI:Lua_SubmitForm("��ɽ�ǿ�����", "GetNum", "")
end

function OreWnd.Getint(num1,num2)
	OreWnd.Int = tonumber(num1)
	local handle = GetWindow(0,"OreWnd,int")
	if handle ~= 0 then 
		GUI:EditSetTextM(handle,""..num1)
		 
	end
	handle = GetWindow(0,"OreWnd,button")
	if handle ~= 0 then
		if tonumber(num1) == 0 then 
			GUI:WndSetTextM(handle,"��������")
			GUI:WndSetEnableM(handle,false)
		else
			GUI:WndSetEnableM(handle,true)
			if tonumber(num2) == 0 then
				GUI:WndSetTextM(handle,"��������")
			elseif tonumber(num2) == 1 then
				GUI:WndSetTextM(handle,"��������")
			else
				GUI:WndSetTextM(handle,"�������")	
			end
		end
	end
end

function OreWnd.GetTask(_Handle)
	UI:Lua_SubmitForm("��ɽ�ǿ�����", "GetTask", "")
end

function OreWnd.closeWnd()
	local handle = GetWindow(0,"OreWnd")
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

OreWnd.main()