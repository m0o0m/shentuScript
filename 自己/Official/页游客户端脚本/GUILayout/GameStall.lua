GameStall = {}

function GameStall.main()
local ui = "<form> <dialog OnInit=GameStall.UIInit id='GameStall' image='1806600000' x='260' y='166' w='449' h='504' center='true' magic='1' OnClose='GameStall.wndClose' esc_close='true' drag='true' revmsg='true' >"
	.."	<image id='wndTitleImage' image='1806600003' x='189' y='5' w='94' h='28' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='closeBtn' image='1805900080' x='394' y='6' w='34' h='38' OnLButtonClick='GameStall.closeBtnLC' revmsg='true'/>"
	.."	<edit id='stallNameEdit_f' x='32' y='53' w='80' h='20' revmsg='true' enable='false' text_color='#E6D284' text='摊位名称:' font='system'/>"
	.."	<edit id='StallNameEdit' x='97' y='53' w='150' h='20' revmsg='true' text_color='#429429' font='system'/>"
	.."	<edit id='tipsEdit' x='33' y='459' w='150' h='20' revmsg='true' enable='false' text_color='#E6D284' text='拖动物品，上架到摆摊界面' font='system'/>"
	.."	<image id='itemBackImage0' image='1806600008' x='33' y='84' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item0' use_back='1806600011' x='44' y='94' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName0' x='92' y='93' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice0' x='112' y='118' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg0' image='0' x='91' y='119' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='itemBackImage6' image='1806600008' x='223' y='84' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item6' use_back='1806600011' x='235' y='94' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName6' x='283' y='90' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice6' x='305' y='114' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg6' image='0' x='284' y='116' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='itemBackImage1' image='1806600008' x='33' y='144' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item1' use_back='1806600011' x='44' y='156' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName1' x='94' y='152' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice1' x='114' y='177' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg1' image='0' x='95' y='179' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='itemBackImage7' image='1806600008' x='223' y='144' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item7' use_back='1806600011' x='235' y='156' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName7' x='285' y='152' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice7' x='305' y='176' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg7' image='0' x='284' y='178' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='itemBackImage2' image='1806600008' x='33' y='204' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item2' use_back='1806600011' x='44' y='213' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName2' x='95' y='213' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice2' x='115' y='236' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg2' image='0' x='95' y='238' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='itemBackImage8' image='1806600008' x='223' y='204' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item8' use_back='1806600011' x='235' y='213' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName8' x='286' y='210' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice8' x='305' y='234' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg8' image='0' x='286' y='235' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='itemBackImage3' image='1806600008' x='33' y='264' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item3' use_back='1806600011' x='44' y='273' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName3' x='95' y='273' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice3' x='115' y='298' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg3' image='0' x='95' y='300' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='itemBackImage9' image='1806600008' x='223' y='264' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item9' use_back='1806600011' x='235' y='273' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName9' x='287' y='270' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice9' x='306' y='294' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg9' image='0' x='286' y='296' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='itemBackImage4' image='1806600008' x='33' y='324' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item4' use_back='1806600011' x='44' y='334' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName4' x='94' y='332' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice4' x='114' y='356' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg4' image='0' x='93' y='357' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='itemBackImage10' image='1806600008' x='223' y='324' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item10' use_back='1806600011' x='235' y='334' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName10' x='287' y='331' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice10' x='309' y='356' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg10' image='0' x='287' y='357' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='itemBackImage5' image='1806600008' x='33' y='384' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item5' use_back='1806600011' x='44' y='393' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName5' x='96' y='391' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice5' x='116' y='416' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg5' image='0' x='95' y='417' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='itemBackImage11' image='1806600008' x='223' y='384' w='190' h='60' check_point='0' revmsg='true' enable='false'/>"
	
	.."	<itemctrl id='Item11' use_back='1806600011' x='235' y='393' w='40' h='40' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<edit id='ItemName11' x='286' y='388' w='90' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<edit id='ItemPrice11' x='306' y='413' w='75' h='20' revmsg='true' enable='false' font='system'/>"
	.."	<image id='ItemPriceImg11' image='0' x='285' y='414' w='16' h='16' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='logBtn' image='1806100002' x='209' y='456' w='88' h='31' OnLButtonClick='GameStall.logBtnLC' revmsg='true' text='查看日志' text_color='#E6D284'/>"
	.."	<button id='stallBtn' image='1806100002' x='314' y='456' w='88' h='31' OnLButtonClick='GameStall.stallBtnLC' revmsg='true' text='开始摆摊' text_color='#E6D284'/>"
	.."	<image id='TestWndChild_1' image='1806600006' x='29' y='76' w='393' h='5' revmsg='true'/>"
	.."	<image id='TestWndChild_2' image='1806600006' x='28' y='448' w='393' h='5' revmsg='true'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
	
