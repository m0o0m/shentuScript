GameMainBar = {}
GameMainBar.diffX = 5
GameMainBar.diffY = -6
function GameMainBar.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

	local _HalfDeviceWidth = _DeviceSizeX / 2
	local _HalfDeviceHeight = _DeviceSizeY

    _GUIHandle = GUI:ImageCreate(_Parent,"ExpImage",1850000033,_HalfDeviceWidth - 911 /2, _HalfDeviceHeight - 124)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerEXPNew",1850000032,_HalfDeviceWidth - 878/2, _HalfDeviceHeight - 17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ExpEndImg",1850000029,_HalfDeviceWidth + 425,_HalfDeviceHeight-37)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ExpBeginImg",1850000030,_HalfDeviceWidth - 470,_HalfDeviceHeight-37)
    if _GUIHandle ~= 0 then
    end

	
--
	_GUIHandle = GUI:ImageCreate(_Parent,"SurfaceImg",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,101, 101)
    end    
	
    
    _GUIHandle = GUI:ImageCreate(_Parent,"HPEffect",3000100200,_HalfDeviceWidth - 55 + GameMainBar.diffX,_HalfDeviceHeight-116 + GameMainBar.diffY)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
    end
    

    _GUIHandle = GUI:ImageCreate(_Parent,"MPEffect",3000100300,_HalfDeviceWidth-5  + GameMainBar.diffX, _HalfDeviceHeight-116 + GameMainBar.diffY)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 15)
    end
        
	
    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerHP", 3000100000,_HalfDeviceWidth -52 + GameMainBar.diffX, _HalfDeviceHeight-117 + GameMainBar.diffY)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,50, 100)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"PlayerMP",3000100100,_HalfDeviceWidth-5 + GameMainBar.diffX, _HalfDeviceHeight-117 + GameMainBar.diffY)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,50, 100)
    end

     _GUIHandle = GUI:ImageCreate(_Parent,"HpMpLimitImg",1850000037,_HalfDeviceWidth- 10 + GameMainBar.diffX, _HalfDeviceHeight-116 + GameMainBar.diffY)
    if _GUIHandle ~= 0 then
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"HpBigImage",1850000034,_HalfDeviceWidth-67 + GameMainBar.diffX, _HalfDeviceHeight-100 + GameMainBar.diffY)
    if _GUIHandle ~= 0 then
    end
--left and right

   _GUIHandle = GUI:ButtonCreate(_Parent,"SkillBtn",1850000067,_HalfDeviceWidth - 227,_HalfDeviceHeight -97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnSkillBtn")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleBtn",1850000075,_HalfDeviceWidth - 392,_HalfDeviceHeight-97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnRoleBtn")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"PackageBtn",1850000071,_HalfDeviceWidth - 308,_HalfDeviceHeight-97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnPackageBtn")
    end


    _GUIHandle = GUI:ButtonCreate(_Parent,"SocialBtn",1850000059,_HalfDeviceWidth + 64,_HalfDeviceHeight-97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnSocialBtn")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"EquipmentBtn",1850000063,_HalfDeviceWidth-146,_HalfDeviceHeight-97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GameMainBar.EquipmentBtn")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"TeamBtn",1850000055,_HalfDeviceWidth + 149,_HalfDeviceHeight-97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnTeamBtn")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"DealBtn",1850000051,_HalfDeviceWidth + 232,_HalfDeviceHeight-97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnDealBtn")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SetBtn",1850000047,_HalfDeviceWidth + 315,_HalfDeviceHeight-97)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnSettingBtn")
    end

    
    GameMainBar.UIInit(_Parent)
end

