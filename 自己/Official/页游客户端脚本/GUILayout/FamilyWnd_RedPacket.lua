FamilyWnd_RedPacket = {}
local ui = "<form default_parent='FamilyWnd'> <dialog OnInit='FamilyWnd_RedPacket.UIInit' id='FamilyWnd_RedPacket' image='1802100004' x='30' y='96' w='658' h='420' revmsg='true'>"
	.."	<edit id='redPacketLogTitle' x='80' y='3' w='172' h='22' revmsg='true' enable='false' text_color='#E6D284' text='红包记录' font='system'/>"
	.."	<edit id='totalMoney_f' x='287' y='26' w='75' h='19' revmsg='true' enable='false' text_color='#FF9304' text='发送总元宝:' font='system'/>"
	.."	<edit id='packetsCount_f' x='287' y='55' w='75' h='19' revmsg='true' enable='false' text_color='#FF9304' text='发送红包数:' font='system'/>"
	.."	<image id='moneyEditBackImg' image='1802100006' x='365' y='24' w='149' h='22' revmsg='true' enable='false'/>"
	.."	<image id='countEditBackImg' image='1802100006' x='365' y='54' w='149' h='22' revmsg='true' enable='false'/>"
	.."	<edit id='totalMoneyEdit' x='424' y='26' w='85' h='19' type='number' canedit = 'true' revmsg='true' font='system'/>"
	.."	<edit id='packetsCountEdit' x='430' y='55' w='85' h='19' type='number' canedit = 'true' revmsg='true' font='system'/>"
	.."	<button id='sendBtn' image='1800000134' x='545' y='32' w='74' h='43' OnLButtonClick='FamilyWnd_RedPacket.sendBtn_LC' revmsg='true' text='发红包' text_color='#E6D284'/>"
	.."	<button id='grabBtn' image='1802100009' x='377' y='335' w='130' h='59' OnLButtonClick='FamilyWnd_RedPacket.grabBtn_LC' revmsg='true'/>"
	.."	<image id='noRedPacketImg' image='1802100008' x='354' y='307' w='242' h='68' revmsg='true' enable='false' visible='false'/>"
	.."<image id='tipsBtn' image='1800000297' x='257' y='383' w='27' h='30' revmsg='true' tip='玩家可以向行会成员发送元宝红包。自己不能抢自己的红包。'/>"
	.."	<edit id='tipsEdit' x='287' y='386' w='80' h='20' revmsg='false' tip='玩家可以向行会成员发送元宝红包。自己不能抢自己的红包。' text='行会红包说明' font='system'/>"
	.."	<image id='pgEditBackImg' image='1800000279' x='83' y='376' w='58' h='34' revmsg='true' enable='false'/>"
	.."	<button id='pgUpBtn' image='1800000094' x='49' y='384' w='20' h='19' OnLButtonClick='FamilyWnd_RedPacket.pgUpBtn_LC' revmsg='true'/>"
	.."	<button id='pgDownBtn' image='1800000098' x='155' y='384' w='20' h='19' OnLButtonClick='FamilyWnd_RedPacket.pgDownBtn_LC' revmsg='true'/>"
	.."	<edit id='pgEdit' x='92' y='381' w='49' h='23' revmsg='true' enable='false' text_color='#E6D284' font='system'/>"
	.."	<richedit id='redPacketLogRE1' x='7' y='41' w='213' h='14' revmsg='true' font='system'/>"
	.."	<richedit id='redPacketLogRE2' x='7' y='75' w='213' h='14' revmsg='true' font='system'/>"
	.."	<richedit id='redPacketLogRE3' x='7' y='109' w='213' h='14' revmsg='true' font='system'/>"
	.."	<richedit id='redPacketLogRE4' x='7' y='143' w='213' h='14' revmsg='true' font='system'/>"
	.."	<richedit id='redPacketLogRE5' x='7' y='177' w='213' h='14' revmsg='true' font='system'/>"
	.."	<richedit id='redPacketLogRE6' x='7' y='211' w='213' h='14' revmsg='true' font='system'/>"
	.."	<richedit id='redPacketLogRE7' x='7' y='245' w='213' h='14' revmsg='true' font='system'/>"
	.."	<richedit id='redPacketLogRE8' x='7' y='279' w='213' h='14' revmsg='true' font='system'/>"
	.."	<richedit id='redPacketLogRE9' x='7' y='313' w='213' h='14' revmsg='true' font='system'/>"
	.."	<richedit id='redPacketLogRE10' x='7' y='347' w='213' h='14' revmsg='true' font='system'/>"
	.." </dialog>"
	.."</form>"

