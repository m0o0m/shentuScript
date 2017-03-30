luaMsgBox = {}

luaMsgBox.localString = {}
local l = luaMsgBox.localString
l.confirm = "确认"
l.cancel = "取消"
l.teamInvite = "#OFFSET<X:69,Y:0>##COLORCOLOR_YELLOW#邀请你加入队伍#COLORCOLOREND#"
l.joinTeam = "#OFFSET<X:75,Y:0>##COLORCOLOR_YELLOW#申请加入队伍#COLORCOLOREND#"
l.tradeInvite = "#OFFSET<X:69,Y:0>##COLORCOLOR_BLUE#邀请你进行交易#COLORCOLOREND#"
l.gold = "金币"
l.ingot = "元宝"
l.sell = "出售"
l.price = "售价:"
l.buyItemConfirm = "您是否要购买?"
l.familyName = "行会名："
l.costMoney = "消耗元宝："

luaMsgBox.sellItem_moneyImg = 0
luaMsgBox.sellItem_moneyEdit = 0
luaMsgBox.param = {}

--[[arg: 提示框名字，
		文本内容，
		按钮文本table({"yes", "no"}，0 -单个取消btn，1 -单个确认btn，2 -确认和取消btn), 
		按钮函数table({"fun1", 0}) ,
		参数param
]]--
function luaMsgBox.new(name, text, btn_, btnFun_, param)
	local parent = LuaGlobal["AttachPartent"]
	local mb = GUIWndCreateWnd(parent, "MsgBox_"..name, 1804600011, 0, 0)--1800000280
	if mb ~= 0 then
		GUIWndSetSizeM(mb, 277, 211)
		GUIWndSetIsESCClose(mb, true)
		GUIWndSetMoveWithLBM(mb)
		GUIWndSetMagicUI(mb, 1)
		CenterWnd(mb)
	end
	
	luaMsgBox.param[name] = param
	
	local _GUIHandle = 0
	local t = luaMsgBox.getTitle(name)
	_GUIHandle = GUIImageCreate(mb, "wndTitleImage", t[1], t[2], t[3])		--标题
	if _GUIHandle ~= 0 then GUIWndSetEnableM(_GUIHandle, false) end
	
	--内容
	if name == "出售货物" then
		_GUIHandle = GUIImageCreate(mb, "editImage", 1802000008, 78, 110) 
		if _GUIHandle ~= 0 then GUIWndSetEnableM(_GUIHandle, false) end
		_GUIHandle = GUIImageCreate(mb, "moneyImage", 0, 54, 118)
		if _GUIHandle ~= 0 then 
			GUIWndSetEnableM(_GUIHandle, false) 
			luaMsgBox.sellItem_moneyImg = _GUIHandle
		end
		_GUIHandle = GUIEditCreate(mb, "money", 92, 116, 105, 20)
		if _GUIHandle ~= 0 then 
			GUIEditSetBNumber(_GUIHandle, true) 
			GUIEditSetMaxCharNum(_GUIHandle, 9)
			luaMsgBox.sellItem_moneyEdit = _GUIHandle
		end
		_GUIHandle = GUIImageCreate(mb, "itemCtrlImage", 1800000138, 60 ,55)
		if _GUIHandle ~= 0 then GUIWndSetEnableM(_GUIHandle, false) end
		_GUIHandle = GUIItemCtrlCreate(mb, "item", 0, 64, 58, 40, 40)
		if _GUIHandle ~= 0 then 
			
			GUIItemCtrlSetGUIData(_GUIHandle, luaMsgBox.param["出售货物"])
		end
		
		_GUIHandle = GUICheckBoxCreate(mb, "goldCB", 1800000176, l.gold..l.sell, 120, 55)
		if _GUIHandle ~= 0 then
			GUIWndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "luaMsgBox.goldCBcc")
		end	
		_GUIHandle = GUICheckBoxCreate(mb, "ingotCB", 1800000176, l.ingot..l.sell, 120, 82)
		if _GUIHandle ~= 0 then
			GUIWndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "luaMsgBox.ingotCBCBcc")
		end	
		
		updataCheckBox({"goldCB", "ingotCB"}, _GUIHandle)
		GUIWndSetImageID(luaMsgBox.sellItem_moneyImg, 1806600012)
		
		if btn_ == 0 then btn_ = 2 end
		if btnFun_ == 0 then
			btnFun_ = {"luaMsgBox.sellItemConfirm", "luaMsgBox.sellItemCancel"}
		end
	elseif name == "确认购买" then
		--[[
		_GUIHandle = GUIImageCreate(mb, "itemCtrlImage", 1800000138, 112 ,50)
		if _GUIHandle ~= 0 then GUIWndSetEnableM(_GUIHandle, false) end
		--]]	
		_GUIHandle = GUIItemCtrlCreate(mb, "item", 0, 115, 63, 40, 40)
		if _GUIHandle ~= 0 then 
			GUIItemCtrlSetBackImageID(_GUIHandle, 1800000138)
			local info = strsplit(param, ";")
			GUIItemCtrlSetGUIData(_GUIHandle, info[2])
		end
		_GUIHandle = GUIRichEditCreate(mb, "priceRE", 20, 113, 233, 20)
		if _GUIHandle ~= 0 then 
			GUIRichEditSetDefaultTextColor(_GUIHandle, webColor.goldenText)
			local priceText = strsplit(text, ";")
			if priceText[1] == "0" then
				priceText[1] = l.gold
			else
				priceText[1] = l.ingot
			end
			local offx = math.ceil((226-CLGetFontStrWidth("system", l.price..priceText[2]..priceText[1]))/2)
			GUIRichEditAppendString(_GUIHandle, "#OFFSET<X:"..offx..",Y:0>#"..l.price.."#COLORCOLOR_WHITE#"..priceText[2].."#COLORCOLOREND# "..priceText[1])
			GUIWndSetEnableM(_GUIHandle, false) 
		end
		--[[
		_GUIHandle = GUIEditCreate(mb, "confirmText", 20, 122, 233, 20)
		if _GUIHandle ~= 0 then
			GUIEditSetTextColor(_GUIHandle, webColor.goldenText)
			GUIEditSetTextM(_GUIHandle, l.buyItemConfirm)
			GUIEditSetFontCenter(_GUIHandle)
			GUIWndSetEnableM(_GUIHandle, false)
		end
		--]]
		if btn_ == 0 then btn_ = 2 end
		if btnFun_ == 0 then
			btnFun_ = {"luaMsgBox.buyItemConfirm", 0}
		end
	elseif name == "创建行会" then
		_GUIHandle = GUIButtonCreate(mb, "closeBtn", 1800000068, 224, 7)
		if _GUIHandle ~= 0 then
			GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "luaWndClose")
		end
		_GUIHandle = GUIEditCreate(mb, "familyName_f", 30, 55, 60, 24)
		if _GUIHandle ~= 0 then
			GUIEditSetTextColor(_GUIHandle, webColor.goldenText)
			GUIEditSetTextM(_GUIHandle, l.familyName)
			GUIWndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUIEditCreate(mb, "costIngot_f", 30, 98, 90, 24)
		if _GUIHandle ~= 0 then
			GUIEditSetTextColor(_GUIHandle, webColor.goldenText)
			GUIEditSetTextM(_GUIHandle, l.costMoney)
			GUIWndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUIImageCreate(mb, "familyNameBackImg", 1802100007, 95 ,56)
		if _GUIHandle ~= 0 then 
			GUIWndSetEnableM(_GUIHandle, false) 
		end
		_GUIHandle = GUIEditCreate(mb, "familyName", 115, 55, 60, 24)
		if _GUIHandle ~= 0 then
			GUIEditSetTextColor(_GUIHandle, webColor.goldenText)
			GUI:EditSetMaxCharNum(_GUIHandle, 10)
			WndSetFocusM(_GUIHandle)
		end
		_GUIHandle = GUIImageCreate(mb, "moneyImg", webIcon.ingot_s, 91 ,101)
		if _GUIHandle ~= 0 then 
			GUIWndSetEnableM(_GUIHandle, false) 
		end
		_GUIHandle = GUIEditCreate(mb, "money", 115, 97, 60, 24)
		if _GUIHandle ~= 0 then
			GUIWndSetEnableM(_GUIHandle, false)
			GUIEditSetTextM(_GUIHandle, param)
			if CLGetPlayerSelfProperty64(ROLE_PROP64_INGOT) then
				if as3.tolua(LuaRet) >= param then
					GUIEditSetTextColor(_GUIHandle, webColor.goldenText)
				else
					GUIEditSetTextColor(_GUIHandle, webColor.redText)
				end
			end
		end
		
		if btn_ == 0 or btn_ == "" or btn_ == {}then
			btn_ = {"创建"}
		end
		if btnFun_ == 0 or btnFun_ == "" or btnFun_ == {}then
			btnFun_ = {"luaMsgBox.createFamily"}
		end
	else
		_GUIHandle = GUIRichEditCreate(mb, "textRE", 20, 46, 215, 105)
		if _GUIHandle ~= 0 then 
			GUIWndSetEnableM(_GUIHandle, false)
			GUIRichEditSetCurFont(_GUIHandle, "TitleFont1")
			GUIRichEditSetTotalLine(_GUIHandle, 4)
			GUIRichEditAppendString(_GUIHandle, luaMsgBox.setReText(name, text))
		end
	end
	
	--按钮
	if btn_ == 0 then 
		btn_ = {l.cancel}
	elseif btn_ == 1 then
		btn_ = {l.confirm}
	elseif btn_ == 2 then
		btn_ = {l.confirm, l.cancel}
	end--0571-111-86439
	local bLen = #btn_
	for i = 1, bLen do
		if name == "死亡" then
			_GUIHandle = GUIButtonCreate(mb, btn_[i], 1800000150, 92+(i-(bLen+1)/2)*100, 152)
		elseif name == "元宝" then
			if i == 1 then
				_GUIHandle = GUIButtonCreate(mb, btn_[i], 1804600012, 92+(i-(bLen+1)/2)*100+28, 145)
				WndAddEffect(_GUIHandle, btn_[i], 3020301400, -68, -35, 100, 0)
			end
			if i == 2 then
				_GUIHandle = GUIButtonCreate(mb, btn_[i], 1800000068, 92+(i-(bLen+1)/2)*100+82, 7)
			end
		else
			_GUIHandle = GUIButtonCreate(mb, btn_[i], 1800000134, 96+(i-(bLen+1)/2)*105, 146)
		end	
		if _GUIHandle ~= 0 then
			GUIWndSetSizeM(_GUIHandle, 74, 43)
			GUIWndSetTextOffset(_GUIHandle, -1, 1)
			if name ~= "元宝" then
				GUIWndSetTextM(_GUIHandle, btn_[i])
				GUIWndSetSizeM(_GUIHandle, 74, 43)
			end
			GUIWndSetTextColorM(_GUIHandle, webColor.goldenText)
			if next(btnFun_) ~= nil and btnFun_[i] ~= 0 then
				GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, btnFun_[i])
			else
				GUIWndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "luaWndClose")
			end
		end
	end
