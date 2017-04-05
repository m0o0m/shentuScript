GameMainBar = {}
function GameMainBar.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SurfaceImg",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,101, 101)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"HPEffect",3000100200,3,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 12)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"MPEffect",3000100300,53,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 12)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerHP",3000100000,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,50, 100)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerMP",3000100100,55,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,50, 100)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GameMainBarUI",1800500184,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,741, 109)
    end
	    
    _GUIHandle = GUI:ButtonCreate(_Parent, "newMail", 1800500162, 620, -50)	--new�ʼ�
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetHint(_GUIHandle, "�����µ��ʼ�")
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "GameMainBar.onNewMailBtn")
	end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Guild",1800500286,276,-27)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMainBar.OnGuildBtn")
        GUI:WndSetHint(_GUIHandle,"�л�(G)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Familyimage",1801500187,277,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 20)
    end
	
    _GUIHandle = GUI:ButtonCreate(_Parent,"youjian",1800500290,230,-27)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMainBar.OnMailBtn")
        GUI:WndSetHint(_GUIHandle,"�ʼ�(P)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
	
    _GUIHandle = GUI:ImageCreate(_Parent,"youjianimage",1801500188,231,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 20)
    end
	
    _GUIHandle = GUI:ButtonCreate(_Parent,"zuoqi",1800500274,183,-27)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMainBar.OnRideBtn")
        GUI:WndSetHint(_GUIHandle,"���/����(Ctrl+Q)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"zuoqiimage",1801500184,184,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 20)
    end
    

	_GUIHandle = GUI:EditCreate(_Parent, "family_applyer", 500, -35, 24, 24)   --������ʾ���������лᣩ
	if _GUIHandle ~= 0 then
		GUI:EditSetFontM(_GUIHandle, "SIMLI18")
        GUI:WndSetTextColorM(_GUIHandle, 4294901760)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Trade",1800500278,423,-27)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMainBar.OnTradeBtn")
        GUI:WndSetHint(_GUIHandle,"����(U)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Tradeimage",1801500185,424,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 20)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MakeTeam",1800500282,374,-27)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMainBar.OnTeamBtn")
        GUI:WndSetHint(_GUIHandle,"���(N)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Teamimage",1801500186,375,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 20)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Contact",1800500270,325,-27)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMainBar.OnContactBtn")
        GUI:WndSetHint(_GUIHandle,"����(F)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
    end
    	
    _GUIHandle = GUI:ImageCreate(_Parent,"Friendimage",1801500183,326,8)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,46, 20)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Shop",1800500190,628,41)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMainBar.GameMallBtn")
        GUI:WndSetHint(_GUIHandle,"�̳�(T)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 64)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Bagpack",1800500198,665,9)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMainBar.OnPakageBtn")
        GUI:WndSetHint(_GUIHandle,"����(B)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 32)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Skill",1800500202,692,37)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMainBar.OnSkillBtn")
        GUI:WndSetHint(_GUIHandle,"����(V)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 32)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Quest",1800500206,691,77)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMainBar.OnQuestBtn")
        GUI:WndSetHint(_GUIHandle,"����(R)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 32)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Role",1800500194,625,7)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "GameMainBar.OnRoleBtn")
        GUI:WndSetHint(_GUIHandle,"��ɫ(C)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 32)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"HPMPBorder",1800500183,-65,-20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,132, 130)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPNew",1800500187,104,97)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,523, 9)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPCover1",1800500189,150,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,7, 13)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPCover2",1800500189,202,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,7, 13)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPCover3",1800500189,254,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,7, 13)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPCover4",1800500189,306,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,7, 13)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPCover5",1800500189,358,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,7, 13)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPCover6",1800500189,410,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,7, 13)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPCover7",1800500189,462,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,7, 13)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPCover8",1800500189,514,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,7, 13)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPCover9",1800500189,566,96)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,7, 13)
    end
	
    _GUIHandle = GUI:ImageCreate(_Parent, "vipEffect", 1800500353, -42, 87)
	if _GUIHandle ~= 0 then 
		--GUIImageSetAnimateEnable(_GUIHandle, true, 150)
        GUI:WndSetSizeM(_GUIHandle,30, 30)
		GUI:ImageSetDrawCenter(_GUIHandle, true)
		GUI:WndSetCanRevMsg(_GUIHandle,true)
		GUI:WndSetEnableM(_GUIHandle,true)    
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnVipClicked") 
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent, "vipLevel", 0, -20, 87)
	if _GUIHandle ~= 0 then 
		--GUIImageSetAnimateEnable(_GUIHandle, true, 150)
		GUI:ImageSetDrawCenter(_GUIHandle, true)
	end
	
	
	local _QuiteToLoginBtn = GUI:ButtonCreate(_Parent, "QuiteToLogin", 1930000080, 545, 0)
	if _QuiteToLoginBtn ~= 0 then
		GUI:WndSetHint(_QuiteToLoginBtn, "�˵�ѡ���ɫ����(Alt+X)")
		GUI:WndRegistScript(_QuiteToLoginBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnQuiteToLoginBtn")
	end	

	local _QuiteGameBtn = GUI:ButtonCreate(_Parent, "Quite", 1930000084, 578, 0)
	if _QuiteGameBtn ~= 0 then
		GUI:WndSetHint(_QuiteGameBtn, "�˳���Ϸ(Alt+Q)")
		GUI:WndRegistScript(_QuiteGameBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnQuiteGameBtn")
	end
	

	_GUIHandle = GUI:ImageCreate(_Parent,"����ͼ",1800000120,730,37)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 170,72)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	
    _GUIHandle = GUI:EditCreate(_Parent,"�ȼ�",740,40,90,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		mkcolor("BROWN")
		local yanse = LuaRet
        GUI:WndSetTextColorM(_GUIHandle, yanse)
        GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"�ȼ���")
    end
	
    _GUIHandle = GUI:EditCreate(_Parent,"�ȼ�ֵ",780,40,90,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		mkcolor("GREENG")
		local yanse = LuaRet
        GUI:WndSetTextColorM(_GUIHandle, yanse)
        GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"0")
    end
	
    _GUIHandle = GUI:EditCreate(_Parent,"����",740,55,90,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		mkcolor("BROWN")
		local yanse = LuaRet
        GUI:WndSetTextColorM(_GUIHandle, yanse)
        GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"������")
    end
	
    _GUIHandle = GUI:EditCreate(_Parent,"����ֵ",780,55,300,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		mkcolor("MAGENTA")
		local yanse = LuaRet
        GUI:WndSetTextColorM(_GUIHandle, yanse)
        GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"0")
    end
	
    _GUIHandle = GUI:EditCreate(_Parent,"ħ��",740,70,90,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		mkcolor("BROWN")
		local yanse = LuaRet
        GUI:WndSetTextColorM(_GUIHandle, yanse)
        GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"ħ����")
    end
    _GUIHandle = GUI:EditCreate(_Parent,"ħ��ֵ",780,70,300,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		UI:Lua_MakeARGB(255,0,193,255)
		local yanse = LuaRet
        GUI:WndSetTextColorM(_GUIHandle, yanse)
        GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetTextM(_GUIHandle,"0")
    end
	
	
    GameMainBar.UIInit(_Parent)
end

--UI Logic Code Start
GameMainBar.WndHandle = 0
function GameMainBar.UIInit(_Parent)
	GameMainBar.propDataChange()
	local str = "<form default_parent=GameMainInterface,GameMainBar>";
	str = str .. "<wnd id=��Ϣ�� x=200 y=-100 w=405 h=72 revmsg=0 >";
	str = str .. "<image id=���� x=-20 y=0 w=405 h=72 image=1903700039 fitsize=1 />";
	str = str .. "<richedit id=���� x=-20 y=0 w=405 h=20 />";
	str = str .. "</wnd></form>";
	GenFormByString(str);
	local handle = GetWindow(nil, "GameMainInterface,GameMainBar,��Ϣ��");
	RichEditSetTotalLine(handle, "����", 5);
	ImageSetAlpha(handle, "����", 50);
	-- UI:Lua_AddDelayTask("t.UpdataSize()", 0, 1);
	
	
    GameMainBar.WndHandle = _Parent
	UI:Lua_OpenWindow(GameMainBar.WndHandle, "MsgBox.lua")
	UI:Lua_OpenWindow(0,"PackageWndInteraction.lua")	--�����뱳�������ű�
	UI:Lua_OpenWindow(0,"CleanWnd.lua")
	

	CL:HotKeyRegister("P", "���ʼ�����", "GameMainBar.OnMailBtn"); --ע���ʼ��ȼ�P

    CL:AddDelayTask("GameMainBar.SetMaskImage()", 500, 1)
	local _GUIHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "HPEffect")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
	end
	local _GUIHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "MPEffect")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
	end
	local _GUIHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "EffectMask")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
	end
    RegisterUIEvent(LUA_EVENT_PROPERTYDATA, "PropDataChange", GameMainBar.propDataChange)       --������ݸı�
    RegisterUIEvent(LUA_EVENT_PROPERTYDATA64, "PropDataChange", GameMainBar.propDataChange64)       --������ݸı�
    RegisterUIEvent(LUA_EVENT_INITMAININTERFACE, "UpdataScreenSize", GameMainBar.UpdataScreenSize)   --�ֱ��ʸı�
    RegisterUIEvent(LUA_EVENT_ONPLAYERAPPEAR, "PlayerAppear", GameMainBar.PlayerAppear)     --��ҳ���
	-- RegisterUIEvent(LUA_EVENT_P2PINVITE, "GameMainBar_��������", GameMainBar.tradeInvite)
    RegisterUIEvent(LUA_EVENT_ONNEWMAIL, "newMail", GameMainBar.newMail)    --���ʼ�
    RegisterUIEvent(LUA_EVENT_ONTEAMINVITE, "GameMainBar_�������", "GameMainBar.teamInvite")   --�����������
	-- RegisterUIEvent(LUA_EVENT_JOINTEAM, "GameMainBar_�������", "GameMainBar.joinTeam")
	-- RegisterUIEvent(LUA_EVENT_OBJDISPEAR, "NPC�ӳ�����ʧ", GameMainBar.FarAwayFromNPC)
    GameMainBar.UpdataScreenSize()
	GUI:WndAddTimerBrief(_Parent, 30, "GameMainBar.OnUpdata")
    CL:SetSystemColor(7,"RED")
