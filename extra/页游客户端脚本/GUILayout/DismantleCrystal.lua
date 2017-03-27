DismantleCrystal = {}

function DismantleCrystal.main()
	local ui = "<form  default_parent ='CrystalSystem'> <dialog OnInit='DismantleCrystal.UIInit' id='DismantleCrystal' image='1803700017' x='34' y='81' w='564' h='342' revmsg='true'>"
	.."	<itemctrl id='itemEquip' x='256' y='145' w='53' h='53' use_back='1803700011' auto_manage='true' rbtn_use='true' OnLButtonDown='DismantleCrystal.eEtemClick' OnItemMoveIn='DismantleCrystal.OnMoveIn' revmsg='true' />"
	.."	<itemctrl id='itemCrys1' x='151' y='70' w='53' h='53' use_back='0' param='1' auto_manage='true' rbtn_use='true' OnLButtonDown='DismantleCrystal.itemClick' enable='false' OnItemMoveIn='DismantleCrystal.OnMoveIn' revmsg='true'/>"
	.."	<itemctrl id='itemCrys2' x='362' y='70' w='53' h='53' use_back='0' param='2' auto_manage='true' rbtn_use='true' OnLButtonDown='DismantleCrystal.itemClick' enable='false' OnItemMoveIn='DismantleCrystal.OnMoveIn' revmsg='true'/>"
	.."	<itemctrl id='itemCrys3' x='151' y='220' w='53' h='53' use_back='0' param='3' auto_manage='true' rbtn_use='true' OnLButtonDown='DismantleCrystal.itemClick' enable='false' OnItemMoveIn='DismantleCrystal.OnMoveIn'  revmsg='true' />"
	.."	<itemctrl id='itemCrys4' x='362' y='220' w='53' h='53' use_back='0' param='4' auto_manage='true' rbtn_use='true' OnLButtonDown='DismantleCrystal.itemClick' enable='false' OnItemMoveIn='DismantleCrystal.OnMoveIn' revmsg='true'/>"
	.."	<button id='operateBtn1' image='1803700007' x='134' y='153' w='88' h='31' OnLButtonUp='DismantleCrystal.itemClick' revmsg='true' param='1' text='�� Ƕ' visible='false'/>"
	.."	<button id='operateBtn2' image='1803700007' x='346' y='153' w='88' h='31' OnLButtonUp='DismantleCrystal.itemClick' revmsg='true' param='2' text='�� Ƕ' visible='false'/>"
	.."	<button id='operateBtn3' image='1803700007' x='134' y='303' w='88' h='31' OnLButtonUp='DismantleCrystal.itemClick' revmsg='true' param='3' text='�� Ƕ' visible='false'/>"
	.."	<button id='operateBtn4' image='1803700007' x='347' y='303' w='88' h='31' OnLButtonUp='DismantleCrystal.itemClick' revmsg='true' param='4' text='�� Ƕ' visible='false'/>"
	.."	<edit id='edit1' x='153' y='133' w='65' h='20' text='0' revmsg='true' text_color='#C2B6A0' font='system' visible='false'/>"
	.."	<edit id='edit2' x='366' y='133' w='65' h='20' text='0' revmsg='true' text_color='#C2B6A0' font='system' visible='false'/>"
	.."	<edit id='edit3' x='154' y='283' w='65' h='20' text='0' revmsg='true' text_color='#C2B6A0' font='system' visible='false'/>"
	.."	<edit id='edit4' x='366' y='283' w='65' h='20' text='0'  revmsg='true' text_color='#C2B6A0' font='system' visible='false'/>"
	.."	<image id='aMagic' image='3020300900' x='163' y='-19' w='193' h='313' check_point='0' revmsg='true'/>"
	.."	<image id='gold1' image='1806600014' x='130' y='133' w='23' h='18' revmsg='true' visible='false'/>"
	.."	<image id='gold2' image='1806600014' x='343' y='133' w='23' h='18' revmsg='true' visible='false'/>"
	.."	<image id='gold3' image='1806600014' x='130' y='283' w='23' h='18' revmsg='true' visible='false'/>"
	.."	<image id='gold4' image='1806600014' x='343' y='283' w='23' h='18' revmsg='true' visible='false'/>"
	.."	<image id='aMagic' image='3020300900' type='animate' x='163' y='-19' w='193' h='313'/>"
	.." </dialog>"
	.."</form>"
	GenFormByString(ui)
