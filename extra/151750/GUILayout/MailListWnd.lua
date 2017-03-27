MailListWnd = {}
MailListWnd.localString = {}
local l = MailListWnd.localString
l.sender = "发件人："
l.sender_system = "系统"
l.time = "发件时间："
l.remainingTime = "剩余时间："
l.state = {" （未读）", " （已读）"}

MailListWnd.WndHandle = 0
MailListWnd.ClipWndHandle = 0
MailListWnd.selIndex = -1
MailListWnd._title1 = 0
MailListWnd._content = 0
MailListWnd._mailNum_ = 0
MailListWnd._itemWnd = 0
MailListWnd._itemWnd2 = 0
MailListWnd._gold = 0
MailListWnd._ingot = 0
MailListWnd._receive = 0
MailListWnd._itemTitle = 0
MailListWnd._delete = 0
MailListWnd.allReceive = 0
MailListWnd.retSetIndex = 0
MailListWnd.allReceiveFlag = 0



MailListWnd.list_ = {}
MailListWnd.retSet = {}
MailListWnd.detail_ = {}
MailListWnd._mailWnd_ = {}
MailListWnd._mailRE_ = {}
MailListWnd._mailItemImg_ = {}
MailListWnd._mailSign_ = {}
MailListWnd._item_ = {}
MailListWnd._itemB_ = {}


function MailListWnd.main()
	MailListWnd.UIInit()
end

