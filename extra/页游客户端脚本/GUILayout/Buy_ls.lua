Buy_ls ={}
local ui = "<form default_parent='ForgeWnd'> <dialog OnInit='Buy_ls.UIInit' id='Buy_ls' image='1803900017' x='645' y='6' w='286' h='499' drag='true' revmsg='true'>"
	.."	<image id='buy_title' x='90' y='3' w='134' h='27' image='1801500076' enable='false' />"
	.."	<button id='close' image='1800000068' x='251' y='7' w='24' h='24' OnLButtonUp='Buy_ls.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='TestWndChild_4' image='1803900016' x='12' y='70' w='265' h='98' fitsize='true' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_5' image='1803900016' x='12' y='180' w='265' h='98' fitsize='true' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item1' x='36' y='92' w='51' h='51' rbtn_use='true' use_back='1803900036' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2' x='36' y='202' w='51' h='51' rbtn_use='true' use_back='1803900036' enable='true' revmsg='true'/>"
	.."	<edit id='item1_name' x='96' y='95' w='90' h='20' revmsg='true' text='蕴魂石（中）' font='system' text_color='#CCB766'/>"
	.."	<image id='yuanbao1' image='1806600012' x='95' y='121' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='item1_price' x='125' y='122' w='64' h='17' revmsg='true' font='system'/>"
	.."	<button id='buy1' image='1800900042' x='172' y='112' w='96' h='31' OnLButtonClick='Buy_ls.buy' revmsg='true' param='1' text='购买并使用' text_color='#CFB360'/>"
	.."	<edit id='item2_name' x='96' y='205' w='90' h='20' revmsg='true' text='蕴魂石（大）' font='system' text_color='#CCB766'/>"
	.."	<image id='yuanbao2' image='1806600012' x='95' y='234' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='item2_price' x='125' y='235' w='64' h='17' revmsg='true' font='system'/>"
	.."	<button id='buy2' image='1800900042' x='172' y='225' w='96' h='31' revmsg='true' OnLButtonClick='Buy_ls.buy' param='2' text='购买并使用' text_color='#CFB360'/>"
	.."	<image id='TestWndChild_1' image='1803900018' x='12' y='389' w='262' h='98' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_2' image='1803900020' x='75' y='419' w='96' h='26' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_3' image='1803900020' x='74' y='451' w='96' h='26' check_point='0' revmsg='true'/>"
	.."	<image id='BindYB' image='1806600013' x='30' y='423' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<image id='YB' image='1806600012' x='30' y='457' w='16' h='14' check_point='0' revmsg='true'/>"
	.."	<edit id='BindYuanBao' x='72' y='422' w='105' h='20' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<edit id='YuanBao' x='72' y='456' w='105' h='20' align='center' revmsg='true' text_color='#C2B6A0' font='system'/>"
	.."	<richedit id='chongz' x='205' y='454' w='70' h='28' revmsg='true' text_color='#0AE71D' visible='true' text='' />"
	.." </dialog>"
	.."</form>"
	

--UI Logic Code Start
Buy_ls.WndHandle = 0
Buy_ls.mallList = {}
function Buy_ls.main()
	GenFormByString(ui)
end

function Buy_ls.UIInit(_Handle)
	Buy_ls.WndHandle = _Handle
	ImageSetFitSize(Buy_ls.WndHandle,nil, true)
	--WndSetSizeM(Buy_ls.WndHandle,nil, 317, 517)
	local _handel = GetWindow(Buy_ls.WndHandle,"item1")		
	RDItemCtrlSetGUIDataByKeyName(_handel, "灵石精华中", 0, false)
	local _handel = GetWindow(Buy_ls.WndHandle,"item2")		
	RDItemCtrlSetGUIDataByKeyName(_handel, "灵石精华大", 0, false)
	EditSetText(Buy_ls.WndHandle,"item1_price","100")
	EditSetText(Buy_ls.WndHandle,"item2_price","988")
	for i = 1, 2 do
		local hYuanbao = GUIWndFindWindow(_Handle, "yuanbao"..i)
		if hYuanbao ~= 0 then
			GUIWndSetHint(hYuanbao, "<font color='#D58840'>元宝\n</font><font color='#B8A085'>可用于购买商城中的道具，元宝可以通过参\n加活动、充值人民币获得，每充值1元=100元宝</font>")
		end
	end
	local hYB = GUIWndFindWindow(_Handle, "YB")
	if hYB ~= 0 then
		GUIWndSetHint(hYB, "<font color='#D58840'>元宝\n</font><font color='#B8A085'>可用于购买商城中的道具，元宝可以通过参\n加活动、充值人民币获得，每充值1元=100元宝</font>")
	end
	local hBindYB = GUIWndFindWindow(_Handle, "BindYB")
	if hBindYB ~= 0 then
		GUIWndSetHint(hBindYB, "<font color='#D58840'>绑定元宝\n</font><font color='#B8A085'>可以在商城购买绑定商品\n绑定元宝可以通过参加各种线上活动获得</font>")
	end
	
	
	local handle = GetWindow(_Handle,"chongz")
	if handle ~= 0 then
		GUIRichEditAppendString(handle,"#SELECT#前往充值#SELECTEND#")
		GUIWndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "Buy_ls.ChongzEditOnLBTNUp")
	end
	Buy_ls.updata()
end
function Buy_ls.updata(lingli)
	local byb_edit = '0'
	local Byb_Edit = GUIWndFindWindow(Buy_ls.WndHandle,'BindYuanBao')
    if Byb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(2) then 
			byb_edit = as3.tolua(LuaRet)
		end        
		EditSetText(Byb_Edit,nil,byb_edit)
    end
	local yb_edit = '0'
	local yb_Edit = GUIWndFindWindow(Buy_ls.WndHandle,'YuanBao')
    if yb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(1) then 
			yb_edit = as3.tolua(LuaRet)
		end   
		EditSetText(yb_Edit,nil,yb_edit)
    end
	if lingli then 
		local handle = GetWindow(nil,"ForgeWnd,ZhulWnd,item")	
		local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil,ITEMGUIDATA_ITEMGUID)
		if tonumber(item_guid) == 0 then
			return
		else 
			ZhulWnd.OnEquipIn(handle,lingli)
		end
	else 
		return
	end 

end

function Buy_ls.ChongzEditOnLBTNUp()
	CLOpenUrlUseIEByType(3)
end


function Buy_ls.msgbox()
	luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"Buy_ls.chongz", "Buy_ls.out"}, "")
end
function Buy_ls.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function Buy_ls.out(h)
	luaWndClose(h)
end


function Buy_ls.buy(_handle)
	local index = GUIWndGetParam(_handle)
	UI:Lua_SubmitForm("购买灵石精华表单", "buy", ""..index)
end

function Buy_ls.closeWnd(_handle)		
	GUIWndClose(Buy_ls.WndHandle)
end

Buy_ls.main()