InlayCrystal = {}
function InlayCrystal.main()
	local ui = "<form default_parent='CrystalSystem'>"
	.. "<dialog OnInit='InlayCrystal.UIInit' id='InlayCrystal' image='1803700017' x='34' y='81' w='564' h='342' revmsg='true'>"
	.. "<itemctrl id='itemEquip' x='256' y='145' w='53' h='53' use_back='1803700011' auto_manage='true' rbtn_use='true' enable='true' OnLButtonDown='InlayCrystal.eEtemClick' OnItemMoveIn='InlayCrystal.OnMoveIn' revmsg='true'/>"
	.. "<itemctrl id='itemCrys1' x='151' y='70' w='53' h='53' use_back='0' auto_manage='true' rbtn_use='true' OnLButtonDown='InlayCrystal.itemClick' OnItemMoveIn='InlayCrystal.OnMoveIn' revmsg='true' count='0'/>"
	.. "<itemctrl id='itemCrys2' x='362' y='70' w='53' h='53' use_back='0' auto_manage='true'  rbtn_use='true' OnLButtonDown='InlayCrystal.itemClick' OnItemMoveIn='InlayCrystal.OnMoveIn' revmsg='true' count='0'/>"
	.. "<itemctrl id='itemCrys3' x='151' y='220' w='53' h='53' use_back='0' auto_manage='true' rbtn_use='true' OnLButtonDown='InlayCrystal.itemClick' OnItemMoveIn='InlayCrystal.OnMoveIn' revmsg='true' count='0'/>"
	.. "<itemctrl id='itemCrys4' x='362' y='220' w='53' h='53' use_back='0' auto_manage='true' rbtn_use='true' OnLButtonDown='InlayCrystal.itemClick' OnItemMoveIn='InlayCrystal.OnMoveIn' revmsg='true' count='0'/>"
	.. "<button id='operateBtn1' image='1803700007' x='135' y='137' param='1' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.btnFuncSelect' text='镶 嵌'/>"
	.. "<button id='operateBtn2' image='1803700007' x='346' y='137' param='2' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.btnFuncSelect' text='镶 嵌'/>"
	.. "<button id='operateBtn3' image='1803700007' x='135' y='287' param='3' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.btnFuncSelect' text='镶 嵌'/>"
	.. "<button id='operateBtn4' image='1803700007' x='346' y='287' param='4' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.btnFuncSelect' text='镶 嵌'/>"
	.. "<edit id='edit1' x='151' y='133' w='53' h='15' align='center' text_color='#FF0000' font='system'/>"
	.. "<edit id='edit2' x='362' y='133' w='53' h='15' align='center' text_color='#FF0000' font='system'/>"
	.. "<edit id='edit3' x='151' y='283' w='53' h='15' align='center' text_color='#FF0000' font='system'/>"
	.. "<edit id='edit4' x='362' y='283' w='53' h='15' align='center' text_color='#FF0000' font='system'/>"
	.. "<button id='unseal3' image='1803700007' x='135' y='287' param='3' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.unsealClick' text='解 封'/>"
	.. "<button id='unseal4' image='1803700007' x='346' y='287' param='4' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.unsealClick' text='解 封'/>"
	.."	<image id='aMagic' image='3020300900' type='animate' x='163' y='-19' w='193' h='313'/>"
	.. "</dialog>"
	.. "</form>"
	GenFormByString(ui)
end

InlayCrystal.WndHandle = 0										
InlayCrystal.HaveEquip = false											--放入装备
InlayCrystal.EquipGuid = ""												--装备的guid
InlayCrystal.clickItemHandle = 0										--点击的物品框
InlayCrystal.clickBtnHandle = 0										--点击的按钮
InlayCrystal.clickUnsealHandle = 0										--点击的解封按钮
InlayCrystal.CysTb = {"","","",""}									--待镶嵌宝石
InlayCrystal.inlayTb = {"","","",""}						
InlayCrystal.itemctrlHandleTbKV = {}
InlayCrystal.itemctrlHandleTbVK = {}

function InlayCrystal.UIInit(_GUIHandle)
	InlayCrystal.guid =""
	InlayCrystal.WndHandle = _GUIHandle
	
	
	for i = 1, 4 do
		local handle = GetWindow(_GUIHandle, "itemCrys" .. i)
		if handle ~= 0 then
			GUIWndSetParam(handle, i)
			InlayCrystal.itemctrlHandleTbVK[handle] = i
			InlayCrystal.itemctrlHandleTbKV[i] = handle	
			GUIWndSetEnableM(handle, false)			
		end
	end
	
	for i = 1, 4 do 
		local handle = GetWindow(_GUIHandle, "operateBtn" .. i)
		if handle ~= 0 then
			GUIButtonSetStateTextColor(handle,0,MakeARGB(255, 173, 179, 167))
			GUIButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
		end
	end
	
	for i = 3, 4 do
		local handle = GetWindow(_GUIHandle, "unseal" .. i)
		if handle ~= 0 then
			GUIButtonSetStateTextColor(handle,0,MakeARGB(255, 173, 179, 167))
			GUIButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
		end
	end
	
	local handle = GetWindow(_GUIHandle, "inlayCys")
	if handle ~= 0 then
		GUIButtonSetStateTextColor(handle,0,MakeARGB(255, 173, 179, 167))
		GUIButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
	end
