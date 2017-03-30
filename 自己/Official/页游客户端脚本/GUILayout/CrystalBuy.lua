CrystalBuy ={}
local ui = "<form default_parent='CrystalSystem'> <dialog OnInit='CrystalBuy.UIInit' id='CrystalBuy' image='1803900017' x='645' y='-58' w='286' h='499' drag='true' revmsg='true'>"
	.."	<image id='TestWndChild_1' image='1800900027' x='16' y='58' w='255' h='62' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_2' image='1800900027' x='16' y='128' w='255' h='62' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_3' image='1800900027' x='16' y='198' w='255' h='62' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_5' image='1800900027' x='16' y='268' w='255' h='62' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_6' image='1800900027' x='16' y='338' w='255' h='62' check_point='0' revmsg='true'/>"
	.."	<image id='TestWndChild_7' image='1800900027' x='16' y='408' w='255' h='62' check_point='0' revmsg='true'/>"
	.."	<image id='buy_title' image='1801500076' x='75' y='3' w='134' h='27' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='close' image='1800000068' x='255' y='6' w='24' h='24' OnLButtonUp='CrystalBuy.closeWnd' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='item1_back' image='1803900036' x='26' y='62' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item1' x='26' y='62' w='51' h='51' rbtn_use='true' use_back='-1' enable='true' revmsg='true' init_item='1级物攻宝石' count='0'/>"
	.."	<edit id='item1_name' x='81' y='65' w='90' h='20' revmsg='true' text_color='#CCB766' text='1级物攻宝石' font='system' />"
	.."	<image id='yuanbao1' image='1806600012' x='80' y='92' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='item1_price' x='104' y='93' w='64' h='17' revmsg='true' text='20' font='system'/>"
	.."	<button id='buy1' image='1800000431' x='175' y='80' w='88' h='31' revmsg='true' param='1' OnLButtonUp='CrystalBuy.buy' text='购买' text_color='#CFB360'/>"
	
	.."	<image id='0' image='1803900036' x='26' y='133' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item2' x='26' y='133' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='-1' init_item='1级魔攻宝石' count='0'/>"
	.."	<edit id='1' x='81' y='136' w='90' h='20' revmsg='true' text_color='#CCB766' text='1级魔攻宝石' font='system'/>"
	.."	<image id='yuanbao2' image='1806600012' x='80' y='163' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='2' x='104' y='164' w='64' h='17' revmsg='true' text='20' font='system'/>"
	.."	<button id='buy2' image='1800000431' x='175' y='151' w='88' h='31' revmsg='true' text='购买' param='2' OnLButtonUp='CrystalBuy.buy' text_color='#CFB360'/>"
	.."	<image id='3' image='1803900036' x='26' y='203' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item3' x='26' y='203' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='-1' init_item='1级道攻宝石' count='0'/>"
	.."	<edit id='4' x='81' y='207' w='90' h='20' revmsg='true' text_color='#CCB766' text='1级道攻宝石' font='system'/>"
	.."	<image id='yuanbao3' image='1806600012' x='80' y='233' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='5' x='104' y='234' w='64' h='17' revmsg='true' text='20' font='system'/>"
	.."	<button id='buy3' image='1800000431' x='175' y='221' w='88' h='31' revmsg='true' text='购买' param='3' OnLButtonUp='CrystalBuy.buy' text_color='#CFB360'/>"
	.."	<image id='6' image='1803900036' x='27' y='274' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item4' x='27' y='274' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='-1' init_item='1级物防宝石' count='0'/>"
	.."	<edit id='7' x='82' y='277' w='90' h='20' revmsg='true' text_color='#CCB766' text='1级物防宝石' font='system'/>"
	.."	<image id='yuanbao4' image='1806600012' x='81' y='304' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='8' x='105' y='305' w='64' h='17' revmsg='true' text='20' font='system'/>"
	.."	<button id='buy4' image='1800000431' x='176' y='292' w='88' h='31' revmsg='true' text='购买' param='4' OnLButtonUp='CrystalBuy.buy' text_color='#CFB360'/>"
	.."	<image id='9' image='1803900036' x='27' y='343' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item5' x='27' y='343' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='-1' init_item='1级魔防宝石' count='0'/>"
	.."	<edit id='10' x='82' y='346' w='90' h='20' revmsg='true' text_color='#CCB766' text='1级魔防宝石' font='system'/>"
	.."	<image id='yuanbao5' image='1806600012' x='81' y='373' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='11' x='105' y='374' w='64' h='17' revmsg='true' text='20' font='system'/>"
	.."	<button id='buy5' image='1800000431' x='176' y='361' w='88' h='31' revmsg='true' text='购买' param='5' OnLButtonUp='CrystalBuy.buy' text_color='#CFB360'/>"
	.."	<image id='12' image='1803900036' x='29' y='413' w='51' h='51' check_point='0' revmsg='true'/>"
	.."	<itemctrl id='item6' x='29' y='413' w='51' h='51' rbtn_use='true' enable='true' revmsg='true' use_back='-1' init_item='1级生命宝石' count='0'/>"
	.."	<edit id='13' x='84' y='416' w='90' h='20' revmsg='true' text_color='#CCB766' text='1级生命宝石' font='system'/>"
	.."	<image id='yuanbao6' image='1806600012' x='83' y='443' w='23' h='18' check_point='0' revmsg='true'/>"
	.."	<edit id='14' x='107' y='444' w='64' h='17' revmsg='true' text='20' font='system'/>"
	.."	<button id='buy6' image='1800000431' x='178' y='431' w='88' h='31' revmsg='true' text='购买' param='6' OnLButtonUp='CrystalBuy.buy' text_color='#CFB360'/>"
	.." </dialog>"
	.."</form>"

function CrystalBuy.main()
	if GetWindow("","CrystalSystem,CrystalBuy") == 0 then
		GenFormByString(ui)
	else
		CrystalBuy.closeWnd()
	end
end

--UI Logic Code Start
CrystalBuy.WndHandle = 0
function CrystalBuy.UIInit(_Handle)
	CrystalBuy.WndHandle = _Handle
	for i = 1, 6 do
		local hYuanbao = GUIWndFindWindow(CrystalBuy.WndHandle, "yuanbao"..i)
		if hYuanbao ~= 0 then
			GUIWndSetHint(hYuanbao, "<font color='#D58840'>元宝\n</font><font color='#B8A085'>可用于购买商城中的道具，元宝可以通过参\n加活动、充值人民币获得，每充值1元=100元宝</font>")
		end
	end
end

function CrystalBuy.buy(_handle)
	local index = GUIWndGetParam(_handle)
	UI:Lua_SubmitForm("宝石升级表单", "buy", ""..index)
end

function CrystalBuy.closeWnd()
	local  handle = GetWindow("","CrystalSystem,CrystalBuy")
	if handle ~= 0 then 
		GUIWndClose(handle)
	end
end

CrystalBuy.main()