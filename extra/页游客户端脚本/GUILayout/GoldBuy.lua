GoldBuy ={}
function GoldBuy.main()
	if GetWindow("","GoldBuy") ~= 0 then
		GoldBuy.closeWnd()
	else
		local ui = "<form> <dialog OnInit='GoldBuy.UIInit' id='GoldBuy' image='1803900017' x='645' y='6' w='286' h='499' drag='true' revmsg='true'>"
		.."	<image id='buy_title' image='1801500076' x='75' y='3' w='134' h='27' check_point='0' revmsg='true' enable='false'/>"
		.."	<button id='close' image='1800000068' x='255' y='6' w='24' h='24' OnLButtonUp='GoldBuy.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
		.."	<image id='TestWndChild_4' image='1803900016' fitsize='true' x='12' y='70' w='265' h='98' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_5' image='1803900016' fitsize='true' x='12' y='189' w='265' h='98' check_point='0' revmsg='true'/>"
		.."	<image id='item1_back' image='1803900036' x='28' y='96' w='265' h='98' check_point='0' revmsg='true'/>"
		.."	<image id='item2_back' image='1803900036' x='28' y='206' w='265' h='98' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item1' x='28' y='96' w='51' h='51' auto_manage='true' use_back='0' enable='true' revmsg='true'/>"
		.."	<itemctrl id='item2' x='28' y='206' w='51' h='51' auto_manage='true' use_back='0' enable='true' revmsg='true'/>"
		.."	<edit id='item1_name' x='87' y='95' w='90' h='20' revmsg='true' text_color='#CCB766' text='大金条' font='system'/>"
		.."	<image id='yuanbao1' image='1806600012' x='81' y='125' w='23' h='18' check_point='0' revmsg='true'/>"	
		.."	<edit id='item1_price' x='105' y='126' w='64' h='17' revmsg='true' font='system'/>"
		.."	<button id='buy1' image='1800900042' x='165' y='115' w='96' h='31' OnLButtonClick='GoldBuy.buy' revmsg='true' param='1' text='购买并使用' text_color='#CFB360'/>"
		.."	<edit id='item2_name' x='87' y='205' w='90' h='20' revmsg='true' text_color='#CCB766' text='金条' font='system'/>"
		.."	<image id='yuanbao2' image='1806600013' x='81' y='238' w='23' h='18' check_point='0' revmsg='true'/>"
		.."	<edit id='item2_price' x='107' y='239' w='64' h='17' revmsg='true' font='system'/>"
		.."	<button id='buy2' image='1800900042' x='165' y='227' w='96' h='31' OnLButtonClick='GoldBuy.buy' revmsg='true' param='2' text='购买并使用' text_color='#CFB360'/>"
		.."	<image id='TestWndChild_2' image='1803900018' x='12' y='389' w='262' h='98' revmsg='true'/>"
		.."	<image id='TestWndChild_0' image='1803900020' x='75' y='419' w='96' h='26' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_1' image='1803900020' x='74' y='451' w='96' h='26' check_point='0' revmsg='true'/>"
		.."	<image id='BindYB' image='1806600013' x='43' y='424' w='23' h='18' check_point='0' revmsg='true'/>"
		.."	<image id='YB' image='1806600012' x='42' y='455' w='23' h='18' check_point='0' revmsg='true'/>"
		.."	<edit id='BindYuanBao' x='73' y='422' w='100' h='20' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<edit id='YuanBao' x='72' y='453' w='100' h='20' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>"
		.."	<richedit id='chongz' x='199' y='453' w='70' h='23' revmsg='true' text_color='#00FF00' font='system'/>"
		.." </dialog>"
		.."</form>"
		GenFormByString(ui)
	end
end
--UI Logic Code Start
GoldBuy.WndHandle = 0
function GoldBuy.UIInit(_Handle)
	GoldBuy.WndHandle = _Handle
	local _handel1 = GetWindow("","ForgeWnd")
	if _handel1 ~= 0 then
		GUIWndGetPosM(_handel1)
		local fX = as3.tolua(LuaRet[1])
		local fY = as3.tolua(LuaRet[2])
		GUIWndSetPosM(_Handle, 645+fX ,6+fY)
	elseif _handel1 == 0 then
		local _handel2 = GetWindow("","CrystalSystem")
		GUIWndGetPosM(_handel2)
		local fX = as3.tolua(LuaRet[1])
		local fY = as3.tolua(LuaRet[2])
		GUIWndSetPosM(_Handle, 645+fX ,fY-60)
	end
	local _handel = GetWindow(GoldBuy.WndHandle,"yuanbao1")
	GUIWndSetHint(_handel, "<font color='#D58840'>元宝\n</font><font color='#B8A085'>可用于购买商城中的道具，元宝可以通过参\n加活动、充值人民币获得，每充值1元=100元宝</font>")
	local _handel = GetWindow(GoldBuy.WndHandle,"yuanbao2")
	GUIWndSetHint(_handel, "<font color='#D58840'>绑定元宝\n</font><font color='#B8A085'>可以在商城购买绑定商品\n绑定元宝可以通过参加各种线上活动获得</font>")
	
	local _handel = GetWindow(GoldBuy.WndHandle,"YB")
	GUIWndSetHint(_handel, "<font color='#D58840'>元宝\n</font><font color='#B8A085'>可用于购买商城中的道具，元宝可以通过参\n加活动、充值人民币获得，每充值1元=100元宝</font>")
	local _handel = GetWindow(GoldBuy.WndHandle,"BindYB")
	GUIWndSetHint(_handel, "<font color='#D58840'>绑定元宝\n</font><font color='#B8A085'>可以在商城购买绑定商品\n绑定元宝可以通过参加各种线上活动获得</font>")

	local _handel = GetWindow(GoldBuy.WndHandle,"item1")
	RDItemCtrlSetGUIDataByKeyName(_handel, "金砖大", 0, false)
	local _handel = GetWindow(GoldBuy.WndHandle,"item2")		
	RDItemCtrlSetGUIDataByKeyName(_handel, "金砖中", 0, false)
	EditSetText(GoldBuy.WndHandle,"item1_price","88元宝")
	EditSetText(GoldBuy.WndHandle,"item2_price","500绑元")
	local handle = GetWindow(_Handle,"chongz")
	if handle ~= 0 then
		GUIRichEditAppendString(handle,"#SELECT#前往充值#SELECTEND#")
		GUIWndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "GoldBuy.ChongzEditOnLBTNUp")
	end
	GoldBuy.updata()
end
function GoldBuy.updata()
	local byb_edit = '0'
	local Byb_Edit = GUIWndFindWindow(GoldBuy.WndHandle,'BindYuanBao')
    if Byb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(2) then 
			byb_edit = as3.tolua(LuaRet)
		end        
		EditSetText(Byb_Edit,nil,byb_edit)
    end
	local yb_edit = '0'
	local yb_Edit = GUIWndFindWindow(GoldBuy.WndHandle,'YuanBao')
    if yb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(1) then 
			yb_edit = as3.tolua(LuaRet)
		end   
		EditSetText(yb_Edit,nil,yb_edit)
    end

end

function GoldBuy.ChongzEditOnLBTNUp()
	CLOpenUrlUseIEByType(3)
end

function GoldBuy.buy(_handle)
	local index = GUIWndGetParam(_handle)
	UI:Lua_SubmitForm("购买金砖表单", "buy", ""..index)
end

function GoldBuy.closeWnd(_handle)	
	--msg("GoldBuy.WndHandle="..GoldBuy.WndHandle)	
	GUIWndClose(GoldBuy.WndHandle)
end

GoldBuy.main()