end

function InlayCrystal.OnMoveIn(_handle, GUIData, DragIn, guid, ItemId, keyName, ItemPos, IsBound, Count)	
	local ctrlHandle = 0
	local mainType = 0 
	local subType = 0
	if guid ~= "" then
		if CLGetItemEntityPropByGUID(guid, ITEM_PROP_TYPE) then				--根据guid获取主类型
			mainType = as3.tolua(LuaRet)									--1为装备，4为材料	
		end
		--血符为装备中子类型5，宝石为材料中子类型1
		if CLGetItemEntityPropByGUID(guid, ITEM_PROP_SUBTYPE) then	
			subType = as3.tolua(LuaRet)
		end
	end
	
	if mainType == 5 and subType == 6 then									--选中道具为宝石
		for i=1,#InlayCrystal.CysTb do
			if InlayCrystal.CysTb[i] == guid then 
				return false
			end
		end
		if InlayCrystal.HaveEquip then
			local equipHandle = GetWindow(InlayCrystal.WndHandle, "itemEquip") 
			if _handle == equipHandle then
				return false
			end
			local param = GUIWndGetProperty(_handle, "填充状态")
			if param == "未填充" then								--若物品框为未填充状态则填充宝石
				local l,s = 0,0
				
				for i = 1, 4 do
					local uih = GetWindow(InlayCrystal.WndHandle, "itemCrys"..i)
					if uih ~= 0 then
						if GUIWndGetProperty(uih, "填充状态") == "未填充" then
							l = uih
							s = i
							break
						end
					end
				end
				if l ~= 0 then
					RDItemCtrlSetGUIDataPropByGUID(l, nil, guid)
					InlayCrystal.guid = guid
					--RDItemCtrlSetGUIDataByKeyName(l, keyName, 0, false)
				end
				--[[local a = InlayCrystal.itemctrlHandleTbVK[_handle]
				if a ~= 1 then
					if GUIWndGetProperty(InlayCrystal.itemctrlHandleTbKV[a-1], "填充状态") == "未填充" then
						if  CL:GetMouseGUIItemData() then
							local itemData = tonumber(as3.tolua(LuaRet))
							if itemData ~= 0 then
								InlayCrystal.attentionMsg(1,"请按顺序放入宝石！")
							end
						end
						return false
					end
				end--]]
				local index = GUIWndGetParam(l)
				InlayCrystal.CysTb[index] = guid
				GUIWndAddProperty(l, "填充状态", "预览")
				local btnHandle = 	GetWindow(InlayCrystal.WndHandle, "operateBtn" .. index)
				if btnHandle ~= 0 then
					GUIWndSetVisible(btnHandle, true)
					GUIWndSetEnableM(btnHandle, true)		
					GUIWndSetTextM(btnHandle, "镶 嵌")
					GUIButtonSetShine(btnHandle,true)
				end
				return false
			end
		else
			InlayCrystal.attentionMsg(1,"请放入装备！")
		end
	elseif mainType == 1 and subType ~= 5 then								--选中道具为装备并且不是血符
		if subType == 10 or subType == 11 or subType == 13 or subType == 15 then 
		else
			if CLGetItemEntityPropByGUID(guid, ITEM_PROP_LEVEL) then				
				local level = as3.tolua(LuaRet)			
				if tonumber(level) < 60 then
					InlayCrystal.attentionMsg(1,"装备等级过低无法镶嵌宝石")
					return false
				end						
			end
		end
		--[[if CLGetItemEntityPropByGUID(guid, ITEM_PROP_EQUIP_REFINELEVEL) then
			local refineLevel = as3.tolua(LuaRet)	
			if tonumber(refineLevel) < 3 then
				InlayCrystal.attentionMsg(1,"强化等级过低无法镶嵌宝石")
				return false
			end	 
		end		--]]
		local equipHandle = GetWindow(InlayCrystal.WndHandle, "itemEquip") 
		if _handle ==  equipHandle then
			InlayCrystal.resting()
			InlayCrystal.EquipGuid = guid
			InlayCrystal.HaveEquip = true
			UI:Lua_SubmitForm("宝石镶嵌表单", "loadEquipHoles", guid)
			return true
		end
	elseif InlayCrystal.HaveEquip then
		InlayCrystal.attentionMsg(1,"请放入宝石！")
	else
		InlayCrystal.attentionMsg(1,"请放入装备！")
	end
	
	return false