--UI Logic Code Start
function MailListWnd.UIInit()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	--大背景
	MailListWnd.WndHandle = _Parent
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
	end

	--第二层背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",0,17,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX - 34, _DeviceSizeY - 80)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300025, 1850300027, 1850300031, 1850300033, 1850300029, 1850300026, 1850300032, 1850300028, 1850300030)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "MailListWnd.closeWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end

	--左边背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1", 0, 32, 80)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,448, 434)
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
	end

	--右边背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage2", 0, 500, 80)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,600, 434)
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
	end

	--右边中间背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage3", 0, 512, 122)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,574, 316)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
	end

	_GUIHandle = GUI:WndCreateWnd(_Parent,"DetailWnd", 0, 500, 80)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,600, 434)
		GUI:WndSetVisible(_GUIHandle, false)

		MailListWnd._detailWnd = _GUIHandle
	end

	_GUIHandle = GUI:WndCreateWnd(MailListWnd._detailWnd,"ItemWnd", 0, 26, 275)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,550, 80)
		MailListWnd._itemWnd = _GUIHandle
	end
	
	_GUIHandle = GUI:WndCreateWnd(MailListWnd._itemWnd,"ItemWnd2", 0, 400, 0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,200, 80)
		MailListWnd._itemWnd2 = _GUIHandle
	end

	_GUIHandle = GUI:EditCreate(_Parent,"MailNumEdit",81,100,100,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle, "邮件数量:")
	end

	_GUIHandle = GUI:EditCreate(_Parent, "MailNum", 180, 100, 100, 15)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,195,185,164))
		GUI:EditSetTextM(_GUIHandle, "0")
		MailListWnd._mailNum_ = _GUIHandle
	end

	_GUIHandle = GUI:EditCreate(_Parent,"MailTipEdit",81,130,200,15)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,255,0,0))
		GUI:EditSetTextM(_GUIHandle, "邮件满将删除最旧邮件")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"AllGetDelBtn",1850000307,330,104)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:WndSetTextM(_GUIHandle, "一键领取")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "MailListWnd.receiveAllBtn_LC")
	end

	_GUIHandle = GUI:ImageCreate(MailListWnd._detailWnd,"TitleImage",1850500021,110,4)

	_GUIHandle = GUI:ImageCreate(MailListWnd._detailWnd,"LineImage",1850500023,58,256)

	_GUIHandle = GUI:RichEditCreate(MailListWnd._detailWnd,"TitleEdit",60,18,500,15)
	if _GUIHandle ~= 0 then
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:RichEditAppendString(_GUIHandle, "邮件的标题")
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		MailListWnd._title1 = _GUIHandle
	end

	_GUIHandle = GUI:RichEditCreate(MailListWnd._detailWnd, "MailText", 39, 56, 532, 171)
	if _GUIHandle ~= 0 then
		GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255,195,185,164))
		GUI:RichEditAppendString(_GUIHandle, "邮件的内容")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		MailListWnd._content = _GUIHandle
	end

	_GUIHandle = GUI:EditCreate(MailListWnd._detailWnd, "TitleEdit2", 153, 237, 300, 15)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:EditSetTextM(_GUIHandle, "附件道具")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
		MailListWnd._itemTitle = _GUIHandle
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end

	_GUIHandle = GUI:ButtonCreate(MailListWnd._detailWnd,"GUI_OPEN",1850000307,374,370)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:WndSetTextM(_GUIHandle, "领取附件")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "MailListWnd.receiveBtn_LC")
		MailListWnd._receive = _GUIHandle
	end

	_GUIHandle = GUI:ButtonCreate(MailListWnd._detailWnd,"Mail_DELETE",1850000307,118,370)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,243,185,117))
		GUI:WndSetTextM(_GUIHandle, "删除邮件")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "MailListWnd.deleteConfirm")
		MailListWnd._delete = _GUIHandle
	end

	_GUIHandle = GUI:ImageCreate(MailListWnd._itemWnd,"itemBkg0",1850500016,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._itemB_[1] = _GUIHandle
	end

	_GUIHandle = GUI:ItemCtrlCreate(MailListWnd._itemWnd,"ITEM0",0,3,4,60,60)
	if _GUIHandle ~= 0 then
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._item_[1] = _GUIHandle
	end

	_GUIHandle = GUI:ImageCreate(MailListWnd._itemWnd,"itemBkg1",1850500016,80,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._itemB_[2] = _GUIHandle
	end

	_GUIHandle = GUI:ItemCtrlCreate(MailListWnd._itemWnd,"ITEM1",0,83,4,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._item_[2] = _GUIHandle
	end

	_GUIHandle = GUI:ImageCreate(MailListWnd._itemWnd,"itemBkg2",1850500016,160,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._itemB_[3] = _GUIHandle
	end

	_GUIHandle = GUI:ItemCtrlCreate(MailListWnd._itemWnd,"ITEM2",0,163,4,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._item_[3] = _GUIHandle
	end

	_GUIHandle = GUI:ImageCreate(MailListWnd._itemWnd,"itemBkg3",1850500016,240,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._itemB_[4] = _GUIHandle
	end

	_GUIHandle = GUI:ItemCtrlCreate(MailListWnd._itemWnd,"ITEM3",0,243,4,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._item_[4] = _GUIHandle
	end

	_GUIHandle = GUI:ImageCreate(MailListWnd._itemWnd,"itemBkg4",1850500016,320,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._itemB_[5] = _GUIHandle
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(MailListWnd._itemWnd,"ITEM4",0,323,4,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._item_[5] = _GUIHandle
	end

	_GUIHandle = GUI:ImageCreate(MailListWnd._itemWnd2,"itemBkg5",1850500016,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._gold = _GUIHandle
		_GUIHandle = GUI:ImageCreate(_GUIHandle,"goldIcon",1990020896,3,0)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,68, 68)
		end
	end

	_GUIHandle = GUI:EditCreate(MailListWnd._gold, "goldEdit", 5, 43, 100, 22)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,238,212,75))
		GUI:WndSetEnableM(_GUIHandle, false)
		MailListWnd._goldEdit = _GUIHandle
	end

	_GUIHandle = GUI:ImageCreate(MailListWnd._itemWnd2,"itemBkg6",1850500016,80,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:WndSetVisible(_GUIHandle, false)
		MailListWnd._ingot = _GUIHandle
		_GUIHandle = GUI:ImageCreate(_GUIHandle,"ingotIcon",1990040423,3,0)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,68, 68)
		end
	end

	_GUIHandle = GUI:EditCreate(MailListWnd._ingot, "ingotEdit", 5, 43, 100, 22)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,238,212,75))
		GUI:WndSetEnableM(_GUIHandle, false)
		MailListWnd._ingotEdit = _GUIHandle
	end

	local _ClipWndHandle = GUI:WndCreateWnd(_Parent,"MailClipWnd",0,40,155)
	if _ClipWndHandle then
		GUI:WndSetFlagsM(_ClipWndHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(_ClipWndHandle, 432, 345)
		MailListWnd.ClipWndHandle = _ClipWndHandle
	end

	RegisterUIEvent(LUA_EVENT_MAILLIST, "UI_MailListWnd_Open", MailListWnd.getMailList)		--打开界面接收邮件列表
	RegisterUIEvent(LUA_EVENT_MAILDETAIL, "MailListWnd_newMail", MailListWnd.getMailDetail)				--接受邮件详情
	RegisterUIEvent(LUA_EVENT_MAILATTACHMENTOK, "MailListWnd_receiveItem", MailListWnd.receiveItemDoneRet)	--领取道具成功
end

function MailListWnd.closeWnd(_handle)
	GUI:WndClose(MailListWnd.WndHandle)
end

function MailListWnd.getMailList()
	MailListWnd.list_ = LuaParam[1]
	MailListWnd.dynamicCreateBtn(#MailListWnd.list_)
	for i = 1, #MailListWnd.list_ do
		MailListWnd.fillMailBtn(i)
	end
	GUI:EditSetTextM(MailListWnd._mailNum_, ""..#MailListWnd.list_)
end

function MailListWnd.fillMailBtn(i)
	local index = i
	local text, name = "", ""
	local stateColor = {"#COLORCOLOR_GREENG#", "#COLORCOLOR_GRAY#"}
	if nil ~= MailListWnd.list_[index] then
		GUI:WndSetVisible(MailListWnd._mailWnd_[index], true)
		GUI:RichEditClear(MailListWnd._mailRE_[index])
		GUI:WndSetVisible(MailListWnd._mailSign_[index], false)
		local state = 1
		if not MailListWnd.list_[index][5] then	--true 是未读 false是已读
			state = 2	--已读
		end
		if MailListWnd.list_[index][4] ~= "" then
			name = MailListWnd.list_[index][4]
		else
			name = l.sender_system
		end
		if 2 == state then
			ImageSetImageID(MailListWnd._mailItemImg_[index], nil, 1850600099)
		else
			ImageSetImageID(MailListWnd._mailItemImg_[index], nil, 1850600098)
			GUI:WndSetVisible(MailListWnd._mailSign_[index], true)
		end

		text = "#COLORCOLOR_GOLD#"..name..stateColor[state]..l.state[state].."#COLOREND#\n"..
		"#OFFSET<X:0,Y:5>##COLORCOLOR_ORANGE#"..l.remainingTime.."#COLOREND##COLORCOLOR_GOLD#"..MailListWnd.list_[index][3].."#COLOREND#"
		GUI:RichEditAppendString(MailListWnd._mailRE_[index], text)
	end
end

function MailListWnd.mailBtn_LC(_Handle)
	local index = GUI:WndGetParam(_Handle)
	MailListWnd.list_[index][5] = false
	if -1 ~= MailListWnd.selIndex then
		local _GUIHandle = GUI:WndFindWindow(MailListWnd.ClipWndHandle, "Mail"..MailListWnd.selIndex)
		if 0 ~= _GUIHandle then
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
		end
	end
	GUI:ButtonSetIsActivePageBtn(_Handle, true)
	MailListWnd.selIndex = index
	MailListWnd.allReceiveFlag = 0
	CL:OpenMail(MailListWnd.list_[MailListWnd.selIndex][1])
end

function MailListWnd.getMailDetail()
	--程序每次收到请求后都会打开MailWnd，现在不需要这个窗口
	local _GUIHandle = GUI:WndFindWindow(0, "MailWnd")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
	end
	local t_ = LuaParam[1]
	local index = 0
	for i = 1, #MailListWnd.list_ do
		if MailListWnd.list_[i][1] == t_[1] then
			index = i
			break
		end
	end
	if t_[6] then
		t_[6] = t_[6]
		for j = 1, #t_[6] do
			t_[6][j] = t_[6][j]
		end
	end
	if 0 ~= index then
		MailListWnd.detail_[index] = t_
		MailListWnd.fillMailBtn(index)
	end

	--MailListWnd.selIndex 不等于0说明当前有查看某邮件的详细信息
	if 0 ~= MailListWnd.selIndex then
		MailListWnd.showDetail(MailListWnd.selIndex)
	end
	--MailListWnd.allReceive 不等于0说明点的是一键领取按钮
	if 1 == MailListWnd.allReceiveFlag then
		MailListWnd.allReceive = index
		MailListWnd.receiveBtn_LC()
	end
end

function MailListWnd.showDetail(i)
	if i == 0 then
		GUI:WndSetVisible(MailListWnd._detailWnd, false)
		return
	end

	GUI:WndSetVisible(MailListWnd._delete, true)
	GUI:WndSetVisible(MailListWnd._itemTitle, false)
	GUI:WndSetVisible(MailListWnd._detailWnd, true)
	GUI:RichEditClear(MailListWnd._title1)
	GUI:RichEditClear(MailListWnd._content)
	local attachmentNum = 0
	if MailListWnd.detail_[i][4] > 0 then
		attachmentNum = attachmentNum + 1
		GUI:WndSetVisible(MailListWnd._gold, true)
		GUI:WndSetVisible(MailListWnd._itemTitle, true)
		GUI:WndSetVisible(MailListWnd._goldEdit, true)
		GUI:EditSetTextM(MailListWnd._goldEdit, tostring(MailListWnd.detail_[i][4])) --金币
		local temp = tostring(MailListWnd.detail_[i][4])
		GUI:WndSetPosM(MailListWnd._goldEdit, (6 - string.len(temp)) * 10 + 5, 43)
	else
		GUI:WndSetVisible(MailListWnd._gold, false)
		GUI:WndSetVisible(MailListWnd._itemTitle, false)
		GUI:WndSetVisible(MailListWnd._goldEdit, false)
	end
	if MailListWnd.detail_[i][3] > 0 then
		attachmentNum = attachmentNum + 1
		GUI:WndSetVisible(MailListWnd._ingot, true)
		GUI:WndSetVisible(MailListWnd._itemTitle, true)
		GUI:WndSetVisible(MailListWnd._ingotEdit, true)
		GUI:EditSetTextM(MailListWnd._ingotEdit, tostring(MailListWnd.detail_[i][3])) --元宝
		local temp = tostring(MailListWnd.detail_[i][3])
		GUI:WndSetPosM(MailListWnd._ingotEdit, (6 - string.len(temp)) * 10 + 5, 43)
	else
		GUI:WndSetVisible(MailListWnd._ingot, false)
		GUI:WndSetVisible(MailListWnd._itemTitle, false)
		GUI:WndSetVisible(MailListWnd._ingotEdit, false)
	end
	
	if 1 == attachmentNum and 0 < MailListWnd.detail_[i][3] then
		GUI:WndSetPosM(MailListWnd._ingot, 0, 0)
	else 
		GUI:WndSetPosM(MailListWnd._ingot, 80, 0)
	end
	GUI:WndSetPosM(MailListWnd._itemWnd2, MailListWnd.detail_[i][5]*80 , 0)

	for j = 1, 5 do
		if j <= MailListWnd.detail_[i][5] and MailListWnd.detail_[i][6] and MailListWnd.detail_[i][6][j][4] then
			GUI:WndSetVisible(MailListWnd._itemTitle, true)
			GUI:WndSetVisible(MailListWnd._item_[j], true)
			GUI:WndSetVisible(MailListWnd._itemB_[j], true)
			local bound = nil
			if MailListWnd.detail_[i][6][j][3] == 1 then
				bound = true
			else
				bound = false
			end
			MailListWnd.InitItem(MailListWnd._item_[j], MailListWnd.detail_[i][6][j][1], MailListWnd.detail_[i][6][j][2], bound)
		else
			GUI:WndSetVisible(MailListWnd._item_[j], false)
			GUI:WndSetVisible(MailListWnd._itemB_[j], false)
		end
	end
	attachmentNum = attachmentNum + MailListWnd.detail_[i][5]

	--根据道具数量做偏移
	--GUI:WndSetPosM(MailListWnd._itemWnd, 26 + (7 - attachmentNum) * 40, 275)
	local text, name = "", ""
	if MailListWnd.list_[i][4] == "" or MailListWnd.list_[i][4] == nil then
		name = l.sender_system
	else
		name = MailListWnd.list_[i][4]
	end
	text = "#COLORCOLOR_ORANGE#"..l.sender.."#COLOREND##COLORCOLOR_GOLD#"..name.."          #COLOREND##COLORCOLOR_ORANGE#"..l.time.."#COLOREND##COLORCOLOR_GOLD#"..MailListWnd.list_[i][2].."#COLOREND#"
	GUI:RichEditAppendString(MailListWnd._title1, text)
	GUI:RichEditAppendString(MailListWnd._content, MailListWnd.detail_[i][2])
	MailListWnd.checkItem(i)
end

function MailListWnd.InitItem(_WndHandle, tmpId, amount, bound)
	local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)
	if 0 ~= _ItemDataHandle then
		if CL:GetItemTemplatePropByID(tmpId, ITEM_PROP_TIPSICON) then
			LuaArg = LuaRet
			CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
		end
		if CL:GetItemTemplatePropByID(tmpId, ITEM_PROP_ID) then
			LuaArg = LuaRet
			CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID)
		end
		LuaArg = true
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)
		LuaArg = amount
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
		LuaArg = bound
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ISSHOWBIND)
	end
end

function MailListWnd.receiveAllBtn_LC()
	--领取所有邮件附件
	MailListWnd.allReceiveFlag = 1 --置1表示一键领取
	for i = 1,#MailListWnd.list_ do
		MailListWnd.list_[i][5] = false
		CL:OpenMail(MailListWnd.list_[i][1])
	end
end

function MailListWnd.receiveBtn_LC()
	--msg("MailListWnd.allReceive = ".. MailListWnd.allReceive)
	-- MailListWnd.allReceive 不为0就是一键领取 否则为领取奖励
	local index = 0
	if 1 == MailListWnd.allReceiveFlag then
		index = MailListWnd.allReceive
	else
		index = MailListWnd.selIndex
	end
	local itemNum = 0
	local bagSize = 0
	if CL:GetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_0) then
		bagSize = bagSize + LuaRet
	end
	if CL:GetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_1) then
		bagSize = bagSize + LuaRet
	end
	if CL:GetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_2) then
		bagSize = bagSize + LuaRet
	end
	if CL:GetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_3) then
		bagSize = bagSize + LuaRet
	end
	if CL:GetPlayerSelfProperty32(ROLE_PROP32_BAG_SIZE_4) then
		bagSize = bagSize + LuaRet
	end
	if CL:GetPackageItemGUIDList() then
		itemNum = #LuaRet
	end
	
	local reqNum = 0
	for j = 1, MailListWnd.detail_[index][5] do
		if MailListWnd.detail_[index][6][j][4] then
			reqNum = reqNum + 1
		end
	end
	if reqNum > bagSize - itemNum then
		return MessageBox(0, "背包已满", nil, nil, false)
	end
	--领取物品
	for i = 1, 5 do
		if MailListWnd.detail_[index][6][i] and MailListWnd.detail_[index][6][i][4] then
			local freeSiteIdx = CL:PlayerGetPakageFreeSiteIdx()
			if -1 ~= freeSiteIdx then
				CL:AttachmentMail(MailListWnd.list_[index][1], i + 2)
			else
				UI:Lua_ShowTypeMsg(4, "[背包已满]")
				break
			end
		end
	end

	--领取元宝
	if MailListWnd.detail_[index][3] ~= 0 then
		CL:AttachmentMail(MailListWnd.list_[index][1], 2)
	end

	--领取金币
	if MailListWnd.detail_[index][4] ~= 0 then
		CL:AttachmentMail(MailListWnd.list_[index][1], 1)
	end