end

function luaMsgBox.getTitle(name)
	local id, x, y = 0, 0, 0
	if name == "出售货物" then
		id = 1801500064
		x = 84
		y = 3
	elseif name == "确认购买" then
		id = 1801500065
		x = 84
		y = 3
	elseif name == "创建行会" then
		id = 1801500117
		x = 86
		y = 5
	else	--系统
		id = 1801500066
		x = 99
		y = 2
	end
	local t = {id, x, y}
	return t
end

function luaMsgBox.setReText(name, text)
	local reText, offset = 0 ,0
	if text ~= 0 then 
		offset = math.ceil((233 - CLGetFontStrWidth("TitleFont1", text) - 28)/2) 
	end
	if name == "交易邀请" then
		reText = "\n#OFFSET<X:"..offset..",Y:0>#【"..text.."】\n\n"..l.tradeInvite
	elseif name == "组队邀请" then
		reText = "\n#OFFSET<X:"..offset..",Y:0>#【"..text.."】\n\n"..l.teamInvite
	elseif name == "申请入队" then
		reText = "\n#OFFSET<X:"..offset..",Y:0>#【"..text.."】\n\n"..l.joinTeam
	elseif name == "元宝" then
		offset = offset + 10
		reText = "\n\n#OFFSET<X:"..offset..",Y:0>##COLORCOLOR_YELLOW#"..text.."#COLORCOLOREND#\n\n"	
	elseif name == "死亡" then
		offset = offset - 20
		reText = "\n\n#OFFSET<X:"..offset..",Y:0>#您被  #COLORCOLOR_RED#"..text.."#COLORCOLOREND#  杀死了\n\n"	
	else
		reText = "#OFFSET<X:10,Y:25>#"..text.."\n\n"	
		--reText = text
	end
	
	return reText
