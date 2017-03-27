GameMainBar = {}

function GameMainBar.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = _Parent
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	local x = 0
	local y = 0
	if GUI:WndGetPosM(_GUIHandle) then
		local x =LuaRet[1]
		local y =LuaRet[2]
	end
	local _GUIHandl = GUI:ImageCreate(_Parent, "redPacketBtn", 1891410099, x + 20, y - 50)
	if _GUIHandl ~= 0 then 
		--GUIImageSetAnimateEnable(_GUIHandle, true, 150)
		GUI:WndSetSizeM(_GUIHandl,64, 64)
		GUI:WndSetCanRevMsg(_GUIHandl,true)
		GUI:WndRegistScript(_GUIHandl, RDWndBaseCL_mouse_lbClick, "GameMainBar.OnRedPacketClicked")
		GUI:WndMoveToParentTop(_GUIHandl)
	end

	--[[local _GUIHand = GUI:ImageCreate(_Parent, "redPacketBtnMagic", 3020300100, x + 70 , y - 110)
	if _GUIHand ~= 0 then 
		GUI:WndSetSizeM(_GUIHand,12, 12)
		GUI:WndSetVisible(_GUIHand, false)
	end--]]

	local _BackImage = GUI:ImageCreate(_GUIHandle, "BackImage", 1930000222, 207, 92)
	if _BackImage ~= 0 then
	end

	local _BackImage0 = GUI:ImageCreate(_GUIHandle, "BackImage0", 1930000001, 0, 0)
	if _BackImage0 ~= 0 then
	end

	local _BackImage1 = GUI:ImageCreate(_GUIHandle, "BackImage1", 1930000002, 818, 0)
	if _BackImage1 ~= 0 then
	end

	local _ContactBtn = GUI:ButtonCreate(_GUIHandle, "Contact", 1930000064, 274, 101)
	if _ContactBtn ~= 0 then
		GUI:WndSetHint(_ContactBtn, "社会关系(Ctrl+F)")
		GUI:WndRegistScript(_ContactBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnContactBtn")
	end

	local _TradeBtn = GUI:ButtonCreate(_GUIHandle, "Trade", 1930000044, 208, 100)
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

	local _TeamBtn = GUI:ButtonCreate(_GUIHandle, "MakeTeam", 1930000048, 241, 100)
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

	local _QuiteToLoginBtn = GUI:ButtonCreate(_GUIHandle, "QuiteToLogin", 1930000080, 715, 100)
	if _QuiteToLoginBtn ~= 0 then
		GUI:WndSetHint(_QuiteToLoginBtn, "退到选择角色界面(Alt+X)")
		GUI:WndRegistScript(_QuiteToLoginBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnQuiteToLoginBtn")
	end	

	local _QuiteGameBtn = GUI:ButtonCreate(_GUIHandle, "Quite", 1930000084, 748, 100)
	if _QuiteGameBtn ~= 0 then
		GUI:WndSetHint(_QuiteGameBtn, "退出游戏(Alt+Q)")
		GUI:WndRegistScript(_QuiteGameBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnQuiteGameBtn")
	end


	local _GameMallBtn = GUI:ButtonCreate(_GUIHandle, "Shop", 1930000040, 981, 214)
	if _GameMallBtn ~= 0 then
		GUI:WndSetHint(_GameMallBtn, "游戏商城(Ctrl+B)")
		GUI:WndRegistScript(_GameMallBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.GameMallBtn")
	end

	local _PakageBtn = GUI:ButtonCreate(_GUIHandle, "Pakage", 1930000024, 895, 68)
	if _PakageBtn ~= 0 then
		GUI:WndSetHint(_PakageBtn, "包裹(F9)")
		GUI:WndRegistScript(_PakageBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnPakageBtn")
	end

	local _SkillBtn = GUI:ButtonCreate(_GUIHandle, "Skill", 1930000028, 941, 56)
	if _SkillBtn ~= 0 then
		GUI:WndSetHint(_SkillBtn, "技能(F10)")
		GUI:WndRegistScript(_SkillBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnSkillBtn")
	end	

	local _QuestBtn = GUI:ButtonCreate(_GUIHandle, "Quest", 1930000032, 986, 40)
	if _QuestBtn ~= 0 then
		GUI:WndSetHint(_QuestBtn, "任务(Ctrl+R)")
		GUI:WndRegistScript(_QuestBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnQuestBtn")
	end


	local _HangHuiBtn = GUI:ButtonCreate(_GUIHandle, "HangHui", 1930000052, 307, 101)
	if _HangHuiBtn ~= 0 then
		GUI:WndSetHint(_HangHuiBtn, "行会(Ctrl+G)")
		GUI:WndRegistScript(_HangHuiBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnHangHuiBtn")
	end	

	
	local _SettingBtn = GUI:ButtonCreate(_GUIHandle, "Setting", 1930000068, 406, 101)
	if _SettingBtn ~= 0 then
		GUI:WndSetHint(_SettingBtn, "系统设置")
		GUI:WndRegistScript(_SettingBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnSettingBtn")
	end	

	local _MailBtn = GUI:ButtonCreate(_GUIHandle, "Mail", 1930000060, 373, 101)
	if _MailBtn ~= 0 then
		GUI:WndSetHint(_MailBtn, "邮件")
		GUI:WndRegistScript(_MailBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnMailBtn")
	end

	local _RoleBtn = GUI:ButtonCreate(_GUIHandle, "Role", 1930000020, 848, 77)
	if _RoleBtn ~= 0 then
		GUI:WndSetHint(_RoleBtn, "角色(F10)")
		GUI:WndRegistScript(_RoleBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnRoleBtn")
	end

	local _ShowHideBtn = GUI:ButtonCreate(_GUIHandle, "ShowPlayer", 1930000072, 439, 100)
	if _ShowHideBtn ~= 0 then
		GUI:WndSetHint(_ShowHideBtn, "显示/隐藏生物(Ctrl+Z)")
		GUI:WndRegistScript(_ShowHideBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnShowHideBtn")
	end	

	local _RideBtn = GUI:ButtonCreate(_GUIHandle, "RideHorse", 1930000076, 472, 100)
	if _RideBtn ~= 0 then
		GUI:WndSetHint(_RideBtn, "骑乘/行走(Ctrl+Q)")
		GUI:WndRegistScript(_RideBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnRideBtn")
	end


	local _AddPropertyBtn = GUI:ButtonCreate(_GUIHandle, "UpProperty", 1930000056, 505, 100)
	if _AddPropertyBtn ~= 0 then
		GUI:WndSetHint(_AddPropertyBtn, "强化属性")
		GUI:WndRegistScript(_AddPropertyBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnAddPropertyBtn")
	end

	local _AchieveBtn = GUI:ButtonCreate(_GUIHandle, "Achieve", 1930000056, 340, 100)
	if _AchieveBtn ~= 0 then
		GUI:WndSetHint(_AchieveBtn, "成就")
		GUI:WndRegistScript(_AchieveBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnAchieveBtn")
	end

	local _HeroListBtn = GUI:ButtonCreate(_GUIHandle, "HeroList", 1930000148, 916, 120)
	if _HeroListBtn ~= 0 then
		GUI:WndSetHint(_HeroListBtn, "英雄列表")
		GUI:WndRegistScript(_HeroListBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnHeroList")
	end

	local _HeroPkgBtn = GUI:ButtonCreate(_GUIHandle, "HeroPkg", 1930000136, 894, 120)
	if _HeroPkgBtn ~= 0 then
		GUI:WndSetHint(_HeroPkgBtn, "英雄包裹")
		GUI:WndRegistScript(_HeroPkgBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnHeroPakage")
	end

	local _HeroPropBtn = GUI:ButtonCreate(_GUIHandle, "HeroProp", 1930000148, 872, 120)
	if _HeroPropBtn ~= 0 then
		GUI:WndSetHint(_HeroPropBtn, "英雄属性")
		GUI:WndRegistScript(_HeroPropBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnHeroProp")
	end

	local _SummomHeroBtn = GUI:ButtonCreate(_GUIHandle, "SummonHero", 1930000140, 850, 120)
	if _SummomHeroBtn ~= 0 then
		GUI:WndSetHint(_SummomHeroBtn, "召唤英雄")
		GUI:WndRegistScript(_SummomHeroBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnSummomHero")
	end

	local _MuteSoundBtn = GUI:ButtonCreate(_GUIHandle, "MuteSound", 1930000036, 982, 88)
	if _MuteSoundBtn ~= 0 then
		GUI:WndRegistScript(_MuteSoundBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnMuteSound")
	end

	local _AttackModeBtn = GUI:ButtonCreate(_GUIHandle, "AttackMode", 0, 852, 142)
	if _AttackModeBtn ~= 0 then
		GUI:WndSetSizeM(_AttackModeBtn, 162, 16)
		GUI:WndRegistScript(_AttackModeBtn, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnAttackMode")
		local _Color = CL:MakeARGB(255, 194, 182, 160)
		GUI:WndSetTextColorM(_AttackModeBtn, _Color)
	end


	local _HPImage = GUI:ImageCreate(_GUIHandle, "PlayerHP", 1046500000, 32, 63)
	if _HPImage ~= 0 then
	end

	local _MPImage = GUI:ImageCreate(_GUIHandle, "PlayerMP", 1046600000, 88, 62)
	if _MPImage ~= 0 then
	end

	local _EXPImage = GUI:ImageCreate(_GUIHandle, "PlayerEXP", 1930000019, 876, 200)
	if _EXPImage ~= 0 then
		GUI:WndSetHint(_EXPImage, "经验")
	end

	local _PlayerWeightImage = GUI:ImageCreate(_GUIHandle, "PlayerWeight", 1930000019, 877, 230)
	if _PlayerWeightImage ~= 0 then
		GUI:WndSetHint(_PlayerWeightImage, "负重")
	end

	local _PlayerAngryImage = GUI:ImageCreate(_GUIHandle, "Angry", 1930000005, 825, 113)
	if _PlayerAngryImage ~= 0 then
		GUI:WndSetHint(_PlayerAngryImage, "负重")
	end

	local _PlayerLevelEdit = GUI:EditCreate(_GUIHandle, "PlayerLevelEdit", 875, 166, 24, 19)
	if _PlayerLevelEdit ~= 0 then
		GUI:EditSetCanEdit(_PlayerLevelEdit, false)
		GUI:EditSetFontCenter(_PlayerLevelEdit)
	end

	local _HPInfo = GUI:EditCreate(_GUIHandle, "HPInfo", 8, 212, 74, 14)
	if _HPInfo ~= 0 then
		GUI:EditSetCanEdit(_HPInfo, false)
		GUI:EditSetFontCenter(_HPInfo)
	end

	local _MPInfo = GUI:EditCreate(_GUIHandle, "MPInfo", 96, 212, 74, 14)
	if _MPInfo ~= 0 then
		GUI:EditSetCanEdit(_MPInfo, false)
		GUI:EditSetFontCenter(_MPInfo)
	end

	local _MapInfo = GUI:EditCreate(_GUIHandle, "MapInfo", 9, 235, 161, 14)
	if _MapInfo ~= 0 then
		GUI:EditSetCanEdit(_MapInfo, false)
		GUI:EditSetFontCenter(_MapInfo)
	end

	local _MuteEdit = GUI:EditCreate(_GUIHandle, "MuteEdit", 992, 92, 74, 14)
	if _MuteEdit ~= 0 then
		GUI:EditSetCanEdit(_MPInfo, false)
	end

	local _AngryMagicImage = GUI:ImageCreate(_GUIHandle, "AngryMagic", 1046700000, 824, 111)
	if _AngryMagicImage ~= 0 then
	end

	local _PkgLeftCountImage = GUI:ImageCreate(_GUIHandle, "PkgLeftCount", 0, 901, 76)
	if _PkgLeftCountImage ~= 0 then
	end

	local _PlayerWeightEffect = GUI:ImageCreate(_GUIHandle, "PlayerWeightEffect", 1046800000, 870, 223)
	if _PlayerWeightEffect ~= 0 then
	end

	GameMainBar.UIInit(_GUIHandle)


end

--UI Logic Code Start
GameMainBar.WndHandle = 0
function GameMainBar.UIInit(_Parent)
	GameMainBar.WndHandle = _Parent
	GameMainBar.UpdataScreenSize(_Parent)

	local _ImageHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "BackImage")
	if 0 ~= _ImageHandle then
		GUI:WndSetVisible(_ImageHandle, false)
		local _ImageID = GUI:WndGetImageID(_ImageHandle)
		if _ImageID == 1930000003 then
			 CL:SetChatWindowIsWhite(true)
			 CL:SetColorTableData(27, 10, 90, 0, 255)
			 CL:SetGUIFormColorData(5, 10, 90, 0, 255)
		else
			CL:SetChatWindowIsWhite(false)
			CL:SetColorTableData(27, 44, 169, 71, 255)
			CL:SetGUIFormColorData(5, 44, 169, 71, 255)
		end
	end

	local _EditHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "MuteEdit")
	CL:OnSoundMute(_EditHandle)
	CL:OnSoundMute(_EditHandle)

	GUI:WndAddTimerBrief(_Parent, 30, "GameMainBar.OnUpdata")
end

function GameMainBar.UpdataScreenSize(_ParentHandle)
	local UIPOS_CHANGEGUI = {
	    "BackImage1",
	    "Pakage",
	    "Role",
	    "Skill",
	    "Quest",
	    "PlayerWeight",
	    "QuiteToLogin",
	    "Quite",
	    "Shop",
	    "HeroList",
	    "HeroPkg",
	    "HeroProp",
	    "HeroSkill",
	    "SummonHero",
	    "PkgLeftCount",
	    "AttackMode",
	    "PlayerLevelEdit",
	    "PlayerEXP",
	    "Angry",
	    "MuteSound",
	    "MuteEdit",
	    "PlayerWeightEffect",
	    "AngryMagic"
	}

	local _DeviceSizeX = CL:GetScreenWidth()
	for _Idx = 1, 23 do
		local _GUIHandle = GUI:WndFindChildM(_ParentHandle, UIPOS_CHANGEGUI[_Idx])
		if 0 ~= _GUIHandle then
			if GUI:WndGetPosM(_GUIHandle) then 
				local _XOldPos = LuaRet[1]
				local _YOldPos = LuaRet[2]
				local _XDiff = _DeviceSizeX - 1024
				GUI:WndSetPosM(_GUIHandle, _XOldPos + _XDiff, _YOldPos)
			end
		end	
	end
end

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


function GameMainBar.OnAddPropertyBtn()
	CL:OnEhanceRolePreperyWindow()
end


function GameMainBar.OnAchieveBtn()
	CL:OnAchieveWindow()
end


function GameMainBar.OnHeroList()
	CL:OnHeroListWindow()
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


function GameMainBar.OnMuteSound()
	local _EditHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "MuteEdit")
	CL:OnSoundMute(_EditHandle)
end


function GameMainBar.OnAttackMode()
	CL:OnAttackMode()
endeveWindow()
end


function GameMainBar.OnHeroList()
	CL:OnHeroListWindow()
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


function GameMainBar.OnMuteSound()
	local _EditHandle = GUI:WndFindChildM(GameMainBar.WndHandle, "MuteEdit")
	CL:OnSoundMute(_EditHandle)
end

function GameMainBar.OnRedPacketClicked()
	UI:Lua_OpenWindow(0, "RedPacketWnd.lua")
	GameMainBar.DelRedPacketBtnEffect()
end

function GameMainBar.AddRedPacketBtnEffect()
	_GUIHand = GetWindow(GameMainBar.WndHandle, "redPacketBtnMagic")
	if _GUIHand ~= 0 then 
		GUI:WndSetVisible(_GUIHand, true)
	end
end

function GameMainBar.DelRedPacketBtnEffect()
	_GUIHand = GetWindow(GameMainBar.WndHandle, "redPacketBtnMagic")
	if _GUIHand ~= 0 then 
		GUI:WndSetVisible(_GUIHand, false)
	end
end



function GameMainBar.OnAttackMode()
	CL:OnAttackMode()
end
CL:SetAnimateData(30001,100)
GameMainBar.main()