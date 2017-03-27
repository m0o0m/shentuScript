SpecialGift = {}
function SpecialGift.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
        _Parent = GUI:WndCreateWnd(_Parent,"SpecialGift",0,177,57)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1803000001,0,144)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,636, 349)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GiftBoxImg",1803000031,0,185)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,278, 267)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GiftBtn1",1804900007,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "SpecialGift.selectGift")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,157, 144)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GiftBtn2",1804900011,159,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "SpecialGift.selectGift")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,157, 144)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GiftBtn3",1804900015,318,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "SpecialGift.selectGift")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,157, 144)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GiftBtn4",1804900019,477,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "SpecialGift.selectGift")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,157, 144)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GiftEditBackImg1",1804900032,0,105)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,158, 36)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GiftEditBackImg2",1804900032,159,105)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,158, 36)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GiftEditBackImg3",1804900032,318,105)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,158, 36)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GiftEditBackImg4",1804900032,477,105)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,158, 36)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GiftEditImg1",1804900027,50,111)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,103, 30)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GiftEditImg2",1804900028,211,111)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,103, 30)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GiftEditImg3",1804900029,370,111)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,103, 30)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GiftEditImg4",1804900030,525,111)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,103, 30)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GiftImage",1803000002,240,185)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,402, 60)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"InfoEdit",277,199,230,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291543440)
        GUI:EditSetTextM(_GUIHandle,"花费          即可获得")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"costEdit",302,199,70,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294967040)
        GUI:EditSetTextM(_GUIHandle,"88888元宝")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"GiftNameEdit",420,199,72,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294967040)
        GUI:EditSetTextM(_GUIHandle,"无敌礼包")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GetRewardsBtn",1803000003,366,406)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "SpecialGift.award")
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 59)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg1",1800000384,333,259)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 64)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg2",1800000384,403,259)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 64)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg3",1800000384,473,259)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 64)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg4",1800000384,297,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 64)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg5",1800000384,367,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 64)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg6",1800000384,437,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 64)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg7",1800000384,507,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 64)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell1",0,337,263,56,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 56)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell2",0,407,263,56,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 56)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell3",0,477,263,56,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 56)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell4",0,301,334,56,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 56)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell5",0,371,334,56,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 56)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell6",0,441,334,56,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 56)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCell7",0,511,334,56,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,56, 56)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    SpecialGift.UIInit(_Parent)
end

--UI Logic Code Start
SpecialGift.WndHandle = 0
SpecialGift.SelectIndex = 0
function SpecialGift.UIInit(_Handle)
	SpecialGift.WndHandle=_Handle
	UI:Lua_SubmitForm("开服活动","get_gift_info", "1")
end

SpecialGift.info = {}

function SpecialGift.showInfo(_Ret)
	SpecialGift.info=_Ret
	local _GUIHandle = GUI:WndFindChildM(SpecialGift.WndHandle, "GiftBtn1")
	if _GUIHandle ~= 0 then
		SpecialGift.selectGift(_GUIHandle)
	end
end

function SpecialGift.selectGift(_Handle)
	local param = GUI:WndGetParam(_Handle)
	SpecialGift.SelectIndex = param
	local _GUIHandle = 0
	for i = 1, 4 do
		_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GiftBtn"..i)
		if i == param then
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)
		else
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
		end
	end
	_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "costEdit")
	GUI:EditSetTextM(_GUIHandle, SpecialGift.info[2][param].."元宝")
	_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GiftNameEdit")
	GUI:EditSetTextM(_GUIHandle, SpecialGift.info[1][param])
	_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
	if SpecialGift.info[3][param] ~= 1 then
		GUI:WndSetEnableM(_GUIHandle, true)
	else
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	local award={}
	for i = 1, #SpecialGift.info[4][param] do
		award=SpecialGift.info[4][param][i]
		_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "ItemCell"..i)
		RDItemCtrlSetGUIDataByKeyName(_GUIHandle, award[1], award[2], award[3])
	end
end

function SpecialGift.award(_Handle)
	local _GUIHandle = GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
	GUI:WndSetEnableM(_GUIHandle, false)
	UI:Lua_SubmitForm("开服活动","get_gift_award", ""..SpecialGift.SelectIndex)
end

function SpecialGift.awardBack(_State,_Index)
	local _GUIHandle = 0
	if _State == 1 then
		SpecialGift.info[3][_Index] = 1
		if _Index == SpecialGift.SelectIndex then
			_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
			GUI:WndSetEnableM(_GUIHandle, false)
		end
	else
		if _Index == SpecialGift.SelectIndex then
			_GUIHandle=GUI:WndFindChildM(SpecialGift.WndHandle, "GetRewardsBtn")
			GUI:WndSetEnableM(_GUIHandle, true)
		end
	end
end

SpecialGift.main()