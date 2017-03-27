local wnd = GUIWndFindWindow(0, "ItemExchange") 
if wnd ~= 0 then
	GUIWndMoveToParentTop(wnd)
	return
end

ItemExchange = {}

if not ItemExchange.localString then ItemExchange.localString = {} end
local l = ItemExchange.localString
l.gold = "金币"
l.ingot = "元宝"
l.lock = "锁定"
l.unlock = "解锁"
l.confirm = "确定"
l.cancel = "取消"

ItemExchange.lockState = {}

function ItemExchange.main()
	local ui = "<form>"..
		"<dialog OnInit=ItemExchange.UIInit id='ItemExchange' image='0' x='-104' y='-170' w='408' h='541' center='true' magic='1' OnClose='ItemExchange.wndClose' esc_close='true' drag='true' revmsg='true'>"..
			"<image id='backImage' image='1802000003' x='0' y='0' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='wndTitleImage' image='1801500067' x='166' y='0' w='16' h='16' revmsg='true' enable='false'/>"..
			"<button id='closeBtn' image='1800000043' x='360' y='3' w='4095' h='4095' OnLButtonClick='ItemExchange.cancelBtnLc' revmsg='true' />"..
			"<image id='selfGoldEditImage' image='1802000008' x='43' y='415' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='targetGoldEditImage' image='1802000008' x='227' y='415' w='16' h='16' revmsg='true' enable='false'/>"..
			"<image id='selfGoldImage' image='1806600015' x='22' y='423' w='16' h='16' revmsg='true' tip='金币'/>"..
			"<image id='targetGoldImage' image='1806600015' x='207' y='423' w='16' h='16' revmsg='true' tip='金币'/>"..
			"<edit id='selfGoldEdit' image='0' x='60' y='419' w='100' h='20' canedit='true' limit='20' type='number' OnEditStrChange='ItemExchange.goldStrChange' revmsg='true' tip='金币' />"..
			"<edit id='tarmoney' image='0' x='245' y='419' w='100' h='20' canedit='false' revmsg='true' tip='金币' />"..
			"<edit id='playself' image='0' x='30' y='42' w='150' h='29' revmsg='true' enable='false' text_color='#45DDFE' />"..
			"<edit id='tarplayer' image='0' x='213' y='42' w='150' h='29' revmsg='true' enable='false' text_color='#E6D284' />"..
			"<image id='selfItemBackImage0' image='1802000004' x='27' y='79' w='16' h='16' revmsg='true' enable='false'/>"..
			"<itemctrl id='selfItem0' x='41' y='93' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true'/>"..
			"<edit id='selfItemName0' image='0' x='85' y='91' w='90' h='20' revmsg='true' enable='false' />"..
			"<image id='selfItemBackImage1' image='1802000004' x='27' y='145' w='16' h='16' revmsg='true' enable='false'/>"..
			"<itemctrl id='selfItem1' x='41' y='159' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true'/>"..
			"<edit id='selfItemName1' image='0' x='85' y='157' w='90' h='20' revmsg='true' enable='false' />"..
			"<image id='selfItemBackImage2' image='1802000004' x='27' y='211' w='16' h='16' revmsg='true' enable='false'/>"..
			"<itemctrl id='selfItem2' x='41' y='225' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true'/>"..
			"<edit id='selfItemName2' image='0' x='85' y='223' w='90' h='20' revmsg='true' enable='false' />"..
			"<image id='selfItemBackImage3' image='1802000004' x='27' y='277' w='16' h='16' revmsg='true' enable='false'/>"..
			"<itemctrl id='selfItem3' x='41' y='291' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true'/>"..
			"<edit id='selfItemName3' image='0' x='85' y='289' w='90' h='20' revmsg='true' enable='false' />"..
			"<image id='selfItemBackImage4' image='1802000004' x='27' y='343' w='16' h='16' revmsg='true' enable='false'/>"..
			"<itemctrl id='selfItem4' x='41' y='357' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true'/>"..
			"<edit id='selfItemName4' image='0' x='85' y='355' w='90' h='20' revmsg='true' enable='false' />"..
			"<image id='targetItemBackImage0' image='1802000004' x='211' y='79' w='16' h='16' revmsg='true' enable='false'/>"..
			"<itemctrl id='targetItem0' x='226' y='93' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true'/>"..
			"<edit id='targetItemName0' image='0' x='270' y='91' w='90' h='20' revmsg='true' enable='false' />"..
			"<image id='targetItemBackImage1' image='1802000004' x='211' y='145' w='16' h='16' revmsg='true' enable='false'/>"..
			"<itemctrl id='targetItem1' x='226' y='159' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true'/>"..
			"<edit id='targetItemName1' image='0' x='270' y='157' w='90' h='20' revmsg='true' enable='false' />"..
			"<image id='targetItemBackImage2' image='1802000004' x='211' y='211' w='16' h='16' revmsg='true' enable='false'/>"..
			"<itemctrl id='targetItem2' x='226' y='225' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true'/>"..
			"<edit id='targetItemName2' image='0' x='270' y='223' w='90' h='20' revmsg='true' enable='false' />"..
			"<image id='targetItemBackImage3' image='1802000004' x='211' y='277' w='16' h='16' revmsg='true' enable='false'/>"..
			"<itemctrl id='targetItem3' x='226' y='291' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true'/>"..
			"<edit id='targetItemName3' image='0' x='270' y='289' w='90' h='20' revmsg='true' enable='false' />"..
			"<image id='targetItemBackImage4' image='1802000004' x='211' y='343' w='16' h='16' revmsg='true' enable='false'/>"..
			"<itemctrl id='targetItem4' x='226' y='357' w='40' h='40' auto_manage='true' rbtn_use='true' use_back='-1' revmsg='true'/>"..
			"<edit id='targetItemName4' image='0' x='270' y='355' w='90' h='20' revmsg='true' enable='false' />"..
			"<image id='selfLockImage' image='1802000009' x='6' y='64' w='16' h='16' revmsg='true' enable='false' visible='false'/>"..
			"<image id='targetLockImage' image='1802000009' x='189' y='64' w='16' h='16' revmsg='true' enable='false' visible='false'/>"..
			"<button id='lockBtn' image='1800000134' x='30' y='468' w='70' h='37' OnLButtonClick='ItemExchange.lockBtnLc' revmsg='true' text='锁定' text_color='#E6D284'/>"..
			"<button id='confirmBtn' image='1800000150' x='158' y='468' w='84' h='32' OnLButtonClick='ItemExchange.confirmBtnLc' revmsg='true' text='确定' text_color='#E6D284'/>"..
			"<button id='cancelBtn' image='1800000150' x='286' y='468' w='84' h='32' OnLButtonClick='ItemExchange.cancelBtnLc' revmsg='true' text='取消' text_color='#E6D284'/>"..
		 "</dialog>"..
	"</form>"

	GenFormByString(ui)
