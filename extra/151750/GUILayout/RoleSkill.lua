RoleSkill = {}
RoleSkill.WndHandle = 0



local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117)
color.text2 = GUI:MakeARGB(255,198,192,163)
color.number = GUI:MakeARGB(255,55,181,111)
color.red = GUI:MakeARGB(255,248,33,16)



local skillInfo = {
-------客户端表只用于显示
---------------------技能类型    技能各等级所需道具数量  技能ID   技能图标
--战士技能
	{
		["剑术心法"]	 = {"提升精准", 4, 1000, 1850200006},
		["攻心斩"]		 = {"提升攻击", 4, 1010, 1850200004},
		["风刺剑法"]	 = {"穿透伤害", 4, 1020, 1850200003},
		["月弧弯刀"]	 = {"群体伤害", 4, 1030, 1850200028},
		["蛮力冲锋"]	 = {"击退位移", 4, 1040, 1850200026},
		["烈焰斩"]		 = {"提升伤害", 4, 1050, 1850200010},
		["落日剑法"]	 = {"定向群伤", 4, 33035, 1850200044}
	},
--法师技能
	{
		["炎球术"]		 = {"单体伤害", 4, 2000, 1850200025},
		["退拒之环"]	 = {"击退敌人", 4, 2010, 1850200024},
		["天雷术"]		 = {"单体伤害", 4, 2030, 1850200042},
		["瞬息灵动"]	 = {"随机传送", 4, 2050, 1850200040},
		["炎爆术"]		 = {"单体伤害", 4, 2060, 1850200038},
		["烈焰火海"]	 = {"灼烧陷阱", 4, 2070, 1850200041},
		["死亡射线"]	 = {"定向群伤", 4, 2080, 1850200017},
		["雷霆极光"]	 = {"群体伤害", 4, 2090, 1850200008},
		["流光护盾"]	 = {"吸收伤害", 4, 2100, 1850200013},
		["冰爆漩涡"]	 = {"范围群伤", 4, 2120, 1850200000},
		["陨星灭世"]	 = {"群体伤害", 4, 2170, 1850200029}
	},
--道士技能
	{
		["治疗咒"]		 = {"恢复生命", 4, 3000,1850200030},
		["蛊毒咒"]		 = {"持续损伤", 4, 3010, 1850200005},
		["神魂火符"]	 = {"单体伤害", 4, 3020, 1850200033},
		["地府之唤"]	 = {"召唤术", 4, 3030, 1850200034},
		["隐形咒"]		 = {"遁形", 4, 3040, 1850200035},
		["地煞镇魔咒"]	 = {"提升魔防", 4, 3050, 1850200002},
		["天罡护体咒"]	 = {"提升物防", 4, 3060, 1850200022},
		["回春咒"]		 = {"提升恢复", 4, 3070, 1850200036},
		["明镜止水"]	 = {"提升精准", 4, 3080, 1850200032},
		["集体隐形咒"]	 = {"群体遁形", 4, 3090, 1850200007},
		["天庭之唤"]	 = {"召唤术", 4, 3110, 1850200021},
		["群体蛊毒血咒"] = {"群体损伤", 4, 3115, 1850200037}
	}
}

