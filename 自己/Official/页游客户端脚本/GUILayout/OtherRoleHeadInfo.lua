OtherRoleHeadInfo = {}
OtherRoleHeadInfo._wnd = 0

OtherRoleHeadInfo.choosePlayer = 0
OtherRoleHeadInfo.name = 0
OtherRoleHeadInfo.item_tab = {
 ["������"]= {"�������","��֮����","��������","���������","��ħ������"},--������
 ["�����񸱱�"]= {"�������","��֮����","��������","���������","��ħ������"},--�����񸱱�
 ["��ɫ����"]= {"ʥս����","��������","��������","ʥս��ָ","�����ָ"},--��ɫ����
 ["����һ��ɫ����"]= {"ʥս����","��������","��������","ʥս��ָ","�����ָ"},--����һ��ɫ����
 ["��ɫ������"]= {"ʥս����","��������","��������","ʥս��ָ","�����ָ"},--��ɫ������
 ["�������"]= {"ս������","��������","ɢ������","ս��ͷ��","����ͷ��"},--�������
 ["����һ�������"]= {"ս������","��������","ɢ������","ս��ͷ��","����ͷ��"},--����һ�������
 ["��Ľ�������"]= {"ս������","��������","ɢ������","ս��ͷ��","����ͷ��"},--�����������
 ["�������"]= {"�������","ħ������","��������","����ָ","ħ���ָ"},--�������
 ["����һ�������"]= {"�������","ħ������","��������","����ָ","ħ���ָ"},--����һ�������
 ["�����������"]= {"�������","ħ������","��������","����ָ","ħ���ָ"},--�����������
 ["���¶�ħ"]= {"��������","��ħ����","��������","�����ָ","��ħ��ָ"},--���¶�ħ
 ["���¶�ħ����"]= {"��������","��ħ����","��������","�����ָ","��ħ��ָ"},--���¶�ħ����
 ["����һ���¶�ħ"]= {"��������","��ħ����","��������","�����ָ","��ħ��ָ"},--����һ���¶�ħ
 ["ţħ��"]= {"ʥ������","ʥħ����","ʥ������","ʥ��ѥ��","ʥħѥ��"},--ţħ��
 ["��ҹŮ��"]= {"ʥ������","ʥħ����","ʥ������","ʥ��ѥ��","ʥħѥ��"},--��ҹŮ��
 ["ţħ������"]= {"ʥ������","ʥħ����","ʥ������","ʥ��ѥ��","ʥħѥ��"},--ţħ������
 ["����Ů��"]= {"ʥ������","ʥħ����","ʥ������","ʥ��ѥ��","ʥħѥ��"},--����Ů��
 ["��Ȫ����"]= {"��������","��������","��������","�����ָ","�����ָ"},--��Ȫ����
 ["ʬ��"]= {"��������","��������","��������","�����ָ","�����ָ"},--ʬ��
 ["��ħ����"]= {"��������","��������","��������","��������","��������"},--��ħ����
 ["ħ������"]= {"��������","��������","��������","������������","�����������"},--ħ������
 ["ħ����������"]= {"��������","��������","��������","������������","�����������"},--ħ����������
 ["��β�ں���"]= {"������������","�����������","���������","���������ָ","��������ָ"},--��β�ں���
 ["��צ�����"]= {"������������","�����������","���������","���������ָ","��������ָ"},--��צ�����
 ["�����غ���"]= {"������������","�����������","���������","���������ָ","��������ָ"},--�����غ���
 ["ѩ��ħ��"]= {"������������","�����������","���������","��������ѥ��","�������ѥ��"},--ѩ��ħ��
 ["��������"]= {"������������","������������","����㷨����","��������ͷ��","��������ͷ��"},--��������
 ["����"]= {"������������","�����������","������������","���������ָ","��������ָ"},--����
 ["��������"]= {"������������","�����������","������������","���������ָ","��������ָ"},--��������
 ["��������"]= {"������������","�����������","������������","���������ָ","��������ָ"},--��������
 ["������"]= {"������������","�����������","������������","���������ָ","��������ָ"},--������
 ["��Ԩ����"]= {"������������","�����������","������������","���������ָ","��������ָ"},--������
 ["���ĺ���"]= {"������������","�����������","������������","���������ָ","��������ָ"},--���ĺ���
 ["���ħ"]= {"������������","�����������","������������","���������ָ","��������ָ"},--���ħ
 ["������"]= {"������������","�����������","������������","���������ָ","��������ָ"},--������
 ["������ħ"]= {"������������","�����������","������������","���������ָ","��������ָ"},--����ħ��
 ["����ħ��"]= {"������������","�����������","������������","���������ָ","��������ָ"},--����ħ��
 ["��Ѫħ��"]= {"������������","�챩��������","�����������","���������ָ","��������ָ"},--��Ѫħ��
 ["��֮�������"]= {"��ħ����","��������","�����ָ","��ħ��ָ","�����ָ"},--1.90��
 ["��֮�������"]= {"��ħ����","��������","�����ָ","��ħ��ָ","�����ָ"},--2.90��
 ["��֮���þ���"]= {"��ħ����","��������","�����ָ","��ħ��ָ","�����ָ"},--3.90��
 ["��֮˫ͷ���"]= {"��ħ����","��������","�����ָ","��ħ��ָ","�����ָ"},--4.90��
 ["��֮ţħ��"]= {"��ħ����","��������","�����ָ","��ħ��ָ","�����ָ"},--5.90��
 ["��֮ʬ��"]= {"��ħ����","��������","�����ָ","��ħ��ָ","�����ָ"},--6.100��
 ["��֮��Ȫ����"]= {"��ħ����","��������","�����ָ","��ħ��ָ","�����ָ"},--7.100��
 ["��֮��ħ����"]= {"��ħ����","��������","�����ָ","��ħ��ָ","�����ָ"},--8.100��
 ["��֮������"]= {"��ħ����","��������","�����ָ","��ħ��ָ","�����ָ"},--9.100��
 ["����ս��"]= {"��ħ����","��������","�����ָ","��ħ��ָ","�����ָ"},--10.100��
 ["Ԫ��BOSS"]= {"100��Ԫ��","500��Ԫ��","1000��Ԫ��","100Ԫ��","1000Ԫ��"},--�Ԫ��BOSS
 ["ת����������1"]= {"ʥħ����","ʥ������","��������","��ħ����","��������"},--1��.70������
 ["ת����������2"]= {"����ͷ��","����ͷ��","ʥ���ָ","ʥħ��ָ","ʥ���ָ"},--2��.70������ 
 ["ת����������3"]= {"�����ָ","�����ָ","��������","��������","��������"},--3��.1-2ת  100��
 ["ת����������4"]= {"�������ͷ��","��������ͷ��","���������","�����������","������������"},--4��.3-4ת 140��
 ["ת����������5"]= {"��ħ����","��������","�����ָ","��ħ��ָ","�����ָ"},--5��.5-6ת 160��
 ["ת����������6"]= {"��������ָ","���������ָ","����㷨����","������������","������������"},--6��.7-8ת 180��
 ["ת����������7"]= {"��������ָ","���������ָ","������������","�����������","������������"},--7��.9-10ת 200��
 ["ת����������8"]= {"�챩��������","������������","����������ָ","��������ָ","���������ָ"},--8��.11-12ת
 ["��ħ����ţħ��"]= {"��ħ����","��ħ����","��ħ����","��ħ����","��ħ����"},--��ħ����ţħ��
 ["��ħ������ħ����"]= {"��ħ����","��ħ����","��ħ����","��ħ����","��ħ����"},--��ħ������ħ����
 ["��ħ�������ĺ���"]= {"��ħ����","��ħ����","��ħ����","��ħ����","��ħ����"},--��ħ�������ĺ���
 ["��ħ�������ħ"]= {"��ħ����","��ħ����","��ħ����","��ħ����","��ħ����"},--��ħ�������ħ
 ["��ħ����������ħ"]= {"��������ս��","�챩���ڷ���","����������","������������","�챩��������"},--��ħ����������ħ
 ["ħ��������������"]= {"��������ս��","�챩���ڷ���","����������","������������","�챩��������"},--ħ��������������
 ["ħ������ţħ��"]= {"BOSS���־���С","BOSS���־���С","BOSS���־���С","BOSS���־���С","BOSS���־���С"},--ħ������ţħ��
 ["ħ�����ֻ�Ȫ����"]= {"BOSS���־���С","BOSS���־���С","BOSS���־���С","BOSS���־���С","BOSS���־���С"},--ħ�����ֻ�Ȫ����
 ["ħ�����ֳ��¶�ħ"]= {"BOSS���־���С","BOSS���־���С","BOSS���־���С","BOSS���־���С","BOSS���־���С"},--ħ�����ֳ��¶�ħ
 ["ħ�������������"]= {"BOSS���־���С","BOSS���־���С","BOSS���־���С","BOSS���־���С","BOSS���־���С"},--ħ�������������
 ["ħ�������������"]= {"BOSS���־���С","BOSS���־���С","BOSS���־���С","BOSS���־���С","BOSS���־���С"},--ħ�������������
 ["������һ��BOSS"]= {"ս������","��������","ɢ������","ս��ͷ��","����ͷ��"},--������һ��BOSS
 ["����������BOSS"]= {"�������","ħ������","��������","����ָ","ħ���ָ"},--����������BOSS
 ["����������BOSS"]= {"��������","��ħ����","��������","�����ָ","��ħ��ָ"},--����������BOSS
 ["�������Ĳ�BOSS"]= {"ʥ������","ʥħ����","ʥ������","ʥ��ѥ��","ʥħѥ��"},--�������Ĳ�BOSS
 ["���������BOSS"]= {"��������","��������","��������","�����ָ","�����ָ"},--���������BOSS
 ["����������BOSS"]= {"��������","��������","��������","��������","��������"},--����������BOSS
 ["�������߲�BOSS"]= {"��������","��������","��������","������������","�����������"},--�������߲�BOSS
 ["�������˲�BOSS"]= {"������������","�����������","���������","��������ѥ��","�������ѥ��"},--�������˲�BOSS
 ["�������Ų�BOSS"]= {"������������","������������","����㷨����","��������ͷ��","��������ͷ��"},--�������Ų�BOSS
 ["������ʮ��BOSS"]= {"������������","�����������","������������","���������ָ","��������ָ"},--������ʮ��BOSS
 ["������ʮһ��BOSS"]= {"������������","�����������","������������","���������ָ","��������ָ"},--������ʮһ��BOSS
 ["������ʮ����BOSS"]= {"������������","�����������","������������","���������ָ","��������ָ"},--������ʮ����BOSS
 ["������ʮ����BOSS"]= {"������������","�����������","������������","���������ָ","��������ָ"},--������ʮ����BOSS 
}
OtherRoleHeadInfo.handle = {}
function OtherRoleHeadInfo.main()
	local tf = GUIWndCreateWnd(0, "OtherRoleHeadInfo", 0, 382, 122)
	local uih = 0
	uih = GUIImageCreate(tf, "GUI_2", 1800500229, 0, 0)