--UI Logic Code Start
function GameMainBar.UIInit(_Parent)
    GameMainBar.WndHandle = _Parent
    UI:Lua_OpenWindow(GameMainBar.WndHandle, "MsgBox.lua")

    UI:Lua_OpenWindow(GameMainBar.WndHandle, "EquipmentMenu.lua")
    local _EquipmentMenu = GUI:WndFindChildM(GameMainBar.WndHandle, "EquipmentMenu")
    if _EquipmentMenu ~= 0 then
        GUI:WndSetVisible(_EquipmentMenu,false)
    end
	
	UI:Lua_OpenWindow(GameMainBar.WndHandle, "SocialMenu.lua")
    local _SocialMenu = GUI:WndFindChildM(GameMainBar.WndHandle, "SocialMenu")
    if _SocialMenu ~= 0 then
        GUI:WndSetVisible(_SocialMenu,false)
    end

	RegisterUIEvent(LUA_EVENT_INITRESCOMPLETE, "GameMainbar_SetMaskImage", GameMainBar.SetMaskImage)
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
	
    RegisterUIEvent(LUA_EVENT_PROPERTYDATA, "PropDataChange", GameMainBar.propDataChange)       --玩家数据改变
    RegisterUIEvent(LUA_EVENT_PROPERTYDATA64, "PropDataChange", GameMainBar.propDataChange64)       --玩家数据改变
    RegisterUIEvent(LUA_EVENT_INITMAININTERFACE, "UpdataScreenSize", GameMainBar.UpdataScreenSize)   --分辨率改变
    RegisterUIEvent(LUA_EVENT_ONPLAYERAPPEAR, "PlayerAppear", GameMainBar.PlayerAppear)     --玩家出现
	RegisterUIEvent(LUA_EVENT_P2PINVITE, "GameMainBar_交易邀请", GameMainBar.tradeInvite)
    RegisterUIEvent(LUA_EVENT_ONNEWMAIL, "newMail", GameMainBar.newMail)    --新邮件
    RegisterUIEvent(LUA_EVENT_ONTEAMINVITE, "GameMainBar_组队邀请", GameMainBar.teamInvite)   --有人邀请组队
	RegisterUIEvent(LUA_EVENT_JOINTEAM, "GameMainBar_申请入队", GameMainBar.joinTeam)
	RegisterUIEvent(LUA_EVENT_OBJDISPEAR, "NPC从场景消失", GameMainBar.FarAwayFromNPC)
    CL:SetSystemColor(7,"RED")	

    GameMainBar.updateExp(true)
end


function GameMainBar.SetMaskImage()
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
    local _HalfDeviceWidth = _DeviceSizeX / 2
    local _HalfDeviceHeight = _DeviceSizeY
    CL:SetHPMPMaskImage(1800500237, _HalfDeviceWidth -52 +GameMainBar.diffX, _HalfDeviceHeight - 116 + GameMainBar.diffY)
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


--打开元宝充值窗口
function GameMainBar.YbTopUP_Dlg()
	luaMsgBox.new("元宝", "    很抱歉，您的元宝不足", {"前往充值", "取消"}, {"GameMainBar.chongz", "GameMainBar.out"}, "")
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

function GameMainBar.OnPackageBtn()
    CL:OnOpenPakage()
end

function GameMainBar.OnHeroListBtn()
    CL:OnHeroListWindow()
end

function GameMainBar.OnTeamBtn()
    CL:OnTeamBtn()
end

function GameMainBar.OnDealBtn()
    CL:OnDealerWindow()
end

function GameMainBar.OnSocialBtn()	
	local _SocialMenu = GUI:WndFindChildM(GameMainBar.WndHandle, "SocialMenu")
    if _SocialMenu ~= 0 then
        if GUI:WndGetVisible(_SocialMenu) then
            GUI:WndSetVisible(_SocialMenu,false)
        else
            GUI:WndSetVisible(_SocialMenu,true)
        end
    end
    local _EquipmentMenu = GUI:WndFindChildM(GameMainBar.WndHandle, "EquipmentMenu")
    if _EquipmentMenu ~= 0 then
        GUI:WndSetVisible(_EquipmentMenu,false)   
    end
end

function GameMainBar.OnSettingBtn()
    dbg("OnSettingBtn")
    CL:OnGameSettingWindow()
end

function GameMainBar.EquipmentBtn()
    local _EquipmentMenu = GUI:WndFindChildM(GameMainBar.WndHandle, "EquipmentMenu")
    if _EquipmentMenu ~= 0 then
        if GUI:WndGetVisible(_EquipmentMenu) then
            GUI:WndSetVisible(_EquipmentMenu,false)
        else
            GUI:WndSetVisible(_EquipmentMenu,true)
        end
    end
    local _SocialMenu = GUI:WndFindChildM(GameMainBar.WndHandle, "SocialMenu")
    if _SocialMenu ~= 0 then
        GUI:WndSetVisible(_SocialMenu,false)   
    end
