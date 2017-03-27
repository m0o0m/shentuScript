ShenLu_buy3 = {}
function ShenLu_buy3.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
	
    _Parent = GUI:WndCreateWnd(_Parent,"ShenLu_buy3",1803900017,416,4)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,286, 499)
        GUI:WndSetMoveWithLBM(_Parent)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"buy_title",1801500076,75,3)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,134, 27)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"close",1800000068,255,6)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ShenLu_buy3.closeWnd")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,24, 24)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_4",1803900016,12,70)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,265, 98)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_5",1803900016,12,189)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,265, 98)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item1_back",1803900036,28,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item2_back",1803900036,28,206)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item1",0,28,96,51,51)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item2",0,28,206,51,51)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"item1_name",87,95,90,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291606374)
        GUI:EditSetTextM(_GUIHandle,"宝珠碎片（中）")
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"yuanbao1",1806600012,83,124)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"item1_price",105,126,64,17)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"buy1",1800900042,165,115)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "ShenLu_buy3.buy")
        GUI:WndSetTextM(_GUIHandle,"购买并使用")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,96, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"item2_name",87,205,90,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291606374)
        GUI:EditSetTextM(_GUIHandle,"宝珠碎片（大）")
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"yuanbao2",1806600012,85,237)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"item2_price",107,239,64,17)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"buy2",1800900042,165,227)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "ShenLu_buy3.buy")
        GUI:WndSetTextM(_GUIHandle,"购买并使用")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,96, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_2",1803900018,12,389)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,262, 98)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_0",1803900020,75,419)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,96, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_1",1803900020,74,451)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,96, 26)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BindYB",180660001,42,423)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"YB",1806600012,42,455)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"BindYuanBao",73,422,100,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"YuanBao",72,453,100,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"chongz",199,453,70,23)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    ShenLu_buy3.UIInit(_Parent)
end

--UI Logic Code Start
ShenLu_buy3.WndHandle = 0
ShenLu_buy3.mallList = {}
function ShenLu_buy3.UIInit(_Handle)
	ShenLu_buy3.WndHandle = _Handle
	local _handel = GetWindow(ShenLu_buy3.WndHandle,"item1")
	ShenLu_buy3.InitItemInfoByKeyName(_handel, "宝石结晶中")
	local _handel = GetWindow(ShenLu_buy3.WndHandle,"item2")		
	ShenLu_buy3.InitItemInfoByKeyName(_handel, "宝石结晶大")
	EditSetText(ShenLu_buy3.WndHandle,"item1_price","1000")
	EditSetText(ShenLu_buy3.WndHandle,"item2_price","9888")
	local handle = GetWindow(_Handle,"chongz")
	if handle ~= 0 then
		GUI:RichEditAppendString(handle,"#SELECT#前往充值#SELECTEND#")
		GUI:WndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "ShenLu_buy3.ChongzEditOnLBTNUp")
	end
	ShenLu_buy3.updata()
end
function ShenLu_buy3.updata()
	local byb_edit = '0'
	local Byb_Edit = GUI:WndFindWindow(ShenLu_buy3.WndHandle,'BindYuanBao')
    if Byb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(2) then 
			byb_edit = LuaRet
		end        
		EditSetText(Byb_Edit,nil,byb_edit)
    end
	local yb_edit = '0'
	local yb_Edit = GUI:WndFindWindow(ShenLu_buy3.WndHandle,'YuanBao')
    if yb_Edit ~= 0 then
		if UI:Lua_GetPlayerSelfProperty64(1) then 
			yb_edit = LuaRet
		end   
		EditSetText(yb_Edit,nil,yb_edit)
    end

end

function ShenLu_buy3.ChongzEditOnLBTNUp()
	CL:OpenUrlUseIEByType(3)
end

function ShenLu_buy3.msgbox()
	luaMsgBox.new("元宝", "很抱歉，您的元宝不足", {"前往充值", "取消"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
end
function ShenLu_buy3.chongz(h)
	CL:OpenUrlUseIEByType(3)
	local parent = GUI:WndGetParentM(h)
	GUI:WndClose(parent)
end

function ShenLu_buy3.out(h)
	local parent = GUI:WndGetParentM(h)
	GUI:WndClose(parent)
end

function ShenLu_buy3.buy(_handle)
	local index = GUI:WndGetParam(_handle)
	UI:Lua_SubmitForm("购买宝珠碎片表单", "buy", ""..index)
end

function ShenLu_buy3.closeWnd(_handle)		
	GUI:WndClose(ShenLu_buy3.WndHandle)
end

function ShenLu_buy3.InitItemInfoByKeyName(_WndHandle, KeyName)
	local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)
	if 0 ~= _ItemDataHandle then
		local _ItemTemplateHandle = CL:GetItemTemplateHandleByKeyName(KeyName)
		if _ItemTemplateHandle ~= 0 then
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_TIPSICON) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
			end
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_ID) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID)
			end
		end
		LuaArg = true
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)
		LuaArg = 0xFFFF
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
	end
end

ShenLu_buy3.main()