function FamilyWnd_RedPacket.main()
	GenFormByString(ui)
end

FamilyWnd_RedPacket.localString = {}
local l = FamilyWnd_RedPacket.localString
l.operate_ = {
	{"发出一个","元宝的红包"},
	{"抢到一个","元宝的红包"}
}
FamilyWnd_RedPacket.nowLogPage = 1

--UI Logic Code Start
function FamilyWnd_RedPacket.UIInit(_Handle)
	FamilyWnd_RedPacket._wnd = _Handle
	FamilyWnd._nowPage = _Handle
	
	as3.tolua(UI:Lua_SubmitForm("行会", "redPacket_update", ""))
	local _GUIHandle = 0 
	local commonUI_ ={
		"grabBtn",
		"noRedPacketImg",
		"totalMoneyEdit",
		"packetsCountEdit",
		"pgUpBtn",
		"pgDownBtn",
		"pgEdit",
	} 
	for i = 1, #commonUI_ do
		_GUIHandle = GUIWndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyWnd_RedPacket[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
	FamilyWnd_RedPacket._redPacketLogRE_ = {}
	for i = 1, 10 do
		_GUIHandle = GUIWndFindChildM(_Handle, "redPacketLogRE"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_RedPacket._redPacketLogRE_[i] = _GUIHandle
		end 
	end
	_GUIHandle  = GetWindow(_Handle,"totalMoneyEdit")
	if _GUIHandle ~= 0 then
		GUIEditSetMaxCharNum(_GUIHandle, 5)
	end
	_GUIHandle  = GetWindow(_Handle,"packetsCountEdit")
	if _GUIHandle ~= 0 then
		GUIEditSetMaxCharNum(_GUIHandle, 3)
	end

end

function FamilyWnd_RedPacket.sendBtn_LC()
	local count, total = 0, 0
	total = GUIEditGetInt(FamilyWnd_RedPacket._totalMoneyEdit)
	count = GUIEditGetInt(FamilyWnd_RedPacket._packetsCountEdit)
	if count ~= 0 and total ~= 0 then
		as3.tolua(UI:Lua_SubmitForm("行会", "sendRedPacket", count..";"..total))
		GUIEditGetInt(FamilyWnd_RedPacket._totalMoneyEdit, "")
		GUIEditGetInt(FamilyWnd_RedPacket._packetsCountEdit, "")
	end
end

function FamilyWnd_RedPacket.grabBtn_LC()
	as3.tolua(UI:Lua_SubmitForm("行会", "grabRedPacket", ""))
end

function FamilyWnd_RedPacket.wndClose()
	local wnd = GUIWndFindWindow(0, "FamilyWnd_RedPacket") 
	if wnd == 0 then
		FamilyWnd_RedPacket = nil
	end
end

function FamilyWnd_RedPacket.pgUpBtn_LC(_Handle)
	FamilyWnd_RedPacket.nowLogPage = FamilyWnd_RedPacket.nowLogPage - 1
	FamilyWnd_RedPacket.updateLog()
end

function FamilyWnd_RedPacket.pgDownBtn_LC(_Handle)
	FamilyWnd_RedPacket.nowLogPage = FamilyWnd_RedPacket.nowLogPage + 1
	FamilyWnd_RedPacket.updateLog()
end

function FamilyWnd_RedPacket.updatePgBtn()
	local pgCount = math.ceil(#FamilyWnd_RedPacket.logList_/10)
	if pgCount == 0 then
		pgCount = 1
	end
	GUIEditSetTextM(FamilyWnd_RedPacket._pgEdit, FamilyWnd_RedPacket.nowLogPage.." / "..pgCount)
	
	if FamilyWnd_RedPacket.nowLogPage <= 1 then
		GUIWndSetEnableM(FamilyWnd_RedPacket._pgUpBtn, false)
	else
		GUIWndSetEnableM(FamilyWnd_RedPacket._pgUpBtn, true)
	end
	
	if FamilyWnd_RedPacket.nowLogPage >= pgCount then
		GUIWndSetEnableM(FamilyWnd_RedPacket._pgDownBtn, false)
	else
		GUIWndSetEnableM(FamilyWnd_RedPacket._pgDownBtn, true)
	end
end

--form client
 function FamilyWnd_RedPacket_updateRedPacketAsk()
	local _wnd = GUIWndFindWindow(FamilyWnd._wnd , "FamilyWnd_RedPacket") 
	if _wnd ~= 0 then
		as3.tolua(UI:Lua_SubmitForm("行会", "redPacket_update", ""))
	end
 end
 
 function FamilyWnd_RedPacket_updateRedPacketInfo(redPacketData_)
	if not FamilyWnd_RedPacket then return end
	local selfID = 0
	if CLGetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
		selfID = LuaRet
	end
	
	local count, continue = 0, 0
	for i = 1, #redPacketData_ do
		continue = 0
		if selfID == redPacketData_[i][4] then
			continue = 1
		else
			for j = 1, #redPacketData_[i][3] do
				if redPacketData_[i][3][j] == selfID then
					continue = 1
				end
			end
		end
		if continue == 0 then
			count = count + 1
		end
	end
	if count == 0 then
		GUIWndSetVisible(FamilyWnd_RedPacket._grabBtn, false)
		GUIWndSetVisible(FamilyWnd_RedPacket._noRedPacketImg, true)
	else
		GUIWndSetVisible(FamilyWnd_RedPacket._grabBtn, true)
		GUIWndSetVisible(FamilyWnd_RedPacket._noRedPacketImg, false)
	end
 end
 
 function FamilyWnd_RedPacket_updateRedPacketLog(redPacketLog_)
	if not FamilyWnd_RedPacket then return end
	if not FamilyWnd_RedPacket.logList_ then FamilyWnd_RedPacket.logList_ = {} end
	FamilyWnd_RedPacket.logList_ = redPacketLog_
	FamilyWnd_RedPacket.updateLog()
 end
 
function FamilyWnd_RedPacket_addRedPacketLog(logStr)
	if not FamilyWnd_RedPacket then return end
	if not FamilyWnd_RedPacket.logList_ then FamilyWnd_RedPacket.logList_ = {} end
	local log_ = strsplit(logStr,";")
	table.insert(FamilyWnd_RedPacket.logList_, 1, log_)
	FamilyWnd_RedPacket.updateLog()
end

function FamilyWnd_RedPacket.updateLog()
	local index = 0
	for i = 1, 10 do
		index = (FamilyWnd_RedPacket.nowLogPage-1)*10+i
		GUIRichEditClear(FamilyWnd_RedPacket._redPacketLogRE_[i])
		if FamilyWnd_RedPacket.logList_[index] then
			GUIRichEditAppendString(FamilyWnd_RedPacket._redPacketLogRE_[i], "【"..FamilyWnd_RedPacket.logList_[index][2].."】"..
			l.operate_[(FamilyWnd_RedPacket.logList_[index][1])][1].."#COLORCOLOR_YELLOW#"..FamilyWnd_RedPacket.logList_[index][3].."#COLORCOLOREND#"..l.operate_[(FamilyWnd_RedPacket.logList_[index][1])][2])
		end
	end
	FamilyWnd_RedPacket.updatePgBtn()
end

FamilyWnd_RedPacket.main()