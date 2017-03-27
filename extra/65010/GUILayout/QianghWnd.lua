QianghWnd = {}
function QianghWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"QianghWnd",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"fireMagic",3020201000,37,52)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,150, 150)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item_image",1806500008,187,106)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,105, 94)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item",0,209,125,60,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item_magic",0,209,124)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xingback_image",1802400024,71,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,343, 25)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing1",1806700025,99,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing2",1806700025,122,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing3",1806700025,146,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing4",1806700025,170,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing5",1806700025,194,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing6",1806700025,219,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing7",1806700025,244,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing8",1806700025,268,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing9",1806700025,292,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing10",1806700025,316,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing11",1806700025,341,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xing12",1806700025,365,202)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"jia",1802400030,373,161)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "QianghWnd.jia")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,30, 30)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
        GUI:ButtonSetShine(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"gong_image1",1802400023,64,233)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,146, 81)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"gong_image2",1802400023,266,233)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,146, 81)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit_gong2",69,236,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit_gon2",268,235,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"gong_s2",125,239,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"gong_2",325,238,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278255361)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit_gong1",69,258,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit_gon1",268,257,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"gong_s1",125,261,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"gong_1",325,260,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278255361)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit_gong3",69,280,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit_gon3",268,279,65,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"gong_s3",125,283,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"gong_3",325,284,100,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278255361)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_28",1800000366,216,244)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,43, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"arrowMagic",2147483647,208,244)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,43, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"qhcheng_image",1806700005,138,317)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,120, 29)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"succ_image1",0,265,319)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"succ_image2",0,285,319)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"succ_image3",0,305,319)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"succ_image4",0,325,319)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"ybsm",133,369,250,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"yb",1800000176,"",320,372)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "QianghWnd.YbChange")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"chongz",349,371,70,23)
    if _GUIHandle ~= 0 then
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"gold_need",118,398,72,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"消耗金币：")
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"gold_back",1806700023,189,399)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetColor(_GUIHandle, 4290950816)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"gold",208,399,74,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"qianghua",1806700037,175,428)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "QianghWnd.qiangh")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,126, 45)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"qianghsm",1806700017,47,452)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,75, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent, "buyedit", 320, 404, 100, 30)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "ForgeWnd.buy")
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "#SELECT#购买金币＞#SELECTEND#")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"tip1",1804600019,491,129)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"选择强化装备")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,188, 50)
		GUI:WndSetTextColorM(_GUIHandle, 4292592384)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"tip2",1804600019,306,426)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"点击强化装备")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,188, 50)
        GUI:WndSetTextColorM(_GUIHandle, 4292592384)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"tip3",1804600019,646,-3)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"关闭强化面板")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,188, 50)
        GUI:WndSetTextColorM(_GUIHandle, 4292592384)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
    QianghWnd.UIInit(_Parent)
end