local skillBookInfo = {
-------客户端表只用于显示
----------------- 技能各等级所需道具数量
--战士技能
--[[
	["1000"] = {"剑术心法(一)", 1},
	["1001"] = {"剑术心法(二)", 1},
	["1002"] = {"剑术心法(三)", 1},
	["1003"] = {"剑术心法(四)", 1},
	["1010"] = {"攻心斩(一)", 1},
	["1011"] = {"攻心斩(二)", 1},
	["1012"] = {"攻心斩(三)", 1},
	["1013"] = {"攻心斩(四)", 1},
	["1020"] = {"风刺剑法(一)", 1},
	["1021"] = {"风刺剑法(二)", 1},
	["1022"] = {"风刺剑法(三)", 1},
	["1023"] = {"风刺剑法(四)", 1},
	["1030"] = {"月弧弯刀(一)", 1},
	["1031"] = {"月弧弯刀(二)", 1},
	["1032"] = {"月弧弯刀(三)", 1},
	["1033"] = {"月弧弯刀(四)", 1},
	["1040"] = {"蛮力冲锋(一)", 1},
	["1041"] = {"蛮力冲锋(二)", 1},
	["1042"] = {"蛮力冲锋(三)", 1},
	["1043"] = {"蛮力冲锋(四)", 1},
	["1050"] = {"烈焰斩(一)", 1},
	["1051"] = {"烈焰斩(二)", 1},
	["1052"] = {"烈焰斩(三)", 1},
	["1053"] = {"烈焰斩(四)", 1},
	["33035"] = {"落日剑法(一)", 1},
	["33036"] = {"落日剑法(二)", 1},
	["33037"] = {"落日剑法(三)", 1},
	["33038"] = {"落日剑法(四)", 1},--]]
	--剑术心法
	["1000"] = {"剑术心法", 1},
	["1001"] = {"剑术心法(二)", 1},
	["1002"] = {"剑术心法(三)", 1},
	["1003"] = {"剑术心法(四)", 1},
	--攻心斩
	["1010"] = {"攻心斩", 1},
	["1011"] = {"攻击斩(二)", 1},
	["1012"] = {"攻击斩(三)", 1},
	["1013"] = {"攻击斩(四)", 1},
	--风刺剑法
	["1020"] = {"风刺剑法", 1},
	["1021"] = {"风刺剑法(二)", 1},
	["1022"] = {"风刺剑法(三)", 1},
	["1023"] = {"风刺剑法(四)", 1},
	--月弧弯刀
	["1030"] = {"月弧弯刀", 1},
	["1031"] = {"月弧弯刀(二)", 1},
	["1032"] = {"月弧弯刀(三)", 1},
	["1033"] = {"月弧弯刀(四)", 1},
	--蛮力冲锋
	["1040"] = {"蛮力冲锋", 1},
	["1041"] = {"蛮力冲锋(二)", 1},
	["1042"] = {"蛮力冲锋(三)", 1},
	["1043"] = {"蛮力冲锋(四)", 1},
	--烈焰斩
	["1050"] = {"烈焰斩", 1},
	["1051"] = {"烈焰斩(二)", 1},
	["1052"] = {"烈焰斩(三)", 1},
	["1053"] = {"烈焰斩(四)", 1},
	--落日剑法
	["33035"] = {"落日剑法", 1},
	["33036"] = {"落日剑法(二)", 1},
	["33037"] = {"落日剑法(三)", 1},
	["33038"] = {"落日剑法(四)", 1},

--法师技能
	--炎球术
	["2000"] = {"炎球术", 1},
	["2001"] = {"炎球术(二)", 1},
	["2002"] = {"炎球术(三)", 1},
	["2003"] = {"炎球术(四)", 1},
	--退拒之环
	["2010"] = {"退拒之环", 1},
	["2011"] = {"退拒之环(二)", 1},
	["2012"] = {"退拒之环(三)", 1},
	["2013"] = {"退拒之环(四)", 1},
	--天雷术
	["2030"] = {"天雷术", 1},
	["2031"] = {"天雷术(二)", 1},
	["2032"] = {"天雷术(三)", 1},
	["2033"] = {"天雷术(四)", 1},
	--瞬息灵动
	["2050"] = {"瞬息灵动", 1},
	["2051"] = {"瞬息灵动(二)", 1},
	["2052"] = {"瞬息灵动(三)", 1},
	["2053"] = {"瞬息灵动(四)", 1},
	--炎爆术
	["2060"] = {"炎爆术", 1},
	["2061"] = {"炎爆术(二)", 1},
	["2062"] = {"炎爆术(三)", 1},
	["2063"] = {"炎爆术(四)", 1},
	--烈焰火海
	["2070"] = {"烈焰火海", 1},
	["2071"] = {"烈焰火海(二)", 1},
	["2072"] = {"烈焰火海(三)", 1},
	["2073"] = {"烈焰火海(四)", 1},
	--死亡射线
	["2080"] = {"死亡射线", 1},
	["2081"] = {"死亡射线(二)", 1},
	["2082"] = {"死亡射线(三)", 1},
	["2083"] = {"死亡射线(四)", 1},
	--雷霆极光
	["2090"] = {"雷霆极光", 1},
	["2091"] = {"雷霆极光(二)", 1},
	["2092"] = {"雷霆极光(三)", 1},
	["2093"] = {"雷霆极光(四)", 1},
	--流光护盾
	["2100"] = {"流光护盾", 1},
	["2101"] = {"流光护盾(二)", 1},
	["2102"] = {"流光护盾(三)", 1},
	["2103"] = {"流光护盾(四)", 1},
	--冰爆漩涡
	["2120"] = {"冰爆漩涡", 1},
	["2121"] = {"冰爆漩涡(二)", 1},
	["2122"] = {"冰爆漩涡(三)", 1},
	["2123"] = {"冰爆漩涡(四)", 1},
	--陨星灭世
	["2170"] = {"陨星灭世", 1},
	["2171"] = {"陨星灭世(二)", 1},
	["2172"] = {"陨星灭世(三)", 1},
	["2173"] = {"陨星灭世(四)", 1},

--道士技能
	--["治疗咒"]
	["3000"] = {"治疗咒", 1},
	["3001"] = {"治疗咒(二)", 1},
	["3002"] = {"治疗咒(三)", 1},
	["3003"] = {"治疗咒(四)", 1},
	--["蛊毒咒"]
	["3010"] = {"蛊毒咒", 1},
	["3011"] = {"蛊毒咒(二)", 1},
	["3012"] = {"蛊毒咒(三)", 1},
	["3013"] = {"蛊毒咒(四)", 1},
	--["神魂火符"]
	["3020"] = {"神魂火符", 1},
	["3021"] = {"神魂火符(二)", 1},
	["3022"] = {"神魂火符(三)", 1},
	["3023"] = {"神魂火符(四)", 1},
	--["地府之唤"]
	["3030"] = {"地府之唤", 1},
	["3030"] = {"地府召唤(二)", 1},
	["3030"] = {"地府召唤(三)", 1},
	["3030"] = {"地府召唤(四)", 1},
	--["隐形咒"]
	["3040"] = {"隐形咒", 1},
	["3041"] = {"隐形咒(二)", 1},
	["3042"] = {"隐形咒(三)", 1},
	["3043"] = {"隐形咒(四)", 1},
	--["地煞镇魔咒"]
	["3050"] = {"地煞镇魔咒", 1},
	["3051"] = {"地煞镇魔咒(二)", 1},
	["3052"] = {"地煞镇魔咒(三)", 1},
	["3053"] = {"地煞镇魔咒(四)", 1},
	--["天罡护体咒"]
	["3060"] = {"天罡护体咒", 1},
	["3061"] = {"天罡护体咒(二)", 1},
	["3062"] = {"天罡护体咒(三)", 1},
	["3063"] = {"天罡护体咒(四)", 1},
	--["回春咒"]
	["3070"] = {"回春咒", 1},
	["3071"] = {"回春咒(二)", 1},
	["3072"] = {"回春咒(三)", 1},
	["3073"] = {"回春咒(四)", 1},
	--["明镜止水"]
	["3080"] = {"明镜止水", 1},
	["3081"] = {"明镜止水(二)", 1},
	["3082"] = {"明镜止水(三)", 1},
	["3083"] = {"明镜止水(四)", 1},
	--["集体隐形咒"]
	["3090"] = {"集体隐形咒", 1},
	["3091"] = {"集体隐形咒(二)", 1},
	["3092"] = {"集体隐形咒(三)", 1},
	["3093"] = {"集体隐形咒(四)", 1},
	--["天庭之唤"]
	["3110"] = {"天庭之唤", 1},
	["3111"] = {"天庭之唤(二)", 1},
	["3112"] = {"天庭之唤(三)", 1},
	["3113"] = {"天庭之唤(四)", 1},
	--群体蛊毒血咒"]
	["3114"] = {"群体蛊毒血咒", 1},
	["3115"] = {"群体蛊毒血咒(二)", 1},
	["3116"] = {"群体蛊毒血咒(三)", 1},
	["3117"] = {"群体蛊毒血咒(四)", 1}
}


