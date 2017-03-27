Xunz_Win = {}
function Xunz_Win.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"Xunz_Win",1802200029,10,75)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,652, 414)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item_image",1802200008,150,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,106, 97)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item",0,172,44,62,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,62, 60)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"nxun_image",1802200009,128,125)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,160, 45)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nxun_edit",165,134,87,23)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"p_image",1802200017,20,175)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,155, 99)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"p_image1",1802200017,225,175)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,155, 99)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"p_image2",1800000366,182,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,43, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"editm1",28,183,64,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317510)
        GUI:EditSetTextM(_GUIHandle,"物理攻击：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit1",89,183,75,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"0 - 0")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"editm2",28,210,64,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317510)
        GUI:EditSetTextM(_GUIHandle,"魔法攻击：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit2",89,209,75,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"0 - 0")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"editm3",28,240,64,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317510)
        GUI:EditSetTextM(_GUIHandle,"道术攻击：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit3",89,239,75,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"0 - 0")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"editmm1",230,181,64,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317510)
        GUI:EditSetTextM(_GUIHandle,"物理攻击：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edi1",292,181,75,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278242608)
        GUI:EditSetTextM(_GUIHandle,"0 - 0")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"editmm2",230,210,64,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317510)
        GUI:EditSetTextM(_GUIHandle,"魔法攻击：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edi2",292,210,75,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278242608)
        GUI:EditSetTextM(_GUIHandle,"0 - 0")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"editmm3",230,240,64,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293317510)
        GUI:EditSetTextM(_GUIHandle,"道术攻击：")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edi3",292,241,77,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4278242608)
        GUI:EditSetTextM(_GUIHandle,"0 - 0")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"cjjf",123,290,161,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294964480)
        GUI:EditSetTextM(_GUIHandle,"升级积分")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"jindut_ima",1800000364,50,310)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,321, 47)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"jindut_image",1800000365,78,321)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,257, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"jifen_edit",123,327,161,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"0 - 0")
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"shengj_button",1800000150,160,365)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Xunz_Win.get")
        GUI:WndSetTextM(_GUIHandle,"升级勋章")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4294894785)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"shuom_button",1800000297,22,378)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,27, 30)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"shuom_edit",52,385,85,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"buy_Ach",290,385,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"xun_list",1801500077,475,-3)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,105, 32)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"image1",1802200010,398,39)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,234, 71)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"edit_image1",1800000301,436,47)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,181, 54)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"get_yes1",0,552,43)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item1",0,415,55,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name1",474,61,66,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294964992)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"image2",1802200010,398,112)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,234, 71)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"edit_image2",1800000301,436,120)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,181, 54)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"get_yes2",0,552,116)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item2",0,415,128,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name2",474,134,66,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294964992)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"image3",1802200010,398,185)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,234, 71)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"edit_image3",1800000301,436,195)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,181, 54)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"get_yes3",0,552,190)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item3",0,415,202,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name3",474,208,66,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294964992)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"image4",1802200010,398,259)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,234, 71)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"edit_image4",1800000301,436,268)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,181, 54)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"get_yes4",0,552,265)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item4",0,415,275,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name4",474,282,66,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294964992)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"image5",1802200010,398,333)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,234, 71)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"edit_image5",1800000302,436,342)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,181, 54)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"get_yes5",0,552,338)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item5",0,415,350,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name5",474,356,66,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294964992)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"up_page",1800000372,631,90)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Xunz_Win.up_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 61)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"down_page",1800000376,631,190)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Xunz_Win.down_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 61)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"msg",93,343,220,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293935424)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    Xunz_Win.UIInit(_Parent)
end

--UI Logic Code Start
Xunz_Win.WndHandle = 0
Xunz_Win.index = 0
Xunz_Win.jifen = 0
Xunz_Win.page = 1
Xunz_Win.xun_tab = {}
Xunz_Win.xun_jifen = {60000,400000,1450000,2950000,4680000,7800000,14500000,25000000,38000000,50000000,70000000,95000000}
Xunz_Win._control = {}
function Xunz_Win.UIInit(_Parent)
	Xunz_Win.WndHandle = _Parent
	local _handle = GetWindow(_Parent,"shuom_edit")
	if _handle ~= 0 then
		GUI:RichEditAppendString(_handle,"#SELECT#积分说明#SELECTEND#")
    end

    _handle = GetWindow(_Parent,"shuom_button")
	if _handle ~= 0 then
        GUI:WndSetHintWidth(_handle, 250)
        local txt = "积分说明：                               "
        txt = txt.."1.积分可用来兑换勋章，增强角色属性       "
        txt = txt.."2.积分可以通过完成成就、活动、使用成就令牌获得                                   "
        txt = txt.."3.成就令牌可以通过商城或右侧链接购买"
		GUI:WndSetHint(_handle, txt)
	end
	
	_handle = GetWindow(_Parent,"buy_Ach")
	if _handle ~= 0 then
		GUI:RichEditAppendString(_handle,"#SELECT#购买成就令牌＞#SELECTEND#")		
		GUI:WndRegistScript(_handle, RDWndBaseCL_mouse_lbUp, "Xunz_Win.buy_ach")
	end		
	
	local _nxun_edit = GUI:WndFindChildM(_Parent,"nxun_edit")
	if _nxun_edit ~= 0 then	
		GUI:EditSetFontM(_nxun_edit,"SIMLI18")
		WndSetTextColorM(_nxun_edit,nil,MakeARGB(255, 255, 217, 70))
	end

	local _jinduti = GUI:WndFindChildM(_Parent,"jindut_image")
	if _jinduti ~= 0 then
		GUI:WndSetSizeM(_jinduti, 257, 36)		
	end
	
	_handel = GetWindow(_Parent,"up_page")
	if _handel ~= 0 then Xunz_Win._control["up_page"] = _handel end
	_handel = GetWindow(_Parent,"down_page")
	if _handel ~= 0 then Xunz_Win._control["down_page"] = _handel end
	GUI:WndSetEnableM(Xunz_Win._control["up_page"],false)

	UI:Lua_SubmitForm("成就积分表单", "xunz", "")
	
	