--UI Logic Code Start
----武器1，护腕3，戒指9，项链8，攻击
local shux1 = {
	{{81,80},{83,82},{85,84}},
	{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}}, 	
} 
----衣服4，腰带7，鞋子6，头盔2，攻击,物防，魔防
local shux2 = {
	{{{81,80},{83,82},{85,84}},{77,76},{79,78}},
	{{{1,1},{1,6},{1,6}},{{2,2},{2,8},{2,8}},{{3,3},{4,10},{3,11}},{{3,4},{5,12},{4,14}},{{4,6},{7,16},{6,17}},{{4,7},{9,21},{7,21}},
	{{5,10},{11,26},{9,26}},{{5,13},{13,32},{9,31}},{{6,17},{14,38},{11,36}},{{8,22},{16,44},{13,43}},{{9,27},{18,51},{15,49}},{{10,33},{22,60},{17,54}}}, 	
}
----护盾 15    物防，魔防
local shux3 = {
	{{77,76},{79,78}},
	{{{1,3},{1,2}},{{2,6},{2,4}},{{2,9},{3,6}},{{3,12},{4,9}},{{4,15},{5,11}},{{4,18},{5,14}},
	{{5,21},{6,18}},{{7,25},{7,25}},{{9,29},{9,30}},{{11,33},{11,38}},{{14,38},{13,48}},{{18,41},{15,60}},}, 	
}
----宝石11  魂珠19   攻击
local shux4 = {
	{{81,80},{83,82},{85,84}},
	{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}},
}
----勋章10     攻击
local shux5 = {
	{{81,80},{83,82},{85,84}},
	{{1,7},{2,9},{3,10},{5,11},{6,14},{8,17},{8,20},{10,24},{11,28},{13,33},{16,39},{20,45}},
}
local suc_img = {
	{1806700008,1806700009,1806700010,1806700011,1806700012,1806700013,1806700014,1806700015,1806700016,1806700007}, --imageid
	{100,90,85,75,65,55,50,30,20,10,5,1},
	{200000,400000,1000000,1600000,3400000,7000000,8000000,10400000,14000000,16200000,20400000,26000000},
	{0,9,28,84,252,758,1517,3040,6069,9104,13656,20484},
	{0,1000,5000,10000,210000,630000,1260000,2520000,151,227,341,535}
}


QianghWnd.WndHandle = 0
QianghWnd.job = 0
QianghWnd.YbYes = 0
QianghWnd.tip1 = 0
QianghWnd.DelayTaskId = nil
function QianghWnd.UIInit(_GUIHandle)
    QianghWnd.gold = 0
	QianghWnd.WndHandle = _GUIHandle
	local handle = GetWindow(_GUIHandle,"shuom")
	if handle ~= 0 then
		GUI:RichEditAppendString(handle,"#SELECT#强化说明#SELECTEND#")
	end

	_handle = GUI:WndFindChildM(_GUIHandle, "item_image")
	if _handle ~= 0 then
		GUI:WndSetCanRevMsg(_handle, false)
	end

	local handle = GetWindow(_GUIHandle,"qianghsm")
	if handle ~= 0 then
		GUI:WndSetHintWidth(handle, 300)
		local txt = "强化说明：                                        "
		txt = txt.."1.强化成功优先消耗绑定金币，强化失败不消耗金币    "
		txt = txt.."2.强化失败不降级，但会消耗强化次数，使用元宝可以 保证100%成功                                      "
		txt = txt.."3.强化次数用完后，可以购买次数继续强化"
		GUI:WndSetHint(handle, txt)
	end
	
	local handle = GetWindow(_GUIHandle,"chongz")
	if handle ~= 0 then
		GUI:RichEditAppendString(handle,"#SELECT#前往充值#SELECTEND#")
		GUI:WndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "QianghWnd.ChongzEditOnLBTNUp")
	end	

	handle = GUI:WndFindChildM(_GUIHandle, "item")
	if handle ~= 0 then
		RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
	end

	UI:Lua_SubmitForm("强化表单", "item_setint", "")
end

function QianghWnd.tip(tip1)
	local handle = GetWindow(QianghWnd.WndHandle, "tip1")
	if handle ~= 0 then
		if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
			local level = tonumber(LuaRet)
			if level >= 60 then 
				local _hand = GetWindow(nil,"ForgeWnd,itemback1")   --物品框的箭头
				if _hand ~= 0 then 
					local item_guid = RDItemCtrlGetGUIDataPropByType(_hand, nil,ITEMGUIDATA_ITEMGUID)
					if item_guid ~= 0 and item_guid ~= nil then 
						if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then 
							if tonumber(tip1) == 0 then 
								GUI:WndSetVisible(handle, true)
								GUI:WndSetTextArrangeType(handle,10,0,0,0)
								--QianghWnd.itemTweenUp01(handle)
								GUI:ButtonSetTextFont(handle,"SIMLI18")
								WndAddEffect(nil,"ForgeWnd,itemback1",3020101000,-26,-26,150,0)
								CL:AddDelayTask("QianghWnd.Script1()", 10000, 1)
							end
						end
					else  
						WndDelEffect(nil,"ForgeWnd,itemback1") 
						GUIWndSetVisible(handle, false)
					end
				end
			end
		end
	end