end

function GameMainBar.OnVipClicked()
	UI:Lua_OpenWindow(0, "VIPWnd.lua")
end

function GameMainBar.ShowVip(level)
	local vipLevel = tonumber(level)
	--msg(""..vipLevel)
	local image1 = {1801500002,1801500003,1801500004,1801500005,1801500006,1801500007,1801500008,1801500009,1801500010,1801500011}
	--local image1 = {1800500238,1800500254,1800500286,1800500278,1800500282,1800500270,1800500246,1800500258,1800500242,1800500298}
	if vipLevel > 0 then
		ImageSetImageID(GameMainBar.WndHandle,"vipLevel",image1[vipLevel])
	end
	
	if vipLevel == 10 then
		local handle = GetWindow(GameMainBar.WndHandle, "vipLevel")
		if handle ~= 0 then
			GUI:WndSetPosM(handle, -15, 95)
		end
	end
end

--NPC�ӳ�����ʧ
function GameMainBar.FarAwayFromNPC()
	if tonumber(LuaParam[1]) == 3 then
		local NpcKeyname = tostring(LuaParam[2])
		local KeynameArr = {
			["��ɽ�Ǵ���Ա"] = "transmit", ["��ɽ�ǰ�����·��"] = "TempleGuider", ["��ɽBOSS����Ա"] = "BOSS_Hall_Guider",
			["��ɽ�Ǹ���ʹ��"] = "Daily_FB_Dlg", ["��ɽ�ǳ�ħʹ��"] = "TitleWnd", ["��ɽ����Ʒ����Ա"] = "Recycle",
			["��ɽ�ǲֿ�"] = "WareHouse",["����������Ա"] = "EndlessUI",
			["�������ʹ��"] = "mayaTemple",
			["ת�����ʹ��"] = "ReinTemple",
			["���Ƕᱦ���"] = "xldb_NPCShow",
            ["����ħ������"] = "DemonWnd",
            ["����ҹս�����"] = "NightWnd",
            ["����˭������"] = "ArenaNPC",
            ["����֮��"] = "LongHunZL_outside",
            ["���Ǵ���Ա"] = "transmit",
            ["��ɽ�Ǵ���Ա"] = "transmit",
            ["��ɽ�ǿ���"] = "OreWnd",
		}
		local handle = 0
		if KeynameArr[NpcKeyname] == nil then
			return
		else
			if NpcKeyname == "��ɽ����Ʒ����Ա" then
				if Recycle ~= nil then
					Recycle.Close() 
				end	
			else
				handle = GetWindow(0, KeynameArr[NpcKeyname])
				if handle ~= 0 then
					GUI:WndClose(handle)
				end
				if NpcKeyname == "��ɽ�Ǹ���ʹ��" then
					handle = GetWindow(0, "Dailyone")
					if handle ~= 0 then
						GUI:WndClose(handle)
					end
				elseif NpcKeyname == "��ɽ�ǳ�ħʹ��" then
					handle = GetWindow(0, "Achieve") 
					if handle ~= 0 then
						GUI:WndClose(handle)
					end
				end
			end
		end
	end