end
function xunzl(data,vis)
	local handle = GetWindow(nil,"AchieveWnd,image3")
	if handle ~= 0 then 
		if tonumber(vis) == 1 then 
			GUI:WndSetVisible(handle,true)
		else 
			GUI:WndSetVisible(handle,false)
		end
	end 
	Xunz_Win.index = tonumber(data[2])
	Xunz_Win.jifen = tonumber(data[3])
	Xunz_Win.xun_tab = data[1]
	xunz_updata(Xunz_Win.index,Xunz_Win.jifen)
end

function xunz_updata(inde,jifen)
	local tab = {}
	local index = inde + 1 
	if inde >= #Xunz_Win.xun_tab then 
		index = inde
	end
	local handel = GetWindow(Xunz_Win.WndHandle,"item",nil)		
	Xunz_Win.SetGUIDataByKeyName(handel, Xunz_Win.xun_tab[index], 1, true)
	local temp = CL:GetItemTemplateHandleByKeyName(Xunz_Win.xun_tab[index])
	local name = ""
	if CL:GetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
		name = LuaRet
	end
	local _handle =  GetWindow(Xunz_Win.WndHandle,"nxun_edit",nil)
	EditSetText(_handle,nil,name)
	local temp1 = 0 
	if index > 1 then
		temp1 = CL:GetItemTemplateHandleByKeyName(Xunz_Win.xun_tab[index - 1])
	end	
	local tab1 = {{80,81},{82,83},{84,85}}
	for i = 1 , 3 do 
		local mi = 0 
		local ma = 0
		if CL:GetItemTemplatePropByHandle(temp,tab1[i][1]) then
			ma = LuaRet
		end
		if CL:GetItemTemplatePropByHandle(temp,tab1[i][2]) then
			mi = LuaRet
		end
		local _handle =  GetWindow(Xunz_Win.WndHandle,"edi"..i,nil)
		EditSetText(_handle,nil,mi.." - "..ma)
		if temp1 ~= 0 then 
			if CL:GetItemTemplatePropByHandle(temp1,tab1[i][1]) then
				ma = LuaRet
			end
			if CL:GetItemTemplatePropByHandle(temp1,tab1[i][2]) then
				mi = LuaRet
			end
			local _handle =  GetWindow(Xunz_Win.WndHandle,"edit"..i,nil)
			EditSetText(_handle,nil,mi.." - "..ma)
		end	
	end
	Xunz_Win.list_update(Xunz_Win.page)
	Xunz_Win.jifen_update(inde,jifen)
end

function Xunz_Win.jifen_update(inde,jifen)
	Xunz_Win.index = tonumber(inde)
	Xunz_Win.jifen = tonumber(jifen)
	local index = inde + 1
	if inde >= #Xunz_Win.xun_tab then 
		index = inde
	end
	local _handle = GetWindow(Xunz_Win.WndHandle,"jifen_edit",nil)
	EditSetText(_handle,nil,jifen.." - "..Xunz_Win.xun_jifen[index])
	local _jindutImage = GetWindow(Xunz_Win.WndHandle,"jindut_image",nil)
	if _jindutImage ~= 0 then
		local value = 0
		if tonumber(jifen) > 0 then
			local a = tonumber(jifen)
			local b = tonumber(Xunz_Win.xun_jifen[index])
			value = a/b
		end
		if value > 0 then
			GUI:WndSetVisible(_jindutImage,true)
			GUI:ImageSetDrawRect(_jindutImage,0,value,0,1)
		else
			GUI:WndSetVisible(_jindutImage,false)
		end
	end	
	if tonumber(inde) ~= #Xunz_Win.xun_tab then
		local handle = GetWindow(Xunz_Win.WndHandle, "shengj_button")
		local achScore_tab = {60000,400000,1450000,2950000,4680000,7800000,14500000,25000000,38000000,50000000,70000000,95000000,0}
		if handle ~= 0 then
			if Xunz_Win.jifen >= achScore_tab[index] then
				WndAddEffect(handle, "shengj_button", 3020100700, -13, -8, 100, 0)
			else
				WndDelEffect(handle)
			end
		end
	end