end

function InlayCrystal.initHoles(holesTb, holesNum)
	local btnState = {}
	if InlayCrystal.HaveEquip then	
		local handle = GetWindow(InlayCrystal.WndHandle, "inlayCys")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
	end
	--holesNum 可用孔（强化等级/3）
	for i = 1, #holesTb do
		local state = holesTb[i]
		local itemHandle = GetWindow(InlayCrystal.WndHandle, "itemCrys" .. i)
		local btnHandle = GetWindow(InlayCrystal.WndHandle, "operateBtn" .. i)
		--GUIWndSetEnableM(itemHandle, true)
		if not GUIButtonGetShine(btnHandle) then
			if i <= holesNum then
				if itemHandle ~= 0 then
					if state == "1" then																	--未启封状态，物品框不可用，按钮可见
						GUIItemCtrlSetBackImageID(itemHandle, 1803700015)
						GUIWndSetEnableM(itemHandle, false)
						GUIWndAddProperty(itemHandle, "填充状态", "")	
						local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
						if btnHandle ~= 0 then
							GUIWndSetVisible(btnHandle, true)
						end
					elseif state == "0" then																--禁用状态，物品框不可用，按钮不可见
						GUIItemCtrlSetBackImageID(itemHandle, 1803700014)	
						GUIWndSetEnableM(itemHandle, false)		
						GUIWndAddProperty(itemHandle, "填充状态", "")											
						local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
						if btnHandle ~= 0 then
							GUIWndSetVisible(btnHandle, false)
						end
					elseif state == "2" then
						GUIItemCtrlSetBackImageID(itemHandle, 1803700013)	
						GUIWndSetEnableM(itemHandle, true)
						GUIWndAddProperty(itemHandle, "填充状态", "未填充")	
						local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
						if btnHandle ~= 0 then
							GUIWndSetVisible(btnHandle, false)
						end
					elseif state ~= "2" then															--启封状态，且有宝石KeyName，则用KeyName填充物品框
						GUIItemCtrlSetBackImageID(itemHandle, 1803700013)	
						GUIWndSetEnableM(itemHandle, false)
						RDItemCtrlSetGUIDataByKeyName(itemHandle, state, 0, false)
						GUIWndAddProperty(itemHandle, "填充状态", "")
						local btnHandle = 	GetWindow(InlayCrystal.WndHandle, "operateBtn" .. i)
						if btnHandle ~= 0 then
							GUIWndSetVisible(btnHandle, true)
							GUIWndSetEnableM(btnHandle, false)
							--GUIWndSetTextM(btnHandle, "拆 除")
							GUIButtonSetShine(btnHandle,false)
						end 		
						local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
						if btnHandle ~= 0 then
							GUIWndSetVisible(btnHandle, false)
						end
					end
				end
				
			else
				if itemHandle ~= 0 then
					GUIWndSetEnableM(itemHandle, false)
					GUIItemCtrlSetBackImageID(itemHandle, 1803700014)
					GUIWndAddProperty(itemHandle, "填充状态", "")	
				end
				if i >= 3 then
					local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
					if btnHandle ~= 0 then
						GUIWndSetVisible(btnHandle, false)
					end
				end
			end
		end
	end
	--[[for i = 1, 4 do
		local itemHandle = GetWindow(InlayCrystal.WndHandle, "itemCrys" .. i)
		local state = GUIWndGetProperty(itemHandle, "填充状态")
	end--]]
end
function InlayCrystal.eEtemClick(_handle)
	if not InlayCrystal.HaveEquip then
		return
	else
		InlayCrystal.HaveEquip = false	
		InlayCrystal.resting()			--重置
	end				
end

function InlayCrystal.itemClick(_handle)
	InlayCrystal.guid = ""
	InlayCrystal.clickItemHandle = _handle
	local state = GUIWndGetProperty(_handle, "填充状态")
	if state == "预览"	then										--有宝石
		GUIWndAddProperty(_handle, "填充状态", "未填充")
		GUIItemCtrlClearItemData(_handle)
		local index = GUIWndGetParam(_handle)
		InlayCrystal.CysTb[index] = ""
		local btnHandle = GetWindow(InlayCrystal.WndHandle, "operateBtn" .. index)
		if btnHandle ~= 0 then
			GUIWndSetVisible(btnHandle, false)
		end
	else
		local param = GUIWndGetParam(_handle)
		UI:Lua_SubmitForm("宝石镶嵌表单", "getSubGold", InlayCrystal.EquipGuid .. "#" ..param)
	end
end