end

--�������
function GameMainBar.teamInvite()
	local name = LuaParam[1]
	if CL:GetRoleTeamStatus() then
		if LuaRet == 1 then -- auto 
			CL:AcceptTeamInvite(name, true)
		elseif LuaRet == 2 then -- manual
			luaMsgBox.new("�������", name, {"����", "�ܾ�"}, {"GameMainBar.confirmTeamInvite", "GameMainBar.cancelTeamInvite"}, name)
		end
	end
end

function GameMainBar.confirmTeamInvite(h)
    CL:AcceptTeamInvite(luaMsgBox.param["�������"], true)
    local handle = GUI:WndGetParentM(h)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

function GameMainBar.cancelTeamInvite(h)
    CL:AcceptTeamInvite(luaMsgBox.param["�������"], false)
    local handle = GUI:WndGetParentM(h)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

--�������
function GameMainBar.joinTeam()
    local name = LuaParam[1]
    luaMsgBox.new("�������", name, {"����", "�ܾ�"}, {"GameMainBar.confirmJoinTeam", "GameMainBar.cancelJoinTeam"}, name)
end

function GameMainBar.confirmJoinTeam(h)
    CL:AcceptApplyTeam(luaMsgBox.param["�������"], true)
    local handle = GUI:WndGetParentM(h)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

