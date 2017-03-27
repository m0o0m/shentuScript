StallLog ={}
function StallLog.main()
	local ui = "<form> <dialog OnInit='StallLog.UIInit' id='StallLog' image='1806600000' x='268' y='174' w='449' h='504' center='true' magic='1' OnClose='StallLog.wndClose' esc_close='true' drag='true' revmsg='true'>"
	.."	<image id='wndTitleImage' image='1806600004' x='184' y='6' w='95' h='27' check_point='0' revmsg='true' enable='false'/>"
	.."	<button id='closeBtn' image='1805900080' x='393' y='5' w='34' h='38' OnLButtonClick='luaWndClose' revmsg='true'/>"
	
	.."	 <wnd id='Wnd' image='0' x='35' y='54' w='367' h='432'  revmsg='true'>" --scroll ='true'
		.."	<image id='TestWndChild_0' image='1806600009' x='0' y='0' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_1' image='1806600009' x='0' y='35' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_2' image='1806600009' x='0' y='70' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_3' image='1806600009' x='0' y='105' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_4' image='1806600009' x='0' y='140' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_5' image='1806600009' x='0' y='175' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_6' image='1806600009' x='0' y='210' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_7' image='1806600009' x='0' y='245' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_8' image='1806600009' x='0' y='280' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_9' image='1806600009' x='0' y='315' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_10' image='1806600009' x='0' y='350' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<image id='TestWndChild_11' image='1806600009' x='0' y='385' w='368' h='35' check_point='0' revmsg='true'/>"
		.."	<richedit id='textRE' x='10' y='3' w='342' h='420' revmsg='true' font='system'/>"
	.." </wnd>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

--UI Logic Code Start
StallLog.Open = false

StallLog.localString = {}
local l = StallLog.localString
l.cost = "花费"
l.buy = "购买了"
l.unit = "个"
l.moneyType = {"金币", "元宝"}

function StallLog.UIInit(slw)
	GUIWndSetSizeM(slw, 449, 504)
	local uih = GUI:WndFindChildM(slw, "textRE")
	if uih ~= 0 then
		StallLog.textRE = uih
	end
	StallLog.Open=true
	StallLog.wndHandle = slw
	CL:GetStallBuyList()
	local list = getTable(LuaRet)
	for i = 1, #list do
		list[i] = getTable(list[i])
		GUI:RichEditAppendString(StallLog.textRE, StallLog.setStr(list[i][1], list[i][2], list[i][3], list[i][4], list[i][5]))
	end
	
	GUI:WndGetPosM(GameStall.wndHandle)
	GUI:WndSetPosM(StallLog.wndHandle,as3.tolua(as3.tolua(LuaRet[1]))+415, as3.tolua(LuaRet[2]))
	--msg("initALL.."..GUI:RichEditGetAllString(StallLog.textRE))
end

function StallLog.stallSellLog()
	GUI:RichEditAppendString(StallLog.textRE, StallLog.setStr(as3.tolua(LuaParam[1]), as3.tolua(LuaParam[2]), as3.tolua(LuaParam[3]), as3.tolua(LuaParam[4]), as3.tolua(LuaParam[5])))
	--msg("addALL.."..GUI:RichEditGetAllString(StallLog.textRE))
end

function StallLog.setStr(p1, p2, p3, p4, p5)
	local str = "#OFFSET<X:0,Y:7>#"..p1.."#COLORCOLOR_GOLD#"..l.cost.."#COLOREND#"..p5..l.moneyType[(p4+1)].."#COLORCOLOR_GOLD#"..
		l.buy.."#COLOREND#"..p2..l.unit.."#COLORCOLOR_PURPLE#"..p3.."#COLOREND#\n"
	return str
end

function StallLog.wndClose()
	StallLog.Open = false
	local wnd = GUI:WndFindWindow(0, "StallLog") 
	if wnd == 0 then
		UnRegisterUIEvent(LUA_EVENT_STALLSELL, "UI_VstallSellLog_Log")
		StallLog = nil
	end
end

	RegisterUIEvent(LUA_EVENT_STALLSELL, "stallSellLog", StallLog.stallSellLog)	--查看其他玩家摆摊
StallLog.main()