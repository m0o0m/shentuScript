InlayCrystal = {}
function InlayCrystal.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"InlayCrystal",1803700017,34,81)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,564, 342)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg0",1803700011,245,134)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemEquip",0,256,145,53,53)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDown, "InlayCrystal.eEtemClick")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,53, 53)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg1",0,140,59)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemCrys1",0,151,70,53,53)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "InlayCrystal.itemClick")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,53, 53)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg2",0,351,59)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemCrys2",0,362,70,53,53)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "InlayCrystal.itemClick")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,53, 53)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg3",0,140,209)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemCrys3",0,151,220,53,53)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "InlayCrystal.itemClick")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,53, 53)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg4",0,351,209)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"itemCrys4",0,362,220,53,53)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "InlayCrystal.itemClick")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,53, 53)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operateBtn1",1803700007,135,137)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "InlayCrystal.btnFuncSelect")
        GUI:WndSetTextM(_GUIHandle,"�� Ƕ")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operateBtn2",1803700007,346,137)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "InlayCrystal.btnFuncSelect")
        GUI:WndSetTextM(_GUIHandle,"�� Ƕ")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operateBtn3",1803700007,135,287)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "InlayCrystal.btnFuncSelect")
        GUI:WndSetTextM(_GUIHandle,"�� Ƕ")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"operateBtn4",1803700007,346,287)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "InlayCrystal.btnFuncSelect")
        GUI:WndSetTextM(_GUIHandle,"�� Ƕ")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    --[[_GUIHandle = GUI:EditCreate(_Parent,"edit1",151,133,53,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294901760)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit2",362,133,53,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294901760)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit3",151,283,53,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294901760)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"edit4",362,283,53,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294901760)
        GUI:EditSetFontCenter(_GUIHandle)
    end--]]
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"unseal3",1803700007,135,287)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "InlayCrystal.unsealClick")
        GUI:WndSetTextM(_GUIHandle,"�� ��")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"unseal4",1803700007,346,287)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "InlayCrystal.unsealClick")
        GUI:WndSetTextM(_GUIHandle,"�� ��")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	_GUIHandle = GUI:EditCreate(_Parent, "msg", 174, 195, 400, 25)
	if _GUIHandle ~= 0 then 	
		GUI:EditSetTextColor(_GUIHandle, 4294901760)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end		

	_GUIHandle = GUI:ImageCreate(_Parent, "aMagic", 3020300900, 163, -19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

    InlayCrystal.UIInit(_Parent)
end

--UI Logic Code Start
InlayCrystal.WndHandle = 0										
InlayCrystal.HaveEquip = false											--����װ��
InlayCrystal.EquipGuid = ""												--װ����guid
InlayCrystal.clickItemHandle = 0										--�������Ʒ��
InlayCrystal.clickBtnHandle = 0											--����İ�ť
InlayCrystal.clickUnsealHandle = 0										--����Ľ�ⰴť
InlayCrystal.CysTb = {"","","",""}										--����Ƕ��ʯ						
InlayCrystal.inlayTb = {"","","",""}						
InlayCrystal.itemctrlHandleTbKV = {}
InlayCrystal.itemctrlHandleTbVK = {}

function InlayCrystal.UIInit(_GUIHandle)
	
	InlayCrystal.WndHandle = _GUIHandle
	local handle = GUI:WndFindChildM(InlayCrystal.WndHandle, "itemEquip")
	if handle ~= 0 then
		RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
		Sys_PushBackItemWindow(handle, "InlayCrystal.OnMoveIn")	--�����Ҽ���Ʒʱ�趨itemEquip��������InlayCrystal.OnMoveIn
	end

	for i = 1, 4 do
		local handle = GetWindow(_GUIHandle, "itemCrys" .. i)
		if handle ~= 0 then
			GUI:WndSetParam(handle, i)
			InlayCrystal.itemctrlHandleTbVK[handle] = i
			InlayCrystal.itemctrlHandleTbKV[i] = handle
			GUI:WndSetVisible(handle, false)
			RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
			Sys_PushBackItemWindow(handle, "InlayCrystal.OnMoveIn")	--�����Ҽ���Ʒʱ�趨itemEquip��������InlayCrystal.OnMoveIn
		end
	end
	for i = 1, 4 do 
		local handle = GetWindow(_GUIHandle, "operateBtn" .. i)
		if handle ~= 0 then
			GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 173, 179, 167))
			GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
		end
	end
	
	for i = 3, 4 do
		local handle = GetWindow(_GUIHandle, "unseal" .. i)
		if handle ~= 0 then
			GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 173, 179, 167))
			GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
		end
	end
	
	local handle = GetWindow(_GUIHandle, "inlayCys")
	if handle ~= 0 then
		GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 173, 179, 167))
		GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 206, 178, 98))
	end