function RoleSkill.main()
	--msg("RoleSkill.main()")
	
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	--左边的九宫格背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,40,80)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,440, 448)
	end

	--右背景
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,500,80)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,600, 448)
	end
		
	--右背景2
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage3",0,515,180)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,570,334)
	end


	_GUIHandle = GUI:ImageCreate(_Parent,"SelSkillBkImg",1850500016,580, 100)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,68, 68)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"SelSkillImg",0,582,102)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	local upLine = 104
	local midLine = 144
	local botLine = 182

	_GUIHandle = GUI:EditCreate(_Parent,"SkillName", 690, upLine,150,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, color.text1)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"SkillType", 690, midLine,150,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, color.text2)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"CD",830, midLine,150,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, color.text2)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"Level_current", 670, 240,80,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"Lv.11")
		GUI:EditSetTextColor(_GUIHandle, color.number)
		_GUIHandle = GUI:EditCreate(_GUIHandle,"text", -100, 0, 150, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"当前等级：")
		end
	end

	_GUIHandle = GUI:RichEditCreate(_Parent,"SkillDes_current", 670, 270,380,180)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextColor(_GUIHandle, color.text2)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		_GUIHandle = GUI:EditCreate(_GUIHandle,"text", -100, 0, 150, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"技能效果：")
		end
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"LineImg", 1851000020, 655, 133)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TitleBg",1852100036, 650, 183)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,305, 40)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"DetailText", 760, 191,100,24)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"详细信息")
		GUI:EditSetTextColor(_GUIHandle, color.text1)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"LineImg2", 1851000020, 585, 320)
	if _GUIHandle ~= 0 then
		--GUI:WndSetSizeM(_GUIHandle,466, 5)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"Level_next", 670, 330,80,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
		--GUI:EditSetTextM(_GUIHandle,"Lv.11")
		GUI:EditSetTextColor(_GUIHandle, color.number)
		_GUIHandle = GUI:EditCreate(_GUIHandle,"text", -100, 0, 150, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"下一等级：")
		end
	end

	_GUIHandle = GUI:RichEditCreate(_Parent,"SkillDes_next", 670, 360,380,180)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		_GUIHandle = GUI:EditCreate(_GUIHandle,"text", -100, 0, 150, 24)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextColor(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"技能效果：")
		end
	end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent, "SkillBook", 1850400004, 850, 415, 66, 66)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		_GUIHandle = GUI:ButtonCreate(_GUIHandle, "UpgradeBtn", 1850000307, 103, 20)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextM(_GUIHandle,"升级")
			GUI:WndSetVisible(_GUIHandle, true)
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "RoleSkill.UpgradeBtn")
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
		end
	end
	_GUIHandle = GUI:RichEditCreate(_Parent,"Demand", 870, 485, 100,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
		--GUI:RichEditAppendString(_GUIHandle, "#COLORCOLOR_GREENG#1999999#COLORCOLOR_WHITE#/1#COLORCOLOR_END#")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end

	RoleSkill.UIInit(_Parent)
end

--UI Logic Code Start
function RoleSkill.UIInit(_Handle)
	--msg("RoleSkill.UIInit()")
	RoleSkill.WndHandle = _Handle
	RoleSkill.indexStr = 0
	RoleSkill.nowIndex = -1
	RoleSkill.ClipWndHandle = 0
	RoleSkill.skill_list = {}
	local BgImg1 = GUI:WndFindWindow(RoleSkill.WndHandle, "BgImage1")
	if BgImg1 then
		GUI:ImageSetAroundImage(BgImg1, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
	end

	local BgImg2 = GUI:WndFindWindow(RoleSkill.WndHandle, "BgImage2")
	if BgImg2 then
		GUI:ImageSetAroundImage(BgImg2, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
	end

	local BgImg3 = GUI:WndFindWindow(RoleSkill.WndHandle, "BgImage3")
	if BgImg3 then
		GUI:ImageSetAroundImage(BgImg3, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029,1850600026, 1850600032, 1850600028, 1850600030)
	end
	local _ClipWndHandle = GUI:WndCreateWnd(RoleSkill.WndHandle,"RoleSkillClipWnd",0,45,83)
	if _ClipWndHandle then
		GUI:WndSetFlagsM(_ClipWndHandle, flg_wndBase_useBkBuffer)
		GUI:WndSetSizeM(_ClipWndHandle,422, 442)
		RoleSkill.ClipWndHandle = _ClipWndHandle
	end

	if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then
		job = LuaRet
	else
		return
	end

	RoleSkill.Skilllearned(job) --已学技能
	RoleSkill.SkillNotHave(job) --未学技能
end

function RoleSkill.SkillNotHave(job)
	local tbl = {}
	local _GUIHandle = 0

	for k, v in pairs(RoleSkill.skill_list) do
		if CL:GetSkillTemplatePropByID(v, SKILL_PROP_NAME) then
			--msg(v.."   delayTask .."..LuaRet)
			tbl[LuaRet] = v --已学技能名表
		end
	end

	--哪些技能未学
	for k, v in pairs(skillInfo[job]) do
		if nil == tbl[k] then
			--未学技能添加到表里
			RoleSkill.skill_list[#RoleSkill.skill_list + 1] = skillInfo[job][k][3]
			local _Parent = RoleSkill.ClipWndHandle
			--msg(k.." 未学习 脚本添加未学习技能数据 i = "..RoleSkill.indexStr)
			local intervalY = 118
			local diffX = -45
			local diffY = -88

			_GUIHandle = GUI:ButtonCreate(_Parent,"CellBackBtn"..RoleSkill.indexStr, 1850500012, 0, intervalY * RoleSkill.indexStr)
			if _GUIHandle ~= 0 then
				GUI:WndSetParam(_GUIHandle, RoleSkill.indexStr)
				GUI:WndSetSizeM(_GUIHandle,432, 118)
				GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkill.SelSkillBtnUp")
			end

			local botLine = 160 + diffY

			_GUIHandle = GUI:EditCreate(_Parent,"Type"..RoleSkill.indexStr, 200 + diffX ,botLine + intervalY * RoleSkill.indexStr,100,20)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:EditSetTextColor(_GUIHandle, color.text2)
				GUI:EditSetTextM(_GUIHandle, skillInfo[job][k][1])
			end

			_GUIHandle = GUI:EditCreate(_Parent,"MaxLevel"..RoleSkill.indexStr, 310 + diffX,botLine + intervalY * RoleSkill.indexStr,200,20)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:EditSetTextColor(_GUIHandle, color.text2)
				GUI:EditSetTextM(_GUIHandle, "最高等级"..skillInfo[job][k][2])
			end

			_GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg"..RoleSkill.indexStr, 1850500016, 95 +diffX, 112 + intervalY * RoleSkill.indexStr + diffY)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:WndSetSizeM(_GUIHandle,68, 68)
			end

			local upLine = 123 + diffY
			_GUIHandle = GUI:EditCreate(_Parent,"_Name"..RoleSkill.indexStr,200 + diffX, upLine + intervalY * RoleSkill.indexStr,150,20)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:EditSetTextColor(_GUIHandle, color.text1)
				GUI:EditSetTextM(_GUIHandle, k)
			end

			_GUIHandle = GUI:EditCreate(_Parent,"LevelDes"..RoleSkill.indexStr, 340 + diffX,upLine + intervalY * RoleSkill.indexStr,100,20)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:WndSetParam(_GUIHandle, 1)
				GUI:EditSetTextM(_GUIHandle, "未学习")
				GUI:WndSetTextColorM(_GUIHandle, color.red)
			end

			_GUIHandle = GUI:EditCreate(_Parent,"_Level"..RoleSkill.indexStr, 370 + diffX,upLine + intervalY * RoleSkill.indexStr,100,20)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:WndSetVisible(_GUIHandle, false)
				GUI:EditSetTextColor(_GUIHandle, color.number)
				--GUI:WndSetTextColorM(_GUIHandle, 4294940928)
			end

			_GUIHandle = GUI:EditCreate(_Parent,"MaxLevel_Text"..RoleSkill.indexStr, 378 + diffX,upLine + intervalY * RoleSkill.indexStr,100,20)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:EditSetTextM(_GUIHandle, "（满级）")
				GUI:EditSetTextColor(_GUIHandle, color.red)
				GUI:WndSetVisible(_GUIHandle, false)
			end

			_GUIHandle = GUI:ImageCreate(_Parent, "LineImg"..RoleSkill.indexStr, 1850500022, 158 + diffX,150 + intervalY * RoleSkill.indexStr + diffY)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
			end

			_GUIHandle = GUI:ItemCtrlCreate(_Parent, "_Skill"..RoleSkill.indexStr, 1850200044, 97 + diffX, 114 + intervalY * RoleSkill.indexStr + diffY,64,64)
			if _GUIHandle ~= 0 then
				GUI:WndSetEnableM(_GUIHandle, false)
				GUI:WndSetParam(_GUIHandle, RoleSkill.indexStr)
				GUI:WndSetSizeM(_GUIHandle, 64, 64)
				GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
				GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
				local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_GUIHandle)
				LuaArg = skillInfo[job][k][3] --设置技能ID
				if UI:Lua_GetSkillTemplatePropByID(skillInfo[job][k][3],SKILL_PROP_ICON) then 
					GUI:WndSetImageID(_GUIHandle, LuaRet) --设置技能图片
				end
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID)
				GUI:ItemCtrlSetGUIData(_GUIHandle, _ItemDataHandle)
			end
			_GUIHandle = GUI:ImageCreate(_Parent, "CoverImg"..RoleSkill.indexStr, 1850500075, 97 + diffX, 114 + intervalY * RoleSkill.indexStr + diffY)
			if _GUIHandle ~= 0 then
				GUI:WndSetSizeM(_GUIHandle, 64, 64)
				GUI:ImageSetFitSize(_GUIHandle, true)
				GUI:WndSetEnableM(_GUIHandle, false)
			end
			
			RoleSkill.indexStr = RoleSkill.indexStr + 1
		end
	end

	_GUIHandle = GUI:WndFindWindow(RoleSkill.ClipWndHandle,"CellBackBtn0")
	if _GUIHandle ~= 0 then
		RoleSkill.SelSkillBtnUp(_GUIHandle)
	end
end

function RoleSkill.Skilllearned(job)
	local _GUIHandle = 0

	RoleSkill.skillcount = 0
	if CL:GetPlayerSelfSkillList() then
		local i = 1
		--k SkillID
		for k, v in pairs(LuaRet) do
			RoleSkill.skill_list[i] = k
			i = i + 1
			RoleSkill.skillcount = RoleSkill.skillcount + 1
		end
	end

	local _Parent = RoleSkill.ClipWndHandle

	for i = 1, RoleSkill.skillcount do
		local intervalY = 118
		local diffX = -45
		local diffY = -88
		local name = ""
		local level = 0
		if CL:GetSkillTemplatePropByID(RoleSkill.skill_list[i], SKILL_PROP_NAME) then
			name = LuaRet
		end

		_GUIHandle = GUI:ButtonCreate(_Parent,"CellBackBtn"..RoleSkill.indexStr,1850500012,0,0 + intervalY * (i - 1))
		if _GUIHandle ~= 0 then
			GUI:WndSetParam(_GUIHandle, i - 1)
			GUI:WndSetSizeM(_GUIHandle,432, 118)
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "RoleSkill.SelSkillBtnUp")
		end

		local botLine = 160 + diffY

		_GUIHandle = GUI:EditCreate(_Parent,"Type"..RoleSkill.indexStr, 200 + diffX ,botLine + intervalY * (i - 1),100,20)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, i-1)
			GUI:EditSetTextColor(_GUIHandle, color.text2)
			if nil ~= skillInfo[job][name] then
				GUI:EditSetTextM(_GUIHandle, skillInfo[job][name][1])
			else
				GUI:EditSetTextM(_GUIHandle, "主动技能")
			end
		end

		_GUIHandle = GUI:EditCreate(_Parent,"MaxLevel"..RoleSkill.indexStr, 310 + diffX,botLine + intervalY * (i - 1),200,20)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, i-1)
			GUI:EditSetTextColor(_GUIHandle, color.text2)
			GUI:EditSetTextM(_GUIHandle, "最高等级")
		end

		_GUIHandle = GUI:EditCreate(_Parent,"MaxLevelEdit"..RoleSkill.indexStr, 392 + diffX,botLine + intervalY * (i - 1),200,20)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, i-1)
			GUI:EditSetTextColor(_GUIHandle, color.number)
			if nil ~= skillInfo[job][name] then
				GUI:EditSetTextM(_GUIHandle, ""..skillInfo[job][name][2])
			else
				GUI:EditSetTextM(_GUIHandle, "4")
			end
		end

		_GUIHandle = GUI:ImageCreate(_Parent,"SkillBkImg"..RoleSkill.indexStr, 1850500016, 95 +diffX, 112 + intervalY * (i - 1) + diffY)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, i-1)
			GUI:WndSetSizeM(_GUIHandle,68, 68)
		end
	
		local upLine = 123 + diffY
		_GUIHandle = GUI:EditCreate(_Parent,"_Name"..RoleSkill.indexStr,200 + diffX, upLine + intervalY * (i - 1),150,20)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, i-1)
			GUI:EditSetTextM(_GUIHandle, name)
			GUI:EditSetTextColor(_GUIHandle, color.text1)
		end

		_GUIHandle = GUI:EditCreate(_Parent,"LevelDes"..RoleSkill.indexStr, 340 + diffX,upLine + intervalY * (i - 1),100,20)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, 0)
			GUI:EditSetTextM(_GUIHandle, "LV.")
			GUI:EditSetTextColor(_GUIHandle, color.number)
		end
		
		
		
		_GUIHandle = GUI:EditCreate(_Parent,"_Level"..RoleSkill.indexStr, 370 + diffX,upLine + intervalY * (i - 1),100,20)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, i-1)
			if CL:GetSkillTemplatePropByID(RoleSkill.skill_list[i], SKILL_PROP_LEVEL) then
				level = LuaRet
			end
			GUI:EditSetTextM(_GUIHandle, tostring(level))
			GUI:EditSetTextColor(_GUIHandle, color.number)
		end

		_GUIHandle = GUI:EditCreate(_Parent,"MaxLevel_Text"..RoleSkill.indexStr, 378 + diffX,upLine + intervalY * (i - 1),100,20)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetTextM(_GUIHandle, "（满级）")
			GUI:EditSetTextColor(_GUIHandle, color.red)
			if nil ~= skillInfo[job][name] then
				if level == skillInfo[job][name][2] then
					GUI:WndSetVisible(_GUIHandle, true)
				else
					GUI:WndSetVisible(_GUIHandle, false)
				end
			end
		end

		_GUIHandle = GUI:ImageCreate(_Parent, "LineImg"..RoleSkill.indexStr, 1850500022, 158 + diffX,150 + intervalY * (i - 1)+ diffY)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
		end

		_GUIHandle = GUI:ItemCtrlCreate(_Parent, "_Skill"..RoleSkill.indexStr, 0, 97 + diffX, 114 + intervalY * (i - 1) + diffY,64,64)
		if _GUIHandle ~= 0 then
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:WndSetParam(_GUIHandle, i-1)
			GUI:WndSetSizeM(_GUIHandle,64, 64)
			GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
			GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
			local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_GUIHandle)
			LuaArg = RoleSkill.skill_list[i]
			--msg("RoleSkill.skill_list[i] = "..RoleSkill.skill_list[i])
			CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID) --设置技能ID
			if UI:Lua_GetSkillTemplatePropByID(RoleSkill.skill_list[i],SKILL_PROP_ICON) then 
				GUI:WndSetImageID(_GUIHandle, LuaRet) --设置技能图片
			end
			--msg("设置 _ItemDataHandle = ".._ItemDataHandle)
			GUI:ItemCtrlSetGUIData(_GUIHandle, _ItemDataHandle)
		end
		RoleSkill.indexStr = RoleSkill.indexStr + 1
	end