end


function QianghWnd.Script1()  
	local handle = GetWindow(QianghWnd.WndHandle, "tip1")	
	if handle ~= 0 then 
		WndDelEffect(nil,"ForgeWnd,itemback1") 
		if not GUI:WndGetVisible(handle) then return end
	end

	if GetWindow(nil, "ForgeWnd,QianghWnd") == 0 then return end  
	local _handle =  GetWindow(nil,"ForgeWnd,itemback1")
	if _handle ~= 0 then 
		local item_guid = tostring(RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID))
		if item_guid ~= 0 and item_guid ~= nil then 
			local _hand =  GetWindow(nil,"ForgeWnd,QianghWnd,item")
			if _hand ~= 0 then  
				local mainitem_guid = RDItemCtrlGetGUIDataPropByType(_hand, nil,ITEMGUIDATA_ITEMGUID)
				if mainitem_guid == nil or mainitem_guid == 0  then 
					UI:Lua_SubmitForm("强化表单", "item_set", item_guid)
				else
					UI:Lua_SubmitForm("强化表单", "num_set", "Qiang_tip1")
				end
			end
		end
	end	
end


function QianghWnd.Script2(tip1)
	QianghWnd.tip1 = tip1
	local handle = GetWindow(nil, "ForgeWnd,QianghWnd,tip1")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end
	if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then 
		if tonumber(tip1) == 0 then 
		handle = GetWindow(QianghWnd.WndHandle, "tip2")    --强化按钮的箭头
			if handle ~= 0 then
				GUI:WndSetVisible(handle, true)
				GUI:WndSetTextArrangeType(handle,10,0,0,0)
				--QianghWnd.itemTweenUp02(handle)
				GUI:ButtonSetTextFont(handle,"SIMLI18") 
				WndAddEffect(QianghWnd.WndHandle,"qianghua",3020100800,-2,-3,100,0)
			end  
			CL:AddDelayTask("QianghWnd.Script3()", 10000, 1)
		end
	end
end

function QianghWnd.Script3()	
	if GetWindow(nil, "ForgeWnd,QianghWnd") == 0 then return end 	
	local handle = GetWindow(QianghWnd.WndHandle, "tip2")	
	if handle ~= 0 then 
		WndDelEffect(QianghWnd.WndHandle,"qianghua") 
		if not GUI:WndGetVisible(handle) then return end
		GUI:WndSetVisible(handle, false)   
	end
	QianghWnd.qiangh()
end

function QianghWnd.Qiangh_item(itemguid,xing_n,index)
	for j = 1 , 12 do 
		ImageSetImageID(QianghWnd.WndHandle,"xing"..j,0)
	end
	for i = 1 , 3 do 
		EditSetText(QianghWnd.WndHandle,"edit_gong"..i,"")
		EditSetText(QianghWnd.WndHandle,"edit_gon"..i,"")
		EditSetText(QianghWnd.WndHandle,"gong_s"..i,"")
		EditSetText(QianghWnd.WndHandle,"gong_"..i,"")
	end
	local handle = GetWindow(QianghWnd.WndHandle,"jia")
	if handle ~= 0 then 
		GUI:WndSetVisible(handle,false)
	end	
	local handle1 = GetWindow(QianghWnd.WndHandle,"yb")
	if handle1 ~= 0 then
		GUI:WndSetVisible(handle1, false) 
	end
	local handle2 = GetWindow(QianghWnd.WndHandle,"chongz")
	if handle2 ~= 0 then
		GUI:WndSetVisible(handle2, false) 
	end
	local handle = GetWindow(QianghWnd.WndHandle,"ybsm")
	if handle ~= 0 then
		GUI:RichEditClear(handle)
	end
	local handle = GetWindow(nil,"ForgeWnd,QianghWnd,item")
	GUI:ItemCtrlClearItemData(handle)
	GUI:ItemCtrlSetEffectImageID(handle, 0, 1.0)
	UI:Lua_Str2GUID(itemguid)
	ForgeWnd.RDItemCtrlSetGUIDataPropByGUIDEx(handle, nil, LuaRet)
	if index ~= nil then
		if tonumber(index) == 1 then
			QianghWnd.YbYes = 0
			GUI:CheckBoxSetCheck(handle1,false)
		end
	end
	QianghWnd.OnEquipIn(handle,xing_n)
