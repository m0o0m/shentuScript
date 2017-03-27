InlayCrystal = {}
function InlayCrystal.main()
	local ui = "<form default_parent='CrystalSystem'>"
	.. "<dialog OnInit='InlayCrystal.UIInit' id='InlayCrystal' image='1803700017' x='34' y='81' w='564' h='342' revmsg='true'>"
	.. "<itemctrl id='itemEquip' x='256' y='145' w='53' h='53' use_back='1803700011' auto_manage='true' rbtn_use='true' enable='true' OnLButtonDown='InlayCrystal.eEtemClick' OnItemMoveIn='InlayCrystal.OnMoveIn' revmsg='true'/>"
	.. "<itemctrl id='itemCrys1' x='151' y='70' w='53' h='53' use_back='0' auto_manage='true' rbtn_use='true' OnLButtonDown='InlayCrystal.itemClick' OnItemMoveIn='InlayCrystal.OnMoveIn' revmsg='true' count='0'/>"
	.. "<itemctrl id='itemCrys2' x='362' y='70' w='53' h='53' use_back='0' auto_manage='true'  rbtn_use='true' OnLButtonDown='InlayCrystal.itemClick' OnItemMoveIn='InlayCrystal.OnMoveIn' revmsg='true' count='0'/>"
	.. "<itemctrl id='itemCrys3' x='151' y='220' w='53' h='53' use_back='0' auto_manage='true' rbtn_use='true' OnLButtonDown='InlayCrystal.itemClick' OnItemMoveIn='InlayCrystal.OnMoveIn' revmsg='true' count='0'/>"
	.. "<itemctrl id='itemCrys4' x='362' y='220' w='53' h='53' use_back='0' auto_manage='true' rbtn_use='true' OnLButtonDown='InlayCrystal.itemClick' OnItemMoveIn='InlayCrystal.OnMoveIn' revmsg='true' count='0'/>"
	.. "<button id='operateBtn1' image='1803700007' x='135' y='137' param='1' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.btnFuncSelect' text='�� Ƕ'/>"
	.. "<button id='operateBtn2' image='1803700007' x='346' y='137' param='2' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.btnFuncSelect' text='�� Ƕ'/>"
	.. "<button id='operateBtn3' image='1803700007' x='135' y='287' param='3' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.btnFuncSelect' text='�� Ƕ'/>"
	.. "<button id='operateBtn4' image='1803700007' x='346' y='287' param='4' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.btnFuncSelect' text='�� Ƕ'/>"
	.. "<edit id='edit1' x='151' y='133' w='53' h='15' align='center' text_color='#FF0000' font='system'/>"
	.. "<edit id='edit2' x='362' y='133' w='53' h='15' align='center' text_color='#FF0000' font='system'/>"
	.. "<edit id='edit3' x='151' y='283' w='53' h='15' align='center' text_color='#FF0000' font='system'/>"
	.. "<edit id='edit4' x='362' y='283' w='53' h='15' align='center' text_color='#FF0000' font='system'/>"
	.. "<button id='unseal3' image='1803700007' x='135' y='287' param='3' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.unsealClick' text='�� ��'/>"
	.. "<button id='unseal4' image='1803700007' x='346' y='287' param='4' visible='false' w='88' h='31' OnLButtonUp='InlayCrystal.unsealClick' text='�� ��'/>"
	.."	<image id='aMagic' image='3020300900' type='animate' x='163' y='-19' w='193' h='313'/>"
	.. "</dialog>"
	.. "</form>"
	GenFormByString(ui)
end

