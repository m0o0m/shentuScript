OtherRoleHeadInfo = {}
OtherRoleHeadInfo._wnd = 0

OtherRoleHeadInfo.choosePlayer = 0
OtherRoleHeadInfo.name = 0
OtherRoleHeadInfo.item_tab = {
 ["������"]= {"�������","��֮����","��������","���������","��ħ������"},--������
 ["��ɫ����"]= {"ʥս����","��������","��������","ʥս��ָ","�����ָ"},--��ɫ����
 ["�������"]= {"ս������","��������","ɢ������","ս��ͷ��","����ͷ��"},--�������
 ["�������"]= {"�������","ħ������","��������","����ָ","ħ���ָ"},--�������
 ["���¶�ħ"]= {"��������","��ħ����","��������","�����ָ","��ħ��ָ"},--���¶�ħ
 ["ţħ��"]= {"ʥ������","ʥħ����","ʥ������","ʥ��ѥ��","ʥħѥ��"},--ţħ��
 ["��Ȫ����"]= {"��������","��������","��������","�����ָ","�����ָ"},--��Ȫ����
 ["ʬ��"]= {"��������","��������","��������","�����ָ","�����ָ"},--ʬ��
 ["��ħ����"]= {"��������","��������","��������","��������","��������"},--��ħ����
 ["ħ������"]= {"��������","��������","��������","������������","�����������"},--ħ������
 ["��β�ں���"]= {"������������","�����������","���������","���������ָ","��������ָ"},--��β�ں���
 ["��צ�����"]= {"������������","�����������","���������","���������ָ","��������ָ"},--��צ�����
 ["�����غ���"]= {"������������","�����������","���������","���������ָ","��������ָ"},--�����غ���
 ["ѩ��ħ��"]= {"������������","�����������","���������","��������ѥ��","�������ѥ��"},--ѩ��ħ��
 ["��������"]= {"������������","������������","����㷨����","��������ͷ��","��������ͷ��"},--��������
 ["����"]= {"������������","�����������","������������","���������ָ","��������ָ"},--����
 ["��������"]= {"������������","�����������","������������","���������ָ","��������ָ"},--��������
 ["������"]= {"������������","�����������","������������","���������ָ","��������ָ"},--������
 ["���ĺ���"]= {"������������","�����������","������������","���������ָ","��������ָ"},--���ĺ���
 ["���ħ"]= {"������������","�����������","������������","���������ָ","��������ָ"},--���ħ
 ["������"]= {"������������","�����������","������������","���������ָ","��������ָ"},--������
 ["����ħ��"]= {"������������","�����������","������������","���������ָ","��������ָ"},--����ħ��
 ["����ħ��"]= {"������������","�����������","������������","���������ָ","��������ָ"},--����ħ��
 ["��Ѫħ��"]= {"������������","�챩��������","�����������","���������ָ","��������ָ"}--��Ѫħ��
}