end

function InlayCrystal.OnMoveIn(_handle, GUIData, DragIn, guid, ItemId, keyName, ItemPos, IsBound, Count)
	local ctrlHandle = 0
	local mainType = 0 
	local subType = 0
	if guid ~= "" then
		if CL:GetItemEntityPropByGUID(guid, ITEM_PROP_TYPE) then				--����guid��ȡ������
			mainType = LuaRet									--1Ϊװ����4Ϊ����	
		end
		--Ѫ��Ϊװ����������5����ʯΪ������������1
		if CL:GetItemEntityPropByGUID(guid, ITEM_PROP_SUBTYPE) then	
			subType = LuaRet
		end
	end
	if mainType == 5 and subType == 6 then									--ѡ�е���Ϊ��ʯ
		if InlayCrystal.HaveEquip then
			local equipHandle = GetWindow(InlayCrystal.WndHandle, "itemEquip") 
			if _handle == equipHandle then
				return false
			end
			local param = GUI:WndGetProperty(_handle, "���״̬")
			if param == "δ���" then									--����Ʒ��Ϊδ���״̬����䱦ʯ
				local a = InlayCrystal.itemctrlHandleTbVK[_handle]
				if a ~= 1 then
					if GUI:WndGetProperty(InlayCrystal.itemctrlHandleTbKV[a-1], "���״̬") == "δ���" then
						if  CL:GetMouseGUIItemData() then
							InlayCrystal.attentionMsg(1,"�밴˳����뱦ʯ��")
						end
						return false
					end
				end
				local index = GUI:WndGetParam(_handle)
				InlayCrystal.CysTb[index] = guid
				GUI:WndAddProperty(_handle, "���״̬", "Ԥ��")
				local btnHandle = 	GetWindow(InlayCrystal.WndHandle, "operateBtn" .. index)
				if btnHandle ~= 0 then
					GUI:WndSetVisible(btnHandle, true)
					GUI:WndSetEnableM(btnHandle, true)
					GUI:WndSetTextM(btnHandle, "�� Ƕ")
					GUI:ButtonSetShine(btnHandle,true)
				end 
				
				return true
			end
		else
			InlayCrystal.attentionMsg(1,"�����װ����")
		end
	elseif mainType == 1 and subType ~= 5 then								--ѡ�е���Ϊװ�����Ҳ���Ѫ��
		if subType == 10 or subType == 11 or subType == 13 or subType == 15 then 
		else
			if CL:GetItemEntityPropByGUID(guid, ITEM_PROP_LEVEL) then				
				local level = LuaRet			
				if tonumber(level) < 60 then
					InlayCrystal.attentionMsg(1,"װ���ȼ������޷���Ƕ��ʯ")
					return false
				end						
			end
		end		
		local equipHandle = GetWindow(InlayCrystal.WndHandle, "itemEquip") 
		if _handle ==  equipHandle then
			InlayCrystal.resting()
			InlayCrystal.EquipGuid = guid
			InlayCrystal.HaveEquip = true
			UI:Lua_GUID2Str(guid)
			UI:Lua_SubmitForm("��ʯ��Ƕ��", "loadEquipHoles", LuaRet)
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
	if InlayCrystal.HaveEquip then
		local handle = GetWindow(InlayCrystal.WndHandle, "inlayCys")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
	end
	--holesNum ���ÿף�ǿ���ȼ�/3��
	for i = 1, #holesTb do
		local state = holesTb[i]
		local itemHandle = GetWindow(InlayCrystal.WndHandle, "itemCrys" .. i)
		local itemBkImgHandle = GetWindow(InlayCrystal.WndHandle, "ItemBkImg" .. i)
		--GUI:WndSetEnableM(itemHandle, true)
		GUI:WndSetVisible(itemHandle, true)
		if i <= holesNum then
			if itemHandle ~= 0 then
				if state == "1" then																	--δ����״̬����Ʒ�򲻿��ã���ť�ɼ�
					GUI:WndSetImageID(itemBkImgHandle, 1803700015)
					GUI:WndSetEnableM(itemHandle, false)
					GUI:WndAddProperty(itemHandle, "���״̬", "")	
					local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
					if btnHandle ~= 0 then
						GUI:WndSetVisible(btnHandle, true)
					end
				elseif state == "0" then																--����״̬����Ʒ�򲻿��ã���ť���ɼ�
					GUI:WndSetImageID(itemBkImgHandle, 1803700014)	
					GUI:WndSetEnableM(itemHandle, false)		
					GUI:WndAddProperty(itemHandle, "���״̬", "")											
					local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
					if btnHandle ~= 0 then
						GUI:WndSetVisible(btnHandle, false)
					end
				elseif state == "2" then
					GUI:WndSetImageID(itemBkImgHandle, 1803700013)	
					GUI:WndSetEnableM(itemHandle, true)
					GUI:WndAddProperty(itemHandle, "���״̬", "δ���")	
					local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
					if btnHandle ~= 0 then
						GUI:WndSetVisible(btnHandle, false)
					end
				elseif state ~= "2" then															--����״̬�����б�ʯKeyName������KeyName�����Ʒ��
					GUI:WndSetImageID(itemBkImgHandle, 1803700013)	
					GUI:WndSetEnableM(itemHandle, false)
					InlayCrystal.InitItemInfoByKeyName(itemHandle, state)
					GUI:WndAddProperty(itemHandle, "���״̬", "")
					local btnHandle = 	GetWindow(InlayCrystal.WndHandle, "operateBtn" .. i)
					if btnHandle ~= 0 then
						GUI:WndSetVisible(btnHandle, true)
						GUI:WndSetEnableM(btnHandle, false)
						--GUI:WndSetTextM(btnHandle, "�� ��")
						GUI:ButtonSetShine(btnHandle,false)
					end 		
					local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
					if btnHandle ~= 0 then
						GUI:WndSetVisible(btnHandle, false)
					end
				end
			end
		else
			if itemHandle ~= 0 then
				GUI:WndSetEnableM(itemHandle, false)
				GUI:WndSetImageID(itemBkImgHandle, 1803700014)
				GUI:WndAddProperty(itemHandle, "���״̬", "")	
			end
			if i >= 3 then
				local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
				if btnHandle ~= 0 then
					GUI:WndSetVisible(btnHandle, false)
				end
			end
		end
	end
	for i = 1, 4 do
		local itemHandle = GetWindow(InlayCrystal.WndHandle, "itemCrys" .. i)
		local state = GUI:WndGetProperty(itemHandle, "���״̬")
	end
