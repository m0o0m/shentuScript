RedPacketWnd = {}
RedPacketWnd._wnd = 0
RedPacketWnd._hLV = 0
RedPacketWnd.data = {}
RedPacketWnd.hCurrentWidget = 0
local ui = "<form> <dialog OnInit='RedPacketWnd.UIInit' id='RedPacketWnd' image='1808600037' x='171' y='15' w='756' h='531' esc_close='true' center='true' drag='true' revmsg='true'>"
	.."	<image id='titleImg' image='1808600038' x='356' y='4' w='61' h='33' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='backImg1' image='1808600039' x='38' y='58' w='681' h='452' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='totalMoney_f' x='357' y='80' w='75' h='19' revmsg='true' enable='false' text_color='#FF9304' text='发送总元宝:' font='system'/>"
	.."	<edit id='packetsCount_f' x='357' y='114' w='75' h='19' revmsg='true' enable='false' text_color='#FF9304' text='发送红包数:' font='system'/>"
	.."	<button id='closeBtn' image='1805900080' x='699' y='5' w='34' h='38' OnLButtonClick='RedPacketWnd.closed' revmsg='true' text_color='#C2B6A0'/>"
	.."	<image id='moneyEditBackImg' image='1802100006' x='440' y='77' w='149' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<image id='countEditBackImg' image='1802100006' x='440' y='112' w='149' h='22' check_point='0' revmsg='true' enable='false'/>"
	.."	<edit id='totalMoneyEdit' x='442' y='78' w='144' h='15' type='number'  align='center' revmsg='true' font='system'/>"
	.."	<edit id='packetsCountEdit' x='442' y='113' w='144' h='15' type='number' align='center' revmsg='true' font='system'/>"
	.."	<button id='sendBtn' image='1800000134' x='601' y='85' w='70' h='37' OnLButtonClick='RedPacketWnd.sendBtn_LC' revmsg='true' text='发红包' text_color='#E6D284'/>"
	.."	<edit id='tipsEdit' x='353' y='476' w='80' h='20' revmsg='true' enable='false' text='红包功能说明' font='system'/>"
	.."	<image id='tipsBtn' image='1800000297' x='324' y='471' w='27' h='30' check_point='0' revmsg='true'/>"
	.."	<check id='check1' image='1800000176' x='372' y='156' w='74' h='21' checked='true' OnCheckChange='RedPacketWnd.check' revmsg='true' param='1' text='世界红包' text_color='#CFB360'/>"
	.."	<check id='check2' image='1800000176' x='484' y='156' w='74' h='21' checked='false' OnCheckChange='RedPacketWnd.check' revmsg='true' param='2' enable='false' text='行会红包' text_color='#CFB360'/>"
	.."	<check id='check3' image='1800000176' x='596' y='156' w='74' h='21' checked='false' OnCheckChange='RedPacketWnd.check' revmsg='true' param='3' enable='false' text='组队红包' text_color='#CFB360'/>"
	.."	 <wnd id='listView' x='45' y='65' w='268' h='438' scroll ='true' revmsg='true'>"
	.."	 </wnd>"
	.." </dialog>"
	.."</form>"

function RedPacketWnd.main()
	local handle = GetWindow(nil, "RedPacketWnd")
	if handle ~= 0 then
		GUI:WndClose(handle)
	else
		GenFormByString(ui)
	end
end

--UI Logic Code Start
RedPacketWnd.hCheck = {}
function RedPacketWnd.UIInit(_Handle)
	RedPacketWnd._wnd = _Handle
	RedPacketWnd._hLV = GetWindow(_Handle,"listView")
	UI:Lua_SubmitForm("RedPacket", "RedPacket_getInfo", "")
end