end

function RoleSkill.SelSkill(Param)
	--msg("Param "..tostring(Param))
	local _Parent = RoleSkill.WndHandle
	local SkillId = RoleSkill.skill_list[tonumber(Param) + 1]
	--msg("SkillId = "..tostring(SkillId))
	--if SkillId == 0 then return end

	local _GUIHandle = GUI:WndFindWindow(_Parent,"SelSkillImg")
	if _GUIHandle ~= 0 then
		if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_ICON) then 
			return "err 1644"
		end
		local id = LuaRet
		GUI:WndSetImageID(_GUIHandle, id)
	end
	local name = ""
	_GUIHandle = GUI:WndFindWindow(_Parent,"SkillName")
	if _GUIHandle ~= 0 then
		if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_NAME) then return "err 1638"end
		name = LuaRet
		GUI:EditSetTextM(_GUIHandle, name)
	end

	_GUIHandle = GUI:WndFindWindow(_Parent,"SkillType")
	if _GUIHandle ~= 0 then
		if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_TYPE) then return "err 1658"end
		info = "被动技能"; if LuaRet == 1 or LuaRet == 3 or LuaRet == 5 then info = "主动技能" end
		GUI:EditSetTextM(_GUIHandle, info)
	end

	_GUIHandle = GUI:WndFindWindow(_Parent,"CD")
	if _GUIHandle ~= 0 then
		if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_CD) then return "err 1666"end
		local cd_time = LuaRet
		local dot_num = 0
		local first = math.floor(cd_time / 1000)
		local second = cd_time/ 1000 - first
		local timeInSeconds = first + second
		GUI:EditSetTextM(_GUIHandle, "CD :"..tostring(timeInSeconds).."秒")
	end

	_GUIHandle = GUI:WndFindWindow(RoleSkill.ClipWndHandle, "LevelDes"..tostring(Param))
	if _GUIHandle ~= 0 then
		local flag = tonumber(GUI:WndGetParam(_GUIHandle))
		if 0 == flag then
			--技能已学习
			_GUIHandle = GUI:WndFindWindow(_Parent, "Level_current")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, true)
				if CL:GetSkillTemplatePropByID(SkillId, SKILL_PROP_LEVEL) then
					GUI:EditSetTextM(_GUIHandle, "Lv."..tostring(LuaRet))
				end
			end
			_GUIHandle = GUI:WndFindWindow(_Parent,"SkillDes_current")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, true)
				GUI:WndSetPosM(_GUIHandle, 670, 270)
				GUI:RichEditClear(_GUIHandle)
				if not UI:Lua_GetSkillTemplatePropByID(SkillId, SKILL_PROP_TIPS) then return "err 1687"end
				local info = LuaRet
				GUI:RichEditAppendString(_GUIHandle, info)
			end
			_GUIHandle = GUI:WndFindWindow(_Parent, "SkillDes_next")
			if _GUIHandle ~= 0 then
				GUI:RichEditClear(_GUIHandle)
				if not UI:Lua_GetSkillTemplatePropByID(SkillId, SKILL_PROP_NEXTLEVEL) then return "err 1687"end
				local nextID = LuaRet
				if 0 < nextID then
					--技能未满级
					GUI:WndSetVisible(_GUIHandle, true)
					if not UI:Lua_GetSkillTemplatePropByID(nextID, SKILL_PROP_TIPS) then return "err 1687"end
					GUI:RichEditAppendString(_GUIHandle, LuaRet)
					_GUIHandle = GUI:WndFindWindow(_Parent, "SkillBook")
					if _GUIHandle ~= 0 then
						GUI:WndSetVisible(_GUIHandle, true)
						RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle, nil, skillBookInfo[tostring(nextID)][1], skillBookInfo[tostring(nextID)][2], false)
						_GUIHandle = GUI:WndFindWindow(_GUIHandle, "UpgradeBtn")
						if _GUIHandle ~= 0 then
							GUI:WndSetTextM(_GUIHandle, "升级")
							GUI:WndSetParam(_GUIHandle, 1)
						end
					end
					_GUIHandle = GUI:WndFindWindow(_Parent, "Level_next")
					if _GUIHandle ~= 0 then
						GUI:WndSetVisible(_GUIHandle, true)
						if CL:GetSkillTemplatePropByID(nextID, SKILL_PROP_LEVEL) then
							GUI:EditSetTextM(_GUIHandle, "Lv."..tostring(LuaRet))
						end
					end
					--UI:Lua_Log("===========12312=======")
					RoleSkill.CalculateItem(nextID)
				else
					--技能满级 隐藏控件
					_GUIHandle = GUI:WndFindWindow(_Parent, "SkillDes_next")
					if _GUIHandle ~= 0 then
						GUI:WndSetVisible(_GUIHandle, false)
					end
					_GUIHandle = GUI:WndFindWindow(_Parent, "Level_next")
					if _GUIHandle ~= 0 then
						GUI:WndSetVisible(_GUIHandle, false)
					end
					GUI:WndSetVisible(_GUIHandle, false)
					_GUIHandle = GUI:WndFindWindow(_Parent, "SkillBook")
					if _GUIHandle ~= 0 then
						GUI:WndSetVisible(_GUIHandle, false)
					end
					_GUIHandle = GUI:WndFindWindow(_Parent, "Demand")
					if _GUIHandle ~= 0 then
						GUI:WndSetVisible(_GUIHandle, false)
					end
				end
			end
		else
			--技能未学习
			RoleSkill.CalculateItem(SkillId)
			_GUIHandle = GUI:WndFindWindow(_Parent, "Level_next")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
			_GUIHandle = GUI:WndFindWindow(_Parent, "Level_current")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, false)
			end
			_GUIHandle = GUI:WndFindWindow(_Parent,"SkillDes_current")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, true)
				GUI:WndSetPosM(_GUIHandle, 670, 250)
				GUI:RichEditClear(_GUIHandle)
				if not UI:Lua_GetSkillTemplatePropByID(SkillId, SKILL_PROP_TIPS) then return "err 1687"end
				local info = LuaRet
				GUI:RichEditAppendString(_GUIHandle, info)
			end
			_GUIHandle = GUI:WndFindWindow(_Parent, "SkillDes_next")
			if _GUIHandle ~= 0 then
				GUI:WndSetVisible(_GUIHandle, false)
				_GUIHandle = GUI:WndFindWindow(_Parent, "SkillBook")
				if _GUIHandle ~= 0 then
					GUI:WndSetVisible(_GUIHandle, true)
					RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle, nil, skillBookInfo[tostring(SkillId)][1], skillBookInfo[tostring(SkillId)][2], false)
					_GUIHandle = GUI:WndFindWindow(_GUIHandle, "UpgradeBtn")
					if _GUIHandle ~= 0 then
						GUI:WndSetTextM(_GUIHandle, "学习")
						GUI:WndSetParam(_GUIHandle, 0)
					end
				end
			end
		end
	end