--[[	uih = GUIImageCreate(tf, "lvlEditBackImage", 1800000162, 58, 55)
	if uih ~= 0 then
			GUIWndSetVisible(uih, false)
			OtherRoleHeadInfo.handle["lvlEditBackImage"] = uih
		end--]]
	uih = GUIImageCreate(tf, "HeaderImage", 0, 5, -9)	--	
	if uih ~= 0 then
		--GUIWndSetSizeM(uih, 71, 71)
		GUIImageSetFitSize(uih, true)
		OtherRoleHeadInfo.handle["HeaderImage"] = uih
	end
				
	uih = GUIEditCreate(tf, "RoleName", 95, 8, 100, 20)	--
	if uih ~= 0 then 
		GUIEditSetFontCenter(uih)
		GUIWndSetTextColorM(uih, CLMakeARGB(255, 194, 182, 160))
		GUIEditSetCanEdit(uih, false) 
		GUIWndSetEnableM(uih, false) 
		OtherRoleHeadInfo.handle["RoleName"] = uih
	end
	uih = GUIEditCreate(tf, "Level", 73, 53, 30, 30)	--
	if uih ~= 0 then 
		GUIEditSetFontCenter(uih)
		GUIWndSetTextColorM(uih, CLMakeARGB(255, 194, 182, 160))
		GUIEditSetCanEdit(uih, false) 
		GUIWndSetEnableM(uih, false) 
		OtherRoleHeadInfo.handle["Level"] = uih
	end
	uih = GUIImageCreate(tf,"RoleHP1",1805700004,115,54)
	if _GUIHandle ~= 0 then
		GUIImageSetFitSize(uih, true)
		GUIWndSetSizeM(uih,280, 14)
		GUIWndSetVisible(uih, false)
		OtherRoleHeadInfo.handle["RoleHP1"] = uih
	end
	uih = GUIImageCreate(tf,"RoleHP",1805700003,115,54)
	if uih ~= 0 then
		GUIImageSetFitSize(uih, true)
		GUIWndSetSizeM(uih,280, 14)
		GUIWndSetVisible(uih, false)
		OtherRoleHeadInfo.handle["RoleHP"] = uih
	end

	uih = GUIEditCreate(tf, "RoleHPEdit", 220, 52, 150, 20)	--
	if uih ~= 0 then 
			--GUIEditSetTextM(uih, "10000/120000")
		GUIWndSetTextColorM(uih, CLMakeARGB(255, 194, 182, 160))
		GUIEditSetCanEdit(uih, false) 
		GUIWndSetVisible(uih, false)
		GUIWndSetEnableM(uih, false)
		OtherRoleHeadInfo.handle["RoleHPEdit"] = uih
	end		
	local playerWin = GUIWndCreateWnd(tf, "PlayerWin", 0, 0, 0)
	OtherRoleHeadInfo.handle["PlayerWin"] = playerWin
	uih = GUIButtonCreate(playerWin, "watchBtn", 1800500376, 107, 51)
	if uih ~= 0 then
		GUIWndRegistScript(uih, RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onWatchBtnUp")
	end
	uih = GUIButtonCreate(playerWin, "teamBtn", 1800500380, 134, 51)
	if uih ~= 0 then
		GUIWndRegistScript(uih, RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onTeamBtnUp")
	end
	uih = GUIButtonCreate(playerWin, "tradeBtn", 1800500384, 161, 51)
	if uih ~= 0 then
		GUIWndRegistScript(uih, RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onTradeBtnUp")
	end
	uih = GUIButtonCreate(playerWin, "friendBtn", 1800500388, 188, 51)
	if uih ~= 0 then
		GUIWndRegistScript(uih, RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onFriendBtnUp")
	end
	uih = GUIButtonCreate(playerWin, "whispBtn", 1800500392, 215, 51)
	if uih ~= 0 then
		GUIWndRegistScript(uih, RDWndBaseCL_mouse_lbUp, "OtherRoleHeadInfo.onWhispBtnUp")
	end
	local bossWin = GUIWndCreateWnd(tf, "BossWin", 0, 0, 0)
	OtherRoleHeadInfo.handle["BossWin"] = bossWin
	uih = GUIImageCreate(bossWin, "BackImage", 1805700002, -3, 0)		
	OtherRoleHeadInfo.handle["bossItem"] = {}	
	for i = 1, 5 do
		uih = GUIItemCtrlCreate(bossWin, "bossItem"..i, 0, 230+(i-1)*33, 73, 28, 28)	
		if uih ~= 0 then
			OtherRoleHeadInfo.handle["bossItem"][i] = uih
			GUIItemCtrlSetBackImageID(uih, 1805700000)
			GUIItemCtrlSetHighlightImageID(uih, 0)
		end
	end
	OtherRoleHeadInfo.UIinit(tf)
end


function OtherRoleHeadInfo.UIinit(h)
	OtherRoleHeadInfo._wnd = h
	GUIWndSetVisible(h, false)
	RegisterUIEvent(LUA_EVENT_CHOOSEPLAYER, "choosePlayer", OtherRoleHeadInfo.onChoosePlayer)
	RegisterUIEvent(LUA_EVENT_HIDECHOOSEPLAYER, "hideChoosePlayer", OtherRoleHeadInfo.onHideChoosePlayer)
	CLSetLuaGlobal("OtherBuffIconDrawSizeX",24)
	CLSetLuaGlobal("OtherBuffIconDrawSizeY",24)
	
end

function OtherRoleHeadInfo.CreateUI(guidtype,name)
	local tf = GetWindow(0,"OtherRoleHeadInfo")
	if tonumber(guidtype) == 0 then
		local handle = OtherRoleHeadInfo.handle["PlayerWin"]
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end
		--[[local handle = OtherRoleHeadInfo.handle["lvlEditBackImage"]
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
		end--]]
		ImageSetImageID(tf,"GUI_2",1800500229)  
		local handle = OtherRoleHeadInfo.handle["HeaderImage"]
		if handle ~= 0 then
			--GUIWndSetSizeM(handle, 71, 71)
			GUIWndSetPosM(handle, 5, -24)
		end	
		local handle = OtherRoleHeadInfo.handle["RoleName"]
		if handle ~= 0 then
			GUIWndSetPosM(handle, 95,8)
		end	
		local handle = OtherRoleHeadInfo.handle["Level"]
		if handle ~= 0 then
			GUIWndSetPosM(handle, 73,53)
		end	
		local handle = OtherRoleHeadInfo.handle["RoleHP"]
		if handle ~= 0 then
			GUIWndSetVisible(handle, true)
			ImageSetImageID(tf,"RoleHP",1800500230)  
			GUIWndSetPosM(handle, 95,33)
		end	
		local idtab1 = {"RoleHP1","RoleHPEdit"}
		for i = 1 , #idtab1 do 
			local handle = OtherRoleHeadInfo.handle[idtab1[i]]
			if handle ~= 0 then
				GUIWndSetVisible(handle, false)
			else
				break
			end
		end
		
		
		local handle = OtherRoleHeadInfo.handle["BossWin"]
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
	
		--[[local uih = 0
		local playerGUID = OtherRoleHeadInfo.choosePlayer
		uih = GUIWndFindChildM(tf, "HeaderImage")
		if uih ~= 0 then
			local image_Id = {{1805800001,1805800004},{1805800002,1805800005},{1805800003,1805800006}}
			CLGetPlayerPropBase(playerGUID, ROLE_PROP_JOB)
			local jobID = tonumber(as3.tolua(LuaRet))
			CLGetPlayerPropBase(playerGUID, ROLE_PROP_SEX)
			local genderID = tonumber(as3.tolua(LuaRet))
			local headID = image_Id[jobID][genderID]
			if jobID == 3 and genderID == 2 then
				GUIWndSetSizeM(uih, 69, 84)
				GUIWndSetPosM(uih, 5, -9)
			else
				GUIWndSetSizeM(uih, 71, 71)
				GUIWndSetPosM(uih, 5, 8)
			end
			GUIWndSetImageID(uih, tonumber(headID))
			
		end--]]
		
	elseif tonumber(guidtype) == 2 then
		--[[local handle = OtherRoleHeadInfo.handle["lvlEditBackImage"]
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end--]]
		local handle = OtherRoleHeadInfo.handle["PlayerWin"]
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
		local idtab = {"RoleHP1","RoleHP","RoleHPEdit"}
		for i = 1 , #idtab do 
			local handle = OtherRoleHeadInfo.handle[idtab[i]]
			if handle ~= 0 then
				GUIWndSetVisible(handle, true)
			end
			if idtab[i]=="RoleHP" then
				ImageSetImageID(tf,"RoleHP",1805700003)  
				GUIWndSetPosM(handle, 116,53)
			end
		end
		local bossWin = OtherRoleHeadInfo.handle["BossWin"]
		if bossWin ~= 0 then
			GUIWndSetVisible(bossWin, true)
		end
		for i = 1, 5 do
			local handle = OtherRoleHeadInfo.handle["bossItem"][i]
			if handle ~= 0 then				
				if OtherRoleHeadInfo.item_tab[name] ~= nil then
					RDItemCtrlSetGUIDataByKeyName(handle,OtherRoleHeadInfo.item_tab[name][i] , 0, false)
				else
					RDItemCtrlSetGUIDataByKeyName(handle,"��������" , 0, false)
				end	
			end
		end
		ImageSetImageID(tf,"GUI_2",1805700001) 
		
		local handle = OtherRoleHeadInfo.handle["HeaderImage"]
		if handle ~= 0 then
			GUIWndSetPosM(handle, 30,37)
		end	
		local handle = OtherRoleHeadInfo.handle["RoleName"]
		if handle ~= 0 then
			GUIWndSetPosM(handle, 125,75)
		end	
		local handle = OtherRoleHeadInfo.handle["Level"]
		if handle ~= 0 then
			GUIWndSetPosM(handle, 94,74)
		end	
	
		
	end
	GUIWndSetVisible(tf, true)
	
end	



function OtherRoleHeadInfo.onWatchBtnUp(h)	
	CLLogicLookInfo(OtherRoleHeadInfo.name)
end

function OtherRoleHeadInfo.onTeamBtnUp(h)
	if CLGetTeamMemberGUIDList() then
		CLLogicTeamInvite(OtherRoleHeadInfo.name)
	else	
		CLOnTeamBtn()
		CLCreateTeam("��������ɹ�","MyTeamUpdata")
		CLAddDelayTask("CLLogicTeamInvite(".."\""..OtherRoleHeadInfo.name.."\""..")",500,1)
		
	end
end

function OtherRoleHeadInfo.onTradeBtnUp()
	CLOnTradeBtn(OtherRoleHeadInfo.name)
end

function OtherRoleHeadInfo.onFriendBtnUp(h)
	CLLogicAddFriend(OtherRoleHeadInfo.name)
end

function OtherRoleHeadInfo.onWhispBtnUp(h)
	CLLogicSendPrivateTalk(OtherRoleHeadInfo.name)
end

function OtherRoleHeadInfo.onChoosePlayer()
	--local playerGUID = as3.tolua(LuaParam[1])
	local playerGUID = as3.tolua(LuaParam[2])
	local guidType = as3.tolua(LuaParam[1])	
	if playerGUID == OtherRoleHeadInfo.choosePlayer then
		return
	end	
	GUIWndSetVisible(OtherRoleHeadInfo._wnd, false)
	OtherRoleHeadInfo.choosePlayer = playerGUID
	
	if tonumber(guidType) == 0 then 
		CLGetPlayerPropBase(playerGUID, ROLE_PROP_ROLENAME)
		OtherRoleHeadInfo.name = as3.tolua(LuaRet)
		OtherRoleHeadInfo.CreateUI(0)
		CLSetLuaGlobal("OtherBuffIconDrawPosX",100)
		CLSetLuaGlobal("OtherBuffIconDrawPosY",78)
	elseif tonumber(guidType) == 2 then
		local num = 0 
		--UI:Lua_SubmitForm("ͷ��ѡ���","HeadSelect",""..playerGUID)
		if CLGetMonsterTemplateProperty(playerGUID, MONSTER_PROP_TYPE) then
			num = as3.tolua(LuaRet)
		end
		if num == 4 then
			OtherRoleHeadInfo.CreateUI(2,playerGUID)
		else
			return
		end	
		CLSetLuaGlobal("OtherBuffIconDrawPosX",135)
		CLSetLuaGlobal("OtherBuffIconDrawPosY",106)
	end
	--UI:Lua_SubmitForm("ͷ��ѡ���","HeadSelect",""..playerGUID)
end

function OtherRoleHeadInfo.onHideChoosePlayer()
	--msg("as3.tolua(LuaParam[1])="..tostring(as3.tolua(LuaParam[1]))..";OtherRoleHeadInfo.choosePlayer="..tostring(OtherRoleHeadInfo.choosePlayer))
	if as3.tolua(LuaParam[2]) == OtherRoleHeadInfo.choosePlayer then
		OtherRoleHeadInfo.choosePlayer = 0
		GUIWndSetVisible(OtherRoleHeadInfo._wnd, false)
	end
end

OtherRoleHeadInfo.main()