end

--UI Logic Code Start

if not GameStall.localString then GameStall.localString = {} end
local l = GameStall.localString
l.stallNameEdit_f = "摊位名称:"
l.stallNameEdit_b = "的摊位"
l.logBtn = "查看日志"
l.stallBegin = "开始摆摊"
l.stallEnd = "收摊"
l.addItem = "拖动物品，上架到摆摊界面"
l.sellingItem = ""--"Ctrl+点击物品，进行吆喝"

function GameStall.UIInit(sw)
	GameStall.wndHandle = sw
	RegisterUIEvent(LUA_EVENT_STARTSTALL, "GameStall_STARTSTALL", GameStall.startStall)
	RegisterUIEvent(LUA_EVENT_STALLSETPRICE, "GameStall_STALLSETPRICE", GameStall.setStallPrice)
    GUIWndSetSizeM(sw, 449, 504)
	local _handle = GUIWndFindChildM(GameStall.wndHandle,"logBtn")
	GUIWndSetTextArrangeType(_handle,0,2,0,0)
	--GUIWndSetTextOffset(_handle, 1, 2)
	_handle = GUIWndFindChildM(GameStall.wndHandle,"stallBtn")
	GUIWndSetTextArrangeType(_handle,0,2,0,0)
	--GUIWndSetTextOffset(_handle, 1, 2)
	local uih = 0
	uih = GUI:WndFindChildM(sw, "StallNameEdit")
	if uih ~= 0 then
		CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME)
		GUI:EditSetTextM(uih, LuaRet..l.stallNameEdit_b)
	end
	
	--0: 未摆摊 1: 摆摊准备 2: 摆摊中
	local state = tonumber(CLGetStallState())
	uih = GUIWndFindChildM(GameStall.wndHandle, "tipsEdit")
	local h = GUIWndFindChildM(GameStall.wndHandle, "stallBtn")
	if state == 2 then
		GUIWndSetTextM(h, l.stallEnd)
		GUIEditSetTextM(uih, l.sellingItem)
	else
		GUIWndSetTextM(h, l.stallBegin)
		GUIEditSetTextM(uih, l.addItem)
	end
	
	--背包互动
	uih = GUIWndFindWindow(0, "Package")
	if uih ~= 0 then 
		WndMoveToParentTop(uih)
	else
		CLOnOpenPakage()
	end
	PackageWndInteraction.packageFriendWndOpen(sw)
end

function GameStall.logBtnLC()
	if StallLog == nil or not StallLog.Open then
		UI:Lua_OpenWindow(0, "StallLog.lua")
	end
end

function GameStall.startStall()
	local start =  as3.tolua(LuaParam[1])
	local uih = GUIWndFindChildM(GameStall.wndHandle, "tipsEdit")
	local h = GUIWndFindChildM(GameStall.wndHandle, "stallBtn")
	if start then
		GUIWndSetTextM(h, l.stallEnd)
		GUIEditSetTextM(uih, l.sellingItem)
	else
		GUIWndSetTextM(h, l.stallBegin)
		GUIEditSetTextM(uih, l.addItem)
	end
end

function GameStall.stallBtnLC(h)
	local uih = GUIWndFindChildM(GameStall.wndHandle, "tipsEdit")
	if GUIWndGetText(h) == l.stallBegin then 
		CLStartStall()
	else
		CLCloseStall()
		GUIWndSetTextM(h, l.stallBegin)
		GUIEditSetTextM(uih, l.addItem)
	end
end


function GameStall.setStallPrice()
	luaMsgBox.new("出售货物", 0, 0, 0, as3.tolua(LuaParam[1]))
end

function GameStall.closeBtnLC(h)
	luaWndClose(h)
end

function GameStall.wndClose(_Handle)
	PackageWndInteraction.packageFriendWndClose(_Handle)
	local wnd = GUI:WndFindWindow(0, "GameStall") 
	if wnd == 0 then
		GameStall = nil
	end
end

GameStall.main()