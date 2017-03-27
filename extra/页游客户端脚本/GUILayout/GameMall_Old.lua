GameMall = {}

GameMall.localString = {}
local l = GameMall.localString
l.pageBtn_ = {"热 销", "绑定金币", "辅 助", "强 化", "消 耗", "积 分", "绑定元宝"}		--pageBtnsTable
l.itemPrice_f = "现价:"
l.buyBtn = "购 买"
l.integral = "积分"
l.bindIngot = "绑元"
l.ingot = "元宝"
l.bindGold = "绑金"
l.gold = "金币"
l.vipTip = ""

GameMall.nowPage = 1
GameMall.pageBtnsTable = {"hotItemBtn", "saleItemBtn", "assistItemBtn", "enhanceItemBtn", "consumableItemBtn", "integralItemBtn", "bindIngotItemBtn"}
GameMall.nowType = 1
GameMall.mallList = {}
GameMall._itemCell_ = {}
GameMall._itemName_ = {}
GameMall._itemPrice_ = {}
GameMall._item_ = {}
GameMall._buyBtn_ = {}
GameMall._moneyEdit_= {}
GameMall.moneyType_ =  {	
	{"integralEdit",	ROLE_PROP64_INTEGRAL}, 
	{"bindIngotEdit",	ROLE_PROP64_BIND_INGOT}, 
	{"ingotEdit",		ROLE_PROP64_INGOT}
}

