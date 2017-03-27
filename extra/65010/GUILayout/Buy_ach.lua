Buy_ach ={}
local ui = "<form default_parent='AchieveWnd'> <dialog OnInit='Buy_ach.UIInit' id='Buy_ach' image='1803900017' x='706' y='6' w='286' h='499' drag='true' revmsg='true'>"
	.."	<image id='buy_title' image='1801500076' x='85' y='3' w='134' h='27' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='close' image='1800000068' x='260' y='4' w='24' h='24' OnLButtonUp='Buy_ach.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='TestWndChild_4' image='1803900016' x='12' y='70' w='265' h='98' fitsize='true' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_5' image='1803900016' x='12' y='180' w='265' h='98' fitsize='true' check_point='0' revmsg='true'/>"
	.."	<image id='item1_back' image='1803900036' x='36' y='92' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<image id='item2_back' image='1803900036' x='36' y='202' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item1' x='36' y='92' w='51' h='51' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2' x='36' y='202' w='51' h='51' rbtn_use='true' use_back='0' enable='true' revmsg='true'/>"
	.."	<edit id='item1_name' x='96' y='95' w='90' h='20' revmsg='true' text_color='#CCB766' text='高级成就（绑）' font='system'/>"
	.."	<image id='yuanbao1' image='1806600013' x='95' y='121' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='item1_price' x='125' y='122' w='64' h='17' revmsg='true' font='system'/>"
	.."	<button id='buy1' image='1800900042' x='172' y='112' w='96' h='31' OnLButtonClick='Buy_ach.buy' revmsg='true' param='1' text='购买并使用' text_color='#CFB360'/>"
	.."	<edit id='item2_name' x='96' y='205' w='90' h='20' revmsg='true' text_color='#CCB766' text='高级成就' font='system'/>"
	.."	<image id='yuanbao2' image='1806600012' x='95' y='234' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='item2_price' x='125' y='235' w='64' h='17' revmsg='true' font='system'/>"
	.."	<button id='buy2' image='1800900042' x='172' y='225' w='96' h='31' OnLButtonClick='Buy_ach.buy' revmsg='true' param='2' text='购买并使用' text_color='#CFB360'/>"
	.."	<image id='TestWndChild_1' image='1803900018' x='12' y='389' w='262' h='98' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_2' image='1803900020' x='75' y='419' w='96' h='26' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_3' image='1803900020' x='74' y='451' w='96' h='26' check_point='0' revmsg='true'/>"
	.."	<image id='BindYB' image='1806600013' x='30' y='423' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<image id='YB' image='1806600012' x='30' y='460' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='BindYuanBao' x='72' y='419' w='105' h='20' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='YuanBao' x='72' y='451' w='105' h='20' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<richedit id='chongz' x='205' y='454' w='70' h='28' canedit='false' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"
Buy_ach.WndHandle = 0
function Buy_ach.main()
	GenFormByString(ui)
end

--UI Logic Code Start
function Buy_ach.UIInit(_Handle)
	Buy_ach.WndHandle = _Handle
	ImageSetFitSize(Buy_ach.WndHandle,nil, true)
	local _handel = GetWindow(Buy_ach.WndHandle,"item1")		
	RDItemCtrlSetGUIDataByKeyName(_handel, "高级成就令牌绑", 0xffff, true)
	local _handel = GetWindow(Buy_ach.WndHandle,"item2")		
	RDItemCtrlSetGUIDataByKeyName(_handel, "高级成就令牌", 0xffff, false)
	EditSetText(Buy_ach.WndHandle,"item1_price","2000")
	EditSetText(Buy_ach.WndHandle,"item2_price","500")
	local handle = GetWindow(_Handle,"chongz")
	if handle ~= 0 then
		GUI:RichEditAppendString(handle,"#SELECT#前往充值#SELECTEND#")
		GUI:WndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "Buy_ach.ChongzEditOnLBTNUp")
	end
	Buy_ach.updata()
end
function Buy_ach.updata(chyengjiu)
	local byb_edit = '0'
	local Byb_Edit = GUI:WndFindWindow(Buy_ach.WndHandle,'BindYuanBao')
    if Byb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(2) then 
			byb_edit = LuaRet
		end        
		EditSetText(Byb_Edit,nil,byb_edit)
    end
	local yb_edit = '0'
	local yb_Edit = GUI:WndFindWindow(Buy_ach.WndHandle,'YuanBao')
    if yb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(1) then 
			yb_edit = LuaRet
		end   
		EditSetText(yb_Edit,nil,yb_edit)
    end
	if chyengjiu then 
		EditSetText(AchieveWnd.WndHandle,"Achjifen",''..chyengjiu)
	else
		return
	end

end

function Buy_ach.ChongzEditOnLBTNUp()
	CL:OpenUrlUseIEByType(3)
	
end

function Buy_ach.msgbox()
	luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"Buy_ach.chongz", "Buy_ach.out"}, "")
end

function Buy_ach.Msg()
	luaMsgBox.new("购买元宝", "绑元不足是否花费500元宝购买", {"是", "否"}, {"Buy_ach.getBY", 0}, _handle)
end

function Buy_ach.getBY(_handle)
	UI:Lua_SubmitForm("购买成就表单", "buy", "".. 2)
	luaWndClose(_handle)
end

function Buy_ach.chongz(h)
	CL:OpenUrlUseIEByType(3)
	luaWndClose(h)
end

function Buy_ach.out(h)
	luaWndClose(h)
end

function Buy_ach.buy(_handle)
	
	local index = GUI:WndGetParam(_handle)
	UI:Lua_SubmitForm("购买成就表单", "buy", ""..index)
	--msg('Buy_ach.buy')
end

function Buy_ach.closeWnd(_handle)		
	local _handle1 = GetWindow(nil,"AchieveWnd, Buy_ach")
	if _handle1 ~= 0 then
		GUI:WndClose(_handle1)
	end
end

Buy_ach.main()