end

DismantleCrystal.WndHandle = 0										
DismantleCrystal.HaveEquip = false											--����װ��
DismantleCrystal.EquipGuid = ""												--װ����guid
DismantleCrystal.clickItemHandle = 0										--�������Ʒ��
DismantleCrystal.clickBtnHandle = 0										--����İ�ť
DismantleCrystal.clickUnsealHandle = 0										--����Ľ�ⰴť
DismantleCrystal.CysTb = {"","","",""}									--����Ƕ��ʯ
DismantleCrystal.inlayTb = {"","","",""}						

DismantleCrystal.takeOff_money_tb = {10000, 20000, 30000, 100000, 200000, 300000, 400000, 500000, 600000, 700000, 900000, 1100000}

function DismantleCrystal.UIInit(_GUIHandle)
	
	DismantleCrystal.WndHandle = _GUIHandle
	
	for i = 1, 4 do 
		local handle = GetWindow(_GUIHandle, "operateBtn" .. i)
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

function DismantleCrystal.OnMoveIn(_handle, GUIData, DragIn, guid, ItemId, keyName, ItemPos, IsBound, Count)	
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
	
	if mainType == 1 then
		if subType == 5 then
			DismantleCrystal.attentionMsg(1,"�������Ѫ����")
			return false
		else
			local equipHandle = GetWindow(DismantleCrystal.WndHandle, "itemEquip") 
			if _handle ==  equipHandle then
				DismantleCrystal.resting()
				DismantleCrystal.EquipGuid = guid
				DismantleCrystal.HaveEquip = true	
				UI:Lua_SubmitForm("��ʯ�����", "loadEquipHoles", guid)
				return true
			end
		end
	else
		DismantleCrystal.attentionMsg(1,"�����װ��")
		return false
	end
	
end

function DismantleCrystal.initHoles(holesTb, holesNum)
	local btnState = {}
	if DismantleCrystal.HaveEquip then	
		local handle = GetWindow(DismantleCrystal.WndHandle, "inlayCys")
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
	end
	--holesNum ���ÿף�ǿ���ȼ�/3��
	for i = 1, #holesTb do
		local state = holesTb[i]
		local itemHandle = GetWindow(DismantleCrystal.WndHandle, "itemCrys" .. i)
		if i <= holesNum then
			if itemHandle ~= 0 then
				--GUIWndSetEnableM(itemHandle, true)
				if state == "1" then																	--δ����״̬����Ʒ�򲻿��ã���ť�ɼ�
					GUIItemCtrlSetBackImageID(itemHandle, 1803700015)
					GUIWndSetEnableM(itemHandle, false)
					GUIWndAddProperty(itemHandle, "���״̬", "")
				elseif state == "0" then																--����״̬����Ʒ�򲻿��ã���ť���ɼ�
					GUIItemCtrlSetBackImageID(itemHandle, 1803700014)	
					GUIWndSetEnableM(itemHandle, false)		
					GUIWndAddProperty(itemHandle, "���״̬", "")											
					
				elseif state == "2" then
					GUIItemCtrlSetBackImageID(itemHandle, 1803700014)	
					GUIWndSetEnableM(itemHandle, true)
					GUIWndAddProperty(itemHandle, "���״̬", "δ���")	
					
				elseif state ~= "2" then															--����״̬�����б�ʯKeyName������KeyName�����Ʒ��
					GUIItemCtrlSetBackImageID(itemHandle, 1803700013)	
					--GUIWndSetEnableM(itemHandle, false)
					RDItemCtrlSetGUIDataByKeyName(itemHandle, state, 1, false)
					GUIWndAddProperty(itemHandle, "���״̬", "")
					local btnHandle = 	GetWindow(DismantleCrystal.WndHandle, "operateBtn" .. i)
					if btnHandle ~= 0 then
						GUIWndSetVisible(btnHandle, true)
						GUIWndSetTextM(btnHandle, "�� ��")
						GUIButtonSetShine(btnHandle,false)
					end 
					
					local Handle = 	GetWindow(DismantleCrystal.WndHandle, "edit" .. i)
					if Handle ~= 0 then 
						local l = string.find(state,"��")-1
						local level = tonumber(string.sub(state,0,l))
						GUIWndSetVisible(Handle, true)
						GUIEditSetTextM(Handle,""..DismantleCrystal.takeOff_money_tb[level])
						local m1,m2= 0,0
						if CLGetPlayerSelfProperty64(4) then 
							m1 = as3.tolua(LuaRet)
						end
						if CLGetPlayerSelfProperty64(5) then 
							m2 = as3.tolua(LuaRet)
						end
						if m1+m2 >= DismantleCrystal.takeOff_money_tb[level] then 
							GUIWndSetTextColorM(Handle,MakeARGB(255, 194, 182, 160))
						else
							GUIWndSetTextColorM(Handle,MakeARGB(255, 255, 0, 0))
						end
						
					end
					Handle = GetWindow(DismantleCrystal.WndHandle, "gold" .. i)
					if Handle ~= 0 then 
						GUIWndSetVisible(Handle, true)
					end
				end
			end
		else
			if itemHandle ~= 0 then
				--GUIWndSetEnableM(itemHandle, false)
				GUIItemCtrlSetBackImageID(itemHandle, 1803700014)
				GUIWndAddProperty(itemHandle, "���״̬", "")	
			end
		end
	end
	
