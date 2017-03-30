marsAwakenUI ={}
local ui = "<form> <dialog OnInit='marsAwakenUI.UIInit' id='marsAwakenUI' image='0' x='728' y='194' w='720' h='509' revmsg='true'>"
	.."	<image id='marsAwaken' image='0' x='0' y='0' w='720' h='509' enable = 'false' check_point='0' revmsg='true'/>"
	.."	<image id='marsAwaken1' image='1804600055' x='0' y='0' w='720' h='509' enable = 'false' check_point='0' revmsg='true'/>"
	.."	<image id='progressBar' image='1804600056' x='24' y='32.2' w='119' h='25' enable = 'false' check_point='0' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function marsAwakenUI.main()
	GenFormByString(ui)
end


--UI Logic Code Start
function marsAwakenUI.UIInit(_Handle)
	marsAwakenUI.Handle = _Handle
	marsAwakenUI.num = 1
	local handle = GetWindow(nil, "Mars_tip")
	if handle ~= 0 then
		GUIWndClose(handle)
	end
	WndAddEffect(_Handle, "marsAwaken", 3020010000, -29, -110, 100, 10)
	--MoveMagicToBottom(nil,"marsAwakenUI", nil,"marsAwakenUI") 
	CLAddDelayTask("marsAwakenUI.UpdataProgressBar()", 100, 60)
end

function marsAwakenUI.UpdataProgressBar()
	local handle = GetWindow(marsAwakenUI.Handle, "progressBar")
	if marsAwakenUI.num <= 50 then
		if handle ~= 0 then
			GUIImageSetTransfrom(handle, marsAwakenUI.num/50*10000, 10000, 0)
		end
	end
	marsAwakenUI.num = marsAwakenUI.num + 1
	if marsAwakenUI.num == 61 then
		UI:Lua_SubmitForm("MarsWnd_s","AddMarsIcon","")
		marsAwakenUI.CloseWnd()
	end
end

function marsAwakenUI.CloseWnd()
	GUIWndClose(marsAwakenUI.Handle)
end

marsAwakenUI.main()