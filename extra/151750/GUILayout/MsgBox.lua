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
--]]--
function luaMsgBox.new(name, text, btn_, btnFun_, param)
	local parent = LuaGlobal["AttachPartent"]
	local mb = GUI:WndCreateWnd(parent, "MsgBox_"..name, 0, 0, 0)
	luaMsgBox.WndHandle = mb
	if mb ~= 0 then
		GUI:WndSetSizeM(mb, 277, 211)
		GUI:WndSetIsESCClose(mb, true)
		GUI:WndSetMoveWithLBM(mb)
		--GUI:WndSetMagicUI(mb, 1)
		CenterWnd(mb)
	end
	
	local uih = GUI:ImageCreate(mb,"mainBackground",1800000280,0,0)
	if uih ~= 0 then
		--GUI:ImageSetAroundImage(uih, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
		GUI:WndSetSizeM(uih,277, 211)
		GUI:WndSetEnableM(uih, false) 
	end
	
	luaMsgBox.param[name] = param
	
	local _GUIHandle = 0
	local t = luaMsgBox.getTitle(name)
	_GUIHandle = GUI:ImageCreate(mb, "wndTitleImage", t[1], t[2], t[3])		--标题
	if _GUIHandle ~= 0 then GUI:WndSetEnableM(_GUIHandle, false) end
	
	--内容
	if name == "出售货物" then
		_GUIHandle = GUI:ImageCreate(mb, "editImage", 1802000008, 78, 110) 
		if _GUIHandle ~= 0 then GUI:WndSetEnableM(_GUIHandle, false) end
		_GUIHandle = GUI:ImageCreate(mb, "moneyImage", 0, 58, 121)
		if _GUIHandle ~= 0 then 
			GUI:WndSetEnableM(_GUIHandle, false) 
			luaMsgBox.sellItem_moneyImg = _GUIHandle
		end
		_GUIHandle = GUI:EditCreate(mb, "money", 92, 116, 105, 20)
		if _GUIHandle ~= 0 then 
			GUI:EditSetBNumber(_GUIHandle, true) 
			luaMsgBox.sellItem_moneyEdit = _GUIHandle
		end
		_GUIHandle = GUI:ImageCreate(mb, "itemCtrlImage", 1800000138, 60 ,55)
		if _GUIHandle ~= 0 then GUI:WndSetEnableM(_GUIHandle, false) end
		_GUIHandle = GUI:ItemCtrlCreate(mb, "item", 0, 64, 58, 40, 40)
		if _GUIHandle ~= 0 then 
			GUI:ItemCtrlSetGUIData(_GUIHandle, luaMsgBox.param["出售货物"])
		end
		
		_GUIHandle = GUI:CheckBoxCreate(mb, "goldCB", 1800000176, l.gold..l.sell, 120, 55)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "luaMsgBox.goldCBcc")
		end	
		_GUIHandle = GUI:CheckBoxCreate(mb, "ingotCB", 1800000176, l.ingot..l.sell, 120, 82)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "luaMsgBox.ingotCBCBcc")
		end	
		
		updataCheckBox({"goldCB", "ingotCB"}, _GUIHandle)
		GUI:WndSetImageID(luaMsgBox.sellItem_moneyImg, 1800000054)
		
		if btn_ == 0 then btn_ = 2 end
		if btnFun_ == 0 then
			btnFun_ = {"luaMsgBox.sellItemConfirm", "luaMsgBox.sellItemCancel"}
		end
	elseif name == "确认购买" then
		_GUIHandle = GUI:ImageCreate(mb, "itemCtrlImage", 1800000138, 112 ,50)
		if _GUIHandle ~= 0 then GUI:WndSetEnableM(_GUIHandle, false) end
		_GUIHandle = GUI:ItemCtrlCreate(mb, "item", 0, 115, 58, 40, 40)
		if _GUIHandle ~= 0 then 
			local info = strsplit(param, ";")
			GUI:ItemCtrlSetGUIData(_GUIHandle, info[2])
		end
		_GUIHandle = GUI:RichEditCreate(mb, "priceRE", 20, 105, 233, 22)
		if _GUIHandle ~= 0 then 
			GUI:RichEditSetDefaultTextColor(_GUIHandle, 4293317252)
			local priceText = strsplit(text, ";")
			if priceText[1] == "0" then
				priceText[1] = l.gold
			else
				priceText[1] = l.ingot
			end
			local offx = math.ceil((226-CL:GetFontStrWidth("system", l.price..priceText[2]..priceText[1]))/2)
			GUI:RichEditAppendString(_GUIHandle, "#OFFSET<X:"..offx..",Y:0>#"..l.price.."#COLORCOLOR_WHITE#"..priceText[2].."#COLORCOLOREND# "..priceText[1])
			GUI:WndSetEnableM(_GUIHandle, false) 
		end
		_GUIHandle = GUI:EditCreate(mb, "confirmText", 20, 122, 233, 20)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, 4293317252)
			GUI:EditSetTextM(_GUIHandle, l.buyItemConfirm)
			GUI:EditSetFontCenter(_GUIHandle)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		
		if btn_ == 0 then btn_ = 2 end
		if btnFun_ == 0 then
			btnFun_ = {"luaMsgBox.buyItemConfirm", 0}
		end
	elseif name == "创建行会" then
		_GUIHandle = GUI:ButtonCreate(mb, "closeBtn", 1800000043, 239, 3)
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "luaMsgBox.Close")
		end
		_GUIHandle = GUI:EditCreate(mb, "familyName_f", 30, 55, 60, 24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, 4293317252)
			GUI:EditSetTextM(_GUIHandle, l.familyName)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(mb, "costIngot_f", 30, 98, 90, 24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, 4293317252)
			GUI:EditSetTextM(_GUIHandle, l.costMoney)
			GUI:WndSetEnableM(_GUIHandle, false)
		end
		_GUIHandle = GUI:ImageCreate(mb, "familyNameBackImg", 1802100007, 95 ,56)
		if _GUIHandle ~= 0 then 
			GUI:WndSetEnableM(_GUIHandle, false) 
		end
		_GUIHandle = GUI:EditCreate(mb, "familyName", 115, 55, 60, 24)
		if _GUIHandle ~= 0 then
			GUI:EditSetTextColor(_GUIHandle, 4293317252)
			GUI:EditSetMaxCharNum(_GUIHandle, 10)
			GUI:WndSetActiveM(_GUIHandle, true)
		end
		_GUIHandle = GUI:ImageCreate(mb, "moneyImg", 1800000054, 95 ,105)
		if _GUIHandle ~= 0 then 
			GUI:WndSetEnableM(_GUIHandle, false) 
		end
		_GUIHandle = GUI:EditCreate(mb, "money", 115, 97, 60, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextM(_GUIHandle, tostring(param))
			if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then
				if CL:Less(tostring(param), LuaRet) then
					GUI:EditSetTextColor(_GUIHandle, 4293317252)
				else
					GUI:EditSetTextColor(_GUIHandle, 4294901760)
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
		_GUIHandle = GUI:RichEditCreate(mb, "textRE", 20, 46, 233, 105)
		if _GUIHandle ~= 0 then 
			GUI:RichEditSetEditEnable(_GUIHandle, false)
			GUI:RichEditSetCurFont(_GUIHandle, "SIMLI18")
			GUI:RichEditSetTotalLine(_GUIHandle, 6)
			GUI:RichEditAppendString(_GUIHandle, luaMsgBox.setReText(name, text))
		end
	end
	
	--按钮
	if btn_ == 0 then 
		btn_ = {l.cancel}
	elseif btn_ == 1 then
		btn_ = {l.confirm}
	elseif btn_ == 2 then
		btn_ = {l.confirm, l.cancel}
	end
	local bLen = #btn_
	for i = 1, bLen do
		if name == "元宝" or name == "死亡" then
			_GUIHandle = GUI:ButtonCreate(mb, btn_[i], 1800000150, 92+(i-(bLen+1)/2)*100, 152)
			GUI:WndSetSizeM(_GUIHandle, 84, 32)
		else
			_GUIHandle = GUI:ButtonCreate(mb, btn_[i], 1800000134, 101+(i-(bLen+1)/2)*85, 152)
			GUI:WndSetSizeM(_GUIHandle, 70, 37)
		end	
		if _GUIHandle ~= 0 then
			GUI:WndSetTextOffset(_GUIHandle, -1, -1)
			GUI:WndSetTextM(_GUIHandle, btn_[i])
			GUI:WndSetTextColorM(_GUIHandle, 4293317252)
			if next(btnFun_) ~= nil and btnFun_[i] ~= 0 then
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, btnFun_[i])
			else
				GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "luaMsgBox.Close")
			end
		end
	end
