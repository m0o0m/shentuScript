--
-- Author: miyezng
-- Date:   2016-09-23 13:30:57
-- Last Modified by:   miyezng
-- Last Modified time: 2017-01-23 11:39:06
--
GameMainBar = {}

function GameMainBar.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = _Parent
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    --[[local _BackImage = GUI:ImageCreate(_GUIHandle, "BackImage", 1930000222, 207, 92)
    if _BackImage ~= 0 then
    end--]]

    local _SurfaceImg = GUI:ImageCreate(_GUIHandle,"SurfaceImg",0,0,0)
    if _SurfaceImg ~= 0 then
        GUI:WndSetParam(_SurfaceImg, 0)
        GUI:WndSetSizeM(_SurfaceImg,192, 224)
    end

    local _HPEffect = GUI:ImageCreate(_GUIHandle,"HPEffect",1043000000,76,50)
    if _HPEffect ~= 0 then
    end


    local _MPEffect = GUI:ImageCreate(_GUIHandle,"MPEffect",1043100000,136,50)
    if _MPEffect ~= 0 then
    end


    local _HPImage = GUI:ImageCreate(_GUIHandle, "PlayerHP", 1042800000, 76, 108)
    if _HPImage ~= 0 then
    end

    local _MPImage = GUI:ImageCreate(_GUIHandle, "PlayerMP", 1042900000, 136, 108)
    if _MPImage ~= 0 then
    end

    local _BackImage0 = GUI:ImageCreate(_GUIHandle, "BackImage0", 1910200248,-29, 30)
    if _BackImage0 ~= 0 then
    end

    local _BackImage1 = GUI:ImageCreate(_GUIHandle, "BackImage1", 1910200160, 767, 45)
    if _BackImage1 ~= 0 then
    end

    local _BackImage2 = GUI:ImageCreate(_GUIHandle, "BackImage2", 1910200250, 251, 100)
    if _BackImage2 ~= 0 then
        GUI:ImageSetFitSize(_BackImage2, true);
    end

    local _TradeBtn = GUI:ButtonCreate(_GUIHandle, "Trade", 1910200215, 567, 106)
    if _TradeBtn ~= 0 then
        GUI:WndSetHint(_TradeBtn, "交易(Alt+T)")
        GUI:WndRegistScript(_TradeBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnTradeBtn")
        local _TradeMagic = GUI:ImageCreate(_GUIHandle, "TradeMagic", 1089100000, 157, 49)
        if _TradeMagic ~= 0 then
            GUI:WndSetVisible(_TradeMagic, false)
            GUI:WndSetCanRevMsg(_TradeMagic, false)
            GUI:ImageSetCheckPoint(_TradeMagic, 0)
        end
    end

    local _TeamBtn = GUI:ButtonCreate(_GUIHandle, "MakeTeam", 1910200090, 532, 106)
    if _TeamBtn ~= 0 then
        GUI:WndSetHint(_TeamBtn, "组队(Ctrl+D)")
        GUI:WndRegistScript(_TeamBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnTeamBtn")
        local _TeamMagic = GUI:ImageCreate(_GUIHandle, "TeamMagic", 1089100000, 190, 49)
        if _TeamMagic ~= 0 then
            GUI:WndSetVisible(_TeamMagic, false)
            GUI:WndSetCanRevMsg(_TeamMagic, false)
            GUI:ImageSetCheckPoint(_TeamMagic, 0)
        end
    end

    local _ContactBtn = GUI:ButtonCreate(_GUIHandle, "Contact", 1910200074, 394, 106)
    if _ContactBtn ~= 0 then
        GUI:WndSetHint(_ContactBtn, "社会关系(Ctrl+F)")
        GUI:WndRegistScript(_ContactBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnContactBtn")
    end


    local _HangHuiBtn = GUI:ButtonCreate(_GUIHandle, "HangHui", 1910200086, 497, 106)
    if _HangHuiBtn ~= 0 then
        GUI:WndSetHint(_HangHuiBtn, "行会(Ctrl+G)")
        GUI:WndRegistScript(_HangHuiBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnHangHuiBtn")
    end

    local _AchieveBtn = GUI:ButtonCreate(_GUIHandle, "Achieve", 1910200082, 462, 106)
    if _AchieveBtn ~= 0 then
        GUI:WndSetHint(_AchieveBtn, "成就")
        GUI:WndRegistScript(_AchieveBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnAchieveBtn")
    end

    local _MailBtn = GUI:ButtonCreate(_GUIHandle, "Mail", 1910200078, 428, 106)
    if _MailBtn ~= 0 then
        GUI:WndSetHint(_MailBtn, "邮件")
        GUI:WndRegistScript(_MailBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnMailBtn")
    end


    local _SettingBtn = GUI:ButtonCreate(_GUIHandle, "Setting", 1910200070, 360, 106)
    if _SettingBtn ~= 0 then
        GUI:WndSetHint(_SettingBtn, "系统设置")
        GUI:WndRegistScript(_SettingBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnSettingBtn")
    end

    local _ShowHideBtn = GUI:ButtonCreate(_GUIHandle, "ShowPlayer", 1910200066, 326, 106)
    if _ShowHideBtn ~= 0 then
        GUI:WndSetHint(_ShowHideBtn, "显示/隐藏生物(Ctrl+Z)")
        GUI:WndRegistScript(_ShowHideBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnShowHideBtn")
    end

    local _RideBtn = GUI:ButtonCreate(_GUIHandle, "RideHorse", 1910200062, 292, 106)
    if _RideBtn ~= 0 then
        GUI:WndSetHint(_RideBtn, "骑乘/行走(Ctrl+Q)")
        GUI:WndRegistScript(_RideBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnRideBtn")
    end

    local _QuiteToLoginBtn = GUI:ButtonCreate(_GUIHandle, "QuiteToLogin", 1910200054, 659, 106)
    if _QuiteToLoginBtn ~= 0 then
        GUI:WndSetHint(_QuiteToLoginBtn, "退到选择角色界面(Alt+X)")
        GUI:WndRegistScript(_QuiteToLoginBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnQuiteToLoginBtn")
    end

    local _QuiteGameBtn = GUI:ButtonCreate(_GUIHandle, "Quite", 1910200058, 695, 106)
    if _QuiteGameBtn ~= 0 then
        GUI:WndSetHint(_QuiteGameBtn, "退出游戏(Alt+Q)")
        GUI:WndRegistScript(_QuiteGameBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnQuiteGameBtn")
    end

    local _RoleBtn = GUI:ButtonCreate(_GUIHandle, "Role", 1910200167, 822, 104)
    if _RoleBtn ~= 0 then
        GUI:WndSetHint(_RoleBtn, "角色(F10)")
        GUI:WndRegistScript(_RoleBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnRoleBtn")
    end

    local _PakageBtn = GUI:ButtonCreate(_GUIHandle, "Pakage", 1910200179, 886, 104)
    if _PakageBtn ~= 0 then
        GUI:WndSetHint(_PakageBtn, "包裹(F9)")
        GUI:WndRegistScript(_PakageBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnPakageBtn")
    end

    local _SkillBtn = GUI:ButtonCreate(_GUIHandle, "Skill", 1910200175, 822, 169)
    if _SkillBtn ~= 0 then
        GUI:WndSetHint(_SkillBtn, "技能(F10)")
        GUI:WndRegistScript(_SkillBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnSkillBtn")
    end

    local _QuestBtn = GUI:ButtonCreate(_GUIHandle, "Quest", 1910200171, 887, 169)
    if _QuestBtn ~= 0 then
        GUI:WndSetHint(_QuestBtn, "任务(Ctrl+R)")
        GUI:WndRegistScript(_QuestBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnQuestBtn")
    end


    local _GameMallBtn = GUI:ButtonCreate(_GUIHandle, "Shop", 1910200022, 860, 142)
    if _GameMallBtn ~= 0 then
        GUI:WndSetHint(_GameMallBtn, "游戏商城(Ctrl+B)")
        GUI:WndRegistScript(_GameMallBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.GameMallBtn")
    end

	local _HeroPkgBtn = GUI:ButtonCreate(_GUIHandle, "HeroPkg", 1910200260, 780, 185)
	if _HeroPkgBtn ~= 0 then
		GUI:WndSetHint(_HeroPkgBtn, "英雄包裹")
		GUI:WndRegistScript(_HeroPkgBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnHeroPakage")
	end

	local _HeroPropBtn = GUI:ButtonCreate(_GUIHandle, "HeroProp", 1910200256, 780, 160)
	if _HeroPropBtn ~= 0 then
		GUI:WndSetHint(_HeroPropBtn, "英雄属性")
		GUI:WndRegistScript(_HeroPropBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnHeroProp")
	end


	local _SummomHeroBtn = GUI:ButtonCreate(_GUIHandle, "SummonHero", 1910200252, 780, 135)
	if _SummomHeroBtn ~= 0 then
		GUI:WndSetHint(_SummomHeroBtn, "召唤英雄")
		GUI:WndRegistScript(_SummomHeroBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnSummomHero")
	end

    --[[local _ExpPct = GUI:EditCreate(_GUIHandle, "ExpPct", 500, 242, 24, 16);
    if 0 ~= _ExpPct then
        GUI:EditSetTextM(_ExpPct, "0%");
        GUI:WndSetEnableM(_ExpPct, false);
        GUI:EditSetFontCenter(_ExpPct)
    end--]]

    local _EXPImage = GUI:ImageCreate(_GUIHandle, "PlayerEXP", 1910200126, 253, 249)
    if _EXPImage ~= 0 then
        GUI:WndSetHint(_EXPImage, "经验")
    end

    local _PkgLeftCountImage = GUI:ImageCreate(_GUIHandle, "PkgLeftCount", 0, 801, 76)
    if _PkgLeftCountImage ~= 0 then
    end

    local _MenuBtn = GUI:ButtonCreate(_GUIHandle, "MenuBtn", 1910200030, 13, 198);
    if 0 ~= _MenuBtn then

    end

    local _HelpBtn = GUI:ButtonCreate(_GUIHandle, "HelpBtn", 1910200026, 968, 196);
    if 0 ~= _HelpBtn then

    end

    local _MuteSoundBtn = GUI:ButtonCreate(_GUIHandle, "MuteSound", 1910200130, 975, 168)
    if _MuteSoundBtn ~= 0 then
        GUI:WndRegistScript(_MuteSoundBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnMuteSound")
    end

    local _AttackModeBtn = GUI:ButtonCreate(_GUIHandle, "AttackMode", 0, 720, 236)
    if _AttackModeBtn ~= 0 then
        GUI:WndSetSizeM(_AttackModeBtn, 162, 16)
        GUI:WndRegistScript(_AttackModeBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnAttackMode")
        local _Color = CL:MakeARGB(255, 194, 182, 160)
        GUI:WndSetTextColorM(_AttackModeBtn, _Color)
    end

    local _PlayerLevelPre = GUI:EditCreate(_GUIHandle, "PlayerLevelPre", 212, 236, 24, 19)
    if _PlayerLevelPre ~= 0 then
        local _Color = CL:MakeARGB(255, 194, 182, 160)
        GUI:WndSetTextColorM(_PlayerLevelPre, _Color)
        GUI:EditSetCanEdit(_PlayerLevelPre, false)
        GUI:EditSetTextM(_PlayerLevelPre, "Lv")
    end

    local _PlayerLevelEdit = GUI:EditCreate(_GUIHandle, "PlayerLevelEdit", 224, 236, 24, 19)
    if _PlayerLevelEdit ~= 0 then
        local _Color = CL:MakeARGB(255, 194, 182, 160)
        GUI:WndSetTextColorM(_PlayerLevelEdit, _Color)
        GUI:EditSetCanEdit(_PlayerLevelEdit, false)
        -- GUI:EditSetFontCenter(_PlayerLevelEdit)
    end

    local _Handle = GUI:ImageCreate(_GUIHandle, "DragonHair", 1043200000, 67, -2)
    if 0 ~= _Handle then
        GUI:ImageSetAnimateEnable(_Handle, true, 100)
        GUI:WndSetCanRevMsg(_Handle, false)
    end

    GameMainBar.UIInit(_GUIHandle)
end

--UI Logic Code Start
GameMainBar.WndHandle = 0
function GameMainBar.UIInit(_Parent)
    GameMainBar.WndHandle = _Parent

    CL:AddDelayTask("GameMainBar.SetMaskImage()", 500, 1)
    local _GUIHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "HPEffect")
    if _GUIHandle ~= 0 then
        GUI:WndSetVisible(_GUIHandle, false)
    end
    local _GUIHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "MPEffect")
    if _GUIHandle ~= 0 then
        GUI:WndSetVisible(_GUIHandle, false)
    end

    local _ImageHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "BackImage2")
    if 0 ~= _ImageHandle then
        --GUI:WndSetVisible(_ImageHandle, false)
        local _ImageID = GUI:WndGetImageID(_ImageHandle)
        if _ImageID == 1910200161 then
             CL:SetChatWindowIsWhite(true)
             CL:SetColorTableData(27, 10, 90, 0, 255)
             CL:SetGUIFormColorData(5, 10, 90, 0, 255)
        else
            CL:SetChatWindowIsWhite(false)
            CL:SetColorTableData(27, 44, 169, 71, 255)
            CL:SetGUIFormColorData(5, 44, 169, 71, 255)
        end
    end

    CL:OnSoundMute(0)
    CL:OnSoundMute(0)

    GUI:WndAddTimerBrief(_Parent, 30, "GameMainBar.OnUpdata")
    CL:AddDelayTask("GameMainBar.UpdataScreenSize(".._Parent..")", 0, 1);
    RegisterUIEvent(LUA_EVENT_PROPERTYDATA64, "PropData64Change", GameMainBar.propDataChange64)
end

function GameMainBar.SetMaskImage()
    CL:SetHPMPMaskImage(1910200249, 68, 108)
end

function GameMainBar.UpdataScreenSize(_ParentHandle)
    local w, h = WndGetPosM(_ParentHandle);
    GUI:WndSetPosM(_ParentHandle, math.floor((CL:GetScreenWidth()-1024)/2), h);
    GameMainBar.updateExp();

    local _Handle = GUI:WndFindChildM(_ParentHandle, "MuteSound")
    if 0 ~= _Handle then
        if CL:GetSoundSetting() then
            local image = LuaRet[1] and 1910200134 or 1910200130
            GUI:WndSetImageID(_Handle, image)
        end
    end
end

CL:SetAnimateData(10428,100)
CL:SetAnimateData(10429,100)
CL:SetAnimateData(10430,100)
CL:SetAnimateData(10431,100)
GameMainBar.main()

function GameMainBar.OnUpdata()
    local _BtnHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "Mail")
    if 0 ~= _BtnHandle then
        if CL:GetCallBackCount("新邮件提醒") > 0 then
            GUI:ButtonSetShine(_BtnHandle, true)
        else
            GUI:ButtonSetShine(_BtnHandle, false)
        end
    end

    _BtnHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "Trade")
    if 0 ~= _BtnHandle then
        if CL:GetCallBackCount("交易请求消息") > 0 then
            GUI:ButtonSetShine(_BtnHandle, true)
            local _ImageHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "TradeMagic")
            if 0 ~= _ImageHandle then
                if GUI:WndGetVisible(_ImageHandle) == false then
                    CL:SetGUIAnimate(_ImageHandle, true)
                end
            end
        else
            GUI:ButtonSetShine(_BtnHandle, false)
            local _ImageHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "TradeMagic")
            if 0 ~= _ImageHandle then
                CL:SetGUIAnimate(_ImageHandle, false)
            end
        end
    end

    _BtnHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "MakeTeam")
    if 0 ~= _BtnHandle then
        if CL:GetCallBackCount("组队请求消息") > 0 then
            GUI:ButtonSetShine(_BtnHandle, true)
            local _ImageHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "TeamMagic")
            if 0 ~= _ImageHandle then
                if GUI:WndGetVisible(_ImageHandle) == false then
                    CL:SetGUIAnimate(_ImageHandle, true)
                end
            end
        else
            GUI:ButtonSetShine(_BtnHandle, false)
            local _ImageHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "TeamMagic")
            if 0 ~= _ImageHandle then
                CL:SetGUIAnimate(_ImageHandle, false)
            end
        end
    end
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

function GameMainBar.OnQuiteToLoginBtn()
    CL:QuiteToLogin()
end

function GameMainBar.OnQuiteGameBtn()
    CL:QuiteGame()
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
    else
        GUI:WndClose(_HRoleGui)
    end
end

function GameMainBar.OnQuestBtn()
    CL:OnQuestWindow()
end

function GameMainBar.OnHangHuiBtn()
    CL:OnFamilyWindow()
end

function GameMainBar.OnSettingBtn()
    CL:OnSettingWindow()
end

function GameMainBar.OnMailBtn()
    local _BtnHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "Mail")
    if 0 ~= _BtnHandle then
        GUI:ButtonSetShine(_BtnHandle, false)
    end
    CL:OnMailWindow()
end


function GameMainBar.OnRoleBtn()
    local _HRoleGui = GetWindow(0, "RoleGUI")
    if _HRoleGui == 0 then
        CL:OnRoleWindow()
    else
        GUI:WndClose(_HRoleGui)
    end
end


function GameMainBar.OnShowHideBtn()
    CL:OnShowHide()
end


function GameMainBar.OnRideBtn()
    CL:OnRide()
end


function GameMainBar.OnAchieveBtn()
    CL:OnAchieveWindow()
end

function GameMainBar.propDataChange64()
    if LuaParam[2] == ROLE_PROP64_EXP then
        GameMainBar.updateExp()
    end
end

function GameMainBar.updateExp()
    if CL:GetPlayerSelfProperty64(ROLE_PROP64_EXP) then
        local CurrExp = LuaRet
        if CL:GetSelfUpgradeExp() then
            local UpgradeExp = LuaRet
            local CurrExp100 = CL:Multiply(CurrExp, "100")
            local percent = CL:Divided(CurrExp100, UpgradeExp)
            percent = math.floor(percent);
            local _GUIHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "ExpPct")
            if _GUIHandle ~= 0 then
                GUI:EditSetTextM(_GUIHandle, percent.."%");
            end
        end
    end
end

function GameMainBar.OnMuteSound(_Handle)
    local _ImageID = GUI:ImageGetImageID(_Handle);
    _ImageID = _ImageID == 1910200130 and 1910200134 or 1910200130;
    GUI:WndSetImageID(_Handle, _ImageID);
    CL:OnSoundMute(0)
end

function GameMainBar.OnAttackMode()
    CL:OnAttackMode()
end

function GameMainBar.OnHeroPakage()
	CL:OnHeroPakageWindow()
end

function GameMainBar.OnHeroProp()
	CL:OnHeroPropWindow()
end

function GameMainBar.OnSummomHero()
	CL:OnSummonHero()
end