function GameMainBar.cancelJoinTeam(h)
    CL:AcceptApplyTeam(luaMsgBox.param["�������"], false)
    local handle = GUI:WndGetParentM(h)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

--��������
function GameMainBar.tradeInvite()
    local pGuid = LuaParam[1]
    local pName = LuaParam[2]
    luaMsgBox.new("��������", pName, {"����", "�ܾ�"}, {"GameMainBar.confirmTradeInvite", "GameMainBar.cancelTradeInvite"}, pGuid)
    GameMainBar.pName = pName
end

function GameMainBar.confirmTradeInvite(h)
    CL:AcceptP2pInvite(luaMsgBox.param["��������"], 1)
    local handle = GUI:WndGetParentM(h)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

function GameMainBar.cancelTradeInvite(h)
    CL:AcceptP2pInvite(luaMsgBox.param["��������"], 0)
    local handle = GUI:WndGetParentM(h)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

function GameMainBar.UpdataScreenSize()
    local newX = CL:GetScreenWidth()
    local newY = CL:GetScreenHeight()
    local _GUIHandle = nil
    --΢���У�ChatWindow SpeakerWindow��GameMainbar��ΪGameInterface�Ӵ���
    _HChat = GUI:WndFindWindow(0, "GameMainInterface,ChatWindowEX")
    if _HChat == 0 then
        _HChat = GUI:WndFindWindow(0, "GameMainInterface,ChatWindow")
    end
    if _HChat ~= 0 then
        if newX < 1151 then
            GUI:WndSetPosM(_HChat, 16, newY - 333)
        else
            GUI:WndSetPosM(_HChat, 16, newY - 203)
        end
    end
    
    _HChatHd = GUI:WndFindWindow(0, "GameMainInterface,ChatWindowEXHideUI")
    if _HChatHd == 0 then
        _HChatHd = GUI:WndFindWindow(0, "GameMainInterface,ChatWindowHideUI")
    end
    if _HChatHd ~= 0 then
        if newX < 1151 then
            GUI:WndSetPosM(_HChatHd, 0, newY - 232)
        else
            GUI:WndSetPosM(_HChatHd, 0, newY - 102)
        end
    end
    
    local _SpeakerWnd = GUI:WndFindWindow(0, "GameMainInterface,SpeakerWindow")
    if _SpeakerWnd ~= 0 then
        if newX < 1151 then
            GUI:WndSetPosM(_SpeakerWnd, 10, newY - 500)
        else
            GUI:WndSetPosM(_SpeakerWnd, 10, newY - 370)
        end
    end

    _GUIHandle = GameMainBar.WndHandle
    if _GUIHandle ~= nil then
        local GameMainBarPosX = 0
        local GameMainBarPosY = 0
        if newX > 1151 and newX < 1490 then
            GameMainBarPosX = 410
            GameMainBarPosY = newY - 110
        else
            GameMainBarPosX = newX/2 - 335
            GameMainBarPosY = newY - 110
        end 
        LuaGlobal["GameMainBarPosX"] = GameMainBarPosX
        LuaGlobal["GameMainBarPosY"] = GameMainBarPosY
        GUI:WndSetPosM(_GUIHandle, GameMainBarPosX, GameMainBarPosY)
    end
	
	--[[_GUIHandle = SystemTeach._wnd
	if _GUIHandle ~= 0 then
		if GUI:WndGetVisible(_GUIHandle) then
			GUI:WndSetPosM(_GUIHandle, newX-208, 550)
		else
			GUI:WndSetPosM(_GUIHandle, newX, 550)
		end
	end
	
	if SystemTeach._hideWnd ~= 0 then
		GUI:WndSetPosM(SystemTeach._hideWnd, newX-31, 551)
	end--]]
	
	GameMainBar.updateExp()
