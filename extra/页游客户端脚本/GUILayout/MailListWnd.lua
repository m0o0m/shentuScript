MailListWnd = {}

function MailListWnd.main()
	local ui = "<form>"..
	"<dialog OnInit=MailListWnd.UIInit id='MailListWnd' image='1807000009' x='-204' y='-132' w='662' h='504' center='true' magic='1' OnClose='MailListWnd.wndClose' esc_close='true' drag='true' revmsg='true'>"..
		"<image id='backImg' image='1807000001' x='35' y='55' w='592' h='427' revmsg='false' enable='false'/>"..
		"<button id='closeBtn' image='1805900080' x='605' y='3' w='34' h='38' OnLButtonClick='luaWndClose' revmsg='true' />"..
		"<image id='wndTitleImg' image='1807000000' x='295' y='8' w='67' h='24' revmsg='false' enable='false'/>"..
		"<image id='listTitle' image='1807000004' x='130' y='65' w='67' h='24' revmsg='false' enable='false'/>"..
		"<button id='selAllBtn' image='1807000005' x='44' y='448' w='51' h='26' OnLButtonClick='MailListWnd.selAllBtn_LC' revmsg='true' text='全选' text_color='#E6D284'/>"..
		"<button id='delBtn' image='1807000005' x='100' y='448' w='51' h='26' OnLButtonClick='MailListWnd.delBtn_LC' revmsg='true' text='删除' text_color='#E6D284'/>"..
		"<button id='pgUpBtn' image='1806700029' x='158' y='450' w='20' h='19' OnLButtonClick='MailListWnd.pgBtn_LC' revmsg='true' param='-1' />"..
		"<button id='pgDownBtn' image='1806700033' x='255' y='450' w='20' h='19' OnLButtonClick='MailListWnd.pgBtn_LC' revmsg='true' param='1' />"..
		"<image id='TestWndChild_10' image='1806700027' x='180' y='453' w='75' h='18' revmsg='false' nable='false'/>"..
		"<edit id='pageEdit' x='190' y='449' w='46' h='25' revmsg='false' enable='false' align='center'  text_color='#B7A285'/>"..
		 "<wnd id='mailCellWnd1' image='0' x='38' y='88' w='220' h='69' revmsg='true' param='1' visible='false'>"..
		"<check id='mailCb' image='1806300027' x='5' y='19' w='16' h='16' OnCheckChange='MailListWnd.mailCb_CC' revmsg='true' />"..
		"<button id='mailBtn' image='1807000010' x='32' y='0' w='189' h='69' OnLButtonClick='MailListWnd.mailBtn_LC' revmsg='true' param='1' />"..
		"<richedit id='mailRE' x='40' y='13' w='170' h='42'  revmsg='true' enable='false' />"..
	 "</wnd>"..
		 "<wnd id='mailCellWnd2' image='0' x='38' y='160' w='220' h='69' revmsg='true' param='2' visible='false'>"..
		"<check id='mailCb' image='1806300027' x='5' y='19' w='16' h='16' OnCheckChange='MailListWnd.mailCb_CC' revmsg='true' />"..
		"<button id='mailBtn' image='1807000010' x='32' y='0' w='189' h='69' OnLButtonClick='MailListWnd.mailBtn_LC' revmsg='true' param='2' />"..
		"<richedit id='mailRE' x='40' y='13' w='170' h='42'  revmsg='true' enable='false' />"..
	 "</wnd>"..
		 "<wnd id='mailCellWnd3' image='0' x='38' y='232' w='220' h='69' revmsg='true' param='3' visible='false'>"..
		"<check id='mailCb' image='1806300027' x='5' y='19' w='16' h='16' OnCheckChange='MailListWnd.mailCb_CC' revmsg='true' />"..
		"<button id='mailBtn' image='1807000010' x='32' y='0' w='189' h='69' OnLButtonClick='MailListWnd.mailBtn_LC' revmsg='true' param='3' />"..
		"<richedit id='mailRE' x='40' y='13' w='170' h='42'  revmsg='true' enable='false' />"..
	 "</wnd>"..
		 "<wnd id='mailCellWnd4' image='0' x='38' y='304' w='220' h='69' revmsg='true' param='4' visible='false'>"..
		"<check id='mailCb' image='1806300027' x='5' y='19' w='16' h='16' OnCheckChange='MailListWnd.mailCb_CC' revmsg='true' />"..
		"<button id='mailBtn' image='1807000010' x='32' y='0' w='189' h='69' OnLButtonClick='MailListWnd.mailBtn_LC' revmsg='true' param='4' />"..
		"<richedit id='mailRE' x='40' y='13' w='170' h='42'  revmsg='true' enable='false' />"..
	 "</wnd>"..
		 "<wnd id='mailCellWnd5' image='0' x='38' y='376' w='220' h='69' revmsg='true' param='5' visible='false'>"..
		"<check id='mailCb' image='1806300027' x='5' y='19' w='16' h='16' OnCheckChange='MailListWnd.mailCb_CC' revmsg='true' />"..
		"<button id='mailBtn' image='1807000010' x='32' y='0' w='189' h='69' OnLButtonClick='MailListWnd.mailBtn_LC' revmsg='true' param='5' />"..
		"<richedit id='mailRE' x='40' y='13' w='170' h='42'  revmsg='true' enable='false' />"..
	 "</wnd>"..
		 "<wnd id='detailWnd' image='0' x='268' y='50' w='350' h='406' revmsg='true' visible='false'>"..
			"<image id='titleback' image='1807000003' x='20' y='25' w='247' h='25' revmsg='false' enable='false'/>"..
			"<richedit id='title1' x='20' y='30' w='319' h='20'  revmsg='true' enable='false' text_color='#ded7c7' />"..
			"<richedit id='content' x='20' y='80' w='310' h='210'  revmsg='false' enable='false' text_color='#ded7c7' />"..
			 "<wnd id='goldWnd' image='0' x='25' y='256' w='16' h='16' revmsg='true'>"..
				"<button id='receiveBtn' image='1802500006' x='0' y='0' w='51' h='26' OnLButtonClick='MailListWnd.receiveItem' revmsg='true' param='1' text='领取' text_color='#C2B6A0'/>"..
				"<image id='moneyImg' image='1806600015' x='57' y='5' w='16' h='16' revmsg='true' tip='金币' enable='false'/>"..
				"<edit id='money' image='0' x='78' y='3' w='50' h='20' revmsg='true' tip='金币' enable='false' text_color='#C2B6A0' />"..
			 "</wnd>"..
			 "<wnd id='ingotWnd' image='0' x='170' y='256' w='16' h='16' revmsg='true'>"..
				"<button id='receiveBtn' image='1802500006' x='0' y='0' w='51' h='26' OnLButtonClick='MailListWnd.receiveItem' revmsg='true' param='2' text='领取' text_color='#C2B6A0'/>"..
				"<image id='moneyImg' image='1806600012' x='57' y='5' w='16' h='16' revmsg='true' tip='元宝' enable='false'/>"..
				"<edit id='money' image='0' x='82' y='5' w='50' h='20' revmsg='true' tip='元宝' enable='false' text_color='#C2B6A0' />"..
			 "</wnd>"..
			
			" <image id='itemBack1' image='1800000133' x='27' y='286' w='42' h='42' revmsg='true'/> <image id='itemBackc1' image='1891430001' x='27' y='286' w='42' h='42' fitsize='true' revmsg='true'/> <itemctrl id='item1' x='29' y='288' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true' param='3'/>"..
			" <image id='itemBack2' image='1800000133' x='87' y='286' w='42' h='42' revmsg='true'/> <image id='itemBackc2' image='1891430001' x='87' y='286' w='42' h='42' fitsize='true' revmsg='true'/> <itemctrl id='item2' x='89' y='288' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true' param='4'/>"..
			" <image id='itemBack3' image='1800000133' x='147' y='286' w='42' h='42' revmsg='true'/> <image id='itemBackc3' image='1891430001' x='147' y='286' w='42' h='42' fitsize='true' revmsg='true'/> <itemctrl id='item3' x='149' y='288' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true' param='5'/>"..
			" <image id='itemBack4' image='1800000133' x='207' y='286' w='42' h='42' revmsg='true'/> <image id='itemBackc4' image='1891430001' x='207' y='286' w='42' h='42' fitsize='true' revmsg='true'/> <itemctrl id='item4' x='209' y='288' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true' param='6'/>"..
			" <image id='itemBack5' image='1800000133' x='267' y='286' w='42' h='42' revmsg='true'/> <image id='itemBackc5' image='1891430001' x='267' y='286' w='42' h='42' fitsize='true' revmsg='true'/> <itemctrl id='item5' x='269' y='288' w='42' h='42' rbtn_use='true' use_back='0' enable='true' revmsg='true' param='7'/>"..
			
			--"<itemctrl id='item1' x='30' y='289' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1800000133' revmsg='true' param='3'/>"..
			--"<itemctrl id='item2' x='90' y='289' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1800000133' revmsg='true' param='4'/>"..
			--"<itemctrl id='item3' x='150' y='289' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1800000133' revmsg='true' param='5'/>"..
			--"<itemctrl id='item4' x='210' y='289' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1800000133' revmsg='true' param='6'/>"..
			--"<itemctrl id='item5' x='270' y='289' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1800000133' revmsg='true' param='7'/>"..
			"<edit id='tips' image='0' x='55' y='337' w='250' h='20' revmsg='true' enable='false' text='邮件保存30天，逾期自动删除（包括附件）' text_color='#C2B6A0' />"..
			"<button id='receiveAllBtn' image='1800000150' x='133' y='365' w='84' h='32' OnLButtonClick='MailListWnd.receiveAllBtn_LC' revmsg='true' text='一键领取' text_color='#C2B6A0' />"..
		 "</wnd>"..
	 "</dialog>"..
	"</form>"

	GenFormByString(ui)