end
function InlayCrystal.eEtemClick(_handle)
	InlayCrystal.HaveEquip = false
	local handle = GetWindow(InlayCrystal.WndHandle, "inlayCys")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end 
	InlayCrystal.resting()							--����
end

function InlayCrystal.itemClick(_handle)
	InlayCrystal.clickItemHandle = _handle
	local state = GUI:WndGetProperty(_handle, "���״̬")
	if state == "Ԥ��"	then										--�б�ʯ
		GUI:WndAddProperty(_handle, "���״̬", "δ���")
		GUI:ItemCtrlClearItemData(_handle)
		local index = GUI:WndGetParam(_handle)
		InlayCrystal.CysTb[index] = ""
		local btnHandle = GetWindow(InlayCrystal.WndHandle, "operateBtn" .. index)
		if btnHandle ~= 0 then
			GUI:WndSetVisible(btnHandle, false)
		end
	else
		local param = GUI:WndGetParam(_handle)
		UI:Lua_GUID2Str(InlayCrystal.EquipGuid)
		UI:Lua_SubmitForm("��ʯ��Ƕ��", "getSubGold",  LuaRet.. "#" ..param)
	end
end

function InlayCrystal.resting()
	InlayCrystal.EquipGuid = ""
	InlayCrystal.clickItemHandle = 0
	InlayCrystal.CysTb = {"","","",""}
	InlayCrystal.inlayTb = {"","","",""}
	for i = 1, 4 do
		local handle = GetWindow(InlayCrystal.WndHandle, "itemCrys" .. i)
		local ItemBkImghandle = GetWindow(InlayCrystal.WndHandle, "ItemBkImg" .. i)
		if handle ~= 0 then
			if not InlayCrystal.HaveEquip then
				GUI:WndSetImageID(ItemBkImghandle, 0)
				GUI:WndSetVisible(handle, false)
			end
			GUI:ItemCtrlClearItemData(handle)
		end
		local btnHandle = 	GetWindow(InlayCrystal.WndHandle, "operateBtn" .. i)
		if btnHandle ~= 0 then
			GUI:WndSetVisible(btnHandle, false)
		end 
		if i == 3 or i == 4 then
			local unsealHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. i)
			if unsealHandle ~= 0 then
				GUI:WndSetVisible(unsealHandle, false)
			end
		end
	end
	
	--[[local equipHandle = GetWindow(InlayCrystal.WndHandle, "itemEquip")
	GUI:ItemCtrlClearItemData(equipHandle)--]]