end

function GameMainBar.OnAchievementBtn()
	CL:OnAchieveWindow()
end

function GameMainBar.OnContactBtn()
    CL:OnFriendWindow()
end

function GameMainBar.OnTradeBtn()
    local _BtnHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "Trade")
    if 0 ~= _BtnHandle then
        GUI:ButtonSetShine(_BtnHandle, false)
    end
    CL:OnTradeBtn()
end

function GameMainBar.OnTeamBtn()
    local _TeamBtnHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "MakeTeam")
    if 0 ~= _TeamBtnHandle then
        GUI:ButtonSetShine(_TeamBtnHandle, false)
    end
    CL:OnTeamBtn()
end

function GameMainBar.GameMallBtn()
    CL:OnGameMallWindow()
end

function GameMainBar.OnPakageBtn()
    CL:OnOpenPakage()
end

function GameMainBar.OnSkillBtn()
    local _HRoleGui = GetWindow(0, "RoleGUI")
    if _HRoleGui == 0 then
        CL:OnSkillWindow()
        if RoleGUINew ~= nil then
          RoleGUINew.ShowChildWnd(2)
          RoleGUINew.ActivePageBtn(2)
        end
    else
        local _HSkill = GUI:WndFindChildM(_HRoleGui, "RoleSkill")
        if _HSkill ~= 0 then
            if GUI:WndGetVisible(_HSkill) then
              GUI:WndClose(_HRoleGui)
            else
                CL:OnSkillWindow()
                  if RoleGUINew ~= nil then
                    RoleGUINew.ShowChildWnd(2)
                    RoleGUINew.ActivePageBtn(2)
                end
            end
        end
    end
end

function GameMainBar.OnQuestBtn()
    CL:OnQuestWindow()
end

function GameMainBar.OnGuildBtn()
	CL:OnFamilyWindow()
end

function GameMainBar.OnSettingBtn()
    CL:OnSettingWindow()
end

--�ɾ��������ͳ��
function GameMainBar.AchNum(num)
	local image1 = {1804600026,1804600027,1804600028,1804600029,1804600030,1804600031,1804600032,1804600033,1804600034,1804600026}
	local sum = tonumber(num)
	if sum == 0 then
        if GameMainBar.MedalNum == 1 then 
            ImageSetImageID(GameMainBar.WndHandle,"AchieveNum2",image1[1])  
        else
            ImageSetImageID(GameMainBar.WndHandle,"AchieveNum2",0)  
        end
	else	
		if sum < 10 then
			ImageSetImageID(GameMainBar.WndHandle,"AchieveNum2",image1[sum])
		else
			sum = 9
			ImageSetImageID(GameMainBar.WndHandle,"AchieveNum2",image1[sum])  
		end	
	end	
end

--��¯����������ͳ��
function GameMainBar.SlNum(num)
	local image1 = {1804600026,1804600027,1804600028,1804600029,1804600030,1804600031,1804600032,1804600033,1804600034,1804600026}
	local sum = tonumber(num)
	if sum == 0 then	
		ImageSetImageID(GameMainBar.WndHandle,"SlNum2",0)  
	else
		if sum > 9 then
			sum = 9
		end
		ImageSetImageID(GameMainBar.WndHandle,"SlNum2",image1[sum])  	
	end	
end

function GameMainBar.newMail()
    --CL:OnMailWindow()
    local btn = GUI:WndFindChildM(GameMainBar.WndHandle, "Mail")
    if btn ~= 0 then
        GUI:ButtonSetShine(btn, true)
    end
    btn = GUI:WndFindChildM(GameMainBar.WndHandle, "newMail")
    if btn ~= 0 then
        GUI:WndSetVisible(btn, true)
    end
end