end

function RoleSkill.CalculateItem(SkillId)
	local _GUIHandle = GUI:WndFindWindow(RoleSkill.WndHandle, "Demand")
	if _GUIHandle ~= 0 then
		--local SkillId = RoleSkill.skill_list[tonumber(RoleSkill.nowIndex) + 1]
		GUI:WndSetVisible(_GUIHandle, true)
		GUI:RichEditClear(_GUIHandle)
		if CL:GetPackageItemGUIDList() then
			local tItemGUID = LuaRet
			local amount = 0
			for i = 1, #tItemGUID do
				--遍历背包物品 查找和计算需求道具
				if CL:GetItemEntityPropByGUID(tItemGUID[i], ITEM_PROP_KEYNAME) then
					if nil ~= skillBookInfo[tostring(SkillId)] then
						if LuaRet == skillBookInfo[tostring(SkillId)][1] then
							amount = amount + 1
						end
					end
				end
			end
			if nil ~= skillBookInfo[tostring(SkillId)] then
				if 0 == amount then
					GUI:RichEditAppendString(_GUIHandle, "#COLORCOLOR_RED#"..amount.."#COLORCOLOR_WHITE#/"..skillBookInfo[tostring(SkillId)][2].."#COLORCOLOR_END#")
				else
					GUI:RichEditAppendString(_GUIHandle, "#COLORCOLOR_GREENG#"..amount.."#COLORCOLOR_WHITE#/"..skillBookInfo[tostring(SkillId)][2].."#COLORCOLOR_END#")
				end
			end
		else
			GUI:RichEditAppendString(_GUIHandle, "#COLORCOLOR_RED#0#COLORCOLOR_WHITE#/"..skillBookInfo[tostring(SkillId)][2].."#COLORCOLOR_END#")
		end
	end