end
function DismantleCrystal.moneyUpdate()
	
end

function DismantleCrystal.eEtemClick(_handle)
	if not DismantleCrystal.HaveEquip then
		return
	else
		DismantleCrystal.HaveEquip = false	
		DismantleCrystal.resting()			--����
	end				
end

function DismantleCrystal.itemClick(_handle)
	DismantleCrystal.clickBtnHandle = _handle
	local index = GUIWndGetParam(_handle)
	local handle = GetWindow(DismantleCrystal.WndHandle, "itemCrys"..index)
	DismantleCrystal.clickItemHandle = handle
	local state = GUIWndGetProperty(_handle, "���״̬")
	if state == "Ԥ��"	then										--�б�ʯ
		GUIWndAddProperty(_handle, "���״̬", "δ���")
		GUIItemCtrlClearItemData(_handle)
		DismantleCrystal.CysTb[index] = ""
		local btnHandle = GetWindow(DismantleCrystal.WndHandle, "operateBtn" .. index)
		if btnHandle ~= 0 then
			GUIWndSetVisible(btnHandle, false)
		end
		local Handle = 	GetWindow(DismantleCrystal.WndHandle, "edit" .. index)
		if Handle ~= 0 then
			GUIWndSetVisible(Handle, false)
			GUIWndSetTextColorM(Handle,MakeARGB(255, 194, 182, 160))
		end
		Handle = GetWindow(DismantleCrystal.WndHandle, "gold" .. index)
		if Handle ~= 0 then 
			GUIWndSetVisible(Handle, false)
		end
	else
		UI:Lua_SubmitForm("��ʯ�����", "getSubGold", DismantleCrystal.EquipGuid .. "#" ..index)
	end
end