function GameMainBar.OnMailBtn(h)
    CL:OnMailWindow()
    local btn = GUI:WndFindChildM(GameMainBar.WndHandle, "newMail")
    if btn ~= 0 then
        GUI:WndSetVisible(btn, false)
    end
	btn = GUI:WndFindChildM(GameMainBar.WndHandle, "Mail")
	if btn ~= nil then
		GUI:ButtonSetShine(btn, false)
	end
end 

function GameMainBar.onNewMailBtn(h)
    CL:OnMailWindow()
    GUI:WndSetVisible(h, false)
    local btn = GUI:WndFindChildM(GameMainBar.WndHandle, "Mail")
    if btn ~= 0 then
        GUI:ButtonSetShine(btn, false)
    end
end

function GameMainBar.OnRoleBtn()
    local _HRoleGui = GetWindow(0, "RoleGUI")
    if _HRoleGui == 0 then
        CL:OnRoleWindow()
        if RoleGUINew ~= nil then
          RoleGUINew.ShowChildWnd(1)
          RoleGUINew.ActivePageBtn(1)
        end
    else
        local _HEquip = GUI:WndFindChildM(_HRoleGui, "RoleEquiment")
        if _HEquip ~= 0 then
            if GUI:WndGetVisible(_HEquip) then
                GUI:WndClose(_HRoleGui)
            else
                CL:OnRoleWindow()
                if RoleGUINew ~= nil then
                    RoleGUINew.ShowChildWnd(1)
                    RoleGUINew.ActivePageBtn(1)
                end
          end
        end
    end
end

function GameMainBar.visitStall()
    local vsw = GUI:WndFindWindow(0, "VisitStallWnd")
    if vsw ~= 0 then
        GUI:WndMoveToParentTop(vsw)
    else
        UI:Lua_OpenWindow(0, "VisitStallWnd.lua")
    end
    VisitStallWnd.playerGUID = LuaParam[1]
    VisitStallWnd.stallName = LuaParam[2]
    VisitStallWnd.itemList = LuaParam[4]
    VisitStallWnd.paddingData()
end

function GameMainBar.propDataChange()
    CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID)
    if LuaParam[1] == LuaRet then
        if LuaParam[2] == ROLE_PROP32_LEVEL then
			GameMainBar.updateExp(false)
        end
    end
	
	
    _GUIHandle = GUI:WndFindWindow(GameMainBar.WndHandle, "�ȼ�ֵ")
    if 0 ~= _GUIHandle then
		CL:GetPlayerSelfProperty32(ROLE_PROP32_LEVEL)
		GUI:EditSetTextM(_GUIHandle,LuaRet.."")
    end
	
    _GUIHandle = GUI:WndFindWindow(GameMainBar.WndHandle, "����ֵ")
    if 0 ~= _GUIHandle then
		CL:GetPlayerSelfProperty32(ROLE_PROP32_HP)
		local hp = LuaRet
		CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_HP)
		local hp_max = LuaRet
		
		local hp_str = ""
		if hp >= 10000 then
			hp_str = string.format("%.2f",hp/10000).."��"
		else
			hp_str = hp
		end
		local hp_max_str = ""
		if hp_max >= 10000 then
			hp_max_str = string.format("%.2f",hp_max/10000).."��"
		else
			hp_max_str = hp_max
		end
		
		GUI:EditSetTextM(_GUIHandle,hp_str.."/"..hp_max_str)
    end
	
    _GUIHandle = GUI:WndFindWindow(GameMainBar.WndHandle, "ħ��ֵ")
    if 0 ~= _GUIHandle then
		CL:GetPlayerSelfProperty32(ROLE_PROP32_MP)
		local hp = LuaRet
		CL:GetPlayerSelfProperty32(ROLE_PROP32_MAX_MP)
		local hp_max = LuaRet
		
		local hp_str = ""
		if hp >= 10000 then
			hp_str = string.format("%.2f",hp/10000).."��"
		else
			hp_str = hp
		end
		
		local hp_max_str = ""
		if hp_max >= 10000 then
			hp_max_str = string.format("%.2f",hp_max/10000).."��"
		else
			hp_max_str = hp_max
		end
		
		GUI:EditSetTextM(_GUIHandle,hp_str.."/"..hp_max_str)		
    end
end

function GameMainBar.propDataChange64()
	if LuaParam[2] == ROLE_PROP64_EXP then
		GameMainBar.updateExp(true)
	end
end