function RedPacketWnd.update(tInfo)
	RedPacketWnd.data = tInfo[1]
	for i = 1, 3 do
		RedPacketWnd.hCheck[i] = GetWindow(RedPacketWnd._wnd,"check"..i)
	end
	local _GUIHandle = GetWindow(RedPacketWnd._wnd,"totalMoneyEdit")
	if 0 ~= _GUIHandle then
		GUI:EditSetCanEdit(_GUIHandle, true)
	end
	_GUIHandle = GetWindow(RedPacketWnd._wnd,"packetsCountEdit")
	if 0 ~= _GUIHandle then
		GUI:EditSetCanEdit(_GUIHandle, true)
	end

	if 0 ~= RedPacketWnd.hCheck[2] then
		if "" ~= tInfo[2] then
			GUI:WndSetEnableM(RedPacketWnd.hCheck[2], true)
			WndSetTextColorM(RedPacketWnd.hCheck[2], nil, MakeARGB(255, 207, 179, 96))
		else
			GUI:WndSetEnableM(RedPacketWnd.hCheck[2], false)
			WndSetTextColorM(RedPacketWnd.hCheck[2], nil, MakeARGB(255, 98, 98, 98))
		end
	end

	if 0 ~= RedPacketWnd.hCheck[3] then
		if tInfo[3] then
			GUI:WndSetEnableM(RedPacketWnd.hCheck[3], true)
			WndSetTextColorM(RedPacketWnd.hCheck[3], nil, MakeARGB(255, 207, 179, 96))
		else
			GUI:WndSetEnableM(RedPacketWnd.hCheck[3], false)
			WndSetTextColorM(RedPacketWnd.hCheck[3], nil, MakeARGB(255, 98, 98, 98))
		end
	end

	if 0 ~= RedPacketWnd._hLV then
		if nil ~= tInfo[1][1] then
			local length = #tInfo[1]
			for i = length, 1, -1 do
				local _GUIHandle = 0
				if 0 == math.ceil(i%2) then
					_GUIHandle = GUI:ImageCreate(RedPacketWnd._hLV, "ContentBack"..i, 1808600045, 0, (length - i)*36)
				else
					_GUIHandle = GUI:ImageCreate(RedPacketWnd._hLV, "ContentBack"..i, 1808600044, 0, (length - i)*36)
				end
				if _GUIHandle ~= 0 then
					GUI:WndSetSizeM(_GUIHandle,30, 30)
					GUI:WndSetParam(_GUIHandle, i)
					GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "RedPacketWnd.grabBtn_LC")
				end
				_GUIHandle = GUI:EditCreate(RedPacketWnd._hLV, "pName"..i, 2, (length - i)*36 + 9, 90, 14)
				if _GUIHandle ~= 0 then
					GUI:EditSetTextM(_GUIHandle, tInfo[1][i][1])
					GUI:EditSetFontCenter(_GUIHandle)
					GUI:WndSetEnableM(_GUIHandle, false)
				end
				_GUIHandle = GUI:EditCreate(RedPacketWnd._hLV, "packetText"..i, 92, (length - i)*36 + 9, 127, 14)
				if _GUIHandle ~= 0 then
					GUI:EditSetTextM(_GUIHandle, "送出的"..tostring(tInfo[1][i][12]).."元宝红包")
					GUI:WndSetEnableM(_GUIHandle, false)
				end
				_GUIHandle = GUI:ButtonCreate(RedPacketWnd._hLV, "grabBtn"..i, 1808600033, 214, (length - i)*36 + 3)
				if _GUIHandle ~= 0 then
					GUI:WndSetSizeM(_GUIHandle,30, 30)
					GUI:WndSetParam(_GUIHandle, i)
					GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "RedPacketWnd.grabBtn_LC")
				end
			end
		end
	end

	local str = GetTipBegin() .. tipAll(200,90) .. tipText("\n1.玩家可以发送世界红包、行会红包和组队红包三种\n2.自己不能抢自己的红包，红包只能发元宝\n3.每个红包时限为30分钟，个数不得超过15个\n4.元宝在有人领取时扣除，请保证身上元宝足够\n5.只有在线玩家才能收到红包", color, "system")..GetTipEnd()
	local handle = GetWindow(RedPacketWnd._wnd,"tipsBtn")
	if 0 ~= handle then
		GUI:WndSetTipInfo(handle, str)
	end

	handle = GetWindow(RedPacketWnd._wnd,"tipsEdit")
	if 0 ~= handle then
		GUI:WndSetCanRevMsg(handle, true)
		GUI:WndSetTipInfo(handle, str)
	end