function DismantleCrystal.resting()
	DismantleCrystal.EquipGuid = ""
	DismantleCrystal.clickItemHandle = 0
	DismantleCrystal.CysTb = {"","","",""}
	DismantleCrystal.inlayTb = {"","","",""}
	for i = 1, 4 do
		local handle = GetWindow(DismantleCrystal.WndHandle, "itemCrys" .. i)
		if handle ~= 0 then
			if not DismantleCrystal.HaveEquip then
				GUIItemCtrlSetBackImageID(handle, 0)
				GUIWndSetEnableM(handle, false)
			end
			GUIItemCtrlClearItemData(handle)
		end
		local btnHandle = 	GetWindow(DismantleCrystal.WndHandle, "operateBtn" .. i)
		if btnHandle ~= 0 then
			GUIWndSetVisible(btnHandle, false)
		end 
		local Handle = 	GetWindow(DismantleCrystal.WndHandle, "edit" .. i)
		if Handle ~= 0 then
			GUIWndSetTextColorM(Handle,MakeARGB(255, 194, 182, 160))
			GUIWndSetVisible(Handle, false)
		end
		Handle = GetWindow(DismantleCrystal.WndHandle, "gold" .. i)
		if Handle ~= 0 then 
			GUIWndSetVisible(Handle, false)
		end
	end
	
end



function DismantleCrystal.takeOff(_handle)
	local param = GUIWndGetParam(DismantleCrystal.clickItemHandle)
	UI:Lua_SubmitForm("��ʯ�����", "stoneTakeOff", DismantleCrystal.EquipGuid .. "#" .. param)
	local handle = GUIWndGetParentM(_handle)
	if handle ~= 0 then
		GUIWndClose(handle)
	end
end

function DismantleCrystal.takeOffNeedGold(costMoney)
	DismantleCrystal.takeOff()
	--luaMsgBox.new("��ʯժ��", "ȷ��Ҫ����" .. costMoney .. "��ң����ժ����ʯ��", {"��", "��"}, {"DismantleCrystal.takeOff", 0}, _handle)
end

function DismantleCrystal.takeOffFinish()
	GUIItemCtrlClearItemData(DismantleCrystal.clickItemHandle)
	GUIItemCtrlSetBackImageID(DismantleCrystal.clickItemHandle, 1803700014)
	--GUIWndSetEnableM(DismantleCrystal.clickItemHandle, true)
	GUIWndSetVisible(DismantleCrystal.clickItemHandle, true)
	GUIWndAddProperty(DismantleCrystal.clickItemHandle, "���״̬", "δ���")
	local param = GUIWndGetParam(DismantleCrystal.clickItemHandle)  
	local handle = GetWindow(DismantleCrystal.WndHandle, "operateBtn" .. param)
	if handle ~=0 then
		GUIWndSetVisible(handle, false)
	end
	local Handle = 	GetWindow(DismantleCrystal.WndHandle, "edit" .. param)
	if Handle ~= 0 then
		GUIWndSetTextColorM(Handle,MakeARGB(255, 194, 182, 160))
		GUIWndSetVisible(Handle, false)
	end
	Handle = GetWindow(DismantleCrystal.WndHandle, "gold" .. param)
	if Handle ~= 0 then 
		GUIWndSetVisible(Handle, false)
	end
	DismantleCrystal.inlayTb = {"","","",""}
end

function DismantleCrystal.inlayCys()
	if #DismantleCrystal.inlayTb > 0 then
		UI:Lua_SubmitForm("��ʯ�����", "inlayStone", DismantleCrystal.EquipGuid .. "#" .. serialize(DismantleCrystal.inlayTb))
	end
end

function DismantleCrystal.attentionMsg(sender, str)
	local n = tonumber(sender)
	local handle = 0
	local x = 0
	--1Ϊװ����2Ϊ��Ƕ��ť��3Ϊ����ı�ʯ��4Ϊ��ⰴť
	if n == 1 then
		handle = GetWindow(DismantleCrystal.WndHandle, "itemEquip")
		x = -83
	elseif n == 2 then
		handle = DismantleCrystal.clickBtnHandle
		x = -65
	elseif n == 3 then
		handle = DismantleCrystal.clickItemHandle
		x = -80
	elseif n == 4 then
		handle = DismantleCrystal.clickUnsealHandle
		x = -65  
	elseif n ==5 then
		
	end
	if handle ~= 0 then
		local color = MakeARGB(255, 255, 0, 0)
		window_msg_up(handle , str, x, -16, 70, color, 3)
	end
end

DismantleCrystal.main()