function GameMainBar.updateExp(flag)
	if CL:GetPlayerSelfProperty64(ROLE_PROP64_EXP) then
		local CurrExp = LuaRet
		if CL:GetSelfUpgradeExp() then
			local UpgradeExp = LuaRet
			if flag == true then
				if UpgradeExp < CurrExp then
					return	--��һ�þ����������յ�����仯ʱ�����ڵȼ��仯�����»�õ�ǰ�ȼ�����
				end
			end
			--����Ϊ64λ�����֣�ʹ�ýӿڽ�����������
			local CurrExp100 = CL:Multiply(CurrExp, "10000")
			local percent = CL:Divided(CurrExp100, UpgradeExp)
			local fPercent = tonumber(percent) / 10000
			local _GUIHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "PlayerEXPNew")
			if _GUIHandle ~= 0 then
				GUI:WndSetHintWidth(_GUIHandle, 250)
				GUI:WndSetHint(_GUIHandle, "���飺"..CurrExp.."/"..UpgradeExp.."("..string.format("%.2f",fPercent*100).."%)")
				GUI:ImageSetDrawRect(_GUIHandle, 0, fPercent, 0, 1)
			end
		end
	end
end

function GameMainBar.OnQuiteToLoginBtn()
	CL:QuiteToLogin()
end

function GameMainBar.OnQuiteGameBtn()
	CL:QuiteGame()
end

function GameMainBar.OpenEnhanceFun()
	local _GUIHandle = GUI:WndFindWindow(0, "ForgeWnd")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenForge", "")
	end
end

function GameMainBar.OpenSLFun()
	local _GUIHandle = GUI:WndFindWindow(0, "FurnaceWnd")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenFurnace", "")
	end
end

function GameMainBar.OpenWingFun()
	local _GUIHandle = GUI:WndFindWindow(0, "WingWnd")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenWing", "")
	end
end

function GameMainBar.OnCrystalBtn()
	local _GUIHandle = GUI:WndFindWindow(0, "CrystalSystem")
	if _GUIHandle ~= 0 then
		GUI:WndClose(_GUIHandle)
	else
		UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenCrystal", "")
	end
end
function GameMainBar.PlayerAppear()
end

function GameMainBar.OnRide(_Handle,_Param)
  CL:OnRide()
end

function GameMainBar.SetMaskImage()
    CL:SetHPMPMaskImage(1800500237, 0, 0)
end

function GameMainBar.OnUpdata()
	local _BtnHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "Trade")
	if 0 ~= _BtnHandle then
		if CL:GetCallBackCount("����������Ϣ") > 0 then
			GUI:ButtonSetShine(_BtnHandle, true)
		else
			GUI:ButtonSetShine(_BtnHandle, false)
		end
	end
end

--�����������л�
function GameMainBar.ApplyFamily()
	local _handle = GetWindow(GameMainBar.WndHandle,"family_applyer")
	CL:GetApplyPlayerList(0, 10,"GameMainBar_��������б�", "GameMainBar.getApplyList")
end
function GameMainBar.getApplyList()
	local _handle = GetWindow(GameMainBar.WndHandle,"family_applyer")
	--CL:FamilyInfoRequest(64,"��������б�", "GameMainBar.getApplyList")
	local applyer_tb = LuaParam[4]
	local applyer_num = LuaParam[1]
	if applyer_num == 0 then
		GUI:WndSetVisible(_handle,false)
	else
		GUI:WndSetVisible(_handle,true)
	end
	EditSetText(GameMainBar.WndHandle,"family_applyer","+" .. applyer_num)
end