function GameMall.main()
	local ui = "<form>"..
		"<dialog OnInit=GameMall.UIInit id='GameMall' image='1801100080' x='-248' y='-205' w='697' h='610' center='true' magic='1' OnClose='GameMall.wndClose' esc_close='true' drag='true' revmsg='true'>"..
			"<image id='showGirlImage' image='1801100042' x='-247' y='-160' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='wndTitleImage' image='1801500189' x='334' y='18' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='pageEditImage' image='1801100033' x='550' y='498' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='integralEditImage' image='1801100034' x='94' y='549' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='bindIngotEditImage' image='1801100034' x='244' y='549' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='ingotEditImage' image='1801100034' x='394' y='549' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='integralIcon' image='1800000055' x='102' y='555' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='bindIngotIcon' image='1800000053' x='252' y='555' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='ingotIcon' image='1800000054' x='402' y='555' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='pageBtnArtImage_l' image='1801100044' x='84' y='86' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='pageBtnArtImage_r' image='1801100045' x='650' y='86' w='16' h='16' revmsg='true' enable='false'/>"..
			"<button id='closeWndBtn' image='1800000068' x='683' y='47' w='4095' h='4095' OnLButtonClick='luaWndClose' revmsg='true' />"..
			"<button id='rechargeBtn' image='1800000415' x='520' y='537' w='4095' h='4095' OnLButtonClick='GameMall.rechargeBtnLc' revmsg='true' />"..
			"<button id='pageBtn1' image='1801100046' x='110' y='86' w='77' h='31' OnLButtonClick='GameMall.pageBtn_LC' revmsg='true' param='1' />"..
			"<button id='pageBtn2' image='1801100050' x='495' y='86' w='77' h='31' OnLButtonClick='GameMall.pageBtn_LC' revmsg='true' param='2' />"..
			"<button id='pageBtn3' image='1801100054' x='187' y='86' w='77' h='31' OnLButtonClick='GameMall.pageBtn_LC' revmsg='true' param='3' />"..
			"<button id='pageBtn4' image='1801100058' x='264' y='86' w='77' h='31' OnLButtonClick='GameMall.pageBtn_LC' revmsg='true' param='4' />"..
			"<button id='pageBtn5' image='1801100062' x='341' y='86' w='77' h='31' OnLButtonClick='GameMall.pageBtn_LC' revmsg='true' param='5' />"..
			"<button id='pageBtn6' image='1801100066' x='418' y='86' w='77' h='31' OnLButtonClick='GameMall.pageBtn_LC' revmsg='true' param='6' />"..
			"<button id='pageBtn7' image='1801100070' x='572' y='86' w='77' h='31' OnLButtonClick='GameMall.pageBtn_LC' revmsg='true' param='7'/>"..
			"<image id='backBorder' image='1801100079' x='69' y='116' w='16' h='16' revmsg='true' enable='false'/>"..
			"<button id='pgUpBtn' image='1800000060' x='516' y='495' w='4095' h='4095' OnLButtonClick='GameMall.pgUpBtn_LC' revmsg='true' />"..
			"<button id='pgDownBtn' image='1800000064' x='612' y='495' w='4095' h='4095' OnLButtonClick='GameMall.pgDownBtn_LC' revmsg='true' />"..
			"<edit id='integralEdit' image='0' x='122' y='553' w='70' h='15' revmsg='true' tip='积分' enable='false' />"..
			"<edit id='bindIngotEdit' image='0' x='272' y='553' w='70' h='15' revmsg='true' tip='绑定元宝' enable='false' />"..
			"<edit id='ingotEdit' image='0' x='422' y='553' w='70' h='15' revmsg='true' tip='元宝' enable='false' />"..
			"<edit id='pageEdit' image='0' x='529' y='503' w='105' h='15' revmsg='true' enable='false' text_color='#E6D284' align='center' />"..
			"<edit id='tipsEdit' image='0' x='79' y='498' w='450' h='20' revmsg='true' enable='false' text_color='#8D6412' text='在商城中使用元宝购买商城物品可以获得积分（每花费1元宝，获得1积分）' />"..
			 "<wnd id='itemCell1' image='1801100078' x='77' y='130' w='16' h='16' revmsg='true'>"..
				"<image id='itemBackImage' image='1800000384' x='16' y='38' w='16' h='16' revmsg='true' enable='false'/>"..
				"<edit id='itemName' image='0' x='15' y='6' w='172' h='23' revmsg='true' enable='false' text_color='#CCB766' align='center' />"..
				"<edit id='itemPrice_f' image='0' x='90' y='50' w='35' h='17' revmsg='true' enable='false' text_color='#FF9304' text='现价:' />"..
				"<edit id='itemPrice' image='0' x='123' y='47' w='78' h='22' revmsg='true' enable='false' />"..
				"<button id='buyBtn' image='1800000081' x='108' y='79' w='63' h='26' OnLButtonClick='GameMall.buyBtnLc' revmsg='true' text='购 买' text_color='#FF9304'/>"..
				"<itemctrl id='item' x='21' y='43' w='55' h='55' auto_manage='true' use_back='-1' revmsg='true'/>"..
			 "</wnd>"..
			 "<wnd id='itemCell2' image='1801100078' x='279' y='130' w='16' h='16' revmsg='true'>"..
				"<image id='itemBackImage' image='1800000384' x='16' y='38' w='16' h='16' revmsg='true' enable='false'/>"..
				"<edit id='itemName' image='0' x='15' y='6' w='172' h='23' revmsg='true' enable='false' text_color='#CCB766' align='center' />"..
				"<edit id='itemPrice_f' image='0' x='90' y='50' w='35' h='17' revmsg='true' enable='false' text_color='#FF9304' text='现价:' />"..
				"<edit id='itemPrice' image='0' x='123' y='47' w='78' h='22' revmsg='true' enable='false' />"..
				"<button id='buyBtn' image='1800000081' x='108' y='79' w='63' h='26' OnLButtonClick='GameMall.buyBtnLc' revmsg='true' text='购 买' text_color='#FF9304'/>"..
				"<itemctrl id='item' x='21' y='43' w='55' h='55' auto_manage='true' use_back='-1' revmsg='true'/>"..
			 "</wnd>"..
			 "<wnd id='itemCell3' image='1801100078' x='481' y='130' w='16' h='16' revmsg='true'>"..
				"<image id='itemBackImage' image='1800000384' x='16' y='38' w='16' h='16' revmsg='true' enable='false'/>"..
				"<edit id='itemName' image='0' x='15' y='6' w='172' h='23' revmsg='true' enable='false' text_color='#CCB766' align='center' />"..
				"<edit id='itemPrice_f' image='0' x='90' y='50' w='35' h='17' revmsg='true' enable='false' text_color='#FF9304' text='现价:' />"..
				"<edit id='itemPrice' image='0' x='123' y='47' w='78' h='22' revmsg='true' enable='false' />"..
				"<button id='buyBtn' image='1800000081' x='108' y='79' w='63' h='26' OnLButtonClick='GameMall.buyBtnLc' revmsg='true' text='购 买' text_color='#FF9304'/>"..
				"<itemctrl id='item' x='21' y='43' w='55' h='55' auto_manage='true' use_back='-1' revmsg='true'/>"..
			 "</wnd>"..
			 "<wnd id='itemCell4' image='1801100078' x='77' y='250' w='16' h='16' revmsg='true'>"..
				"<image id='itemBackImage' image='1800000384' x='16' y='38' w='16' h='16' revmsg='true' enable='false'/>"..
				"<edit id='itemName' image='0' x='15' y='6' w='172' h='23' revmsg='true' enable='false' text_color='#CCB766' align='center' />"..
				"<edit id='itemPrice_f' image='0' x='90' y='50' w='35' h='17' revmsg='true' enable='false' text_color='#FF9304' text='现价:' />"..
				"<edit id='itemPrice' image='0' x='123' y='47' w='78' h='22' revmsg='true' enable='false' />"..
				"<button id='buyBtn' image='1800000081' x='108' y='79' w='63' h='26' OnLButtonClick='GameMall.buyBtnLc' revmsg='true' text='购 买' text_color='#FF9304'/>"..
				"<itemctrl id='item' x='21' y='43' w='55' h='55' auto_manage='true' use_back='-1' revmsg='true'/>"..
			 "</wnd>"..
			 "<wnd id='itemCell5' image='1801100078' x='279' y='250' w='16' h='16' revmsg='true'>"..
				"<image id='itemBackImage' image='1800000384' x='16' y='38' w='16' h='16' revmsg='true' enable='false'/>"..
				"<edit id='itemName' image='0' x='15' y='6' w='172' h='23' revmsg='true' enable='false' text_color='#CCB766' align='center' />"..
				"<edit id='itemPrice_f' image='0' x='90' y='50' w='35' h='17' revmsg='true' enable='false' text_color='#FF9304' text='现价:' />"..
				"<edit id='itemPrice' image='0' x='123' y='47' w='78' h='22' revmsg='true' enable='false' />"..
				"<button id='buyBtn' image='1800000081' x='108' y='79' w='63' h='26' OnLButtonClick='GameMall.buyBtnLc' revmsg='true' text='购 买' text_color='#FF9304'/>"..
				"<itemctrl id='item' x='21' y='43' w='55' h='55' auto_manage='true' use_back='-1' revmsg='true'/>"..
			 "</wnd>"..
			 "<wnd id='itemCell6' image='1801100078' x='481' y='250' w='16' h='16' revmsg='true'>"..
				"<image id='itemBackImage' image='1800000384' x='16' y='38' w='16' h='16' revmsg='true' enable='false'/>"..
				"<edit id='itemName' image='0' x='15' y='6' w='172' h='23' revmsg='true' enable='false' text_color='#CCB766' align='center' />"..
				"<edit id='itemPrice_f' image='0' x='90' y='50' w='35' h='17' revmsg='true' enable='false' text_color='#FF9304' text='现价:' />"..
				"<edit id='itemPrice' image='0' x='123' y='47' w='78' h='22' revmsg='true' enable='false' />"..
				"<button id='buyBtn' image='1800000081' x='108' y='79' w='63' h='26' OnLButtonClick='GameMall.buyBtnLc' revmsg='true' text='购 买' text_color='#FF9304'/>"..
				"<itemctrl id='item' x='21' y='43' w='55' h='55' auto_manage='true' use_back='-1' revmsg='true'/>"..
			 "</wnd>"..
			 "<wnd id='itemCell7' image='1801100078' x='77' y='370' w='16' h='16' revmsg='true'>"..
				"<image id='itemBackImage' image='1800000384' x='16' y='38' w='16' h='16' revmsg='true' enable='false'/>"..
				"<edit id='itemName' image='0' x='15' y='6' w='172' h='23' revmsg='true' enable='false' text_color='#CCB766' align='center' />"..
				"<edit id='itemPrice_f' image='0' x='90' y='50' w='35' h='17' revmsg='true' enable='false' text_color='#FF9304' text='现价:' />"..
				"<edit id='itemPrice' image='0' x='123' y='47' w='78' h='22' revmsg='true' enable='false' />"..
				"<button id='buyBtn' image='1800000081' x='108' y='79' w='63' h='26' OnLButtonClick='GameMall.buyBtnLc' revmsg='true' text='购 买' text_color='#FF9304'/>"..
				"<itemctrl id='item' x='21' y='43' w='55' h='55' auto_manage='true' use_back='-1' revmsg='true'/>"..
			 "</wnd>"..
			"<wnd id='itemCell8' image='1801100078' x='279' y='370' w='16' h='16' revmsg='true'>"..
				"<image id='itemBackImage' image='1800000384' x='16' y='38' w='16' h='16' revmsg='true' enable='false'/>"..
				"<edit id='itemName' image='0' x='15' y='6' w='172' h='23' revmsg='true' enable='false' text_color='#CCB766' align='center' />"..
				"<edit id='itemPrice_f' image='0' x='90' y='50' w='35' h='17' revmsg='true' enable='false' text_color='#FF9304' text='现价:' />"..
				"<edit id='itemPrice' image='0' x='123' y='47' w='78' h='22' revmsg='true' enable='false' />"..
				"<button id='buyBtn' image='1800000081' x='108' y='79' w='63' h='26' OnLButtonClick='GameMall.buyBtnLc' revmsg='true' text='购 买' text_color='#FF9304'/>"..
				"<itemctrl id='item' x='21' y='43' w='55' h='55' auto_manage='true' use_back='-1' revmsg='true'/>"..
			"</wnd>"..
			"<wnd id='itemCell9' image='1801100078' x='481' y='370' w='16' h='16' revmsg='true'>"..
				"<image id='itemBackImage' image='1800000384' x='16' y='38' w='16' h='16' revmsg='true' enable='false'/>"..
				"<edit id='itemName' image='0' x='15' y='6' w='172' h='23' revmsg='true' enable='false' text_color='#CCB766' align='center' />"..
				"<edit id='itemPrice_f' image='0' x='90' y='50' w='35' h='17' revmsg='true' enable='false' text_color='#FF9304' text='现价:' />"..
				"<edit id='itemPrice' image='0' x='123' y='47' w='78' h='22' revmsg='true' enable='false' />"..
				"<button id='buyBtn' image='1800000081' x='108' y='79' w='63' h='26' OnLButtonClick='GameMall.buyBtnLc' revmsg='true' text='购 买' text_color='#FF9304'/>"..
				"<itemctrl id='item' x='21' y='43' w='55' h='55' auto_manage='true' use_back='-1' revmsg='true'/>"..
			 "</wnd>"..
		 "</dialog>"..
	"</form>"

	GenFormByString(ui)