end

function luaMsgBox.Close()
	GUI:WndClose(luaMsgBox.WndHandle)
end

function luaMsgBox.getTitle(name)
	local id, x, y = 0, 0, 0
	if name == "出售货物" then
		id = 1801500064
		x = 84
		y = 1
	elseif name == "确认购买" then
		id = 1801500065
		x = 84
		y = 1
	elseif name == "创建行会" then
		id = 1801500117
		x = 86
		y = 2
	else	--系统
		id = 1801500066
		x = 109
		y = 0
	end
	local t = {id, x, y}
	return t
end

function luaMsgBox.setReText(name, text)
	local reText, offset = 0 ,0
	if text ~= 0 then 
		offset = math.ceil((233 - CL:GetFontStrWidth("SIMLI18", text) - 28)/2) 
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
		reText = text
	end
	
	return reText
end

--sellStallItem
function luaMsgBox.sellItemConfirm(h)
	local price = GUI:EditGetInt(luaMsgBox.sellItem_moneyEdit)
	if price == 0 or price == nil then
		return
	end
	local pType = 0
	if GUI:WndGetImageID(luaMsgBox.sellItem_moneyImg) == 1800000054 then
		pType = 1
	end
	CL:StallSetPrice(luaMsgBox.param["出售货物"], pType, price)
	luaMsgBox.Close()
