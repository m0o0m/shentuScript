Package_buy ={}
function Package_buy.main()
	local ui = "<form default_parent='Package'> <dialog OnInit='Package_buy.UIInit' id='Package_buy' image='1803900017' x='-275' y='6' w='286' h='499' drag='true' revmsg='true'>"
	.."	<image id='buy_title' image='1801500076' x='75' y='3' w='134' h='27' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='close' image='1800000068' x='255' y='6' w='24' h='24' OnLButtonUp='Package_buy.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='image1' image='1803900016' fitsize='true' x='12' y='49' w='265' h='98' check_point='0' revmsg='true'/>"
	.."	<image id='image2' image='1803900016' fitsize='true' x='12' y='159' w='265' h='98' check_point='0' revmsg='true'/>"
	.."	<image id='image3' image='1803900016' fitsize='true' x='12' y='269' w='265' h='98' check_point='0' revmsg='true'/>"
	.."	<image id='image4' image='1803900016' fitsize='true' x='12' y='379' w='265' h='98' check_point='0' revmsg='true'/>"
	
	.."	<image id='item1_back' image='1803900036' x='28' y='66' w='265' h='98' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item1' x='28' y='66' w='51' h='51' auto_manage='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<edit id='item1_name' x='87' y='65' w='90' h='20' revmsg='true' text_color='#CCB766' text='强效金创药包' font='system'/>"
	.."	<image id='yuanbao1' image='1806600014' x='83' y='97' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='item1_price' x='105' y='99' w='64' h='17' revmsg='true' text='20000' font='system'/>"
	.."	<button id='buy1' image='1800900042' x='165' y='87' w='96' h='31' OnLButtonClick='Package_buy.buy' revmsg='true' param='1' text='立即购买' text_color='#CFB360'/>"
	
	.."	<image id='item2_back' image='1803900036' x='28' y='176' w='265' h='98' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item2' x='28' y='176' w='51' h='51' auto_manage='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<edit id='item2_name' x='87' y='175' w='90' h='20' revmsg='true' text_color='#CCB766' text='万年雪参包' font='system'/>"
	.."	<image id='yuanbao2' image='1806600014' x='85' y='207' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='item2_price' x='107' y='209' w='64' h='17' revmsg='true' text='80000' font='system'/>"
	.."	<button id='buy2' image='1800900042' x='165' y='197' w='96' h='31' OnLButtonClick='Package_buy.buy' revmsg='true' param='2' text='立即购买' text_color='#CFB360'/>"
	
	.."	<image id='item3_back' image='1803900036' x='28' y='296' w='265' h='98' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item3' x='28' y='296' w='51' h='51' auto_manage='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<edit id='item3_name' x='87' y='295' w='90' h='20' revmsg='true' text_color='#CCB766' text='九转还魂丹（包）' font='system'/>"
	.."	<image id='yuanbao3' image='1806600013' x='85' y='327' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='item3_price' x='107' y='329' w='64' h='17' revmsg='true' text='50' font='system'/>"
	.."	<button id='buy3' image='1800900042' x='165' y='317' w='96' h='31' OnLButtonClick='Package_buy.buy' revmsg='true' param='3' text='立即购买' text_color='#CFB360'/>"
	
	
	.."	<image id='item4_back' image='1803900036' x='28' y='406' w='265' h='98' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item4' x='28' y='406' w='51' h='51' auto_manage='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<edit id='item4_name' x='87' y='405' w='90' h='20' revmsg='true' text_color='#CCB766' text='随机石' font='system'/>"
	.."	<image id='yuanbao4' image='1806600013' x='85' y='437' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='item4_price' x='107' y='439' w='64' h='17' revmsg='true' text='40' font='system'/>"
	.."	<button id='buy4' image='1800900042' x='165' y='427' w='96' h='31' OnLButtonClick='Package_buy.buy' revmsg='true' param='4' text='立即购买' text_color='#CFB360'/>"
	
	--.."	<richedit id='chongz' x='199' y='453' w='70' h='23' revmsg='true' text_color='#00FF00' font='system'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end
--UI Logic Code Start
Package_buy.WndHandle = 0
function Package_buy.UIInit(_Handle)
	Package_buy.WndHandle = _Handle
	
	local _handel = GetWindow(Package_buy.WndHandle,"item1")
	RDItemCtrlSetGUIDataByKeyName(_handel, "强效金创药包", 0, false)
	local _handel = GetWindow(Package_buy.WndHandle,"item2")
	RDItemCtrlSetGUIDataByKeyName(_handel, "万年雪霜（包）", 0, false)
	local _handel = GetWindow(Package_buy.WndHandle,"item3")
	RDItemCtrlSetGUIDataByKeyName(_handel, "大还丹包", 0, false)
	local _handel = GetWindow(Package_buy.WndHandle,"item4")		
	RDItemCtrlSetGUIDataByKeyName(_handel, "随机石", 0, false)
	--EditSetText(Package_buy.WndHandle,"item1_price"," 20000")
	--EditSetText(Package_buy.WndHandle,"item2_price"," 40")
	
	local handle = GetWindow(_Handle,"chongz")
	if handle ~= 0 then
		GUI:RichEditAppendString(handle,"#SELECT#前往充值#SELECTEND#")
		GUI:WndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "Package_buy.ChongzEditOnLBTNUp")
	end

end


function Package_buy.ChongzEditOnLBTNUp()
	CLOpenUrlUseIEByType(3)
end

function Package_buy.Msg(str, index)
	index = tonumber(index);
	local hand = GetWindow(Package_buy.WndHandle, "buy"..index)
	if hand ~= 0 then 
		window_msg_up(hand,str,-60,-25,60,MakeARGB(255, 255, 0, 0),1.5)
	end
end

function Package_buy.msgbox()
	luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
end
function Package_buy.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function Package_buy.out(h)
	luaWndClose(h)
end


function Package_buy.buy(_handle)
	local index = GUIWndGetParam(_handle)
	UI:Lua_SubmitForm("随身商店表单", "Buy", ""..index)
end

function Package_buy.closeWnd(_handle)		
	GUI:WndClose(Package_buy.WndHandle)
end

Package_buy.main()