end

--sellStallItem
function luaMsgBox.sellItemConfirm(h)
	local price = GUIEditGetInt(luaMsgBox.sellItem_moneyEdit)
	if price == 0 or price == nil then
		return
	end
	local pType = 0
	if GUIWndGetImageID(luaMsgBox.sellItem_moneyImg) == 1806600012 then
		pType = 1
	end
	CLStallSetPrice(luaMsgBox.param["出售货物"], pType, price)
	luaWndClose(h)
end

function luaMsgBox.sellItemCancel(h)
	CLStallCancelSetPrice(luaMsgBox.param["出售货物"])
	luaWndClose(h)
end

function luaMsgBox.goldCBcc(h)
	updataCheckBox({"goldCB", "ingotCB"}, h)
	GUIWndSetImageID(luaMsgBox.sellItem_moneyImg, 1806600015)
	GUIWndSetActiveM(luaMsgBox.sellItem_moneyEdit, true)
end

function luaMsgBox.ingotCBCBcc(h)
	updataCheckBox({"goldCB", "ingotCB"}, h)
	GUIWndSetImageID(luaMsgBox.sellItem_moneyImg, 1806600012)
	GUIWndSetActiveM(luaMsgBox.sellItem_moneyEdit, true)
end

--buyStallItem
function luaMsgBox.buyItemConfirm(h)
	local info = strsplit(luaMsgBox.param["确认购买"], ";")
	UI:Lua_GetItemGUIDataPropByType(info[2], ITEMGUIDATA_ITEMCOUNT)
	CLStallItemBuyConfirm(info[1], info[2], as3.tolua(LuaRet))
	luaWndClose(h)
end

--createFamily
function luaMsgBox.createFamily(h)
	if CLGetPlayerSelfProperty64(ROLE_PROP64_INGOT) then
		if tonumber(as3.tolua(LuaRet)) < tonumber(luaMsgBox.param["创建行会"]) then
			msg("元宝不足，创建失败")
			return
		end
	end

	local _GUIHandle = GUIWndGetParentM(h)
	_GUIHandle = GUIWndFindChildM(_GUIHandle, "familyName")
	local name = GUIEditGetTextM(_GUIHandle)
	if name then
		if string.len(name) == 0 then
			luaMsgBox.new("行会名检测", "行会名不能为空", {"确定", "取消"}, {0, 0}, "")
		else 
			UI:Lua_SubmitForm("行会", "GetFamilyName", name)
			luaWndClose(h)
		end
	end
end