end

function luaMsgBox.sellItemCancel(h)
	CL:StallCancelSetPrice(luaMsgBox.param["出售货物"])
	luaMsgBox.Close()
end

function luaMsgBox.goldCBcc(h)
	updataCheckBox({"goldCB", "ingotCB"}, h)
	GUI:WndSetImageID(luaMsgBox.sellItem_moneyImg, 1800000052)
	GUI:WndSetActiveM(luaMsgBox.sellItem_moneyEdit, true)
end

function luaMsgBox.ingotCBCBcc(h)
	updataCheckBox({"goldCB", "ingotCB"}, h)
	GUI:WndSetImageID(luaMsgBox.sellItem_moneyImg, 1800000054)
	GUI:WndSetActiveM(luaMsgBox.sellItem_moneyEdit, true)
end

--buyStallItem
function luaMsgBox.buyItemConfirm(h)
	local info = strsplit(luaMsgBox.param["确认购买"], ";")
	UI:Lua_GetItemGUIDataPropByType(info[2], ITEMGUIDATA_ITEMCOUNT)
	CL:StallItemBuyConfirm(info[1], info[2], LuaRet)
	luaMsgBox.Close()
end

--createFamily
function luaMsgBox.createFamily(h)
	if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then
		if tonumber(LuaRet) < tonumber(luaMsgBox.param["创建行会"]) then
			msg("元宝不足，创建失败")
			return
		end
	end
			
	local _GUIHandle = GUI:WndGetParentM(h)
	_GUIHandle = GUI:WndFindChildM(_GUIHandle, "familyName")
	local name = GUI:EditGetTextM(_GUIHandle)
	if name then
		UI:Lua_SubmitForm("行会", "GetFamilyName", name)
		local parentHandle = GUI:WndGetParentM(h)
		if parentHandle ~= 0 then
			GUI:WndClose(parentHandle)
		end
	end
end