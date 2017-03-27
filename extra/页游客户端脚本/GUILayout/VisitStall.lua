VisitStall ={}
function VisitStall.main()
	local ui = "<form> <dialog OnInit='VisitStall.UIInit' id='VisitStall' image='1806600000' x='268' y='173' w='449' h='504' center='true' magic='1' OnClose='VisitStall.wndClose' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='wndTitleImage' image='1806600023' x='189' y='5' w='94' h='28' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='closeBtn' image='1805900080' x='393' y='6' w='34' h='38' OnLButtonClick='luaWndClose' revmsg='true'/>"	
	--.."	<edit id='stallNameEdit_f' x='32' y='53' w='80' h='20' revmsg='true' enable='false' text_color='#E6D284' text='摊位名称:' font='system'/>"
	--.."	<edit id='stallNameRE' x='97' y='53' w='150' h='20' revmsg='true' text_color='#429429' font='system'/>"
	.."	<richedit id='stallNameRE' x='29' y='56' w='348' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='tipsEdit' x='33' y='459' w='150' h='20' revmsg='true' enable='false' text_color='#E6D284' text='双击物品打开购买界面' font='system'/>"
	.."	<button id='buyBtn' image='1806100002' x='312' y='456' w='88' h='31' OnLButtonClick='VisitStall.buyBtnLc' revmsg='true' text='购买' text_color='#E6D284'/>"

	.."	 <wnd id='itemWnd1' image='0' x='14' y='72' w='16' h='16' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='1'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='36' y='36' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='82' y='20' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='102' y='45' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='48' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	 <wnd id='itemWnd7' image='0' x='204' y='72' w='16' h='16' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='7'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='35' y='35' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='83' y='19' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='101' y='44' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='46' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	 <wnd id='itemWnd2' image='0' x='14' y='132' w='16' h='16' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='2'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='35' y='36' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='81' y='18' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='101' y='43' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='46' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	 <wnd id='itemWnd8' image='0' x='204' y='132' w='16' h='16' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='8'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='35' y='35' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='81' y='18' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='101' y='43' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='45' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	 <wnd id='itemWnd3' image='0' x='14' y='192' w='16' h='16' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='3'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='35' y='36' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='82' y='19' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='101' y='44' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='46' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	 <wnd id='itemWnd9' image='0' x='204' y='192' w='16' h='16' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='9'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='35' y='35' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='83' y='17' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='101' y='41' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='44' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	 <wnd id='itemWnd4' image='0' x='14' y='252' w='16' h='16' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='4'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='35' y='33' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='83' y='18' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='101' y='44' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='45' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	 <wnd id='itemWnd10' image='0' x='204' y='252' w='16' h='16' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='10'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='35' y='34' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='83' y='18' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='101' y='43' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='45' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	 <wnd id='itemWnd5' image='0' x='14' y='312' w='16' h='14' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='5'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='35' y='36' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='83' y='19' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='101' y='45' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='46' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	 <wnd id='itemWnd11' image='0' x='204' y='312' w='16' h='16' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='11'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='35' y='36' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='83' y='20' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='102' y='44' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='46' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	 <wnd id='itemWnd6' image='0' x='14' y='372' w='16' h='16' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='6'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='35' y='36' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='84' y='20' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='101' y='44' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='46' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	 <wnd id='itemWnd12' image='0' x='204' y='372' w='16' h='16' OnLButtonDown='VisitStall.selectItem' OnLButtonDbClick='VisitStall.buyBtnLc' OnMouseIn='VisitStall.mouseInItem' OnMouseOut='VisitStall.mouseOutItem' revmsg='true' param='12'>"
		.."	<image id='itemBackImage' image='1806600008' x='21' y='13' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemctrlImage' image='1806600011' x='33' y='20' w='46' h='46' check_point='0' revmsg='true'/>"
		.."	<itemctrl id='item' use_back='-1' x='36' y='23' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
		.."	<edit id='SellEdit' x='35' y='35' w='40' h='14' align='center' revmsg='true' enable='false' visible='false' text_color='#18E3AD' text='售完' font='system'/>"
		.."	<edit id='itemName' x='83' y='17' w='90' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<edit id='itemPrice' x='101' y='43' w='75' h='22' revmsg='true' enable='false' font='system'/>"
		.."	<image id='itemPriceImg' image='0' x='84' y='45' w='18' h='18' check_point='0' revmsg='true' enable='false'/>"
		.."	<image id='itemSelImg' image='1806600024' x='21' y='13' w='158' h='67' check_point='0' revmsg='true' enable='false' visible='false'/>"
	.." </wnd>"
	.."	<image id='TestWndChild_4' image='1806600006' x='28' y='77' w='393' h='5' revmsg='true'/>"
	.."	<image id='TestWndChild_5' image='1806600006' x='28' y='448' w='393' h='5' revmsg='true'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