end

function InlayCrystal.unsealClick(_handle)
	InlayCrystal.clickUnsealHandle = _handle
	local param = GUI:WndGetParam(_handle)
	UI:Lua_GUID2Str(InlayCrystal.EquipGuid)
	UI:Lua_SubmitForm("��ʯ��Ƕ��", "unsealHole", LuaRet .. "#" ..param)
end

function InlayCrystal.unsealHole(holeNum)
	local itemHandle = GetWindow(InlayCrystal.WndHandle, "itemCrys" .. holeNum)
	local itemBkImgHandle = GetWindow(InlayCrystal.WndHandle, "ItemBkImg" .. holeNum)
	if itemHandle ~= 0 then
		GUI:WndSetImageID(itemBkImgHandle, 1803700013)
		GUI:WndSetEnableM(itemHandle, true)
		GUI:WndAddProperty(itemHandle, "���״̬", "δ���")
	end
	local btnHandle = GetWindow(InlayCrystal.WndHandle, "unseal" .. holeNum)
	if btnHandle ~= 0 then
		GUI:WndSetVisible(btnHandle, false)
	end
end

function InlayCrystal.btnFuncSelect(h)
	InlayCrystal.clickBtnHandle = h
	local p = WndGetParam(h)
	local handle = GetWindow(InlayCrystal.WndHandle, "itemCrys"..p)
	InlayCrystal.inlayTb[p] = InlayCrystal.CysTb[p]
	if GUI:ButtonGetShine(h) then
		InlayCrystal.inlayCys()
	else
		InlayCrystal.itemClick(handle)
	end
end