function InlayCrystal.resting()
	InlayCrystal.EquipGuid = ""
	InlayCrystal.clickItemHandle = 0
	InlayCrystal.CysTb = {"","","",""}
	InlayCrystal.inlayTb = {"","","",""}
	for i = 1, 4 do
		local handle = GetWindow(InlayCrystal.WndHandle, "itemCrys" .. i)
		if handle ~= 0 then
			if not InlayCrystal.HaveEquip then
				GUIItemCtrlSetBackImageID(handle, 0)
				GUIWndSetEnableM(handle, false)
			end
			GUIItemCtrlClearItemData(handle)
		end
		local btnHandle = 	GetWindow(InlayCrystal.WndHandle, "operateBtn" .. i)
		if btnHandle ~= 0 then
			GUIWndSetVisible(btnHandle, false)
			GUIButtonSetShine(btnHandle,false)
		end 
		if i == 3 or i == 4 then
			local unsealHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
			if unsealHandle ~= 0 then
				GUIWndSetVisible(unsealHandle, false)
			end
		end
	end
	
end


function InlayCrystal.unsealClick(_handle)
	InlayCrystal.clickUnsealHandle = _handle
	local param = GUIWndGetParam(_handle)
	UI:Lua_SubmitForm("宝石镶嵌表单", "unsealHole", InlayCrystal.EquipGuid .. "#" ..param)
end

function InlayCrystal.unsealHole(holeNum)
	local itemHandle = GetWindow(InlayCrystal.WndHandle, "itemCrys" .. holeNum)
	if itemHandle ~= 0 then
		GUIItemCtrlSetBackImageID(itemHandle, 1803700013)
		GUIWndSetEnableM(itemHandle, true)
		GUIWndAddProperty(itemHandle, "填充状态", "未填充")
	end
	local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. holeNum)
	if btnHandle ~= 0 then
		GUIWndSetVisible(btnHandle, false)
	end
end

function InlayCrystal.btnFuncSelect(h)
	InlayCrystal.clickBtnHandle = h
	local p = WndGetParam(h)
	local handle = GetWindow(InlayCrystal.WndHandle, "itemCrys"..p)
	InlayCrystal.inlayTb[p] = InlayCrystal.CysTb[p]
	if GUIButtonGetShine(h) then
		GUIButtonSetShine(h,false)
		InlayCrystal.inlayCys()
	else
		InlayCrystal.itemClick(handle)
	end
end

function InlayCrystal.takeOff(_handle)
	local param = GUIWndGetParam(InlayCrystal.clickItemHandle)
	UI:Lua_SubmitForm("宝石镶嵌表单", "stoneTakeOff", InlayCrystal.EquipGuid .. "#" .. param)
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

function InlayCrystal.takeOffNeedGold(costMoney)
	luaMsgBox.new("宝石摘除", "确定要花费" .. costMoney .. "金币（绑金）摘除宝石？", {"是", "否"}, {"InlayCrystal.takeOff", 0}, _handle)
end

function InlayCrystal.takeOffFinish()
	GUIItemCtrlClearItemData(InlayCrystal.clickItemHandle)
	GUIWndSetEnableM(InlayCrystal.clickItemHandle, true)
	GUIWndSetVisible(InlayCrystal.clickItemHandle, true)
	GUIWndAddProperty(InlayCrystal.clickItemHandle, "填充状态", "未填充")
	local param = GUIWndGetParam(InlayCrystal.clickItemHandle)  
	local handle = GetWindow(InlayCrystal.WndHandle, "operateBtn" .. param)
	if handle ~=0 then
		GUIWndSetVisible(handle, false)
	end
	InlayCrystal.inlayTb = {"","","",""}
end

function InlayCrystal.inlayCys()
	if #InlayCrystal.inlayTb > 0 then
		UI:Lua_SubmitForm("宝石镶嵌表单", "inlayStone", InlayCrystal.EquipGuid .. "#" .. serialize(InlayCrystal.inlayTb))
	end
end

function InlayCrystal.attentionMsg(sender, str)
	local n = tonumber(sender)
	local handle = 0
	local x = 0
	--1为装备框，2为镶嵌按钮，3为点击的宝石框，4为解封按钮
	if n == 1 then
		handle = GetWindow(InlayCrystal.WndHandle, "itemEquip")
		x = -83
	elseif n == 2 then
		handle = InlayCrystal.clickBtnHandle
		x = -65
	elseif n == 3 then
		handle = InlayCrystal.clickItemHandle
		x = -80
	elseif n == 4 then
		handle = InlayCrystal.clickUnsealHandle
		x = -65  
	elseif n ==5 then
		
	end
	if handle ~= 0 then
		local color = MakeARGB(255, 255, 0, 0)
		window_msg_up(handle , str, x, -16, 70, color, 3)
	end
end

InlayCrystal.main()