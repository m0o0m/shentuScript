ShenLu_buy4 ={}
function ShenLu_buy4.main()
	local ui = "<form default_parent='FurnaceWnd'> <dialog OnInit='ShenLu_buy4.UIInit' id='ShenLu_buy4' image='1803900017' x='417' y='4' w='286' h='499' drag='true' revmsg='true'>"
	.."	<image id='buy_title' image='1801500076' x='75' y='3' w='134' h='27' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='close' image='1800000068' x='255' y='6' w='24' h='24' OnLButtonUp='ShenLu_buy4.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='TestWndChild_4' image='1803900016' x='12' y='70' w='265' h='72' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='TestWndChild_5' image='1803900016' x='13' y='163' w='265' h='72' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='TestWndChild_6' image='1803900036' x='28' y='82' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_7' image='1803900036' x='28' y='174' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item1' x='28' y='82' w='51' h='51' rbtn_use='true' use_back='false' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2' x='29' y='174' w='51' h='51' rbtn_use='true' use_back='false' enable='true' revmsg='true'/>"
	.."	<edit id='item1_name' x='87' y='85' w='90' h='20' revmsg='true' text_color='#CCB766' text='��֮�飨С��' font='system'/>"
	.."	<image id='yuanbao1' image='1806600012' x='82' y='115' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='item1_price' x='105' y='116' w='64' h='17' revmsg='true' font='system'/>"
	.."	<button id='buy1' image='1800900042' x='169' y='104' w='96' h='31' OnLButtonClick='ShenLu_buy4.buy' revmsg='true' param='1' text='����ʹ��' text_color='#CFB360'/>"
	.."	<edit id='item2_name' x='87' y='175' w='90' h='20' revmsg='true' text_color='#CCB766' text='��֮�飨�У�' font='system'/>"
	.."	<image id='yuanbao2' image='1806600012' x='82' y='205' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='item2_price' x='106' y='206' w='64' h='17' revmsg='true' font='system'/>"
	.."	<button id='buy2' image='1800900042' x='168' y='193' w='96' h='31' OnLButtonClick='ShenLu_buy4.buy' revmsg='true' param='2' text='����ʹ��' text_color='#CFB360'/>"
	.."	<image id='TestWndChild_19' image='1803900016' x='11' y='258' w='265' h='72' check_point='0' fitsize='true' revmsg='true'/>"
	.."	<image id='TestWndChild_25' image='1803900036' x='28' y='268' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item3' x='28' y='269' w='51' h='51' rbtn_use='true' use_back='false' enable='true' revmsg='true'/>"
	.."	<edit id='TestWndChild_21' x='86' y='270' w='90' h='20' revmsg='true' text_color='#CCB766' text='��֮�飨��' font='system'/>"
	.."	<image id='yuanbao3' image='1806600012' x='82' y='300' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='item3_price' x='105' y='302' w='64' h='17' revmsg='true' font='system'/>"
	.."	<button id='buy3' image='1800900042' x='167' y='288' w='96' h='31' OnLButtonClick='ShenLu_buy4.buy' revmsg='true' param='3' text='����ʹ��' text_color='#CFB360'/>"
	.."	<image id='TestWndChild_2' image='1803900018' x='12' y='389' w='262' h='98' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_0' image='1803900020' x='75' y='419' w='96' h='26' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_1' image='1803900020' x='74' y='451' w='96' h='26' check_point='0' revmsg='true'/>"
	.."	<image id='BindYB' image='1806600013' x='42' y='425' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<image id='YB' image='1806600012' x='42' y='455' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='BindYuanBao' x='73' y='422' w='100' h='20' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='YuanBao' x='72' y='453' w='100' h='20' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<richedit id='chongz' x='199' y='453' w='70' h='23' revmsg='true' text_color='#00FF00' font='system'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end