end

--UI Logic Code Start

MailListWnd.localString = {}
local l = MailListWnd.localString
l.listTitle = "邮件列表"
l.selALL = "全选"
l.cancelSelALL = "取消全选"
l.del = "删除"
l.sender = "发件人："
l.sender_system = "系统"
l.time = "发件时间："
l.remainingTime = "剩余时间："
l.state = {" （未读）", " （已读）"}
l.receive = "领取"
l.ingot = "元宝"
l.gold = "金币"
l.receiveAll = "一键领取"
l.overTimeTips = "邮件保存30天，逾期自动删除（包括附件）"

MailListWnd.nowPage = 1
MailListWnd.receiveAll = false
MailListWnd.list_ = {}
MailListWnd.detail_ = {}
MailListWnd.selList_ = {}
MailListWnd.selIndex = 0

MailListWnd._mailWnd_ = {}
MailListWnd._mailCb_ = {}
MailListWnd._mailBtn_ = {}
MailListWnd._mailRE_ = {}
--MailListWnd._mailItemImg_ = {}
MailListWnd._item_ = {}
MailListWnd._itemB_ = {}
MailListWnd._itemBC_ = {}


function MailListWnd.UIInit(_Handle)
	MailListWnd._wndHandle = _Handle
	GUIWndSetSizeM(_Handle, 662, 504)
	RegisterUIEvent(LUA_EVENT_MAILLIST, "UI_MailListWnd_Open", MailListWnd.getMailList)		--打开界面接收邮件列表
	RegisterUIEvent(LUA_EVENT_MAILDETAIL, "MailListWnd_newMail", MailListWnd.getMailDetail)				--接受邮件详情
	RegisterUIEvent(LUA_EVENT_MAILATTACHMENTOK, "MailListWnd_receiveItem", MailListWnd.receiveItemDone)	--领取道具成功
	
	local _GUIHandle = 0
	_GUIHandle = GUIWndFindChildM(_Handle,"delBtn")
	if _GUIHandle ~= 0 then
		MailListWnd._delBtn = _GUIHandle
		--GUIWndSetTextOffset(_GUIHandle, 0, -2)
	end
	
	_GUIHandle = GUIWndFindChildM(_Handle,"pgUpBtn")
	if _GUIHandle ~= 0 then
		MailListWnd._pgUpBtn = _GUIHandle
	end
	
	_GUIHandle = GUIWndFindChildM(_Handle,"selAllBtn")
	if _GUIHandle ~= 0 then
		MailListWnd._selAllBtn = _GUIHandle
	end
	
	_GUIHandle = GUIWndFindChildM(_Handle,"pgDownBtn")
	if _GUIHandle ~= 0 then
		MailListWnd._pgDownBtn = _GUIHandle
	end
	
	_GUIHandle = GUIWndFindChildM(_Handle,"pageEdit")
	if _GUIHandle ~= 0 then
		MailListWnd._pgEdit = _GUIHandle
	end
	
	local wnd = 0 
	for i = 1, 5 do
		wnd = GUIWndFindChildM(_Handle, "mailCellWnd"..i)
		if wnd == 0 then break end
		MailListWnd._mailWnd_[i] = wnd
		GUIWndSetVisible(wnd, false)
		
		_GUIHandle = GUIWndFindChildM(wnd, "mailCb")
		if _GUIHandle ~= 0 then 
			MailListWnd._mailCb_[i] = _GUIHandle
		end
		_GUIHandle = GUIWndFindChildM(wnd, "mailBtn")
		if _GUIHandle ~= 0 then
			MailListWnd._mailBtn_[i] = _GUIHandle
			GUIButtonSetIsActivePageBtn(_GUIHandle, false)
		end
		_GUIHandle = GUIWndFindChildM(wnd, "mailRE")
		if _GUIHandle ~= 0 then 
			MailListWnd._mailRE_[i] = _GUIHandle
		end
		--[[_GUIHandle = GUIWndFindChildM(wnd, "mailItemImg")
		if _GUIHandle ~= 0 then
			MailListWnd._mailItemImg_[i] = _GUIHandle
		end--]]
	end
	
	wnd = GUIWndFindChildM(_Handle, "detailWnd")
	if wnd ~= 0 then 
		MailListWnd._detailWnd = wnd
		GUIWndSetVisible(wnd, false)
		
		_GUIHandle = GUIWndFindChildM(wnd,"title1")
		if _GUIHandle ~= 0 then
			MailListWnd._title1 = _GUIHandle
			GUIRichEditSetCurFont(_GUIHandle, "TitleFont1")
		end
		
		_GUIHandle = GUIWndFindChildM(wnd,"content")
		if _GUIHandle ~= 0 then
			MailListWnd._content = _GUIHandle
			GUIRichEditSetCurFont(_GUIHandle, "TitleFont1")
		end
		
		local mWnd = GUIWndFindChildM(wnd, "goldWnd")
		if mWnd ~= 0 then
			MailListWnd._gold = mWnd
			_GUIHandle = GUIWndFindChildM(mWnd, "receiveBtn")
			if _GUIHandle ~= 0 then
				GUIWndSetTextOffset(_GUIHandle, 0, -2)
				GUIWndSetTextM(_GUIHandle, l.receive)
				GUIWndSetParam(_GUIHandle, 1)
			end
			
			_GUIHandle = GUIWndFindChildM(mWnd, "money")
			if _GUIHandle ~= 0 then
				MailListWnd._goldEdit = _GUIHandle
			end
		end
		
		mWnd = GUIWndFindChildM(wnd, "ingotWnd")
		if mWnd ~= 0 then
			MailListWnd._ingot = mWnd
			_GUIHandle = GUIWndFindChildM(mWnd, "receiveBtn")
			if _GUIHandle ~= 0 then
				GUIWndSetTextOffset(_GUIHandle, 0, -2)
				GUIWndSetTextM(_GUIHandle, l.receive)
			end
			
			_GUIHandle = GUIWndFindChildM(mWnd, "money")
			if _GUIHandle ~= 0 then
				MailListWnd._ingotEdit = _GUIHandle
			end
		end
		
		for i = 1, 5 do
			_GUIHandle = GUIWndFindChildM(wnd, "item"..i)
			if _GUIHandle ~= 0 then
				MailListWnd._item_[i] = _GUIHandle
				--GUIItemCtrlSetBackImageID(_GUIHandle, 1800000133)
				GUIWndSetParam(_GUIHandle, i+2)
			end
			_GUIHandle = GUIWndFindChildM(wnd, "itemBack"..i)
			if _GUIHandle ~= 0 then
				MailListWnd._itemB_[i] = _GUIHandle
				--GUIItemCtrlSetBackImageID(_GUIHandle, 1800000133)
				GUIWndSetParam(_GUIHandle, i+2)
			end
			_GUIHandle = GUIWndFindChildM(wnd, "itemBackc"..i)
			if _GUIHandle ~= 0 then
				MailListWnd._itemBC_[i] = _GUIHandle
				--GUIItemCtrlSetBackImageID(_GUIHandle, 1800000133)
				GUIWndSetParam(_GUIHandle, i+2)
			end
		end
		
		_GUIHandle = GUIWndFindChildM(wnd, "receiveAllBtn")
		if _GUIHandle ~= 0 then 
			MailListWnd._receiveAll = _GUIHandle
			GUIWndSetTextM(_GUIHandle, l.receiveAll)
		end
	end