end

function MailListWnd.receiveItemDoneRet()
	MailListWnd.retSetIndex = MailListWnd.retSetIndex + 1
	MailListWnd.retSet[MailListWnd.retSetIndex] = LuaParam
	MailListWnd.checkReceiveItem()
end

function MailListWnd.checkReceiveItem()
	--[[for i = 1, MailListWnd.retSetIndex do
		for j = 1, #MailListWnd.detail_ do
			if MailListWnd.detail_[j][1] == MailListWnd.retSet[MailListWnd.retSetIndex][1] then
				if MailListWnd.retSet[MailListWnd.retSetIndex][2] == 2 then
					MailListWnd.detail_[j][3] = 0
					GUI:WndSetVisible(MailListWnd._ingot, false)
				elseif MailListWnd.retSet[MailListWnd.retSetIndex][2] == 1 then
					MailListWnd.detail_[j][4] = 0
					GUI:WndSetVisible(MailListWnd._gold, false)
				else
					MailListWnd.detail_[j][6][(MailListWnd.retSet[MailListWnd.retSetIndex][2]-2)][4] = false
					GUI:WndSetVisible(MailListWnd._item_[(MailListWnd.retSet[MailListWnd.retSetIndex][2]-2)], false)
				end
				MailListWnd.checkItem(j)
			end
		end
	end--]]
		if 0 ~= MailListWnd.selIndex then
		CL:OpenMail(MailListWnd.list_[MailListWnd.selIndex][1])
		--MailListWnd.checkItem(MailListWnd.selIndex)
		--MailListWnd.showDetail(MailListWnd.selIndex)
		end
