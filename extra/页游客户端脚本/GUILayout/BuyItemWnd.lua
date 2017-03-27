BuyItemWnd ={}
local ui = "<form> <dialog OnInit='BuyItemWnd.UIInit' id='BuyItemWnd' image='1804600001' x='454' y='357' w='256' h='191' drag='true' revmsg='true'>"
	.."	<itemctrl id='itme' x='30' y='79' w='48' h='48' use_back='1806000059' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<button id='TestWndChild_13' image='1804600007' x='227' y='11' w='24' h='23' OnLButtonUp='BuyItemWnd.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='TestWndChild_14' image='1800000134' x='44' y='143' w='70' h='37' OnLButtonUp='BuyItemWnd.Sure' revmsg='true' text='购买' text_color='#C2B6A0'/>"
	.."	<button id='TestWndChild_15' image='1800000134' x='146' y='143' w='70' h='37' OnLButtonUp='BuyItemWnd.closeWnd' revmsg='true' text='取消' text_color='#C2B6A0'/>"
	.."	<edit id='TestWndChild_16' x='45' y='5' w='164' h='23' align='center' revmsg='true' text_color='#C2B6A0' text='系统' font='SIMLI18'/>"
	.."	<edit id='name' x='103' y='87' w='83' h='20' revmsg='true' text_color='#C2B6A0' text='道具名' font='system'/>"
	.."	<edit id='price' x='128' y='107' w='83' h='20' revmsg='true' text_color='#E6B802' text='道具价格' font='system'/>"
	.."	<image id='TestWndChild_1' image='1806600012' x='103' y='108' w='23' h='18' revmsg='true' />"
	.." </dialog>"
	.." </form>"

function BuyItemWnd.main()
	if GetWindow("", "BuyItemWnd") ~= 0 then 
		GUIWndClose(GetWindow("", "BuyItemWnd"))
	else
		GenFormByString(ui) 
	end
end

--UI Logic Code Start
function BuyItemWnd.UIInit(_Handle)
	BuyItemWnd.Wnd = _Handle
	GUIWndSetSizeM(_Handle, 256, 191)
	CenterWnd(_Handle) 
	
	BuyItemWnd.itme = as3.tolua(FormParam[1])
	local name = as3.tolua(FormParam[2])
	local price = as3.tolua(FormParam[3])
	
	local handle = GetWindow(BuyItemWnd.Wnd,"itme")
	if handle ~= 0 then 
		RDItemCtrlSetGUIDataByKeyName(handle,BuyItemWnd.itme, 1, false)
	end
	local handle = GetWindow(BuyItemWnd.Wnd,"name")
	if handle ~= 0 then 
		GUIEditSetTextM(handle,name) 
	end
	local handle = GetWindow(BuyItemWnd.Wnd,"price")
	if handle ~= 0 then 
		GUIEditSetTextM(handle,price) 	
	end
end

function BuyItemWnd.Sure()
	UI:Lua_SubmitForm("BossHall_s", "BuyItem", BuyItemWnd.itme)
end 

function BuyItemWnd.closeWnd()
	local handle = GetWindow("","BuyItemWnd")
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

BuyItemWnd.main()