end

function ItemExchange.UIInit(_Handle)
	ItemExchange.wndHandle = _Handle
	RegisterUIEvent(LUA_EVENT_P2PLOCK, "ItemExchange_锁定改变", ItemExchange.lockChange) 
	 GUIWndSetSizeM(_Handle, 408, 541)
	uih = GUIWndFindWindow(_Handle, "selfGoldEdit")
	if uih ~= 0 then 
		GUI:WndRegistScript(uih, RDWnd2DEditCL_str_change, "ItemExchange.goldStrChange")
	end
	
	--背包互动
	uih = GUIWndFindWindow(0, "Package")
	if uih ~= 0 then 
		WndMoveToParentTop(uih)
	else
		CLOnOpenPakage()
	end
	PackageWndInteraction.packageFriendWndOpen(_Handle)
end

function ItemExchange.lockBtnLc(h)
	if ItemExchange.lockState[1] == 1 then
		CLOnLockP2p(0)
	else
		CLOnLockP2p(1)
	end
end

function ItemExchange.lockChange()
	local who = as3.tolua(LuaParam[1])
	local state = as3.tolua(LuaParam[2])
	
	ItemExchange.lockState[who] = state
	local uih = 0
	if who == 1 then	--self
		if state == 0 then
			uih = GUIWndFindChildM(ItemExchange.wndHandle, "selfLockImage")
			if uih ~= 0 then
				GUIWndSetVisible(uih, false)
			end
			uih = GUIWndFindChildM(ItemExchange.wndHandle, "lockBtn")
			if uih ~= 0 then
				GUIWndSetTextM(uih, l.lock)
			end
		else
			uih = GUIWndFindChildM(ItemExchange.wndHandle, "selfLockImage")
			if uih ~= 0 then
				GUIWndSetVisible(uih, true)
			end
			uih = GUIWndFindChildM(ItemExchange.wndHandle, "lockBtn")
			if uih ~= 0 then
				GUIWndSetTextM(uih, l.unlock)
			end
		end
	else	--target
		if state == 0 then
			uih = GUIWndFindChildM(ItemExchange.wndHandle, "targetLockImage")
			if uih ~= 0 then
				GUIWndSetVisible(uih, false)
			end
		else
			uih = GUIWndFindChildM(ItemExchange.wndHandle, "targetLockImage")
			if uih ~= 0 then
				GUIWndSetVisible(uih, true)
			end
		end
	end
end

function ItemExchange.confirmBtnLc()
	CLOnConfirmP2p()
end

function ItemExchange.cancelBtnLc(h)
	CLOnCancelP2p()
end

function ItemExchange.goldStrChange(h)
	local num = GUIEditGetInt(h)
	CLGetPlayerSelfProperty64(ROLE_PROP64_GOLD)
	if num > as3.tolua(LuaRet) then
		num = as3.tolua(LuaRet)
		GUIEditSetInt(h, num)
	end
	CLSetP2pGold(num)
end

function ItemExchange.wndClose(_Handle)
	PackageWndInteraction.packageFriendWndClose(_Handle)
	local wnd = GUIWndFindWindow(0, "ItemExchange") 
	if wnd == 0 then
		UnRegisterUIEvent(LUA_EVENT_P2PLOCK, "ItemExchange_锁定改变")
		ItemExchange = nil
	end
end

ItemExchange.main()