end

function MailListWnd.delBtn_LC()
	local index = MailListWnd.selIndex
	MailListWnd.showDetail(0)
	local oldLenth = #MailListWnd.list_
	CL:DeleteMail(MailListWnd.list_[index][1])
	table.remove(MailListWnd.list_, index)
	table.remove(MailListWnd.detail_, index)
	for i = 1, #MailListWnd.list_ do
		MailListWnd.fillMailBtn(i)
	end
	GUI:WndSetVisible(MailListWnd._mailWnd_[oldLenth], false)
	GUI:EditSetTextM(MailListWnd._mailNum_, ""..#MailListWnd.list_)
	if -1 ~= MailListWnd.selIndex then
		local _GUIHandle = GUI:WndFindWindow(MailListWnd.ClipWndHandle, "Mail"..MailListWnd.selIndex)
		if 0 ~= _GUIHandle then
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
		end
	end
end

function MailListWnd.checkItem(index)
	if 0 ~= MailListWnd.selIndex then
		local flag = 0
		if MailListWnd.detail_[index][3] ~= 0 or MailListWnd.detail_[index][4] ~= 0 then
			flag = 1
		end

		for j = 1, 5 do
			if j <= MailListWnd.detail_[index][5] and MailListWnd.detail_[index][6] and MailListWnd.detail_[index][6][j][4] then
				--附加的物品是否 attach
				flag = 1
				break
			end
		end

		
		local i = 0
		i = math.mod(index, 5)
		if i == 0 then i = 5 end
		if flag == 1 then
			GUI:WndSetVisible(MailListWnd._receive, true)
		else
			GUI:WndSetVisible(MailListWnd._receive, false)
		end
	end
end

function MailListWnd.dynamicCreateBtn(mailNum)
	for i = 1, mailNum do
		local j = mailNum - i + 1
		_GUIHandle = GUI:ButtonCreate(MailListWnd.ClipWndHandle, "Mail"..i,1850500012,0,0 + 115 * (i - 1))
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,433, 118)
			GUI:WndSetParam(_GUIHandle, i)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "MailListWnd.mailBtn_LC")
			MailListWnd._mailWnd_[i] = _GUIHandle
			GUI:WndSetVisible(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(MailListWnd._mailWnd_[i],"MailItemBak"..i,1850400004,49,24)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,66, 66)
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ImageCreate(MailListWnd._mailWnd_[i], "MailIcon"..i,1850600098,57,24)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,49, 57)
			GUI:WndSetEnableM(_GUIHandle, false)
			MailListWnd._mailItemImg_[i] = _GUIHandle
		end

		_GUIHandle = GUI:RichEditCreate(MailListWnd._mailWnd_[i], "MailType"..i, 185, 33, 300, 40)
		if _GUIHandle ~= 0 then
			GUI:RichEditSetDefaultTextColor(_GUIHandle, MakeARGB(255,243,185,117))
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetCanRevMsg(_GUIHandle, false)
			MailListWnd._mailRE_[i] = _GUIHandle
		end

		_GUIHandle = GUI:ImageCreate(MailListWnd._mailWnd_[i], "MailSign"..i,1850600017,37,13)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,27, 27)
			GUI:WndSetEnableM(_GUIHandle, false)
			MailListWnd._mailSign_[i] = _GUIHandle
		end

		_GUIHandle = GUI:ImageCreate(MailListWnd._mailWnd_[i], "MailLine"..i,1850500022,124,53)
		if _GUIHandle ~= 0 then
			GUI:WndSetSizeM(_GUIHandle,279, 6)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
	end
end




function MailListWnd.deleteConfirm()
	local reqNum = 0

	for j = 1, MailListWnd.detail_[MailListWnd.selIndex][5] do
		if MailListWnd.detail_[MailListWnd.selIndex][6][j][4] then
			reqNum = reqNum + 1
		end
	end

	if reqNum > 0 then
		MessageBox(1, "邮件中有未领取的附件也将一并删除，确定要删除此邮件吗？", "MailListWnd.delBtn_LC()", nil, false)
	else 
		MailListWnd.delBtn_LC()
	end
end

MailListWnd.main()