end	

function QianghWnd.OnEquipIn(_handle,xing_n)
	local item_guid = RDItemCtrlGetGUIDataPropByType(_handle, nil,ITEMGUIDATA_ITEMGUID)
	local Temp = CL:GetItemTemplateHandleByGUID(item_guid)
	local Entity = CL:GetItemEntityHandleByGUID(item_guid)
	local xing_n = CL:GetItemEntityCustomVarInt(Entity, "xing_num")
	local level = 0
	if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_LEVEL) then
		level = tonumber(LuaRet)	
	end
	local subType = 0
	if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_SUBTYPE) then
		subType = tonumber(LuaRet)		
	end
	local num = tonumber(xing_n) 
	local q_level = 0
	if UI:Lua_GetItemEntityPropByHandle(Entity,ITEM_PROP_EQUIP_REFINELEVEL) then
		q_level = tonumber(LuaRet)
	end
	--根据强化等级设置显示特效
	if q_level > 0 then
		local _AnimateID = nil
		if q_level <= 5 then
			_AnimateID = 1096000100;
		elseif q_level <= 10 then
			_AnimateID = 1096000200;
		else
			_AnimateID = 1096000300;
		end
		if _AnimateID ~= nil then
			GUI:ItemCtrlSetEffectImageID(_handle, _AnimateID, 1.5)
		end
	end
	if q_level == 12 then
		return
	end
	if q_level ~= 0 then
		for i = 1 , q_level do 
			ImageSetImageID(QianghWnd.WndHandle,"xing"..i,1806700026)
		end
		local a = q_level + 1 
		if a <= num then
			for j = a , num do 
				ImageSetImageID(QianghWnd.WndHandle,"xing"..j,1806700025)
			end
		else
			local handle = GetWindow(QianghWnd.WndHandle,"jia")
			local str = ""
			if a < 9 then
				str = "加星需要消耗".. suc_img[5][a] .."绑定金币"
			else
				str = "加星需要消耗".. suc_img[5][a] .."元宝"
			end
			GUI:WndSetHint(handle, str)
			GUI:WndSetVisible(handle,true)
		end	
	else
		if num ~= 0 then
			for j = 1 , num do 
				ImageSetImageID(QianghWnd.WndHandle,"xing"..j,1802400026)
			end
		end	
	end	
	
	local l = q_level + 1 
	local handle = GetWindow(QianghWnd.WndHandle,"ybsm")
	if handle ~= 0 then
		if l > 1 then
			local handle1 = GetWindow(QianghWnd.WndHandle,"yb")
			if handle1 ~= 0 then
				GUI:WndSetVisible(handle1, true) 
			end
			local handle2 = GetWindow(QianghWnd.WndHandle,"chongz")
			if handle2 ~= 0 then
				GUI:WndSetVisible(handle2, true) 
			end
			GUI:RichEditClear(handle)
			GUI:RichEditAppendString(handle,"#COLORCOLOR_ORANGE#消耗#COLOREND# #COLORCOLOR_GREENG#"..suc_img[4][l]
			.."#COLOREND# #COLORCOLOR_ORANGE#元宝保证100%成功#COLOREND#")
		end	
	end	
	local miaos = {{"物理攻击:","魔法攻击:","道术攻击:"},"物防:","魔防:"}
	local job = 0 
	local k = 10
	if subType == 1 or subType == 9 or subType == 8 or subType == 3 then	
		if level >= 100 then
			local a = 5
			for i = 1 , 3 do 
				local wug_max = 0 
				local wug_min = 0		
				if CL:GetItemTemplatePropByHandle(Temp,shux1[1][i][2]) then
					wug_max = tonumber(LuaRet)
				end
				if CL:GetItemTemplatePropByHandle(Temp,shux1[1][i][1]) then
					wug_min = tonumber(LuaRet)
				end		
				local wug_min_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
				k = k + 1	
				local wug_max_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
				k = k + 1
				
				if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
					local data = LuaRet
					if data[a] ~= nil and data[a][PROPERTY_ATTR_NAME] ~= nil and data[9][PROPERTY_ATTR_VALUE] ~= 0  then
						wug_min = data[a][PROPERTY_ATTR_VALUE] + wug_min + wug_min_zhul
						a = a + 1
						wug_max = data[a][PROPERTY_ATTR_VALUE] + wug_max + wug_max_zhul	
					end	
				end	
				local w_min = shux1[2][l][1] + wug_min  + wug_min_zhul
				local w_max = shux1[2][l][2] + wug_max + wug_max_zhul
				EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[1][i])
				EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[1][i])					
				EditSetText(QianghWnd.WndHandle,"gong_s"..i,""..wug_min.." - "..wug_max)
				EditSetText(QianghWnd.WndHandle,"gong_"..i,""..w_min.." - "..w_max)
				a = a + 1
			end
		else		
			local wug_max = 0 
			local wug_min = 0
			local tz_min = 0
			local tz_max = 0
			if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then
				if LuaRet ~= nil then
					job = tonumber(LuaRet)	
				end	
			end 
			if job == 0 then
				return 
			end	
			if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
				local data = LuaRet
				if data[9] ~= nil and data[9][PROPERTY_ATTR_NAME] ~= nil and data[9][PROPERTY_ATTR_VALUE] ~= 0  then
					tz_min = data[9][PROPERTY_ATTR_VALUE]
					tz_max = data[10][PROPERTY_ATTR_VALUE]
				end	
			end	
	
			local wug_min_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			k = k + 1	
			local wug_max_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			k = k + 1
			
			if CL:GetItemTemplatePropByHandle(Temp,shux1[1][job][2]) then
				wug_max = tonumber(LuaRet) + tonumber(tz_max) + wug_max_zhul
			end
			if CL:GetItemTemplatePropByHandle(Temp,shux1[1][job][1]) then
				wug_min = tonumber(LuaRet) + tonumber(tz_min) + wug_max_zhul
			end		
			local w_min = shux1[2][l][1] + wug_min + wug_min_zhul
			local w_max = shux1[2][l][2] + wug_max + wug_max_zhul
			
			EditSetText(QianghWnd.WndHandle,"edit_gong1",miaos[1][job])
			EditSetText(QianghWnd.WndHandle,"edit_gon1",miaos[1][job])
			EditSetText(QianghWnd.WndHandle,"gong_s1",""..wug_min.." - "..wug_max)
			EditSetText(QianghWnd.WndHandle,"gong_1",""..w_min.." - "..w_max)
		end
	elseif subType == 2 or subType == 4 or subType == 6 or subType == 7 then		
		if level >= 100 then
			if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then 
				job = LuaRet
			end 
		else
			if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_JOB) then
				if LuaRet ~= nil then
					job = tonumber(LuaRet)	
				end	
			end 
		end		
		if job == 0 then
			return
		end		
		local a = 5
		for i = 1 , 3 do 
			local wug_max = 0 
			local wug_min = 0
			if i == 1 then
				if CL:GetItemTemplatePropByHandle(Temp,shux2[1][i][job][2]) then
					wug_max = tonumber(LuaRet)	
				end
				if CL:GetItemTemplatePropByHandle(Temp,shux2[1][i][job][1]) then
					wug_min = tonumber(LuaRet)	
				end	
			else
				if CL:GetItemTemplatePropByHandle(Temp,shux2[1][i][2]) then
					wug_max = tonumber(LuaRet)	
				end
				if CL:GetItemTemplatePropByHandle(Temp,shux2[1][i][1]) then
					wug_min = tonumber(LuaRet)	
				end	
			end		
			local wug_min_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)				
			k = k + 1	
			local wug_max_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			if level >= 100 then 
				k = k + 5 
			else
				k = k +1
			end			
			if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
				local data = LuaRet
				if data[a] ~= nil and data[a][PROPERTY_ATTR_NAME] ~= nil and data[9][PROPERTY_ATTR_VALUE] ~= 0  then
					wug_min = data[a][PROPERTY_ATTR_VALUE] + wug_min + wug_min_zhul
					a = a + 1
					wug_max = data[a][PROPERTY_ATTR_VALUE] + wug_max + wug_max_zhul
				end	
			end	
	
			local w_min = shux2[2][l][i][1] + wug_min  + wug_min_zhul
			local w_max = shux2[2][l][i][2] + wug_max + wug_max_zhul
			if i == 1 then
				EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[i][job])
				EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[i][job])
				
			else
				EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[i])
				EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[i])			
			end		
			EditSetText(QianghWnd.WndHandle,"gong_s"..i,""..wug_min.." - "..wug_max)
			EditSetText(QianghWnd.WndHandle,"gong_"..i,""..w_min.." - "..w_max)
			a = a + 1
		end
	elseif subType == 15 then
		local miaos = {"魔防: ","物防: "}
		local a = 7
		for i = 1 , 2 do 
			local wug_max = 0 
			local wug_min = 0
			if CL:GetItemTemplatePropByHandle(Temp,shux3[1][i][2]) then
				wug_max = tonumber(LuaRet)	
			end
			if CL:GetItemTemplatePropByHandle(Temp,shux3[1][i][1]) then
				wug_min = tonumber(LuaRet)	
			end		
	
			local wug_min_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)		
			k = k + 1	
			local wug_max_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			k = k + 1
			
			if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
				local data = LuaRet
				if data[a] ~= nil and data[a][PROPERTY_ATTR_NAME] ~= nil and data[9][PROPERTY_ATTR_VALUE] ~= 0  then
					wug_min = data[a][PROPERTY_ATTR_VALUE] + wug_min + wug_min_zhul
					a = a + 1
					wug_max = data[a][PROPERTY_ATTR_VALUE] + wug_max + wug_max_zhul
				end	
			end	
			local w_min = shux3[2][l][i][1] + wug_min 
			local w_max = shux3[2][l][i][2] + wug_max 
			EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[i])
			EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[i])				
			EditSetText(QianghWnd.WndHandle,"gong_s"..i,""..wug_min.." - "..wug_max)
			EditSetText(QianghWnd.WndHandle,"gong_"..i,""..w_min.." - "..w_max)
			a = a + 1
		end
	elseif subType == 11 or subType == 13 then
		local miaos = {"物理攻击: ","魔法攻击: ","道术攻击: "}
		local a = 5
		for i = 1 , 3 do 
			local wug_max = 0 
			local wug_min = 0
			if CL:GetItemTemplatePropByHandle(Temp,shux4[1][i][2]) then
				wug_max = tonumber(LuaRet)	
			end
			if CL:GetItemTemplatePropByHandle(Temp,shux4[1][i][1]) then
				wug_min = tonumber(LuaRet)	
			end		
			local wug_min_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			k = k + 1	
			local wug_max_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			k = k + 1
			 
			if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
				local data = LuaRet
				if data[a] ~= nil and data[a][PROPERTY_ATTR_NAME] ~= nil and data[9][PROPERTY_ATTR_VALUE] ~= 0  then
					wug_min = data[a][PROPERTY_ATTR_VALUE] + wug_min + wug_min_zhul
					a = a + 1
					wug_max = data[a][PROPERTY_ATTR_VALUE] + wug_max + wug_max_zhul
				end	
			end	
			local w_min = shux4[2][l][1] + wug_min + wug_min_zhul
			local w_max = shux4[2][l][2] + wug_max + wug_max_zhul
			EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[i])
			EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[i])				
			EditSetText(QianghWnd.WndHandle,"gong_s"..i,""..wug_min.." - "..wug_max)
			EditSetText(QianghWnd.WndHandle,"gong_"..i,""..w_min.." - "..w_max)
			a = a + 1
		end
	elseif subType == 10 then
		local a = 5
		local miaos = {"物理攻击: ","魔法攻击: ","道术攻击: "}
		for i = 1 , 3 do 
			local wug_max = 0 
			local wug_min = 0
			if CL:GetItemTemplatePropByHandle(Temp,shux5[1][i][2]) then
				wug_max = tonumber(LuaRet)	
			end
			if CL:GetItemTemplatePropByHandle(Temp,shux5[1][i][1]) then
				wug_min = tonumber(LuaRet)	
			end		
			local wug_min_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			k = k + 1	
			local wug_max_zhul = CL:GetItemEntityCustomVarInt(Entity,"_dv"..k)
			k = k + 1
			
			if UI:Lua_GetItemEntityPropByHandle(Entity, ITEM_PROP_EQUIP_EXT) then
				local data = LuaRet
				if data[a] ~= nil and data[a][PROPERTY_ATTR_NAME] ~= nil and data[9][PROPERTY_ATTR_VALUE] ~= 0  then
					wug_min = data[a][PROPERTY_ATTR_VALUE] + wug_min + wug_min_zhul
					a = a + 1
					wug_max = data[a][PROPERTY_ATTR_VALUE] + wug_max + wug_max_zhul
				end	
			end	
			local w_min = shux5[2][l][1] + wug_min + wug_min_zhul
			local w_max = shux5[2][l][2] + wug_max + wug_max_zhul
			EditSetText(QianghWnd.WndHandle,"edit_gong"..i,miaos[i])
			EditSetText(QianghWnd.WndHandle,"edit_gon"..i,miaos[i])				
			EditSetText(QianghWnd.WndHandle,"gong_s"..i,""..wug_min.." - "..wug_max)
			EditSetText(QianghWnd.WndHandle,"gong_"..i,""..w_min.." - "..w_max)
			a = a + 1
		end
	end
	local suc_s = suc_img[2][l]
	local gold = suc_img[3][l]
	local jb , bjb = 0 , 0
	if UI:Lua_GetPlayerSelfProperty64(5) then 
		bjb = LuaRet
	end    
	if UI:Lua_GetPlayerSelfProperty64(4) then 
		jb= LuaRet + bjb
	end      
	EditSetText(QianghWnd.WndHandle,"gold",""..gold)
	if jb < gold then
		local handle = GetWindow(QianghWnd.WndHandle,"gold")
		GUI:EditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
	else
		local handle = GetWindow(QianghWnd.WndHandle,"gold")
		GUI:EditSetTextColor(handle, MakeARGB(255, 194, 182, 160))
	end	
    QianghWnd.gold = gold
	local handle1 = GetWindow(QianghWnd.WndHandle,"yb")
	if handle1 ~= 0 then 
		if GUI:CheckBoxGetCheck(handle1) then
			QianghWnd.YbYes = 1
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1806700008)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1806700007)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1806700007)
		else
			if suc_s < 10 then
				ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][suc_s])
				ImageSetImageID(QianghWnd.WndHandle,"succ_image3",0)	
			elseif suc_s >= 10 and suc_s < 100 then
				local a = math.floor(suc_s/10) 
				local b = suc_s%10
				if b == 0 then
					b = 10
				end
				ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][a])
				ImageSetImageID(QianghWnd.WndHandle,"succ_image3",suc_img[1][b])		
			else
				ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1806700008)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1806700007)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1806700007)
			end
		end
	end	
	
	ImageSetImageID(QianghWnd.WndHandle,"succ_image4",1806700006)
	if job ~= 0 then
		QianghWnd.job = job 
	end
	