function InlayCrystal.takeOff(_handle)
	local param = GUI:WndGetParam(InlayCrystal.clickItemHandle)
	UI:Lua_GUID2Str(InlayCrystal.EquipGuid)
	UI:Lua_SubmitForm("��ʯ��Ƕ��", "stoneTakeOff", LuaRet .. "#" .. param)
	local handle = GUI:WndGetParentM(_handle)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

function InlayCrystal.takeOffNeedGold(costMoney)
	luaMsgBox.new("��ʯժ��", "ȷ��Ҫ����" .. costMoney .. "��ң����ժ����ʯ��", {"��", "��"}, {"InlayCrystal.takeOff", 0}, _handle)
end

function InlayCrystal.takeOffFinish()
	GUI:ItemCtrlClearItemData(InlayCrystal.clickItemHandle)
	GUI:WndSetEnableM(InlayCrystal.clickItemHandle, true)
	GUI:WndSetVisible(InlayCrystal.clickItemHandle, true)
	GUI:WndAddProperty(InlayCrystal.clickItemHandle, "���״̬", "δ���")
	local param = GUI:WndGetParam(InlayCrystal.clickItemHandle)  
	local handle = GetWindow(InlayCrystal.WndHandle, "operateBtn" .. param)
	if handle ~=0 then
		GUI:WndSetVisible(handle, false)
	end
	InlayCrystal.inlayTb = {"","","",""}
end

function InlayCrystal.inlayCys()
	if #InlayCrystal.inlayTb > 0 then
		UI:Lua_GUID2Str(InlayCrystal.EquipGuid)
		local equipSevGUID = LuaRet
		local tmpCysTb = {}
		for i = 1, #InlayCrystal.inlayTb do
			if InlayCrystal.inlayTb[i] ~= '' then
				UI:Lua_GUID2Str(InlayCrystal.inlayTb[i])
				tmpCysTb[i] = LuaRet
			else
				tmpCysTb[i] = ""
			end
		end
		UI:Lua_SubmitForm("��ʯ��Ƕ��", "inlayStone", equipSevGUID .. "#" .. serialize(tmpCysTb))
	end
end

function InlayCrystal.InitItemInfoByKeyName(_WndHandle, KeyName)
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

function InlayCrystal.attentionMsg(sender, str)
	local n = tonumber(sender)
	local handle = 0
	--1Ϊװ����2Ϊ��Ƕ��ť��3Ϊ����ı�ʯ��4Ϊ��ⰴť
	if n == 1 then
		handle = GetWindow(InlayCrystal.WndHandle, "itemEquip")
	elseif n == 2 then
		handle = InlayCrystal.clickBtnHandle
	elseif n == 3 then
		handle = InlayCrystal.clickItemHandle
	elseif n == 4 then
		handle = InlayCrystal.clickUnsealHandle
	elseif n == 5 then
		
	end
	if handle ~= 0 and GUI:WndGetPosM(handle) then
		local x = LuaRet[1]
		local y = LuaRet[2]
		GUI:WndGetSizeM(handle)
		local w = LuaRet[1]
		local h = LuaRet[2]
		if handle ~= 0 then
			local _GUIHandle = GUI:WndFindChildM(InlayCrystal.WndHandle, "msg")
			if _GUIHandle ~= 0 then
				if GUI:WndGetPosM(_GUIHandle) then
					GUI:WndSetPosM(_GUIHandle, x - (400-w)/2, y - 30)
					InlayCrystal.msg_up(str)
				end
			end
		end
	end
end

function InlayCrystal.msg_up(str)
	local _handle = GUI:WndFindChildM(InlayCrystal.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if InlayCrystal.DelayTaskId ~= nil then
		CL:DelDelayTask(InlayCrystal.DelayTaskId)
		InlayCrystal.DelayTaskId = nil
	end
	InlayCrystal.DelayTaskId = CL:AddDelayTask("InlayCrystal.ClearMsg()", 3000, 1)
end

function InlayCrystal.ClearMsg()
	local _handle = GUI:WndFindChildM(InlayCrystal.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end

InlayCrystal.main()