end

function RoleSkill.SelSkillBtnUp(_Handle)
	local Param = GUI:WndGetParam(_Handle)
	if -1 ~= RoleSkill.nowIndex then
		local _GUIHandle = GUI:WndFindWindow(RoleSkill.ClipWndHandle, "CellBackBtn"..RoleSkill.nowIndex)
		if 0 ~= _GUIHandle then
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
		end
	end
	RoleSkill.nowIndex = tonumber(Param)
	GUI:ButtonSetIsActivePageBtn(_Handle, true)
	RoleSkill.SelSkill(RoleSkill.nowIndex)
end

function RoleSkill.UpgradeBtn(_Handle)
	if CL:AddDelayTask("RoleSkill.enableBtn()", 1000, 1) then
		GUI:WndSetEnableM(_Handle, false)
	end
	local Param = tonumber(GUI:WndGetParam(_Handle))

	if -1 == RoleSkill.nowIndex then
		return
	end

	local SkillId = RoleSkill.skill_list[RoleSkill.nowIndex + 1]
	if 0 == Param then
		UI:Lua_SubmitForm("技能升级表单", "learnSkill", ""..SkillId)
	else
		UI:Lua_SubmitForm("技能升级表单", "upgradeSkill", ""..SkillId)
	end
end

function RoleSkill.enableBtn()
	local _GUIHandle = GetWindow(RoleSkill.WndHandle, "SkillBook,UpgradeBtn")
	if 0 ~= _GUIHandle then
		GUI:WndSetEnableM(_GUIHandle, true)
	end