end

function QianghWnd.ChongzEditOnLBTNUp()
	CL:OpenUrlUseIEByType(3)
end

function QianghWnd.YbChange(_Handle)
	local _Istrue = GUI:CheckBoxGetCheck(_Handle)
	if _Istrue then
		QianghWnd.YbYes = 1
		ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1806700008)
		ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1806700007)
		ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1806700007)
	else
		QianghWnd.YbYes = 0
		local handle = GetWindow(nil,"ForgeWnd,QianghWnd,item")
		local item_guid = RDItemCtrlGetGUIDataPropByType(handle,nil,ITEMGUIDATA_ITEMGUID)
		local Entity = CL:GetItemEntityHandleByGUID(item_guid)
		local q_level = 0
		if UI:Lua_GetItemEntityPropByHandle(Entity,ITEM_PROP_EQUIP_REFINELEVEL) then
			q_level = tonumber(LuaRet) + 1
		end	
		local suc_s = suc_img[2][q_level]
		if suc_s < 10 then
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][suc_s])
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",0)	
		elseif suc_s >= 10 and suc_s < 100 then
			local a = math.floor(suc_s/10) 
			local b = suc_s%10
			if b == 0 then
				b = 10
			end
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][a])
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",suc_img[1][b])		
		else
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1806700008)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1806700007)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1806700007)
		end	
	end	
	