end

function MailListWnd.getMailList()
	MailListWnd.list_ = getTable(as3.tolua(LuaParam[1]))
	for i = 1, #MailListWnd.list_ do
		MailListWnd.list_[i] = getTable(MailListWnd.list_[i])
		MailListWnd.selList_[i] = 0
	end
	
	for i = 1, 5 do
		MailListWnd.fillMailBtn(i)
	end
	MailListWnd.updataPgBtn()
	GUIWndSetVisible(MailListWnd._detailWnd, false)
end

function MailListWnd.fillMailBtn(i)
	local index = 0 
	local text, name = "", ""
	local stateColor = {"#COLOREND##COLORCOLOR_GREENG#", "#COLOREND##COLORCOLOR_GRAY#"}
	index = (MailListWnd.nowPage-1)*5 + i
	if index > #MailListWnd.list_ then 
		GUIWndSetVisible(MailListWnd._mailWnd_[i], false)
	else
		--GUIWndSetVisible(MailListWnd._mailItemImg_[i], false)
		GUIWndSetVisible(MailListWnd._mailWnd_[i], true)
		GUIRichEditClear(MailListWnd._mailRE_[i])
		local state = 1
		if MailListWnd.list_[index][5] then
			state = 2
			CLOpenMail(MailListWnd.list_[index][1])
		end
		if MailListWnd.list_[index][4] ~= "" then
			name = MailListWnd.list_[index][4]
		else
			name = l.sender_system
		end
		text = "#COLORCOLOR_GOLD#"..name..stateColor[state]..l.state[state].."#COLOREND#\n"..
		"#OFFSET<X:0,Y:5>##COLORCOLOR_ORANGE#"..l.remainingTime.."#COLOREND##COLORCOLOR_GOLD#"..MailListWnd.list_[index][3].."#COLOREND#"
		GUIRichEditAppendString(MailListWnd._mailRE_[i], text)
	end