--UI Logic Code Start


if not VisitStall.localString then VisitStall.localString = {} end
local l = VisitStall.localString
l.stallNameEdit_f = "摊位名称:  "
l.tips = "拖动物品，上架到摆摊界面"

VisitStall.playerGUID = 0
VisitStall.stallName = 0
VisitStall.itemList = {}
VisitStall.selectHandle = 0
VisitStall.itemInfo = {}

function VisitStall.UIInit(vsw)
	VisitStall.wndHandle = vsw
	GUIWndSetSizeM(vsw, 449, 504)
	local _handle = GUIWndFindChildM(VisitStall.wndHandle,"buyBtn")
	--GUIWndSetTextOffset(_handle, 0, 2)
	GUIWndSetTextArrangeType(_handle,0,2,0,0)
	--背包互动
	local _GUIHandle = 0
	_GUIHandle = GUIWndFindWindow(0, "Package")
	if _GUIHandle ~= 0 then 
		WndMoveToParentTop(_GUIHandle)
	else
		CLOnOpenPakage()
	end
	PackageWndInteraction.packageFriendWndOpen(vsw)
end

function VisitStall.visitStallList()
	VisitStall.playerGUID = as3.tolua(LuaParam[1])
	VisitStall.stallName = as3.tolua(LuaParam[2])
	VisitStall.itemList = getTable(as3.tolua(LuaParam[4]))
	VisitStall.paddingData()
end

function VisitStall.paddingData()
	if VisitStall.wndHandle == nil or VisitStall.wndHandle == 0 then
		VisitStall.wndHandle = GUIWndFindWindow(0, "VisitStall")
	end
	local uih, vsw = 0, VisitStall.wndHandle
	uih = GUIWndFindChildM(vsw, "stallNameRE")
	if uih ~= 0 then
		local offx = math.ceil((348-CLGetFontStrWidth("system", l.stallNameEdit_f..VisitStall.stallName))/2)
		GUIRichEditAppendString(uih, "#OFFSET<X:"..offx..",Y:0>#"..l.stallNameEdit_f.."#COLORCOLOR_YELLOW#"..VisitStall.stallName.."#COLORCOLOREND#")
	end
	
	local ic = #VisitStall.itemList
	for i = 1, ic do
		local handle = VisitStall.itemList[i]
		CLGetItemEntityPropByHandle(handle, ITEM_PROP_NAME)
		local tName = as3.tolua(LuaRet)
		UI:Lua_GetItemGUIDataPropByType(handle, ITEMGUIDATA_ITEMPRICETYPE)
		local tType = as3.tolua(LuaRet)
		UI:Lua_GetItemGUIDataPropByType(handle, ITEMGUIDATA_ITEMPRICE)
		local tPrice = as3.tolua(LuaRet)
		UI:Lua_GetItemGUIDataPropByType(handle, ITEMGUIDATA_ITEMCOUNT)
		local tNum = as3.tolua(LuaRet)
		VisitStall.itemInfo[i] = {tName, tType, tPrice, tNum}
	end
	
	for i = 1, 12 do
		if i > ic then
			VisitStall.clearItemWnd(i)
		else
			VisitStall.fillItemWnd(i)
		end
		
	end
end

function VisitStall.buyBtnLc(h)
	if VisitStall.selectHandle == 0 then return end
	local index = GUIWndGetParam(VisitStall.selectHandle)
	if index > #VisitStall.itemInfo then return end
	if VisitStall.itemInfo[index][4] >0 then
		luaMsgBox.new("确认购买", VisitStall.itemInfo[index][2]..";"..VisitStall.itemInfo[index][3], 0, 0, VisitStall.playerGUID..";"..VisitStall.itemList[index])
	else
		luaMsgBox.new("", "此物品已售完，不能购买",1,{},0)
	end
end

function VisitStall.itemSell() 
	for i = 1, #VisitStall.itemInfo do
		local iw=0
		local uih=0
		if VisitStall.itemList[i] == tonumber(as3.tolua(LuaParam[1])) then
			VisitStall.itemInfo[i][4] = VisitStall.itemInfo[i][4] - tonumber(as3.tolua(LuaParam[2]))
			if VisitStall.itemInfo[i][4] <= 0 then
				iw = GUIWndFindChildM(VisitStall.wndHandle, "itemWnd"..i)
				uih = GUIWndFindChildM(iw, "SellEdit")
				if uih ~= 0 and VisitStall.itemInfo[i][4] == 0 then
					GUIWndSetVisible(uih, true)
				end
			else
				VisitStall.fillItemWnd(i)
			end
			
			break
		end
	end
end