--��Ԫ����ֵ����
function GameMainBar.YbTopUP_Dlg()
	luaMsgBox.new("Ԫ��", "    �ܱ�Ǹ������Ԫ������", {"ǰ����ֵ", "ȡ��"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
end

function GameMainBar.chongz(h)
	CL:OpenUrlUseIEByType(3)
	local parent = GUI:WndGetParentM(h)
	GUI:WndClose(parent)
end

function GameMainBar.out(h)
	local parent = GUI:WndGetParentM(h)
	GUI:WndClose(parent)
end

function GameMainBar.OnAuto()
	UI:Lua_SubmitForm("NPC_IsNotInScene", "AutoFight", "")
end

function GameMainBar.Taskitem(num)
	local img_tab = {1899800000,1899800001,1899800002,1899800003}
	if num > #img_tab then return end
	UI:Lua_GetScreenSize()
	local _SW = LuaRet[1]
	local _SH = LuaRet[2]
	local _GUIHandle = GUI:ImageCreate(0, "image", img_tab[tonumber(num)], _SW/2 - 250,_SH-180)
	if _GUIHandle ~= 0 then
		GUI:WndGetSizeM(_GUIHandle)
		GUI:WndSetPosM(_GUIHandle, (_SW - LuaRet[1])/2, _SH - 180)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetDrawCenter(_GUIHandle, true)
	end
	CL:AddDelayTask("GameMainBar.TaskitemClose()", 5000, 1)
end 

function GameMainBar.TaskitemClose()
	local _handle = GetWindow(0, "image")
	GUI:WndClose(_handle)
end

--�ȼ��жϣ����ز��ֹ���
function GameMainBar.JudgeLv(level,reinlevel)
	local handle = 0
	local level = tonumber(level)
	if level >= 61 then
		handle = GetWindow(GameMainBar._wnd, "Wing")      --���س��61������
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
		handle = GetWindow(GameMainBar._wnd, "Wingimage")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
	end
	
	if level >= 62 then
		local handle = GetWindow(GameMainBar._wnd, "Shenlu")  --������¯��62������
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
		handle = GetWindow(GameMainBar._wnd, "Shenluimage")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
	end
	
	if level >= 60 then
		local handle = GetWindow(GameMainBar._wnd, "Enhance")  --���ض��죬60������
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
		handle = GetWindow(GameMainBar._wnd, "Enhanceimage")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
		handle = GetWindow("", "Boss_tip")  --�ر�boss��ʾ
		if handle ~= 0 then
			GUI:WndClose(handle)
		end
	end

	if tonumber(reinlevel) >= 4 then --���ر�ʯ��ת5����
		handle = GetWindow(GameMainBar._wnd, "Crystal")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
		handle = GetWindow(GameMainBar._wnd, "Crystalimage")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
	end
end

function GameMainBar.TweenDown() 
	--΢��û����ʾ
end
--[[
function GameMainBar.OnAddNewItem()
	AE_auto_equip(LuaParam[2])
end

RegisterUIEvent(LUA_EVENT_ONADDITEM, "GameMainBar_OnAddNewItem", GameMainBar.OnAddNewItem)]]

function GameMainBar.ParticleEffect(index,gameindex)
    --΢�˲���ʾ������������Ч
end

function GameMainBar.OnPlayerErrorCode()
	if UserOnPlayerErrorCode == nil then
		local Code = LuaParam[1]
		if Code == 1116 then
			msg("�һ���Ч")
		elseif Code == 1117 then
			msg("�����ѹ���")
		elseif Code == 1001 then
			UI:Lua_ShowTypeMsg(4, "[��������]")
		end
	else
		UserOnPlayerErrorCode()
	end
end

local GameMainBar_Msg = {}
GameMainBar.SendMsg = function(str1, str2, str3, str4, str5, str6,str7,color1,color2,color3,color4)
	local handle = GetWindow(nil, "GameMainInterface,GameMainBar,��Ϣ��,����");
	if handle == 0 then return end
	if color == nil then
		color = "WHITE";
	end
	
	GameMainBar_Msg[#GameMainBar_Msg+1] = "#COLORCOLOR_".. color1 .."#".. str1 .."#COLOREND#" .. "#COLORCOLOR_".. color2 .."#".. str2.."#COLOREND#".."#COLORCOLOR_".. color1 .."#".. str3 .."#COLOREND#".."#COLORCOLOR_".. color3 .."#".. str4 .."#COLOREND#".."#COLORCOLOR_".. color1 .."#".. str5 .."#COLOREND#".."#COLORCOLOR_".. color4 .."#".. str6 .."#COLOREND#".."#COLORCOLOR_".. color1 .."#".. str7 .."#COLOREND#"
	local difline = #GameMainBar_Msg - 5;
	if difline > 0 then
		for j = 1, difline do
			table.remove(GameMainBar_Msg, 1);
		end
	end
	
	RichEditClear(handle);
	for _, v in ipairs(GameMainBar_Msg) do
		RichEditAppendString(handle, nil, v.."\n");
	end
end

function GameMainBar.OnRideBtn()
	CL:OnRide()
end

function GameMainBar.OnMailBtn()
	local _BtnHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "Mail")
	if 0 ~= _BtnHandle then
		GUI:ButtonSetShine(_BtnHandle, false)
	end
	CL:OnMailWindow()
end	

RegisterUIEvent(LUA_EVENT_PLAYERERRORCODE, EVENT_DEFAULT_TAG, GameMainBar.OnPlayerErrorCode)

CL:SetAnimateData(30001,100)
GameMainBar.main()