end

function MailListWnd.pgBtn_LC(_Handle)
	local p = GUIWndGetParam(_Handle)
	MailListWnd.nowPage = MailListWnd.nowPage + p
	MailListWnd.updataPgBtn()
	MailListWnd.updataCheckBox()
	MailListWnd.updataMailBtn(0)
	for i = 1, 5 do
		MailListWnd.fillMailBtn(i)
	end
	GUIWndSetVisible(MailListWnd._detailWnd, false)
end

function MailListWnd.updataPgBtn()
	if MailListWnd.nowPage <= 1 then
		GUIWndSetEnableM(MailListWnd._pgUpBtn, false)
	else
		GUIWndSetEnableM(MailListWnd._pgUpBtn, true)
	end
	
	if MailListWnd.nowPage*5 >= #MailListWnd.list_ then
		GUIWndSetEnableM(MailListWnd._pgDownBtn, false)
	else
		GUIWndSetEnableM(MailListWnd._pgDownBtn, true)
	end
	
	if #MailListWnd.list_ <= 0 then
		GUIWndSetEnableM(MailListWnd._selAllBtn, false)
		GUIWndSetEnableM(MailListWnd._delBtn, false)
	else
		GUIWndSetEnableM(MailListWnd._selAllBtn, true)
		GUIWndSetEnableM(MailListWnd._delBtn, true)
	end
	local tolpage = math.ceil(#MailListWnd.list_/5)
	if tolpage == 0 then
		tolpage = 1
	end
	GUIEditSetTextM(MailListWnd._pgEdit, MailListWnd.nowPage.."/"..tolpage)
end

function MailListWnd.updataCheckBox()
	local index = 0
	for i = 1, 5 do
		index = (MailListWnd.nowPage-1)*5 + i
		if index > #MailListWnd.list_ then return end
		if MailListWnd.selList_[index] == 1 then
			GUICheckBoxSetCheck(MailListWnd._mailCb_[i], true)
		else
			GUICheckBoxSetCheck(MailListWnd._mailCb_[i], false)
		end
	end
end

function MailListWnd.updataMailBtn(i)
	if MailListWnd.selIndex ~= 0 then
		GUIButtonSetIsActivePageBtn(MailListWnd._mailBtn_[MailListWnd.selIndex], false)
	end
	if i ~= 0 then
		GUIButtonSetIsActivePageBtn(MailListWnd._mailBtn_[i], true)
	end
	MailListWnd.selIndex = i
end

function MailListWnd.mailBtn_LC(_Handle)
	local i = GUIWndGetParam(_Handle)
	local index = i + (MailListWnd.nowPage-1)*5
	CLOpenMail(MailListWnd.list_[index][1])
	MailListWnd.list_[index][5] = 1
	MailListWnd.updataMailBtn(i)
	MailListWnd.fillMailBtn(i)
end

function MailListWnd.getMailDetail()
	local t_ = getTable(as3.tolua(LuaParam[1]))
	local index = 0 
	for i = 1, #MailListWnd.list_ do
		if MailListWnd.list_[i][1] == t_[1] then
			index = i
			break
		end
	end
	
	if t_[6] then
		t_[6] = getTable(t_[6])
		for j = 1, #t_[6] do
			t_[6][j] = getTable(t_[6][j])
		end	
	end
	
	MailListWnd.detail_[index] = t_
	MailListWnd.showDetail(index)
end

function MailListWnd.showDetail(i)
	if i == 0 then 
		GUIWndSetVisible(MailListWnd._detailWnd, false)
		return 
	end
	GUIWndSetVisible(MailListWnd._detailWnd, true)
	GUIRichEditClear(MailListWnd._title1)
	GUIRichEditClear(MailListWnd._content)

	if tonumber(MailListWnd.detail_[i][4]) > 0 then
		GUIWndSetVisible(MailListWnd._gold, true)
		GUIEditSetTextM(MailListWnd._goldEdit, MailListWnd.detail_[i][4])
	else
		GUIWndSetVisible(MailListWnd._gold, false)
	end
	
	if tonumber(MailListWnd.detail_[i][3]) > 0 then
		GUIWndSetVisible(MailListWnd._ingot, true)
		GUIEditSetTextM(MailListWnd._ingotEdit, MailListWnd.detail_[i][3])
	else
		GUIWndSetVisible(MailListWnd._ingot, false)
	end
	
	for j = 1, 5 do
		if j <= tonumber(MailListWnd.detail_[i][5]) and MailListWnd.detail_[i][6] and MailListWnd.detail_[i][6][j][4] then
			GUIWndSetVisible(MailListWnd._itemB_[j], true)
			GUIWndSetVisible(MailListWnd._itemBC_[j], true)
			GUIWndSetVisible(MailListWnd._item_[j], true)

			local bool = nil
			if MailListWnd.detail_[i][6][j][3] == 1 then
				bool = true
			else
				bool = false
			end
			if CLGetItemTemplatePropByID(MailListWnd.detail_[i][6][j][1], ITEM_PROP_KEYNAME) then
				local keyName = tostring(as3.tolua(LuaRet))
				RDItemCtrlSetGUIDataByKeyName(MailListWnd._item_[j], keyName, MailListWnd.detail_[i][6][j][2], bool)
				local Temp = CLGetItemTemplateHandleByKeyName(keyName)
				if CLGetItemTemplatePropByHandle(Temp,ITEM_PROP_COLOR) then
					if as3.tolua(LuaRet) ~= nil then
						local color =  as3.tolua(LuaRet)
						--local wnd = GUIWndFindChildM(MailListWnd._wndHandle, "detailWnd")
						if color == "PURPLE" then  --紫   -- 黄  -- 红  -- 绿
							ImageSetImageID(MailListWnd._itemBC_[j],nil,1891430004)
						elseif color == "GOLD" or color == "YELLOW" then
							ImageSetImageID(MailListWnd._itemBC_[j],nil,1891430001)
						elseif color == "RED" then
							ImageSetImageID(MailListWnd._itemBC_[j],nil,1891430000)
						elseif color == "GREENG" then
							ImageSetImageID(MailListWnd._itemBC_[j],nil,1891430003)
						elseif color == "WHITE" then
							ImageSetImageID(MailListWnd._itemBC_[j],nil,0)
						end
					end
				end
			end
			
		else
			GUIWndSetVisible(MailListWnd._item_[j], false)
			GUIWndSetVisible(MailListWnd._itemB_[j], false)
			GUIWndSetVisible(MailListWnd._itemBC_[j], false)
		end
	end
	
	local text, name = "", ""
	if MailListWnd.list_[i][4] == "" or MailListWnd.list_[i][4] == nil then
		name = l.sender_system
	else
		name = MailListWnd.list_[i][4]
	end
	text = "#COLORCOLOR_ORANGE#"..l.sender.."#COLOREND##COLORCOLOR_GOLD#"..name.."   #COLOREND##COLORCOLOR_ORANGE#"..l.time.."#COLOREND##COLORCOLOR_GOLD#"..MailListWnd.list_[i][2].."#COLOREND#"
	GUIRichEditAppendString(MailListWnd._title1, text)
	GUIRichEditAppendString(MailListWnd._content, MailListWnd.detail_[i][2])
	
	MailListWnd.checkItem(i)
end

function MailListWnd.receiveItem(_Handle)
	local p = GUIWndGetParam(_Handle)
	local index = (MailListWnd.nowPage-1)*5 + MailListWnd.selIndex
	CLAttachmentMail(MailListWnd.list_[index][1], p)
end

function MailListWnd.receiveAllBtn_LC()
	for i = 1, 5 do
		if MailListWnd.detail_[MailListWnd.selIndex][6][i] and MailListWnd.detail_[MailListWnd.selIndex][6][i][4] then
			local freeSiteIdx = CLPlayerGetPakageFreeSiteIdx()
			if freeSiteIdx > 0 then
				CLAttachmentMail(MailListWnd.list_[MailListWnd.selIndex][1], i+2)
			else
				UI:Lua_ShowTypeMsg(4, "[背包已满]")
				break
			end
		end
	end
	
	if MailListWnd.detail_[MailListWnd.selIndex][3] ~= 0 then
		CLAttachmentMail(MailListWnd.list_[MailListWnd.selIndex][1], 2)
	end
	
	if MailListWnd.detail_[MailListWnd.selIndex][4] ~= 0 then
		CLAttachmentMail(MailListWnd.list_[MailListWnd.selIndex][1], 1)
	end
end

function MailListWnd.receiveItemDone()
	local index = 0
	for i , v in pairs(MailListWnd.detail_) do
		if v[1] == as3.tolua(LuaParam[1]) then
			index = i
			break
		end
	end

	if as3.tolua(LuaParam[2]) == 2 then
		MailListWnd.detail_[index][3] = 0
		GUIWndSetVisible(MailListWnd._ingot, false)
	elseif as3.tolua(LuaParam[2]) == 1 then
		MailListWnd.detail_[index][4] = 0
		GUIWndSetVisible(MailListWnd._gold, false)
	else
		MailListWnd.detail_[index][6][(as3.tolua(LuaParam[2])-2)][4] = false
		GUIWndSetVisible(MailListWnd._item_[(as3.tolua(LuaParam[2])-2)], false)
		GUIWndSetVisible(MailListWnd._itemB_[(as3.tolua(LuaParam[2])-2)], false)
		GUIWndSetVisible(MailListWnd._itemBC_[(as3.tolua(LuaParam[2])-2)], false)
	end
	
	MailListWnd.checkItem(index)
	MailListWnd.showDetail(index)
end

function MailListWnd.checkItem(index)
	local flag = 0
	if MailListWnd.detail_[index][3] ~= 0 or MailListWnd.detail_[index][4] ~= 0 then
		flag = 1
	end

	for j = 1, 5 do
		if j <= MailListWnd.detail_[index][5] and MailListWnd.detail_[index][6] and MailListWnd.detail_[index][6][j][4] then
			flag = 1
			break
		end
	end
	
	local i = 0
	i = math.mod(index, 5)
	if i == 0 then i = 5 end
	if flag == 1 then
		GUIWndSetVisible(MailListWnd._receiveAll, true)
		--GUIWndSetVisible(MailListWnd._mailItemImg_[i], true)
		--GUIWndSetImageID(MailListWnd._mailItemImg_[i], 1802500010)
	else
		GUIWndSetVisible(MailListWnd._receiveAll, false)
	--	GUIWndSetVisible(MailListWnd._mailItemImg_[i], false)
	end
end

function MailListWnd.mailCb_CC(_Handle)
	local _parent = GUIWndGetParentM(_Handle)
	local index = GUIWndGetParam(_parent) + (MailListWnd.nowPage-1)*5
	if GUICheckBoxGetCheck(_Handle) then
		MailListWnd.selList_[index] = 1
	else
		MailListWnd.selList_[index] = 0
	end	
end

function MailListWnd.selAllBtn_LC(_Handle)
	local value = 0
	if GUIWndGetText(_Handle) == l.selALL then
		GUIWndSetTextM(_Handle, l.cancelSelALL)
		value = 1
	else
		GUIWndSetTextM(_Handle, l.selALL)
		value = 0
	end
	
	for i = 1, #MailListWnd.selList_ do
		MailListWnd.selList_[i] = value
	end
	MailListWnd.updataCheckBox()
end

function MailListWnd.delBtn_LC()
	local index = (MailListWnd.nowPage-1)*5 + MailListWnd.selIndex
	local guid = 0
	if MailListWnd.selIndex ~= 0 then 
		guid = MailListWnd.list_[index][1]
	else
		guid = MailListWnd.list_[(index+1)][1]
	end
	
	local flag = 0
	for i = #MailListWnd.selList_, 1, -1 do
		if MailListWnd.selList_[i] == 1 then
			if i == index then
				MailListWnd.showDetail(0)
				MailListWnd.updataMailBtn(0)
			end
			CLDeleteMail(MailListWnd.list_[i][1])
			table.remove(MailListWnd.list_, i)
			table.remove(MailListWnd.selList_, i)
			table.remove(MailListWnd.detail_, i)
			if flag == 0 then flag = 1 end
		end
			
	end
	
	if flag == 0 then return end

	if index ~= 0 and #MailListWnd.list_ ~= 0 then
		for i = 1, #MailListWnd.list_ do
			if MailListWnd.list_[i][1] == guid then
				index = i
				break
			end
		end
		MailListWnd.nowPage = math.ceil(index/5)
	else
		if #MailListWnd.list_ == 0 then
			MailListWnd.nowPage = 1
		end
	end

	for i = 1, 5 do
		if ((MailListWnd.nowPage-1)*5 + i) == index and MailListWnd.selIndex ~= 0 then
			MailListWnd.updataMailBtn(i)
		end
		MailListWnd.fillMailBtn(i)
	end
	local uih = GetWindow(MailListWnd._wndHandle,"selAllBtn")
	if uih ~= 0 then
		GUIWndSetTextM(uih, l.selALL)
	end
	MailListWnd.updataCheckBox()
	MailListWnd.updataPgBtn()
end

function MailListWnd.wndClose()
	local wnd = GUIWndFindWindow(0, "MailListWnd") 
	if wnd == 0 then
		UnRegisterUIEvent(LUA_EVENT_MAILLIST, "UI_MailListWnd_Open")
		UnRegisterUIEvent(LUA_EVENT_MAILDETAIL, "MailListWnd_newMail")
		UnRegisterUIEvent(LUA_EVENT_MAILATTACHMENTOK, "MailListWnd_receiveItem")
		MailListWnd = nil
	end
end

MailListWnd.main()