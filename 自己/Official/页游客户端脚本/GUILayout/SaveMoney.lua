SaveMoney = {}

function SaveMoney.main()
	local _handle = GetWindow(nil,"SaveMoney")
	if _handle ~= 0 then 
		GUI:WndClose(_handle)
	else
		local ui = "<form><dialog OnInit=SaveMoney.UIInit id='SaveMoney' image='1804600011' x='0' y='0' w='277' h='211' center='true' magic='3' OnClose='SaveMoney.wndClose' esc_close='true' drag='true' revmsg='true' enable='true'>"
		.."<button id='closeWnd' image='1800000068' x='228' y='4' w='26' h='26' OnLButtonUp='luaWndClose' revmsg='true' enable='true'/>"
		.."<edit id='Title' x='108' y='9' w='60' h='16' revmsg='false' enable='false' text='仓库' font='SIMLI18' text_color='ORANGE'/>"
		.."<image id='BackImg' image='1800800005' x='75' y='90' w='144' h='22' revmsg='true' enable='false'/>"
		.."<edit id='NameEdit1' x='25' y='92' w='100' h='16' enable='false' revmsg='false'  text_color='ORANGE'/>"
		.."<edit id='countEdit' x='80' y='90' w='120' h='20' type='number' revmsg='true' enable='true' canedit='true'limit='15' />"
		.."<button id='saveMoney' image='1800000134' x='50' y='145' w='70' h='37' OnLButtonUp='SaveMoney.Sure' revmsg='true' enable='true' text='确  定'/>"
		.."<button id='drawMoney' image='1800000134' x='150' y='145' w='70' h='37' OnLButtonUp='luaWndClose' revmsg='true' enable='true'   text='取  消'/>"
		.."</dialog></form>"
		GenFormByString(ui)
	end
end

--UI Logic Code Start
SaveMoney.WndHandle = 0
SaveMoney.Type = 0

function SaveMoney.UIInit(_handle)
	SaveMoney.WndHandle = _handle
	GUIWndSetSizeM(_handle, 277, 211)
	local wnd = GUI:WndFindWindow(SaveMoney.WndHandle,"NameEdit1") 
	if wnd ~= 0 then
		if SaveMoney.Type == 1 then			
			GUIEditSetTextM(wnd,"存款数：")
		else
			GUIEditSetTextM(wnd,"取款数：")
		end
	end
end

function SaveMoney.wndClose(_handle)
	local wnd = GUI:WndFindWindow(0, 'SaveMoney') 
	if wnd == 0 then
		SaveMoney = nil
	end
end

function SaveMoney.SetType(_Type)
	--msg('SetType')
	SaveMoney.Type=_Type
end

function SaveMoney.Sure()
	local wnd = GUI:WndFindWindow(SaveMoney.WndHandle, 'countEdit') 
	if SaveMoney.Type == 1 then
		CL:WareHouseSetGold(0, GUI:EditGetInt(wnd))
	else
		CL:WareHouseSetGold(1, GUI:EditGetInt(wnd))
	end
	GUI:WndClose(SaveMoney.WndHandle)
end

SaveMoney.main()