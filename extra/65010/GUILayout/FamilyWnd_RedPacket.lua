FamilyWnd_RedPacket = {}
function FamilyWnd_RedPacket.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"FamilyWnd_RedPacket",1802100004,30,96)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,658, 420)
		GUI:WndSetIsESCClose(_Parent, false)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"redPacketLogTitle",80,3,172,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:EditSetTextM(_GUIHandle,"红包记录")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"totalMoney_f",287,26,75,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294939396)
        GUI:EditSetTextM(_GUIHandle,"发送总元宝:")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"packetsCount_f",287,55,75,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294939396)
        GUI:EditSetTextM(_GUIHandle,"发送红包数:")
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"moneyEditBackImg",1802100006,365,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,149, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"countEditBackImg",1802100006,365,54)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,149, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"totalMoneyEdit",394,26,85,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetBNumber(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"packetsCountEdit",394,55,85,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetBNumber(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"sendBtn",1800000134,545,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_RedPacket.sendBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"发红包")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,70, 37)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"grabBtn",1802100009,377,370)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_RedPacket.grabBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 59)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"noRedPacketImg",1802100008,354,307)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,242, 68)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"tipsBtn",1800000297,257,383)
    if _GUIHandle ~= 0 then
		GUI:WndSetHintWidth(_GUIHandle, 400)
        GUI:WndSetHint(_GUIHandle,"玩家可以向行会成员发送元宝红包。自己不能抢自己的红包。")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 30)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"tipsEdit",287,386,80,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"行会红包说明")
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"pgEditBackImg",1800000279,83,376)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,58, 34)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1800000094,49,384)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_RedPacket.pgUpBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1800000098,155,384)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_RedPacket.pgDownBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"pgEdit",92,381,49,23)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"redPacketLogRE1",7,41,213,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"redPacketLogRE2",7,75,213,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"redPacketLogRE3",7,109,213,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"redPacketLogRE4",7,143,213,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"redPacketLogRE5",7,177,213,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"redPacketLogRE6",7,211,213,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"redPacketLogRE7",7,245,213,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"redPacketLogRE8",7,279,213,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"redPacketLogRE9",7,313,213,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"redPacketLogRE10",7,347,213,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    FamilyWnd_RedPacket.UIInit(_Parent)
end

--UI Logic Code Start
FamilyWnd_RedPacket.localString = {}
local l = FamilyWnd_RedPacket.localString
l.operate_ = {
	{"发出一个","元宝的红包"},
	{"抢到一个","元宝的红包"}
}
FamilyWnd_RedPacket.nowLogPage = 1

function FamilyWnd_RedPacket.UIInit(_Handle)
	FamilyWnd_RedPacket._wnd = _Handle
	FamilyWnd._nowPage = _Handle
	
	UI:Lua_SubmitForm("行会", "redPacket_update", "")
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
		_GUIHandle = GUI:WndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyWnd_RedPacket[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
	FamilyWnd_RedPacket._redPacketLogRE_ = {}
	for i = 1, 10 do
		_GUIHandle = GUI:WndFindChildM(_Handle, "redPacketLogRE"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_RedPacket._redPacketLogRE_[i] = _GUIHandle
		end 
	end
end

function FamilyWnd_RedPacket.sendBtn_LC()
	local count, total = 0, 0
	total = GUI:EditGetInt(FamilyWnd_RedPacket._totalMoneyEdit)
	count = GUI:EditGetInt(FamilyWnd_RedPacket._packetsCountEdit)
	if count ~= 0 and total ~= 0 then
		UI:Lua_SubmitForm("行会", "sendRedPacket", count..";"..total)
		GUI:EditSetTextM(FamilyWnd_RedPacket._totalMoneyEdit, "")
		GUI:EditSetTextM(FamilyWnd_RedPacket._packetsCountEdit, "")
	end
end

function FamilyWnd_RedPacket.grabBtn_LC()
	UI:Lua_SubmitForm("行会", "grabRedPacket", "")
end

function FamilyWnd_RedPacket.wndClose()
	local wnd = GUI:WndFindWindow(0, "FamilyWnd_RedPacket") 
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
	GUI:EditSetTextM(FamilyWnd_RedPacket._pgEdit, FamilyWnd_RedPacket.nowLogPage.." / "..pgCount)
	
	if FamilyWnd_RedPacket.nowLogPage <= 1 then
		GUI:WndSetEnableM(FamilyWnd_RedPacket._pgUpBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_RedPacket._pgUpBtn, true)
	end
	
	if FamilyWnd_RedPacket.nowLogPage >= pgCount then
		GUI:WndSetEnableM(FamilyWnd_RedPacket._pgDownBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_RedPacket._pgDownBtn, true)
	end
end

--form client
 function FamilyWnd_RedPacket_updateRedPacketAsk()
	local _wnd = GUI:WndFindWindow(0 , "FamilyWnd,FamilyWnd_RedPacket") 
	if _wnd ~= 0 then
		UI:Lua_SubmitForm("行会", "redPacket_update", "")
	end
 end
 
 function FamilyWnd_RedPacket_updateRedPacketInfo(redPacketData_)
	if not FamilyWnd_RedPacket then return end
	local selfID = 0
	if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then
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
		GUI:WndSetVisible(FamilyWnd_RedPacket._grabBtn, false)
		GUI:WndSetVisible(FamilyWnd_RedPacket._noRedPacketImg, true)
	else
		GUI:WndSetVisible(FamilyWnd_RedPacket._grabBtn, true)
		GUI:WndSetVisible(FamilyWnd_RedPacket._noRedPacketImg, false)
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
		GUI:RichEditClear(FamilyWnd_RedPacket._redPacketLogRE_[i])
		if FamilyWnd_RedPacket.logList_[index] then
			GUI:RichEditAppendString(FamilyWnd_RedPacket._redPacketLogRE_[i], "#COLORCOLOR_WHITE#【"..FamilyWnd_RedPacket.logList_[index][2].."】"..
			l.operate_[(FamilyWnd_RedPacket.logList_[index][1])][1].."#COLORCOLOR_YELLOW#"..FamilyWnd_RedPacket.logList_[index][3].."#COLORCOLOR_WHITE#"..l.operate_[(FamilyWnd_RedPacket.logList_[index][1])][2])
		end
	end
	FamilyWnd_RedPacket.updatePgBtn()
end

FamilyWnd_RedPacket.main()