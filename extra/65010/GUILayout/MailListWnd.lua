MailListWnd = {}
function MailListWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
        _GUIHandle = GUI:ImageCreate(_Parent,"backImg",1807000009,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,662, 504)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
        _GUIHandle = GUI:ImageCreate(_Parent,"backImg2",1807000001,35,55)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,592, 427)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1805900080,605,3)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.Close")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 38)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"wndTitleImg",1807000000,295,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 27)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"listTitle",1807000004,130,65)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
    end
       
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"selAllBtn",1807000005,44,448)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.selAllBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"全选")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"delBtn",1807000005,100,448)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.delBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"删除")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4293317252)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1806700029,158,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.pgBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 22)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1806700033,255,450)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.pgBtn_LC")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,22, 22)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_10",1806700027,180,453)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,75, 18)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"pageEdit",190,449,46,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
        mailCellWnd1_Parent = GUI:WndCreateWnd(_Parent,"mailCellWnd1",0,38,88)
    if mailCellWnd1_Parent ~= 0 then
        GUI:WndSetVisible(mailCellWnd1_Parent, false)
        GUI:WndSetSizeM(mailCellWnd1_Parent,16, 16)
        GUI:WndSetParam(mailCellWnd1_Parent,1)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(mailCellWnd1_Parent,"mailCb",1800000176,"",5,19)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "MailListWnd.mailCb_CC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(mailCellWnd1_Parent,"mailBtn",1802500002,32,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.mailBtn_LC")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,189, 69)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(mailCellWnd1_Parent,"mailRE",40,13,170,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		--RichEditSetEnable(_GUIHandle, "", false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(mailCellWnd1_Parent,"mailItemImg",0,180,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    mailCellWnd2_Parent = GUI:WndCreateWnd(_Parent,"mailCellWnd2",0,38,160)
    if mailCellWnd2_Parent ~= 0 then
        GUI:WndSetVisible(mailCellWnd2_Parent, false)
        GUI:WndSetSizeM(mailCellWnd2_Parent,16, 16)
        GUI:WndSetParam(mailCellWnd2_Parent,2)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(mailCellWnd2_Parent,"mailCb",1800000176,"",5,19)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "MailListWnd.mailCb_CC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(mailCellWnd2_Parent,"mailBtn",1802500002,32,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.mailBtn_LC")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,189, 69)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(mailCellWnd2_Parent,"mailRE",40,13,170,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(mailCellWnd2_Parent,"mailItemImg",0,180,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    mailCellWnd3_Parent = GUI:WndCreateWnd(_Parent,"mailCellWnd3",0,38,232)
    if mailCellWnd3_Parent ~= 0 then
        GUI:WndSetVisible(mailCellWnd3_Parent, false)
        GUI:WndSetSizeM(mailCellWnd3_Parent,16, 16)
        GUI:WndSetParam(mailCellWnd3_Parent,3)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(mailCellWnd3_Parent,"mailCb",1800000176,"",5,19)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "MailListWnd.mailCb_CC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(mailCellWnd3_Parent,"mailBtn",1802500002,32,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.mailBtn_LC")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,189, 69)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(mailCellWnd3_Parent,"mailRE",40,13,170,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(mailCellWnd3_Parent,"mailItemImg",0,180,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    mailCellWnd4_Parent = GUI:WndCreateWnd(_Parent,"mailCellWnd4",0,38,304)
    if mailCellWnd4_Parent ~= 0 then
        GUI:WndSetVisible(mailCellWnd4_Parent, false)
        GUI:WndSetSizeM(mailCellWnd4_Parent,16, 16)
        GUI:WndSetParam(mailCellWnd4_Parent,4)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(mailCellWnd4_Parent,"mailCb",1800000176,"",5,19)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "MailListWnd.mailCb_CC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(mailCellWnd4_Parent,"mailBtn",1802500002,32,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.mailBtn_LC")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,189, 69)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(mailCellWnd4_Parent,"mailRE",40,13,170,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(mailCellWnd4_Parent,"mailItemImg",0,180,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    mailCellWnd5_Parent = GUI:WndCreateWnd(_Parent,"mailCellWnd5",0,38,376)
    if mailCellWnd5_Parent ~= 0 then
        GUI:WndSetVisible(mailCellWnd5_Parent, false)
        GUI:WndSetSizeM(mailCellWnd5_Parent,16, 16)
        GUI:WndSetParam(mailCellWnd5_Parent,5)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(mailCellWnd5_Parent,"mailCb",1800000176,"",5,19)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "MailListWnd.mailCb_CC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(mailCellWnd5_Parent,"mailBtn",1802500002,32,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.mailBtn_LC")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,189, 69)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(mailCellWnd5_Parent,"mailRE",40,13,170,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		--RichEditSetEnable(_GUIHandle, "", false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(mailCellWnd5_Parent,"mailItemImg",0,180,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    detailWnd_Parent = GUI:WndCreateWnd(_Parent,"detailWnd",0,268,50)
    if detailWnd_Parent ~= 0 then
        GUI:WndSetVisible(detailWnd_Parent, false)
        GUI:WndSetSizeM(detailWnd_Parent,16, 16)
    end
    
    
    _GUIHandle = GUI:ImageCreate(detailWnd_Parent,"titleback",1807000003,20,25)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,247, 25)
    end
    
    _GUIHandle = GUI:RichEditCreate(detailWnd_Parent,"title1",20,30,319,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(detailWnd_Parent,"content",20,65,310,210)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(detailWnd_Parent,"item1",1800000133,30,289,44,44)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,44, 44)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(detailWnd_Parent,"item2",1800000133,90,289,44,44)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,44, 44)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(detailWnd_Parent,"item3",1800000133,150,289,44,44)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,44, 44)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(detailWnd_Parent,"item4",1800000133,210,289,44,44)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,44, 44)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(detailWnd_Parent,"item5",1800000133,270,289,44,44)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,44, 44)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(detailWnd_Parent,"tips",55,337,250,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"邮件保存30天，逾期自动删除（包括附件）")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(detailWnd_Parent,"receiveAllBtn",1800000150,133,365)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.receiveAllBtn_LC")
        GUI:WndSetTextM(_GUIHandle,"一键领取")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    goldWnd_Parent = GUI:WndCreateWnd(detailWnd_Parent,"goldWnd",0,25,256)
    if goldWnd_Parent ~= 0 then
        GUI:WndSetSizeM(goldWnd_Parent,16, 16)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(goldWnd_Parent,"receiveBtn1",1802500006,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.receiveItem")
        GUI:WndSetTextM(_GUIHandle,"领取")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,51, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(goldWnd_Parent,"moneyImg",1806600015,57,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(goldWnd_Parent,"money",78,3,50,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetHint(_GUIHandle,"金币")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    ingotWnd_Parent = GUI:WndCreateWnd(detailWnd_Parent,"ingotWnd",0,170,256)
    if ingotWnd_Parent ~= 0 then
        GUI:WndSetSizeM(ingotWnd_Parent,16, 16)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(ingotWnd_Parent,"receiveBtn2",1802500006,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "MailListWnd.receiveItem")
        GUI:WndSetTextM(_GUIHandle,"领取")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,51, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(ingotWnd_Parent,"moneyImg",1800000054,57,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(ingotWnd_Parent,"money",78,3,50,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetHint(_GUIHandle,"元宝")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    MailListWnd.UIInit(_Parent)
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
MailListWnd._mailItemImg_ = {}
MailListWnd._item_ = {}


function MailListWnd.UIInit(_Handle)
	MailListWnd._wndHandle = _Handle
	GUI:WndSetSizeM(MailListWnd._wndHandle, 662, 504)
	GUI:WndSetIsESCClose(MailListWnd._wndHandle, true)
	GUI:WndSetMoveWithLBM(MailListWnd._wndHandle)
	GUI:WndSetMagicUI(MailListWnd._wndHandle,1)
	CenterWnd(MailListWnd._wndHandle)

	GUI:WndRegistScript(MailListWnd._wndHandle, RDWndBaseCL_wnd_close , "MailListWnd.wndClose")
	RegisterUIEvent(LUA_EVENT_MAILLIST, "UI_MailListWnd_Open", MailListWnd.getMailList)		--打开界面接收邮件列表
	RegisterUIEvent(LUA_EVENT_MAILDETAIL, "MailListWnd_newMail", MailListWnd.getMailDetail)				--接受邮件详情
	RegisterUIEvent(LUA_EVENT_MAILATTACHMENTOK, "MailListWnd_receiveItem", MailListWnd.receiveItemDone)	--领取道具成功
	
	local _GUIHandle = 0
	_GUIHandle = GUI:WndFindChildM(_Handle,"delBtn")
	if _GUIHandle ~= 0 then
		MailListWnd._delBtn = _GUIHandle
		GUI:WndSetTextOffset(_GUIHandle, 0, -2)
	end
	
	_GUIHandle = GUI:WndFindChildM(_Handle,"pgUpBtn")
	if _GUIHandle ~= 0 then
		MailListWnd._pgUpBtn = _GUIHandle
	end
	
	_GUIHandle = GUI:WndFindChildM(_Handle,"selAllBtn")
	if _GUIHandle ~= 0 then
		MailListWnd._selAllBtn = _GUIHandle
		GUI:WndSetTextOffset(_GUIHandle, 0, -2)
	end
	
	_GUIHandle = GUI:WndFindChildM(_Handle,"pgDownBtn")
	if _GUIHandle ~= 0 then
		MailListWnd._pgDownBtn = _GUIHandle
	end
	
	_GUIHandle = GUI:WndFindChildM(_Handle,"pageEdit")
	if _GUIHandle ~= 0 then
		MailListWnd._pgEdit = _GUIHandle
	end
	
	local wnd = 0 
	for i = 1, 5 do
		wnd = GUI:WndFindChildM(_Handle, "mailCellWnd"..i)
		if wnd == 0 then break end
		MailListWnd._mailWnd_[i] = wnd
		GUI:WndSetVisible(wnd, false)
		
		_GUIHandle = GUI:WndFindChildM(wnd, "mailCb")
		if _GUIHandle ~= 0 then 
			MailListWnd._mailCb_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(wnd, "mailBtn")
		if _GUIHandle ~= 0 then
			MailListWnd._mailBtn_[i] = _GUIHandle
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
		end
		_GUIHandle = GUI:WndFindChildM(wnd, "mailRE")
		if _GUIHandle ~= 0 then 
			MailListWnd._mailRE_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(wnd, "mailItemImg")
		if _GUIHandle ~= 0 then
			MailListWnd._mailItemImg_[i] = _GUIHandle
		end
	end
	
	wnd = GUI:WndFindChildM(_Handle, "detailWnd")
	if wnd ~= 0 then 
		MailListWnd._detailWnd = wnd
		GUI:WndSetVisible(wnd, false)
		
		_GUIHandle = GUI:WndFindChildM(wnd,"title1")
		if _GUIHandle ~= 0 then
			MailListWnd._title1 = _GUIHandle
			--GUI:RichEditSetCurFont(_GUIHandle, "TitleFont1")
		end
		
		_GUIHandle = GUI:WndFindChildM(wnd,"content")
		if _GUIHandle ~= 0 then
			MailListWnd._content = _GUIHandle
			--GUI:RichEditSetCurFont(_GUIHandle, "TitleFont1")
		end
		
		local mWnd = GUI:WndFindChildM(wnd, "goldWnd")
		if mWnd ~= 0 then
			MailListWnd._gold = mWnd
			_GUIHandle = GUI:WndFindChildM(mWnd, "receiveBtn1")
			if _GUIHandle ~= 0 then
				GUI:WndSetTextOffset(_GUIHandle, 0, -2)
				GUI:WndSetTextM(_GUIHandle, l.receive)
				GUI:WndSetParam(_GUIHandle, 1)
			end
			
			_GUIHandle = GUI:WndFindChildM(mWnd, "money")
			if _GUIHandle ~= 0 then
				MailListWnd._goldEdit = _GUIHandle
			end
		end
		
		mWnd = GUI:WndFindChildM(wnd, "ingotWnd")
		if mWnd ~= 0 then
			MailListWnd._ingot = mWnd
			_GUIHandle = GUI:WndFindChildM(mWnd, "receiveBtn2")
			if _GUIHandle ~= 0 then
				GUI:WndSetTextOffset(_GUIHandle, 0, -2)
				GUI:WndSetTextM(_GUIHandle, l.receive)
			end
			
			_GUIHandle = GUI:WndFindChildM(mWnd, "money")
			if _GUIHandle ~= 0 then
				MailListWnd._ingotEdit = _GUIHandle
			end
		end
		
		for i = 1, 5 do
			_GUIHandle = GUI:WndFindChildM(wnd, "item"..i)
			if _GUIHandle ~= 0 then
				MailListWnd._item_[i] = _GUIHandle
				--GUI:ItemCtrlSetBackImageID(_GUIHandle, 1800000133)
				GUI:WndSetParam(_GUIHandle, i+2)
			end
		end
		
		_GUIHandle = GUI:WndFindChildM(wnd, "receiveAllBtn")
		if _GUIHandle ~= 0 then 
			MailListWnd._receiveAll = _GUIHandle
			GUI:WndSetTextM(_GUIHandle, l.receiveAll)
		end
	end
end

function MailListWnd.getMailList()
	MailListWnd.list_ = LuaParam[1]
	for i = 1, #MailListWnd.list_ do
		MailListWnd.list_[i] = MailListWnd.list_[i]
		MailListWnd.selList_[i] = 0
	end
	
	for i = 1, 5 do
		MailListWnd.fillMailBtn(i)
	end
	MailListWnd.updataPgBtn()
	GUI:WndSetVisible(MailListWnd._detailWnd, false)
end

function MailListWnd.fillMailBtn(i)
	local index = 0 
	local text, name = "", ""
	local stateColor = {"#COLOREND##COLORCOLOR_GREENG#", "#COLOREND##COLORCOLOR_GRAY#"}
	index = (MailListWnd.nowPage-1)*5 + i
	if index > #MailListWnd.list_ then 
		GUI:WndSetVisible(MailListWnd._mailWnd_[i], false)
	else
		GUI:WndSetVisible(MailListWnd._mailItemImg_[i], false)
		GUI:WndSetVisible(MailListWnd._mailWnd_[i], true)
		GUI:RichEditClear(MailListWnd._mailRE_[i])
		local state = 1
		if MailListWnd.list_[index][5] == false then	--true 是未读 false是已读
			state = 2	--已读
			MailListWnd.updataMailBtn(i)
			CL:OpenMail(MailListWnd.list_[index][1])
		end
		if MailListWnd.list_[index][4] ~= "" then
			name = MailListWnd.list_[index][4]
		else
			name = l.sender_system
		end
		text = "#COLORCOLOR_GOLD#"..name..stateColor[state]..l.state[state].."#COLOREND#\n"..
		"#OFFSET<X:0,Y:5>##COLORCOLOR_ORANGE#"..l.remainingTime.."#COLOREND##COLORCOLOR_GOLD#"..MailListWnd.list_[index][3].."#COLOREND#"
		GUI:RichEditAppendString(MailListWnd._mailRE_[i], text)
	end
end

function MailListWnd.pgBtn_LC(_Handle)
	local p = GUI:WndGetParam(_Handle)
	MailListWnd.nowPage = MailListWnd.nowPage + p - 1
	MailListWnd.updataPgBtn()
	MailListWnd.updataCheckBox()
	MailListWnd.updataMailBtn(0)
	for i = 1, 5 do
		MailListWnd.fillMailBtn(i)
	end
	GUI:WndSetVisible(MailListWnd._detailWnd, false)
end

function MailListWnd.updataPgBtn()
	if MailListWnd.nowPage <= 1 then
		GUI:WndSetEnableM(MailListWnd._pgUpBtn, false)
	else
		GUI:WndSetEnableM(MailListWnd._pgUpBtn, true)
	end
	
	if MailListWnd.nowPage*5 >= #MailListWnd.list_ then
		GUI:WndSetEnableM(MailListWnd._pgDownBtn, false)
	else
		GUI:WndSetEnableM(MailListWnd._pgDownBtn, true)
	end
	
	if #MailListWnd.list_ <= 0 then
		GUI:WndSetEnableM(MailListWnd._selAllBtn, false)
		GUI:WndSetEnableM(MailListWnd._delBtn, false)
	else
		GUI:WndSetEnableM(MailListWnd._selAllBtn, true)
		GUI:WndSetEnableM(MailListWnd._delBtn, true)
	end
	local tolpage = math.ceil(#MailListWnd.list_/5)
	if tolpage == 0 then
		tolpage = 1
	end
	GUI:EditSetTextM(MailListWnd._pgEdit, MailListWnd.nowPage.."/"..tolpage)
end

function MailListWnd.updataCheckBox()
	local index = 0
	for i = 1, 5 do
		index = (MailListWnd.nowPage-1)*5 + i
		if index > #MailListWnd.list_ then return end
		if MailListWnd.selList_[index] == 1 then
			GUI:CheckBoxSetCheck(MailListWnd._mailCb_[i], true)
		else
			GUI:CheckBoxSetCheck(MailListWnd._mailCb_[i], false)
		end
	end
end

function MailListWnd.updataMailBtn(i)
	if MailListWnd.selIndex ~= 0 then
		GUI:ButtonSetIsActivePageBtn(MailListWnd._mailBtn_[MailListWnd.selIndex], false)
	end
	if i ~= 0 then
		GUI:ButtonSetIsActivePageBtn(MailListWnd._mailBtn_[i], true)
	end
	MailListWnd.selIndex = i
end

function MailListWnd.mailBtn_LC(_Handle)
	local i = GUI:WndGetParam(_Handle)
	local index = i + (MailListWnd.nowPage-1)*5
	--CL:OpenMail(MailListWnd.list_[index][1])
	MailListWnd.list_[index][5] = false
	MailListWnd.updataMailBtn(i)
	MailListWnd.fillMailBtn(i)
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
	
	MailListWnd.detail_[index] = t_
	MailListWnd.showDetail(index)
end

function MailListWnd.showDetail(i)
	if i == 0 then 
		GUI:WndSetVisible(MailListWnd._detailWnd, false)
		return 
	end
	GUI:WndSetVisible(MailListWnd._detailWnd, true)
	GUI:RichEditClear(MailListWnd._title1)
	GUI:RichEditClear(MailListWnd._content)

	if MailListWnd.detail_[i][4] > 0 then
		GUI:WndSetVisible(MailListWnd._gold, true)
		GUI:EditSetTextM(MailListWnd._goldEdit, tostring(MailListWnd.detail_[i][4]))
	else
		GUI:WndSetVisible(MailListWnd._gold, false)
	end
	
	if MailListWnd.detail_[i][3] > 0 then
		GUI:WndSetVisible(MailListWnd._ingot, true)
		GUI:EditSetTextM(MailListWnd._ingotEdit, tostring(MailListWnd.detail_[i][3]))
	else
		GUI:WndSetVisible(MailListWnd._ingot, false)
	end
	
	for j = 1, 5 do
		if j <= MailListWnd.detail_[i][5] and MailListWnd.detail_[i][6] and MailListWnd.detail_[i][6][j][4] then
			GUI:WndSetVisible(MailListWnd._item_[j], true)

			local bound = nil
			if MailListWnd.detail_[i][6][j][3] == 1 then
				bound = true
			else
				bound = false
			end
			MailListWnd.InitItem(MailListWnd._item_[j], MailListWnd.detail_[i][6][j][1], MailListWnd.detail_[i][6][j][2], bound)
			--if CL:GetItemTemplatePropByID(MailListWnd.detail_[i][6][j][1], ITEM_PROP_KEYNAME) then
				--RDItemCtrlSetGUIDataByKeyName(MailListWnd._item_[j], LuaRet, MailListWnd.detail_[i][6][j][2], bound)
			--end
		else
			GUI:WndSetVisible(MailListWnd._item_[j], false)
		end
	end
	
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

function MailListWnd.receiveItem(_Handle)
	local p = GUI:WndGetParam(_Handle)
	local index = (MailListWnd.nowPage-1)*5 + MailListWnd.selIndex
	CL:AttachmentMail(MailListWnd.list_[index][1], p)
end

function MailListWnd.receiveAllBtn_LC()
	local index = (MailListWnd.nowPage-1)*5 + MailListWnd.selIndex
	for i = 1, 5 do
		if MailListWnd.detail_[index][6][i] and MailListWnd.detail_[index][6][i][4] then
			local freeSiteIdx = CL:PlayerGetPakageFreeSiteIdx()
			if freeSiteIdx > 0 then
				CL:AttachmentMail(MailListWnd.list_[index][1], i+2)
			else
				UI:Lua_ShowTypeMsg(4, "[背包已满]")
				break
			end
		end
	end
	
	if MailListWnd.detail_[index][3] ~= 0 then
		CL:AttachmentMail(MailListWnd.list_[index][1], 2)
	end
	
	if MailListWnd.detail_[index][4] ~= 0 then
		CL:AttachmentMail(MailListWnd.list_[index][1], 1)
	end
end

function MailListWnd.receiveItemDone()
	local index = 0
	for i , v in pairs(MailListWnd.detail_) do
		if v[1] == LuaParam[1] then
			index = i
			break
		end
	end

	if LuaParam[2] == 2 then
		MailListWnd.detail_[index][3] = 0
		GUI:WndSetVisible(MailListWnd._ingot, false)
	elseif LuaParam[2] == 1 then
		MailListWnd.detail_[index][4] = 0
		GUI:WndSetVisible(MailListWnd._gold, false)
	else
		MailListWnd.detail_[index][6][(LuaParam[2]-2)][4] = false
		GUI:WndSetVisible(MailListWnd._item_[(LuaParam[2]-2)], false)
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
			--附加的物品是否 attach
			flag = 1
			break
		end
	end
	
	local i = 0
	i = math.mod(index, 5)
	if i == 0 then i = 5 end
	if flag == 1 then
		GUI:WndSetVisible(MailListWnd._receiveAll, true)
		GUI:WndSetVisible(MailListWnd._mailItemImg_[i], true)
		GUI:WndSetImageID(MailListWnd._mailItemImg_[i], 1802500010)
	else
		GUI:WndSetVisible(MailListWnd._receiveAll, false)
		GUI:WndSetVisible(MailListWnd._mailItemImg_[i], false)
	end
end

function MailListWnd.mailCb_CC(_Handle)
	local _parent = GUI:WndGetParentM(_Handle)
	local index = GUI:WndGetParam(_parent) + (MailListWnd.nowPage-1)*5
	if GUI:CheckBoxGetCheck(_Handle) then
		MailListWnd.selList_[index] = 1
	else
		MailListWnd.selList_[index] = 0
	end	
end

function MailListWnd.selAllBtn_LC(_Handle)
	local value = 0
	if GUI:WndGetText(_Handle) == l.selALL then
		GUI:WndSetTextM(_Handle, l.cancelSelALL)
		value = 1
	else
		GUI:WndSetTextM(_Handle, l.selALL)
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
			CL:DeleteMail(MailListWnd.list_[i][1])
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
	if MailListWnd.nowPage < 1 then MailListWnd.nowPage = 1 end

	for i = 1, 5 do
		if ((MailListWnd.nowPage-1)*5 + i) == index and MailListWnd.selIndex ~= 0 then
			MailListWnd.updataMailBtn(i)
		end
		MailListWnd.fillMailBtn(i)
	end
    local uih = GetWindow(MailListWnd._wndHandle,"selAllBtn")
    if uih ~= 0 then
        GUI:WndSetTextM(uih, l.selALL)
    end
	MailListWnd.updataCheckBox()
	MailListWnd.updataPgBtn()
end

function MailListWnd.wndClose()
	UnRegisterUIEvent(LUA_EVENT_MAILLIST, "UI_MailListWnd_Open")
	UnRegisterUIEvent(LUA_EVENT_MAILDETAIL, "MailListWnd_newMail")
	UnRegisterUIEvent(LUA_EVENT_MAILATTACHMENTOK, "MailListWnd_receiveItem")
	MailListWnd = nil
end

function MailListWnd.Close(_Handle,_Param)
	GUI:WndClose(MailListWnd._wndHandle)
end

MailListWnd.main()