--UI Logic Code Start
ShenLu_buy4.WndHandle = 0
ShenLu_buy4.mallList = {}
function ShenLu_buy4.UIInit(_Handle)
	ShenLu_buy4.WndHandle = _Handle
	local _handel = GetWindow(ShenLu_buy4.WndHandle,"item1")
	RDItemCtrlSetGUIDataByKeyName(_handel, "������ƬС", 0, false)
	local _handel = GetWindow(ShenLu_buy4.WndHandle,"item2")
	RDItemCtrlSetGUIDataByKeyName(_handel, "������Ƭ��", 0, false)
	local _handel = GetWindow(ShenLu_buy4.WndHandle,"item3")
	RDItemCtrlSetGUIDataByKeyName(_handel, "������Ƭ��", 0, false)
	EditSetText(ShenLu_buy4.WndHandle,"item1_price","200")
	EditSetText(ShenLu_buy4.WndHandle,"item2_price","1000")
	EditSetText(ShenLu_buy4.WndHandle,"item3_price","9888")
	
	for i = 1, 3 do
		local hYuanbao = GUIWndFindWindow(_Handle, "yuanbao"..i)
		if hYuanbao ~= 0 then
			GUIWndSetHint(hYuanbao, "<font color='#D58840'>Ԫ��\n</font><font color='#B8A085'>�����ڹ����̳��еĵ��ߣ�Ԫ������ͨ����\n�ӻ����ֵ����һ�ã�ÿ��ֵ1Ԫ=100Ԫ��</font>")
		end
	end
	local hYB = GUIWndFindWindow(_Handle, "YB")
	if hYB ~= 0 then
		GUIWndSetHint(hYB, "<font color='#D58840'>Ԫ��\n</font><font color='#B8A085'>�����ڹ����̳��еĵ��ߣ�Ԫ������ͨ����\n�ӻ����ֵ����һ�ã�ÿ��ֵ1Ԫ=100Ԫ��</font>")
	end
	local hBindYB = GUIWndFindWindow(_Handle, "BindYB")
	if hBindYB ~= 0 then
		GUIWndSetHint(hBindYB, "<font color='#D58840'>��Ԫ��\n</font><font color='#B8A085'>�������̳ǹ������Ʒ\n��Ԫ������ͨ���μӸ������ϻ���</font>")
	end
	
	local handle = GetWindow(_Handle,"chongz")
	if handle ~= 0 then
		GUIRichEditAppendString(handle,"#SELECT#ǰ����ֵ#SELECTEND#")
		GUIWndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "ShenLu_buy4.ChongzEditOnLBTNUp")
	end
	ShenLu_buy4.updata()
end
function ShenLu_buy4.updata()
	local byb_edit = '0'
	local Byb_Edit = GUIWndFindWindow(ShenLu_buy4.WndHandle,'BindYuanBao')
    if Byb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(2) then 
			byb_edit = as3.tolua(LuaRet)
		end        
		EditSetText(Byb_Edit,nil,byb_edit)
    end
	local yb_edit = '0'
	local yb_Edit = GUIWndFindWindow(ShenLu_buy4.WndHandle,'YuanBao')
    if yb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(1) then 
			yb_edit = as3.tolua(LuaRet)
		end   
		EditSetText(yb_Edit,nil,yb_edit)
    end

end

function ShenLu_buy4.ChongzEditOnLBTNUp()
	CLOpenUrlUseIEByType(3)
end


function ShenLu_buy4.msgbox()
	luaMsgBox.new("Ԫ��", "�ܱ�Ǹ������Ԫ������", {"ǰ����ֵ", "ȡ��"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
end
function ShenLu_buy4.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function ShenLu_buy4.out(h)
	luaWndClose(h)
end


function ShenLu_buy4.buy(_handle)
	local index = GUIWndGetParam(_handle)
	UI:Lua_SubmitForm("�����֮���", "buy", ""..index)
end

function ShenLu_buy4.closeWnd(_handle)		
	GUIWndClose(ShenLu_buy4.WndHandle)
end

ShenLu_buy4.main()