function VisitStall.clearItemWnd(i)
	local iw = GUIWndFindChildM(VisitStall.wndHandle, "itemWnd"..i)
	local uih = 0
	uih = GUIWndFindChildM(iw, "item")
	if uih ~= 0 then
		GUIItemCtrlClearItemData(uih)
	end
	
	uih = GUIWndFindChildM(iw, "itemName")
	if uih ~= 0 then	
		GUIEditSetTextM(uih, "")
	end
	
	uih = GUIWndFindChildM(iw, "itemPriceImg") 
	if uih ~= 0 then
		GUIWndSetImageID(uih, 0)
	end
	
	uih = GUIWndFindChildM(iw, "itemPrice")
	if uih ~= 0 then
		GUIEditSetTextM(uih, "")
	end
end

function VisitStall.fillItemWnd(i)
	local handle = VisitStall.itemList[i]
	local item_type = CLGetItemEntityPropByHandle(handle, ITEM_PROP_TYPE)
	local iw = GUIWndFindChildM(VisitStall.wndHandle, "itemWnd"..i)
	local uih = 0 
	uih = GUIWndFindChildM(iw, "item")
	if uih ~= 0 then
		if item_type == 1 then 
			local item_guid = CLGetItemEntityPropByHandle(handle, ITEM_PROP_ENTITY_GUID)
			RDItemCtrlSetGUIDataPropByGUID(uih, nil, item_guid)
		else
			GUIItemCtrlSetGUIData(uih, VisitStall.itemList[i])
		end
	end
	
	uih = GUIWndFindChildM(iw, "itemName")
	if uih ~= 0 then	
		GUIEditSetTextM(uih, VisitStall.itemInfo[i][1])
	end
	
	uih = GUIWndFindChildM(iw, "itemPriceImg") 
	if uih ~= 0 then
		if VisitStall.itemInfo[i][2] == 0 then
			GUIWndSetImageID(uih, 1806600015)
		else
			GUIWndSetImageID(uih, 1806600012)
		end
	end
	
	uih = GUIWndFindChildM(iw, "itemPrice")
	if uih ~= 0 then
		GUIEditSetTextM(uih, VisitStall.itemInfo[i][3])
	end
	uih = GUIWndFindChildM(iw, "SellEdit")
	if uih ~= 0 and VisitStall.itemInfo[i][4] == 0 then
		GUIWndSetVisible(uih, true)
	end
end

function VisitStall.mouseInItem(h)
	local uih = GUIWndFindChildM(h, "itemSelImg")
	GUIWndSetVisible(uih, true)
end

function VisitStall.mouseOutItem(h)
	local uih = GUIWndFindChildM(h, "itemSelImg")
	if h ~= VisitStall.selectHandle then
		GUIWndSetVisible(uih, false)
	end
end

function VisitStall.selectItem(h)
	VisitStall.selectHandle = h
	local uih = 0
	for i = 1, 12 do
		uih = GUIWndFindChildM(VisitStall.wndHandle, "itemWnd"..i)
		if uih ~= 0 then
			local img = GUIWndFindChildM(uih, "itemSelImg")
			if uih ~= VisitStall.selectHandle then
				GUIWndSetVisible(img, false)
			else
				dbg("itemSelImg:true")
				GUIWndSetVisible(img, true)
			end
		end
	end
	GUIWndMoveToParentBottom(h)
end

function VisitStall.BuyError()
	local ecode = as3.tolua(LuaParam[1])
	if ecode >3000 and ecode<3100 then
		if ecode == 3001 then
			luaMsgBox.new("", "元宝不足", {"充值", "取消"}, {"VisitStall.GoPay", "VisitStall.CancelError"})
		elseif ecode == 3004 then
			luaMsgBox.new("", "金币不足",1,{},0)
		elseif ecode == 3006 then
			luaMsgBox.new("", "财产未解锁",1,{},0)
		end
	end
end

function VisitStall.GoPay(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function VisitStall.CancelError(h)
	luaWndClose(h)
end

function VisitStall.closeStall()
	GUIWndClose(VisitStall.wndHandle)
end

function VisitStall.wndClose(_Handle)
	PackageWndInteraction.packageFriendWndClose(_Handle)
	CLCloseVisitStall()	--清理数据
	local wnd = GUIWndFindWindow(0, "VisitStall") 
	if wnd == 0 then
		VisitStall = nil
	end
end

	RegisterUIEvent(LUA_EVENT_HIDEVISITSTALL, "VisitStall_关闭他人摆摊面板", VisitStall.closeStall)
	RegisterUIEvent(LUA_EVENT_VISITSTALLBUY, "VisitStall_摊位的东西卖掉", VisitStall.itemSell)
	RegisterUIEvent(LUA_EVENT_PLAYERERRORCODE, "VisitStall_摊位物品购买失败", VisitStall.BuyError)
	RegisterUIEvent(LUA_EVENT_VISITSTALLLIST, "VisitStall_他人列表", VisitStall.visitStallList)
	
VisitStall.main()