end


function RoleSkill.msgBox(str)
	MessageBox(0, str, nil, nil, false)
end

function RoleSkill.updateUI(flags)
	local _GUIHandle = 0
	--msg("index = "..RoleSkill.nowIndex)
	local index = RoleSkill.nowIndex
	if 0 == flags then
		--学习技能更新UI
		--msg("RoleSkill.skill_list["..(index + 1).."] = "..RoleSkill.skill_list[index + 1])
		_GUIHandle = GUI:WndFindWindow(RoleSkill.ClipWndHandle, "_Level"..index)
		if 0 ~= _GUIHandle then
			GUI:EditSetTextM(_GUIHandle, "1")
			GUI:WndSetVisible(_GUIHandle, true)
		end
		_GUIHandle = GUI:WndFindWindow(RoleSkill.ClipWndHandle, "LevelDes"..index)
		if 0 ~= _GUIHandle then
			GUI:EditSetTextM(_GUIHandle, "Lv.")
			GUI:WndSetTextColorM(_GUIHandle, color.number)
			GUI:WndSetParam(_GUIHandle, 0)
		end
		
		_GUIHandle = GUI:WndFindWindow(RoleSkill.ClipWndHandle, "CoverImg"..index)
		if 0 ~= _GUIHandle then
			GUI:WndSetVisible(_GUIHandle, false)
		end
	else
		--升级技能更新UI
		_GUIHandle = GUI:WndFindWindow(RoleSkill.ClipWndHandle, "_Level"..index)
		if 0 ~= _GUIHandle then
			local lv = GUI:EditGetTextM(_GUIHandle)
			GUI:EditSetTextM(_GUIHandle, tostring(lv + 1))
			--msg("升级前 ID = "..RoleSkill.skill_list[index + 1])
			if CL:GetSkillTemplatePropByID(RoleSkill.skill_list[index + 1], SKILL_PROP_NEXTLEVEL) then
				--更新成下一等技能ID
				RoleSkill.skill_list[index + 1] = LuaRet
			end
			--msg("升级后 ID = "..RoleSkill.skill_list[index + 1])
			_GUIHandle = GUI:WndFindWindow(RoleSkill.ClipWndHandle, "MaxLevel_Text"..index)
			if _GUIHandle ~= 0 then
				local name = ""
				local job = 0
				if CL:GetSkillTemplatePropByID(RoleSkill.skill_list[index + 1], SKILL_PROP_NAME) then
					name = LuaRet
				end
				if CL:GetPlayerSelfPropBase(ROLE_PROP_JOB) then
					job = LuaRet
				end
				if skillInfo[job][name][2] ~= nil then
					if lv + 1 == skillInfo[job][name][2] then
						GUI:WndSetVisible(_GUIHandle, true)
					else
						GUI:WndSetVisible(_GUIHandle, false)
					end
				end
			end
		end
	end
	--技能书道具栏更新
	_GUIHandle = GUI:WndFindWindow(RoleSkill.WndHandle, "SkillBook")
	if 0 ~= _GUIHandle then
		local SkillId = RoleSkill.skill_list[index + 1]
		--msg("更新后SkillId = "..SkillId)
		RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle, nil, skillBookInfo[tostring(SkillId)][1], skillBookInfo[tostring(SkillId)][2], false)
	end
	_GUIHandle = GUI:WndFindWindow(RoleSkill.ClipWndHandle, "CellBackBtn"..index)
	if 0 ~= _GUIHandle then
		RoleSkill.SelSkillBtnUp(_GUIHandle)
	end
end


RoleSkill.main()