function OtherRoleHeadInfo.main()
    local tf = LuaGlobal["AttachPartent"]
	local uih = 0
	uih = GUI:ImageCreate(tf, "GUI_2", 1800500141, 0, 0)
	uih = GUI:ImageCreate(tf, "lvlEditBackImage", 1800000162, 58, 55)
	uih = GUI:ImageCreate(tf, "HeaderImage", 0, 5, -9)	--	
	if uih ~= 0 then
		GUI:WndSetSizeM(uih, 71, 71)
		GUI:ImageSetFitSize(uih, true)
		GUI:WndSetCanRevMsg(uih, false)
	end
	uih = GUI:ImageCreate(tf, "HeaderImageNew", 0, 5, -9)	--	
	if uih ~= 0 then
		GUI:WndSetSizeM(uih, 71, 71)
		--GUI:ImageSetFitSize(uih, true)
		GUI:WndSetCanRevMsg(uih, false)
	end
	
	uih = GUI:EditCreate(tf, "RoleName", 95, 13, 100, 20)	--
	if uih ~= 0 then 
		GUI:EditSetFontCenter(uih)
		GUI:WndSetTextColorM(uih, CL:MakeARGB(255, 194, 182, 160))
		GUI:EditSetCanEdit(uih, false) 
		GUI:WndSetEnableM(uih, false) 
	end
	uih = GUI:EditCreate(tf, "Level", 62, 59, 30, 30)	--
	if uih ~= 0 then 
		GUI:EditSetFontCenter(uih)
		GUI:WndSetTextColorM(uih, CL:MakeARGB(255, 194, 182, 160))
		GUI:EditSetCanEdit(uih, false) 
		GUI:WndSetEnableM(uih, false) 
	end
	
	for i = 0, 4 do
		local _GUIHandle = GUI:ImageCreate(tf, "Buff"..i, 0, 128 + (i-1) * 27, 67)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:WndSetSizeM(_GUIHandle,24, 24)
			GUI:ImageSetParam(_GUIHandle, 0)
			GUI:ImageSetCheckPoint(_GUIHandle, 0)
		end
		--[[_GUIHandle = GUI:EditCreate(tf,"Time"..i,136 + (i-1)*27, 94, 21, 12)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:EditSetCanEdit(_GUIHandle, false)
		end
		_GUIHandle = GUI:EditCreate(tf,"Count"..i,140 + (i-1)*27,80,12,11)
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:EditSetCanEdit(_GUIHandle, false)
		end--]]
	end


	OtherRoleHeadInfo.UIinit(tf)
end


function OtherRoleHeadInfo.UIinit(h)
	OtherRoleHeadInfo._wnd = h
	GUI:WndSetMoveWithLBM(h)
	GUI:WndSetVisible(h, false)
	RegisterUIEvent(LUA_EVENT_CHOOSEPLAYER, "choosePlayer", OtherRoleHeadInfo.onChoosePlayer)
	RegisterUIEvent(LUA_EVENT_HIDECHOOSEPLAYER, "hideChoosePlayer", OtherRoleHeadInfo.onHideChoosePlayer)
end