end

function GameMall.UIInit(_Handle)
	GameMall.wndHandle = _Handle
	GUIWndSetSizeM(_Handle, 697, 610)
	RegisterUIEvent(LUA_EVENT_UPDATAMALLITEM, "GameMallUI_getList", GameMall.getMallList)
	RegisterUIEvent(LUA_EVENT_PLAYERATTREXTREF, "GameMallUI_moneyChange", GameMall.moneyChange)
	RegisterUIEvent(LUA_EVENT_PLAYERERRORCODE, "GameMallUI_errorCode", GameMall.Msg)
	
	local _GUIHandle = 0
	
	
	_GUIHandle = GUIWndFindChildM(_Handle, "pageBtn1")	--选中第一页
	if _GUIHandle ~= 0 then
		GameMall.pageBtn_LC(_GUIHandle)
	end	
	
	GameMall.refreshMoney()
	
	PackageWndInteraction.packageFriendWndOpen(_Handle)
end

function GameMall.refreshMoney()
	for i = 1, #GameMall.moneyType_ do
		CLGetPlayerSelfProperty64(GameMall.moneyType_[i][2])
		dbg(#GameMall._moneyEdit_)
		dbg(i)
		if #GameMall._moneyEdit_<i then
			local _GUIHandle = GUIWndFindChildM(GameMall.wndHandle, GameMall.moneyType_[i][1])
			if _GUIHandle ~= 0 then
				GameMall._moneyEdit_[i] = _GUIHandle
			end
		end
		GUIEditSetTextM(GameMall._moneyEdit_[i], as3.tolua(LuaRet))
	end
end

function GameMall.moneyChange()
	local changeType = as3.tolua(LuaParam[2])
	if changeType == ROLE_PROP64_INTEGRAL or changeType == ROLE_PROP64_BIND_INGOT or changeType == ROLE_PROP64_INGOT then
		GameMall.refreshMoney()
	end
end

function GameMall.pageBtn_LC(h)
	if h == GameMall._selPageBtn then return end
	GUIButtonSetIsActivePageBtn(h, true)
	if GameMall._selPageBtn then
		GUIButtonSetIsActivePageBtn(GameMall._selPageBtn, false)
	end
	GameMall._selPageBtn = h
	
	GameMall.nowPage = 1
	
	local param = GUIWndGetParam(h)
	GameMall.nowType = param
	CLGetTradeMallList(param-1)
end

function GameMall.getMallList()
	--if GameMall.nowType ~= as3.tolua(LuaParam[1]) + 1 then return end
	dbg("获取列表")
	if CLGetMallItemInfo() then
		GameMall.mallList[GameMall.nowType] = getTable(as3.tolua(LuaRet))
		for i = 1, #GameMall.mallList[GameMall.nowType] do
			GameMall.mallList[GameMall.nowType][i] = getTable(GameMall.mallList[GameMall.nowType][i])
		end
		GameMall.newItemPage()
	end
end

function GameMall.newItemPage()
	local _GUIHandle, _wnd = 0, 0
	local itemCount = #GameMall.mallList[GameMall.nowType]
	local uih, childh = 0, 0
	for i = 1, 9 do
		if #GameMall._itemCell_ < i then
			_wnd = GUIWndFindChildM(GameMall.wndHandle, "itemCell"..i)
			if _wnd ~= 0 then
				GameMall._itemCell_[i] = _wnd
				
				_GUIHandle = GUIWndFindChildM(_wnd, "itemName")
				if _GUIHandle ~= 0 then
					GameMall._itemName_[i] = _GUIHandle
				end
				_GUIHandle = GUIWndFindChildM(_wnd, "itemPrice")
				if _GUIHandle ~= 0 then
					GameMall._itemPrice_[i] = _GUIHandle
				end
				_GUIHandle = GUIWndFindChildM(_wnd, "item")
				if _GUIHandle ~= 0 then
					GameMall._item_[i] = _GUIHandle
				end
				_GUIHandle = GUIWndFindChildM(_wnd, "buyBtn")
				if _GUIHandle ~= 0 then
					GameMall._buyBtn_[i] = _GUIHandle
				end
			end
		end
		local index = i + (GameMall.nowPage-1)*9
		local bind = true
		if index <= itemCount then
			GUIWndSetVisible(GameMall._itemCell_[i], true)
			
			local id = GameMall.mallList[GameMall.nowType][index][1]
			CLGetItemTemplatePropByID(id, ITEM_PROP_NAME)
			GUIEditSetTextM(GameMall._itemName_[i], as3.tolua(LuaRet))
			
			local itemPrice_n = nil
			if GameMall.mallList[GameMall.nowType][index][4] == 1 then
				itemPrice_n = l.bindIngot
			elseif GameMall.mallList[GameMall.nowType][index][4] == 2 then
				itemPrice_n = l.integral
			elseif GameMall.mallList[GameMall.nowType][index][4] == 4 then
				itemPrice_n = l.bindGold
			elseif GameMall.mallList[GameMall.nowType][index][4] == 3 then
				itemPrice_n = l.gold
			else
				itemPrice_n = l.ingot
			end
			CLGetItemTemplatePropByID(id, ITEM_PROP_BINDTYPE)
			if as3.tolua(LuaRet) == 0 then
				bind = false
			else
				bind = true
			end
			GUIEditSetTextM(GameMall._itemPrice_[i], GameMall.mallList[GameMall.nowType][index][6].." "..itemPrice_n)
			GameMall.mallList[GameMall.nowType][index][7] = bind

			--GUIItemCtrlSetGUIData(GameMall._item_[i], CLGetItemTemplateHandleByID(id))
			if CLGetItemTemplatePropByID(id, ITEM_PROP_KEYNAME) then
				RDItemCtrlSetGUIDataByKeyName(GameMall._item_[i], as3.tolua(LuaRet), GameMall.mallList[GameMall.nowType][index][3], bind)
			end
			
			GUIWndSetParam(GameMall._buyBtn_[i], index-1)
		else
			GUIWndSetVisible(GameMall._itemCell_[i], false)
		end
	end
	
	local pageCount = math.ceil(itemCount/9)
	if GameMall._pageEdit == nil then
		_GUIHandle = GUIWndFindChildM(GameMall.wndHandle, "pageEdit")
		if _GUIHandle ~= 0 then
			GameMall._pageEdit = _GUIHandle
		end
	end
	GUIEditSetTextM(GameMall._pageEdit, GameMall.nowPage.." / "..pageCount)

	if GameMall._pgUpBtn == nil then
		_GUIHandle = GUIWndFindChildM(GameMall.wndHandle, "pgUpBtn")
		if _GUIHandle ~= 0 then
			GameMall._pgUpBtn = _GUIHandle
		end
	end
	if GameMall.nowPage == 1 then
		GUIWndSetEnableM(GameMall._pgUpBtn, false) 
	else
		GUIWndSetEnableM(GameMall._pgUpBtn, true)
	end
	
	if GameMall._pgDownBtn == nil then
		_GUIHandle = GUIWndFindChildM(GameMall.wndHandle, "pgDownBtn")
		if _GUIHandle ~= 0 then
			GameMall._pgDownBtn = _GUIHandle
		end
	end	
	if GameMall.nowPage == pageCount then
		GUIWndSetEnableM(GameMall._pgDownBtn, false) 
	else
		GUIWndSetEnableM(GameMall._pgDownBtn, true)
	end
end

function GameMall.buyBtnLc(h)
	local param = GUIWndGetParam(h)
	CLBuyMallItemByIndex(param, 1,false)
end

function GameMall.pgUpBtn_LC()
	GameMall.nowPage= GameMall.nowPage - 1
	GameMall.newItemPage(i)
end

function GameMall.pgDownBtn_LC()
	GameMall.nowPage= GameMall.nowPage + 1
	GameMall.newItemPage(i)
end

function GameMall.rechargeBtnLc(h)
	CLOpenUrlUseIEByType(3)
end

function GameMall.Msg()
	local errorcode = as3.tolua(LuaParam[1])
	if tonumber(errorcode) == 3001 then
		luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"GameMall.chongz", "GameMall.out"}, "")
	end
end	

function GameMall.chongz(h)
	CLOpenUrlUseIEByType(3)
	luaWndClose(h)
end

function GameMall.out(h)
	luaWndClose(h)
end

function GameMall.wndClose(_Handle)
	PackageWndInteraction.packageFriendWndClose(_Handle)
	UnRegisterUIEvent(LUA_EVENT_UPDATAMALLITEM, "获取商城道具列表")
	UnRegisterUIEvent(LUA_EVENT_PLAYERATTREXTREF, "玩家金钱改变_商城界面")
	local wnd = GUIWndFindWindow(0, "GameMall") 
	if wnd == 0 then
		GameMall = nil
	end
end

GameMall.main()