end

function RedPacketWnd.sendBtn_LC(_Handle)
	RedPacketWnd.hCurrentWidget = _Handle
	local count, total, kinds = 0, 0, 0
	local _GUIHandle = GetWindow(RedPacketWnd._wnd,"totalMoneyEdit")
	if 0 ~= _GUIHandle then
		total = GUI:EditGetInt(_GUIHandle)
		if nil == total then
			total = 0
		end
	end
	_GUIHandle = GetWindow(RedPacketWnd._wnd,"packetsCountEdit")
	if 0 ~= _GUIHandle then
		count = GUI:EditGetInt(_GUIHandle)
		if nil == count then
			count = 0
		end
	end

	for i = 1, #RedPacketWnd.hCheck do
		if GUI:CheckBoxGetCheck(RedPacketWnd.hCheck[i]) then
			kinds = i
			break
		end
	end
	
	if 0 == kinds then
		msg("你必须先选择一个红包类型")
		return ""
	end

	if 0 == count or 0 == total then
		msg("请输入总元宝和红包数")
		return ""
	end
	
	--msg(tostring(total).."   "..tostring(count).."   "..tostring(kinds))
	if 0 ~= count and 0 ~= total and 0 ~= kinds then
		UI:Lua_SubmitForm("RedPacket", "createNewRedPacket", count.."#"..total.."#"..kinds)
	end
end

function RedPacketWnd.grabBtn_LC(_Handle)
	RedPacketWnd.hCurrentWidget = _Handle
	local param = tonumber(GUI:WndGetParam(_Handle))
	if nil ~= RedPacketWnd.data[param] then
		UI:Lua_SubmitForm("RedPacket", "showRedPacket", RedPacketWnd.data[param][2].."#"..RedPacketWnd.data[param][6].."#"..RedPacketWnd.data[param][9])
	end
end

function RedPacketWnd.closed()
	if 0 ~= RedPacketWnd._wnd then
		GUI:WndClose(RedPacketWnd._wnd)
	end
end

function RedPacketWnd.check(_Handle)
	local param = tonumber(GUI:WndGetParam(_Handle))
	if 1 == param then
		GUI:CheckBoxSetCheck(RedPacketWnd.hCheck[2], false)
		GUI:CheckBoxSetCheck(RedPacketWnd.hCheck[3], false)
	elseif 2 == param then
		GUI:CheckBoxSetCheck(RedPacketWnd.hCheck[1], false)
		GUI:CheckBoxSetCheck(RedPacketWnd.hCheck[3], false)
	elseif 3 == param then
		GUI:CheckBoxSetCheck(RedPacketWnd.hCheck[1], false)
		GUI:CheckBoxSetCheck(RedPacketWnd.hCheck[2], false)
	end
end

function RedPacketWnd.MsgUp(msg)
	local color = MakeARGB(255,255,0,0)
	window_msg_up(RedPacketWnd.hCurrentWidget, msg, -220, 10, 30, color, 2)
end

function RedPacketWnd.clearEdit()
	local _GUIHandle = GetWindow(RedPacketWnd._wnd, "totalMoneyEdit")
	if 0 ~= _GUIHandle then
		GUI:EditSetInt(_GUIHandle, 0)
	end
	_GUIHandle = GetWindow(RedPacketWnd._wnd, "packetsCountEdit")
	if 0 ~= _GUIHandle then
		GUI:EditSetInt(_GUIHandle, 0)
	end
end


RedPacketWnd.main()