function OtherRoleHeadInfo.CreateUI(guidtype,name)
	local tf = GetWindow(0,"OtherRoleHeadInfo")
	if tonumber(guidtype) == 0 then
		for i = 0, 4 do	--����Buffλ��
			local _GUIHandle1 = GetWindow(tf, "BuffInfo"..i)
			local _GUIHandle2 = GetWindow(tf, "Buff"..i)
			GUI:WndSetPosM(_GUIHandle1, 128 + (i-1) * 27, 67)
			GUI:WndSetPosM(_GUIHandle2, 128 + (i-1) * 27, 67)
		end
		local handle = GetWindow(tf,"watchBtn")
		if handle == 0 then
			local uih = 0
			uih = GUI:ButtonCreate(tf, "watchBtn", 1800500142, 85, 34)
			if uih ~= 0 then
				GUI:WndRegistScript(uih, RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onWatchBtnUp")
			end
			uih = GUI:ButtonCreate(tf, "teamBtn", 1800500146, 112, 34)
			if uih ~= 0 then
				GUI:WndRegistScript(uih, RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onTeamBtnUp")
			end
			uih = GUI:ButtonCreate(tf, "tradeBtn", 1800500150, 139, 34)
			if uih ~= 0 then
				GUI:WndRegistScript(uih, RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onTradeBtnUp")
			end
			uih = GUI:ButtonCreate(tf, "friendBtn", 1800500154, 166, 34)
			if uih ~= 0 then
				GUI:WndRegistScript(uih, RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onFriendBtnUp")
			end
			uih = GUI:ButtonCreate(tf, "whispBtn", 1800500158, 193, 34)
			if uih ~= 0 then
				GUI:WndRegistScript(uih, RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onWhispBtnUp")
			end
			
		else
			local idtab = {"watchBtn","teamBtn","tradeBtn","friendBtn","whispBtn"}
			for i = 1 , #idtab do 
				local handle = GetWindow(tf,idtab[i])
				if handle ~= 0 then
					GUI:WndSetVisible(handle, true)
				end
			end
		end	
		local handle = GetWindow(tf,"lvlEditBackImage")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
		ImageSetImageID(tf,"GUI_2",1800500141)  
		local handle = GetWindow(tf,"HeaderImage")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)
		end	
		local handle = GetWindow(tf,"HeaderImageNew")
		if handle ~= 0 then
			GUI:WndSetPosM(handle, 5,-9)
		end	
		local handle = GetWindow(tf,"RoleName")
		if handle ~= 0 then
			GUI:WndSetPosM(handle, 95,13)
		end	
		local handle = GetWindow(tf,"Level")
		if handle ~= 0 then
			GUI:WndSetPosM(handle, 62,59)
		end	
		local idtab1 = {"BackImage","RoleHP1","RoleHP","RoleHPEdit"}
		for i = 1 , #idtab1 do 
			local handle = GetWindow(tf,idtab1[i])
			if handle ~= 0 then
				GUI:WndSetVisible(handle, false)
			else
				break
			end
		end
		for i = 1, 5 do
			local handle = GetWindow(tf,"bossItem"..i)
			if handle ~= 0 then
				GUI:WndSetVisible(handle, false)
			else
				break
			end
		end
		local uih = 0
		local playerGUID = OtherRoleHeadInfo.choosePlayer
		uih = GUI:WndFindChildM(tf, "HeaderImageNew")
		if uih ~= 0 then
			GUI:WndSetVisible(uih, true)
			local image_Id = {{1805800001,1805800004},{1805800002,1805800005},{1805800003,1805800006}}
			CL:GetPlayerPropBase(playerGUID, ROLE_PROP_JOB)
			local jobID = tonumber(LuaRet)
			CL:GetPlayerPropBase(playerGUID, ROLE_PROP_SEX)
			local genderID = tonumber(LuaRet)
			local headID = image_Id[jobID][genderID]
			GUI:ImageSetFitSize(uih, false)
			GUI:WndSetPosM(uih, -5, -30)
			GUI:WndSetImageID(uih, tonumber(headID))
		end
	elseif tonumber(guidtype) == 2 then
		for i = 0, 4 do	--����Buffλ��
			local _GUIHandle1 = GetWindow(tf, "Buff"..i)
			local _GUIHandle2 = GetWindow(tf, "BuffInfo"..i)
			GUI:WndSetPosM(_GUIHandle1, 110 + i * 27 + 30, 70 + 34)
			GUI:WndSetPosM(_GUIHandle2, 110 + i * 27 + 30, 70 + 34)
		end
		local handle = GetWindow(tf,"RoleHP")
		if handle == 0 then
			local uih = 0
			uih = GUI:ImageCreate(tf, "BackImage", 1805700002, -3, 0)
			GUI:WndSetCanRevMsg(uih, false)
			uih = GUI:ImageCreate(tf,"RoleHP1",1805700004,115,54)
			if _GUIHandle ~= 0 then
				GUI:ImageSetFitSize(uih, true)
				GUI:WndSetSizeM(uih,280, 14)
			end
			 uih = GUI:ImageCreate(tf,"RoleHP",1805700003,115,54)
			if uih ~= 0 then
				GUI:WndSetSizeM(uih,280, 14)

			end
			uih = GUI:EditCreate(tf, "RoleHPEdit", 220, 52, 150, 20)	--
			if uih ~= 0 then
				GUI:WndSetTextColorM(uih, CL:MakeARGB(255, 194, 182, 160))
				GUI:EditSetCanEdit(uih, false) 
			end
			for i = 1, 5 do
				uih = GUI:ItemCtrlCreate(tf, "bossItem"..i, 0, 230+(i-1)*33, 73, 28, 28)	
				if uih ~= 0 then
					GUI:ItemCtrlSetBackImageID(uih, 1805700000)
					GUI:ItemCtrlSetHighlightImageID(uih, 0)
					GUI:WndMoveToParentTop(uih)
					if OtherRoleHeadInfo.item_tab[name] ~= nil then
						RDItemCtrlSetGUIDataByKeyName(uih,OtherRoleHeadInfo.item_tab[name][i] , 1, false)
					else
						RDItemCtrlSetGUIDataByKeyName(uih,"��������" , 1, false)
					end	
				end
			end
		else	
			local idtab = {"BackImage","RoleHP1","RoleHP","RoleHPEdit"}
			for i = 1 , #idtab do 
				local handle = GetWindow(tf,idtab[i])
				if handle ~= 0 then
					GUI:WndSetVisible(handle, true)
				end
			end
			for i = 1, 5 do
				local handle = GetWindow(tf,"bossItem"..i)
				if handle ~= 0 then
					GUI:WndSetVisible(handle, true)
					if OtherRoleHeadInfo.item_tab[name] ~= nil then
						RDItemCtrlSetGUIDataByKeyName(handle,OtherRoleHeadInfo.item_tab[name][i] , 1, false)
					else
						RDItemCtrlSetGUIDataByKeyName(handle,"��������" , 1, false)
					end	
				end
			end
		end
		ImageSetImageID(tf,"GUI_2",1805700001)  
		local handle = GUI:WndFindChildM(tf, "HeaderImageNew")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)
		end
		local handle = GetWindow(tf,"HeaderImage")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
			GUI:WndSetPosM(handle, 26,37)
		end	
		local handle = GetWindow(tf,"RoleName")
		if handle ~= 0 then
			GUI:WndSetPosM(handle, 125,75)
		end	
		local handle = GetWindow(tf,"Level")
		if handle ~= 0 then
			GUI:WndSetPosM(handle, 94,74)
		end	
		local idtab1 = {"lvlEditBackImage","watchBtn","teamBtn","tradeBtn","friendBtn","whispBtn"}
		for i = 1 , #idtab1 do 
			local handle = GetWindow(tf,idtab1[i])
			if handle ~= 0 then
				GUI:WndSetVisible(handle, false)
			else
				break
			end
		end
	end
	GUI:WndSetVisible(tf, true)
	
end	



function OtherRoleHeadInfo.onWatchBtnUp(h)	
	CL:LogicLookInfo(OtherRoleHeadInfo.name)
end

function OtherRoleHeadInfo.onTeamBtnUp(h)
	if CL:GetTeamMemberGUIDList() then
		CL:LogicTeamInvite(OtherRoleHeadInfo.name)
	else	
		if TeamWnd ~= nil then	
			CL:CreateTeam("��������ɹ�","MyTeamUpdata")
		end	
		CL:AddDelayTask("CL:LogicTeamInvite(".."\""..OtherRoleHeadInfo.name.."\""..")",500,1)
		
	end
end

function OtherRoleHeadInfo.onTradeBtnUp()
	local _ViewPlayerGUID = OtherRoleHeadInfo.choosePlayer
	if _ViewPlayerGUID ~= "" then
		CL:DoTrade(_ViewPlayerGUID)
	end
end

function OtherRoleHeadInfo.onFriendBtnUp(h)
	CL:LogicAddFriend(OtherRoleHeadInfo.name)
end

function OtherRoleHeadInfo.onWhispBtnUp(h)
	CL:LogicSendPrivateTalk(OtherRoleHeadInfo.name)
end

function OtherRoleHeadInfo.onChoosePlayer()
	--local playerGUID = LuaParam[2]
	local playerGUID = LuaParam[2]
	local guidType = LuaParam[1]

	GUI:WndSetVisible(OtherRoleHeadInfo._wnd, false)
	
	if tonumber(guidType) == 0 then 
		OtherRoleHeadInfo.choosePlayer = playerGUID
		CL:GetPlayerPropBase(playerGUID, ROLE_PROP_ROLENAME)
		OtherRoleHeadInfo.name = LuaRet
		OtherRoleHeadInfo.CreateUI(0)
	elseif tonumber(guidType) == 2 then
		local num = 0
		if CL:GetMonsterTemplateProperty(playerGUID, MONSTER_PROP_TYPE) then
			num = LuaRet
		end
		msg('num:'..num)
		if num == 4 then
			OtherRoleHeadInfo.CreateUI(2,playerGUID)
		else
			return
		end	
	end
end

function OtherRoleHeadInfo.onHideChoosePlayer()
	if LuaParam[1] == OtherRoleHeadInfo.choosePlayer then
		GUI:WndSetVisible(OtherRoleHeadInfo._wnd, false)
	end
end

OtherRoleHeadInfo.main()