end

function GameMainBar.OnPlayerErrorCode()
	if UserOnPlayerErrorCode == nil then
		local Code = LuaParam[1]
		if Code == 1116 then
			AE_create_msg("烈火生效", 4293317252)
		elseif Code == 1117 then
			AE_create_msg("烈焰已过期", 4293317252)
		elseif Code == 1001 then
			UI:Lua_ShowTypeMsg(4, "[背包已满]")
		end
	else
		UserOnPlayerErrorCode()
	end
end

function GameMainBar.propDataChange()
    CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID)
    if LuaParam[1] == LuaRet then
        if LuaParam[2] == ROLE_PROP32_LEVEL then
			GameMainBar.updateExp(false)
        end
    end
end

function GameMainBar.propDataChange64()
	if LuaParam[2] == ROLE_PROP64_EXP then
		GameMainBar.updateExp(true)
	end
end

function GameMainBar.updateExp(flag)
    --msg("GameMainBar.updateExp 1")
	if CL:GetPlayerSelfProperty64(ROLE_PROP64_EXP) then
       --msg("GameMainBar.updateExp 2")
		local CurrExp = LuaRet
		if CL:GetSelfUpgradeExp() then
        --msg("GameMainBar.updateExp 3")
			local UpgradeExp = LuaRet
			if flag == true then
				if UpgradeExp < CurrExp then
					return	--玩家获得经验升级后，收到经验变化时间早于等级变化，导致获得当前等级错误
				end
			end
			--经验为64位大数字，使用接口进行四则运算
           --msg("GameMainBar.updateExp 4")
			local CurrExp100 = CL:Multiply(CurrExp, "10000")
			local percent = CL:Divided(CurrExp100, UpgradeExp)
			local fPercent = tonumber(percent) / 10000
			local _GUIHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "PlayerEXPNew")
			if _GUIHandle ~= 0 then
               --msg("GameMainBar.updateExp 5")
				GUI:WndSetHintWidth(_GUIHandle, 250)
				GUI:WndSetHint(_GUIHandle, "经验："..CurrExp.."/"..UpgradeExp.."("..string.format("%.2f",fPercent*100).."%)")
				GUI:ImageSetDrawRect(_GUIHandle, 0, fPercent, 0, 1)
			end
		end
	end
end


--交易邀请
function GameMainBar.tradeInvite()
    local pGuid = LuaParam[1]
    local pName = LuaParam[2]
    luaMsgBox.new("交易邀请", pName, {"接受", "拒绝"}, {"GameMainBar.confirmTradeInvite", "GameMainBar.cancelTradeInvite"}, pGuid)
    GameMainBar.pName = pName
end

function GameMainBar.confirmTradeInvite(h)
    CL:AcceptP2pInvite(luaMsgBox.param["交易邀请"], 1)
    local handle = GUI:WndGetParentM(h)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

function GameMainBar.cancelTradeInvite(h)
    CL:AcceptP2pInvite(luaMsgBox.param["交易邀请"], 0)
    local handle = GUI:WndGetParentM(h)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

--成就完成数量统计
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

--神炉可升级数量统计
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

--有人申请入行会
function GameMainBar.ApplyFamily()
   UI:Lua_Log("有人申请入行会11111111")
end

function GameMainBar.FamilyKicked()
	MessageBox(0, "你被踢出了行会", nil, nil, false)
	if FamilyMainWnd ~= nil then
		GUI:WndDelAllTimer(FamilyMainWnd.hStartBuffBtn)
	end
	if nil ~= FamilyWnd then
		local _GUIHandle = GetWindow(0, "FamilyWnd")
		if 0 ~= _GUIHandle then
			--窗口如果还在 则关闭
			--CL:OnFamilyWindow()
			GUI:WndClose(_GUIHandle)
			if not GUI:WndGetVisible(GameMainBar.WndHandle) then
				GUI:WndSetVisible(GameMainBar.WndHandle, true)
			end
		end
	end
end



RegisterUIEvent(LUA_EVENT_PLAYERERRORCODE, EVENT_DEFAULT_TAG, GameMainBar.OnPlayerErrorCode)
CL:SetAnimateData(30001,100)
GameMainBar.main()