end	

function Xunz_Win.up_page(_handle)
	Xunz_Win.page = Xunz_Win.page - 1
	Xunz_Win.updatePgBtn()
	Xunz_Win.list_update(Xunz_Win.page)
end

function Xunz_Win.down_page(_handle)
	Xunz_Win.page = Xunz_Win.page + 1
	Xunz_Win.updatePgBtn()
	Xunz_Win.list_update(Xunz_Win.page)
end

function Xunz_Win.updatePgBtn()
	local pgCount = #Xunz_Win.xun_tab - 4
	--是否是首页
	if Xunz_Win.page == 1 then
		GUI:WndSetEnableM(Xunz_Win._control["up_page"], false)
	else
		GUI:WndSetEnableM(Xunz_Win._control["up_page"], true)
	end
	--是否是尾页
	if Xunz_Win.page == pgCount then
		GUI:WndSetEnableM(Xunz_Win._control["down_page"],false)
	else
		GUI:WndSetEnableM(Xunz_Win._control["down_page"],true)
	end
end

function Xunz_Win.list_update(pag)
	for i = 1 , 5 do
		local _handle = GUI:WndFindChildM(Xunz_Win.WndHandle,"item"..i)
		GUI:ItemCtrlClearItemData(_handle)
		EditSetText(Xunz_Win.WndHandle,"name"..i,"")
		ImageSetImageID(Xunz_Win.WndHandle,"edit_image"..i,0)
		ImageSetImageID(Xunz_Win.WndHandle,"get_yes"..i,0)
	end
	local a = pag
	local b = Xunz_Win.index - pag + 1   
	for i = 1 , 5 do
		local _handle1 = GUI:WndFindChildM(Xunz_Win.WndHandle,"item"..i)
		Xunz_Win.SetGUIDataByKeyName(_handle1,Xunz_Win.xun_tab[a],0xFFFF,false)
		local temp = CL:GetItemTemplateHandleByKeyName(Xunz_Win.xun_tab[a])
		local name = ""
		if CL:GetItemTemplatePropByHandle(temp,ITEM_PROP_NAME) then
			name = LuaRet
		end
		EditSetText(Xunz_Win.WndHandle,"name"..i,name)
		if b < 1 then
			ImageSetImageID(Xunz_Win.WndHandle,"edit_image"..i,1800000302)
			ImageSetImageID(Xunz_Win.WndHandle,"get_yes"..i,1800000296)
		else
			if i <= b then
				ImageSetImageID(Xunz_Win.WndHandle,"edit_image"..i,1800000301)	
				ImageSetImageID(Xunz_Win.WndHandle,"get_yes"..i,1800000295)	
			else 
				ImageSetImageID(Xunz_Win.WndHandle,"edit_image"..i,1800000302)
				ImageSetImageID(Xunz_Win.WndHandle,"get_yes"..i,1800000296)
			end	
		end
		a = a + 1
	end

end

function Xunz_Win.get(_handle)
	UI:Lua_SubmitForm("成就积分表单", "get_xun", "")
end	

function Xunz_Win.msg_up(str)
	local _handle = GUI:WndFindChildM(Xunz_Win.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if Xunz_Win.DelayTaskId ~= nil then
		CL:DelDelayTask(Xunz_Win.DelayTaskId)
		Xunz_Win.DelayTaskId = nil
	end
	Xunz_Win.DelayTaskId = CL:AddDelayTask("Xunz_Win.clear()", 3000, 1)
end	

function Xunz_Win.clear(index)
	local _handle = GUI:WndFindChildM(Xunz_Win.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end

function Xunz_Win.buy_ach(_handle)
	local _handle1 = GetWindow(nil,"AchieveWnd, Buy_ach")
	if _handle1 == 0 then
		UI:Lua_OpenWindow(AchieveWnd.WndHandle, "Buy_ach.lua")
	else
		GUI:WndClose(_handle1)
	end
end

function Xunz_Win.SetGUIDataByKeyName(_Handle, _KeyName, _Count, _IsBind)
	local _GUIDataHandle = GUI:ItemCtrlGetGUIData(_Handle)
	if 0 ~= _GUIDataHandle then
		LuaArg = true
		CL:SetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_INVALIDATE)
		local _ItemTemplateHandle = CL:GetItemTemplateHandleByKeyName(_KeyName)
		if _ItemTemplateHandle ~= 0 then
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_TIPSICON) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_IMAGEID)
			end
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_ID) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID)
			end
            LuaArg = _Count
            UI:Lua_SetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMCOUNT)
            LuaArg = _IsBind
            UI:Lua_SetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ISSHOWBIND)
		end
	end
end

Xunz_Win.main()