end

function QianghWnd.jia(_handle)
	local handle = GetWindow(nil,"ForgeWnd,QianghWnd,item")
	local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil,ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid) == 0 or item_guid == nil then
		msg_up("请放入需要强化的装备")
		return
	end
	UI:Lua_GUID2Str(item_guid)
	UI:Lua_SubmitForm("强化表单", "jia_xing", ""..LuaRet)
end
	
function QianghWnd.qiangh(_handle)
	if QianghWnd.tip1 == 0 then 
		local hand = GetWindow(nil, "ForgeWnd,QianghWnd,tip2")
		if hand ~= 0 then
			WndDelEffect(QianghWnd.WndHandle,"qianghua") 
			GUI:WndSetVisible(hand, false)
		end
		local handle = GetWindow(QianghWnd.WndHandle, "tip3")
		if handle ~= 0 then
			WndAddEffect(nil,"ForgeWnd,close",3020100900,-4,-5,100,0)
			GUI:WndSetVisible(handle, true)
			GUI:WndSetTextArrangeType(handle,10,0,0,0)
			--QianghWnd.itemTweenUp03(handle)
			GUI:ButtonSetTextFont(handle,"SIMLI18")
			CL:AddDelayTask("ForgeWnd.closeWnd()", 10000, 1)
		end
	end
	
	local handle = GetWindow(nil,"ForgeWnd,QianghWnd,item")
	local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil,ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid) == 0 or item_guid == nil then
		msg_up("请放入需要强化的装备")
		return
	end
	UI:Lua_GUID2Str(item_guid)
	UI:Lua_SubmitForm("强化表单", "forge_item", ""..LuaRet.."#"..QianghWnd.job.."#"..QianghWnd.YbYes)
end

function msg_up(str)
	local _handle = GUI:WndFindChildM(QianghWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if QianghWnd.DelayTaskId ~= nil then
		CL:DelDelayTask(QianghWnd.DelayTaskId)
		QianghWnd.DelayTaskId = nil
	end
	QianghWnd.DelayTaskId = CL:AddDelayTask("QianghWnd.ClearMsg()", 3000, 1)
end

function QianghWnd.ClearMsg()
	local _handle = GUI:WndFindChildM(QianghWnd.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end

QianghWnd.main()