InlayCrystal.WndHandle = 0										
InlayCrystal.HaveEquip = false											--����װ��
InlayCrystal.EquipGuid = ""												--װ����guid
InlayCrystal.clickItemHandle = 0										--�������Ʒ��
InlayCrystal.clickBtnHandle = 0										--����İ�ť
InlayCrystal.clickUnsealHandle = 0										--����Ľ�ⰴť
InlayCrystal.CysTb = {"","","",""}									--����Ƕ��ʯ
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
		if CLGetItemEntityPropByGUID(guid, ITEM_PROP_TYPE) then				--����guid��ȡ������
			mainType = as3.tolua(LuaRet)									--1Ϊװ����4Ϊ����	
		end
		--Ѫ��Ϊװ����������5����ʯΪ������������1
		if CLGetItemEntityPropByGUID(guid, ITEM_PROP_SUBTYPE) then	
			subType = as3.tolua(LuaRet)
		end
	end
	
	if mainType == 5 and subType == 6 then									--ѡ�е���Ϊ��ʯ
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
			local param = GUIWndGetProperty(_handle, "���״̬")
			if param == "δ���" then								--����Ʒ��Ϊδ���״̬����䱦ʯ
				local l,s = 0,0
				
				for i = 1, 4 do
					local uih = GetWindow(InlayCrystal.WndHandle, "itemCrys"..i)
					if uih ~= 0 then
						if GUIWndGetProperty(uih, "���״̬") == "δ���" then
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
					if GUIWndGetProperty(InlayCrystal.itemctrlHandleTbKV[a-1], "���״̬") == "δ���" then
						if  CL:GetMouseGUIItemData() then
							local itemData = tonumber(as3.tolua(LuaRet))
							if itemData ~= 0 then
								InlayCrystal.attentionMsg(1,"�밴˳����뱦ʯ��")
							end
						end
						return false
					end
				end--]]
				local index = GUIWndGetParam(l)
				InlayCrystal.CysTb[index] = guid
				GUIWndAddProperty(l, "���״̬", "Ԥ��")
				local btnHandle = 	GetWindow(InlayCrystal.WndHandle, "operateBtn" .. index)
				if btnHandle ~= 0 then
					GUIWndSetVisible(btnHandle, true)
					GUIWndSetEnableM(btnHandle, true)		
					GUIWndSetTextM(btnHandle, "�� Ƕ")
					GUIButtonSetShine(btnHandle,true)
				end
				return false
			end
		else
			InlayCrystal.attentionMsg(1,"�����װ����")
		end
	elseif mainType == 1 and subType ~= 5 then								--ѡ�е���Ϊװ�����Ҳ���Ѫ��
		if subType == 10 or subType == 11 or subType == 13 or subType == 15 then 
		else
			if CLGetItemEntityPropByGUID(guid, ITEM_PROP_LEVEL) then				
				local level = as3.tolua(LuaRet)			
				if tonumber(level) < 60 then
					InlayCrystal.attentionMsg(1,"װ���ȼ������޷���Ƕ��ʯ")
					return false
				end						
			end
		end
		--[[if CLGetItemEntityPropByGUID(guid, ITEM_PROP_EQUIP_REFINELEVEL) then
			local refineLevel = as3.tolua(LuaRet)	
			if tonumber(refineLevel) < 3 then
				InlayCrystal.attentionMsg(1,"ǿ���ȼ������޷���Ƕ��ʯ")
				return false
			end	 
		end		--]]
		local equipHandle = GetWindow(InlayCrystal.WndHandle, "itemEquip") 
		if _handle ==  equipHandle then
			InlayCrystal.resting()
			InlayCrystal.EquipGuid = guid
			InlayCrystal.HaveEquip = true
			UI:Lua_SubmitForm("��ʯ��Ƕ��", "loadEquipHoles", guid)
			return true
		end
	elseif InlayCrystal.HaveEquip then
		InlayCrystal.attentionMsg(1,"����뱦ʯ��")
	else
		InlayCrystal.attentionMsg(1,"�����װ����")
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
	--holesNum ���ÿף�ǿ���ȼ�/3��
	for i = 1, #holesTb do
		local state = holesTb[i]
		local itemHandle = GetWindow(InlayCrystal.WndHandle, "itemCrys" .. i)
		local btnHandle = GetWindow(InlayCrystal.WndHandle, "operateBtn" .. i)
		--GUIWndSetEnableM(itemHandle, true)
		if not GUIButtonGetShine(btnHandle) then
			if i <= holesNum then
				if itemHandle ~= 0 then
					if state == "1" then																	--δ����״̬����Ʒ�򲻿��ã���ť�ɼ�
						GUIItemCtrlSetBackImageID(itemHandle, 1803700015)
						GUIWndSetEnableM(itemHandle, false)
						GUIWndAddProperty(itemHandle, "���״̬", "")	
						local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
						if btnHandle ~= 0 then
							GUIWndSetVisible(btnHandle, true)
						end
					elseif state == "0" then																--����״̬����Ʒ�򲻿��ã���ť���ɼ�
						GUIItemCtrlSetBackImageID(itemHandle, 1803700014)	
						GUIWndSetEnableM(itemHandle, false)		
						GUIWndAddProperty(itemHandle, "���״̬", "")											
						local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
						if btnHandle ~= 0 then
							GUIWndSetVisible(btnHandle, false)
						end
					elseif state == "2" then
						GUIItemCtrlSetBackImageID(itemHandle, 1803700013)	
						GUIWndSetEnableM(itemHandle, true)
						GUIWndAddProperty(itemHandle, "���״̬", "δ���")	
						local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
						if btnHandle ~= 0 then
							GUIWndSetVisible(btnHandle, false)
						end
					elseif state ~= "2" then															--����״̬�����б�ʯKeyName������KeyName�����Ʒ��
						GUIItemCtrlSetBackImageID(itemHandle, 1803700013)	
						GUIWndSetEnableM(itemHandle, false)
						RDItemCtrlSetGUIDataByKeyName(itemHandle, state, 0, false)
						GUIWndAddProperty(itemHandle, "���״̬", "")
						local btnHandle = 	GetWindow(InlayCrystal.WndHandle, "operateBtn" .. i)
						if btnHandle ~= 0 then
							GUIWndSetVisible(btnHandle, true)
							GUIWndSetEnableM(btnHandle, false)
							--GUIWndSetTextM(btnHandle, "�� ��")
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
					GUIWndAddProperty(itemHandle, "���״̬", "")	
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
		local state = GUIWndGetProperty(itemHandle, "���״̬")
	end--]]
end
function InlayCrystal.eEtemClick(_handle)
	if not InlayCrystal.HaveEquip then
		return
	else
		InlayCrystal.HaveEquip = false	
		InlayCrystal.resting()			--����
	end				
end

function InlayCrystal.itemClick(_handle)
	InlayCrystal.guid = ""
	InlayCrystal.clickItemHandle = _handle
	local state = GUIWndGetProperty(_handle, "���״̬")
	if state == "Ԥ��"	then										--�б�ʯ
		GUIWndAddProperty(_handle, "���״̬", "δ���")
		GUIItemCtrlClearItemData(_handle)
		local index = GUIWndGetParam(_handle)
		InlayCrystal.CysTb[index] = ""
		local btnHandle = GetWindow(InlayCrystal.WndHandle, "operateBtn" .. index)
		if btnHandle ~= 0 then
			GUIWndSetVisible(btnHandle, false)
		end
	else
		local param = GUIWndGetParam(_handle)
		UI:Lua_SubmitForm("��ʯ��Ƕ��", "getSubGold", InlayCrystal.EquipGuid .. "#" ..param)
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
	UI:Lua_SubmitForm("��ʯ��Ƕ��", "unsealHole", InlayCrystal.EquipGuid .. "#" ..param)
end

function InlayCrystal.unsealHole(holeNum)
	local itemHandle = GetWindow(InlayCrystal.WndHandle, "itemCrys" .. holeNum)
	if itemHandle ~= 0 then
		GUIItemCtrlSetBackImageID(itemHandle, 1803700013)
		GUIWndSetEnableM(itemHandle, true)
		GUIWndAddProperty(itemHandle, "���״̬", "δ���")
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
	UI:Lua_SubmitForm("��ʯ��Ƕ��", "stoneTakeOff", InlayCrystal.EquipGuid .. "#" .. param)
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

function InlayCrystal.takeOffNeedGold(costMoney)
	luaMsgBox.new("��ʯժ��", "ȷ��Ҫ����" .. costMoney .. "��ң����ժ����ʯ��", {"��", "��"}, {"InlayCrystal.takeOff", 0}, _handle)
end

function InlayCrystal.takeOffFinish()
	GUIItemCtrlClearItemData(InlayCrystal.clickItemHandle)
	GUIWndSetEnableM(InlayCrystal.clickItemHandle, true)
	GUIWndSetVisible(InlayCrystal.clickItemHandle, true)
	GUIWndAddProperty(InlayCrystal.clickItemHandle, "���״̬", "δ���")
	local param = GUIWndGetParam(InlayCrystal.clickItemHandle)  
	local handle = GetWindow(InlayCrystal.WndHandle, "operateBtn" .. param)
	if handle ~=0 then
		GUIWndSetVisible(handle, false)
	end
	InlayCrystal.inlayTb = {"","","",""}
end

function InlayCrystal.inlayCys()
	if #InlayCrystal.inlayTb > 0 then
		UI:Lua_SubmitForm("��ʯ��Ƕ��", "inlayStone", InlayCrystal.EquipGuid .. "#" .. serialize(InlayCrystal.inlayTb))
	end
end

function InlayCrystal.attentionMsg(sender, str)
	local n = tonumber(sender)
	local handle = 0
	local x = 0
	--1Ϊװ����2Ϊ��Ƕ��ť��3Ϊ����ı�ʯ��4Ϊ��ⰴť
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