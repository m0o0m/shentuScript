local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
require("system/ScriptPackage")
--——————————图标显示——————————
function openMarsPage_show(player)
	------*****************页游、微端资源同步后删除*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		else
			AddSEIcon(player, 2, -4, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	local l = lualib:Level(player)
	if lualib:GetInt(player,"login_days") <= 2 and l >=55 and l < 80 then
		AddSEIcon(player, 2, -3, "战神", 1800200107, "倒计时", "openMarsPage","","英雄神将与你一起战斗")
	else
		AddSEIcon(player, 2, -3, "战神无引导", 1800200107, "倒计时", "openMarsPage","","英雄神将与你一起战斗")
	end
	return ""
end
function AddMarsIcon(player)
	------*****************页游、微端资源同步后删除*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		else
			AddSEIcon(player, 2, -4, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	
	local tanbaoScore = lualib:GetInt(player,"tanbao_score")
	AddSEIcon(player, 2, -3, "战神无引导", 1800200107, "倒计时", "openMarsPage","","英雄神将与你一起战斗")
	FirstCall(player)
	return ""
end

local item = {
				{"战神天武战刃","显示天武战甲","战神天武头盔","战神天武手镯","战神天武项链",5000},
				{"战神圣武战刃","显示圣武战甲","战神圣武头盔","战神圣武手镯","战神圣武项链",7500},
				{"战神威武战刃","显示威武战甲","战神威武头盔","战神威武手镯","战神威武项链",9800},
				{"战神洪武行天战刃","显示洪武刑天战甲","战神洪武行天头盔","战神洪武行天手镯","战神洪武行天项链",11300},
				{"战神雄武震天战刃","显示雄武震天战甲","战神雄武震天头盔","战神雄武震天手镯","战神雄武震天项链",13700}
			}

local marsInfo = {
					{3000000,2537,5000,3737,"天威神将,自幼习武，力能扛鼎，巫山城一役一战成名"},
					{4000000,2537,7500,3737,"圣威神将,天生神体，未尝败绩，据传其可与一位古老国度中杀得七进七出的将领媲美"},
					{5000000,2537,9800,3737,"怒威神将,神力无敌，天下无双，这是一个传说般的存在"},
					{6000000,2537,11300,3737,"傲啸神将,剑试天下，傲然凌云，传闻其已成神超脱世外"},
					{7000000,2537,13700,3737,"先锋神将,神话中的人物，大陆上流传着他许许多多的故事"},
				}

local btnHint = {"招我理由：有我打怪快一倍。","招我理由：有我抗BOSS不会死。","招我理由：比前面2个家伙厉害！","招我理由：比前面3个家伙厉害多！","招我理由：型英帅靓正，战神家族我最厉害！挑战所有Boss没压力！"}

function RenameHero(player)
	local heros = lualib:GetPlayerHeroList(player)
	if #heros == 0 or heros == nil or heros == "" then  
		--continue
	else		--herolist is valid
		local curHeroList = lualib:GetPlayerCurrentHeroList(player)
		local playerName = lualib:Name(player)
		local heroNameTB = {["天威战将"]="天威神将",["圣威战将"]="圣威神将",["怒威战将"]="怒威神将",["傲啸战神"]="傲啸神将",["先锋战圣"]="先锋神将",}
		for k = 1 , #heros do
			if curHeroList[1] ~= heros[k]["guid"] then
				local a = heros[k]["name"]
				local ending = string.find(a, "（") - 1
				local heroName = string.sub(a, 1, ending)
				local newName = heroNameTB[heroName]
				if newName == nil then
					--lualib:SetInt(player,"unnessChangeName",1)
					return ""
				end
				if lualib:GenHeroForPlayer(player,tostring(heros[k]["guid"]),"ChangeHeroName",heros[k]["guid"].."?"..newName) then
					
				end
			else
				local a = heros[k]["name"]
				local ending = string.find(a, "（") - 1
				local heroName = string.sub(a, 1, ending)
				local newName = heroNameTB[heroName]
				if newName == nil then
					--lualib:SetInt(player,"unnessChangeName",1)
					return ""
				end
				lualib:Player_ChangeName(curHeroList[1], newName .."（"..playerName.."）")
			end
		end
	end
end

function ChangeHeroName(player, err, param)
	
	local str = tostring(param)
	local a1 = string.find(str, "?")
	local heroGuid = string.sub(str, 1, a1-1)
	local length = string.len(str)
	local newName = string.sub(str, a1+1, length)
	local playerName = lualib:Name(player)
	if lualib:Player_ChangeName(heroGuid, newName .."（"..playerName.."）") then
		lualib:DestroyDummy(heroGuid)
		--lualib:SysPromptMsg(player, "name has changed")
	else
		--lualib:SysPromptMsg(player, "failed:::::")
	end
	lualib:SetInt(player,"heroNameChangedFlag",1)
	return ""
end





-------------------图标被点击-----------------------
function openMarsPage(player)
	if lualib:GetInt(player, "heroNameHasChanged") == 0 then
		RenameHero(player)
		lualib:SetInt(player, "heroNameHasChanged", 1)
		if lualib:GetInt(player, "heroNameChangedFlag") == 1 then
			lualib:SysPromptMsg(player,"战将名字已更改，请重启登陆游戏！")
		end
	end
	--abcdefg(player)
	
	local loginDaynum , Is_activate , cishu , vip_lv = 	getcallNum(player)
	
	local heroName = getCurrentHeroName(player)
	local defaultHero = lualib:GetInt(player, "defaultHero")
	local heroIsExist = "is_not_Exist"
	if heroName ~= "" then

		heroIsExist = "is_Exist"
		lualib:ShowFormWithContent(player, "form文件表单", "MarsWnd_c#"..serialize(item).."#"..serialize(marsInfo).."#"..serialize(btnHint).."#"..loginDaynum.."#"..vip_lv.."#"..Is_activate.."#"..cishu.."#"..serialize(heroName).."#"..serialize(heroIsExist))
	else

		lualib:ShowFormWithContent(player, "form文件表单", "MarsWnd_c#"..serialize(item).."#"..serialize(marsInfo).."#"..serialize(btnHint).."#"..loginDaynum.."#"..vip_lv.."#"..Is_activate.."#"..cishu.."#"..serialize(defaultHero).."#"..serialize(heroIsExist))
	end

	return ""
end

---------获取玩家当前使用的英雄名字------
function getCurrentHeroName(player)
	local heros = lualib:GetPlayerCurrentHeroList(player)
	if #heros ~= 0 then
		local a = lualib:Guid2Name(heros[1])
		local ending = string.find(a,"（") - 1
		local heroName = string.sub(a,1,ending)
---------------------------------------------------------

-----------------------------------------------------------
		return heroName
	else
		return ""
	end
end

---------战神召唤次数----------------
function getcallNum(player)
	if lualib:GetDayInt(player,"free_Opportunity") == 0 then 
		lualib:SetInt(player,"callnumber",(lualib:GetInt(player,"callnumber")+1))     ----每日首次免费机会
		lualib:SetDayInt(player,"daynum",1)
		lualib:SetDayInt(player,"free_Opportunity",1)
	end
	
	local cishu = lualib:GetInt(player,"callnumber")
	local daynum = lualib:GetDayInt(player,"daynum")
	local cur_onlinetime = 0
	if daynum < 5 then
		cur_onlinetime = lualib:GetDayInt(player,"online_times") + lualib:OnlineTime(player) - 60*30*daynum    ----每30分钟增加一次
		if cur_onlinetime > 0 then
			cishu = cishu + 1
			lualib:SetInt(player,"callnumber",cishu)
			lualib:SetDayInt(player,"daynum",daynum+1)
		end
	end

	--lualib:SysMsg_SendCenterMsg(1, "每日增加次数" .. tostring(daynum-1), "")
	--lualib:SysMsg_SendCenterMsg(1, "在线时间" .. tostring(cur_onlinetime), "")


	local Is_activate = lualib:GetInt(player,"is_Activate")
	local loginDaynum = lualib:GetInt(player,"login_days")

	local vip_lv = lualib:GetVipLevel(player)
	return loginDaynum , Is_activate , cishu , vip_lv
end

-------------就解决不是问题的问题--------------------
function abcdefg(player)
	local player_Name = lualib:Name(player)
	local heroTB = {"天威神将", "圣威神将", "怒威神将", "傲啸神将"}

	local loginDaynum = lualib:GetInt(player,"login_days")
	if lualib:GetInt(player,"viaVipLv_CreateHero1") == 0 then
		if loginDaynum >= 1 then
			if lualib:CreateHeroForPlayer(player,heroTB[1].."（"..player_Name.."）",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero1",1)
			end
		end
	end	
	if lualib:GetInt(player,"viaVipLv_CreateHero2") == 0 then
		if loginDaynum >= 2 then
			if lualib:CreateHeroForPlayer(player,heroTB[2].."（"..player_Name.."）",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero2",1)
			end
		end
	end	
	if lualib:GetInt(player,"viaVipLv_CreateHero3") == 0 then
		if loginDaynum >= 3 then
			if lualib:CreateHeroForPlayer(player,heroTB[3].."（"..player_Name.."）",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero3",1)
			end
		end
	end
	if lualib:GetInt(player,"viaVipLv_CreateHero4") == 0 then
		if loginDaynum >= 5 then
			if lualib:CreateHeroForPlayer(player,heroTB[4].."（"..player_Name.."）",1,1, "","") then
				lualib:SetInt(player,"viaVipLv_CreateHero4",1)
			end
		end
	end
	
	return ""
end

------------激活战神-----------
function ActivateMars(player)
	if lualib:GetInt(player, "nameChanged_notrelogin") ~= 0 then
		lualib:SysPromptMsg(player, "您刚刚改名成功，请重登生效后激活战神！")
		return ""
	end
	local nowYb = lualib:GetIngot(player)
	if nowYb >= 8888 then
		if lualib:SubIngot(player, 8888 , "激活战神", "战神系统") then
			lualib:SetInt(player,"is_Activate",1)
			local player_Name = lualib:Name(player)
			if  lualib:CreateHeroForPlayer(player,"先锋神将（"..player_Name.."）",1,1, "","") then
				--lualib:SysMsg_SendBroadcastMsg("创建英雄成功","系统")
			end  
			--********************************--
			local indexx = lualib:GetDBNum("consumeTerm")
			local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + 8888
			RecordTop10ConsumeInfo(player,totalYb)
			--********************************--   
		end
	else
		lualib:ShowFormWithContent(player, "脚本表单", "MarsWnd.MsgBox()")
	end
	local param = lualib:GetInt(player,"is_Activate")
	lualib:ShowFormWithContent(player, "脚本表单", "MarsWnd.SetParam(" .. param .. ");")
	return ""
end

----------觉醒时召唤--------
function FirstCall(player)
	local i = 1
	local heros = lualib:GetPlayerHeroList(player)          --获取玩家拥有的英雄列表
	for k = 1 , #heros do
		local a = heros[k]["name"]
		local ending = string.find(a, "（") - 1
		local heroName = string.sub(a, 1, ending)
		if heroName == "天威神将" then
			i = k 
			break
		end
	end
	
	if tostring(heros[1]["guid"]) == "" or tostring(heros[1]["guid"]) == nil or tostring(heros[1]["guid"]) == 0 then
		lualib:SysPromptMsg(player,"请重登游戏！")
		return ""
	end

	
	if lualib:GenHeroForPlayer(player,tostring(heros[1]["guid"]),"GenHeroResult",tostring(heros[1]["guid"])) then		
		lualib:SetInt(player,"defaultHero",1)   --记录最近一次成功召唤的英雄			
	end
	return ""
end


---------召唤战神----------
function CallMars(player,index)
	--lualib:SysPromptMsg(player, "index= "..index)
	local heroNameTB = {["1"]="天威神将",["2"]="圣威神将",["3"]="怒威神将",["4"]="傲啸神将",["5"]="先锋神将",}
	local i = 1
	local heros = lualib:GetPlayerHeroList(player)          --获取玩家拥有的英雄列表

	for k = 1 , #heros do
		local a = heros[k]["name"]
		local ending = string.find(a, "（") - 1
		local heroName = string.sub(a, 1, ending)
-------------------------------------------------------------------------------
		--lualib:SysPromptMsg(player, "heroName"..k.."= "..heroName)
----------------------------------------------------------------------------------

		if heroName == heroNameTB[tostring(index)] then
			--lualib:SysPromptMsg(player, "matchingName= "..heroName)
			i = k 
			break
		end
	end
	
	if tostring(heros[i]["guid"]) == "" or tostring(heros[i]["guid"]) == nil or tostring(heros[i]["guid"]) == 0 then
		lualib:SysPromptMsg(player,"请重登游戏！")
		return ""
	else
		--lualib:SysPromptMsg(player,"ssss")
	end
	
	

	local callnum  = lualib:GetInt(player,"callnumber")
	if callnum > 0 then
		DellOtherHero(player)                  --删除已经召唤的英雄
		if lualib:GenHeroForPlayer(player,tostring(heros[i]["guid"]),"GenHeroResult",tostring(heros[i]["guid"])) then	
			--lualib:SysPromptMsg(player, "qwer")	
			lualib:SetInt(player,"defaultHero",tonumber(index))   --记录最近一次成功召唤的英雄			
			lualib:SetInt(player,"callnumber",callnum-1)
			--callnum = lualib:GetInt(player,"callnumber")
			lualib:ShowFormWithContent(player, "脚本表单", "MarsWnd.CloseWnd();")
		else
			--lualib:SysPromptMsg(player,"2222222")
		end
	elseif callnum <= 0 and lualib:GetIngot(player) >= 88 then
		if lualib:SubIngot(player, 88 , "召唤战神", "战神系统") then
			DellOtherHero(player)
			--lualib:SysPromptMsg(player, "qwert")	
			if lualib:GenHeroForPlayer(player,tostring(heros[i]["guid"]),"GenHeroResult",tostring(heros[i]["guid"])) then
				lualib:SetInt(player,"defaultHero",tonumber(index))   --记录最近一次成功召唤的英雄
				lualib:ShowFormWithContent(player, "脚本表单", "MarsWnd.CloseWnd();")
			else
				--lualib:SysPromptMsg(player,"3333333")
			end
		end
	else
		lualib:ShowFormWithContent(player, "脚本表单", "MarsWnd.WndMsg_up();")
	end
	
	lualib:ShowFormWithContent(player, "脚本表单", "MarsWnd.ShowCallNum(" .. callnum .. ");")
	return ""

end

function HeroRelive(player)
	local index = lualib:GetInt(player, "defaultHero")
	local heroNameTB = {["1"]="天威神将",["2"]="圣威神将",["3"]="怒威神将",["4"]="傲啸神将",["5"]="先锋神将",}
	local i = 1
	local heros = lualib:GetPlayerHeroList(player)          --获取玩家拥有的英雄列表
	for k = 1 , #heros do
		local a = heros[k]["name"]
		
		local ending = string.find(a, "（") - 1
		local heroName = string.sub(a, 1, ending)
		if heroName == heroNameTB[tostring(index)] then
			i = k
			break
		end
	end

	--DellOtherHero(player,heros[i]["guid"])
	if lualib:GenHeroForPlayer(player,tostring(heros[i]["guid"]),"GenHeroResult",tostring(heros[i]["guid"])) then	

	end
	return ""
end

function DellOtherHero(player)             --删除其他英雄
    local heros = lualib:GetPlayerCurrentHeroList(player)
	--lualib:SysPromptMsg(player, "当前英雄数量："tostring(#heros))
    for i = 1, #heros do
		if heros[i] ~= nil then
			--if heroGuid ~= heros[i] then
				lualib:DestroyDummy(heros[i])
			--end
		end
    end
    return ""
end


function GenHeroResult(player, err, heroGuid)
	--lualib:SysPromptMsg(player, "err:"..err)
	--lualib:SysPromptMsg(player, ""..lualib:Level(heroGuid))
	lualib:SendRoleHPNtf(heroGuid)
	lualib:AddTrigger(heroGuid, 317, "on_hero_die")
	lualib:AddTrigger(player, lua_trigger_post_die, "on_post_player_die")  --死亡后触发
	--lualib:SetDynamicAttr(heroGuid, 2, 10, 0)
	--lualib:SetDynamicAttr(heroGuid, 3, 11, 0)
	local heroTotalItemTB = {                                                                 --等级,攻击力
						["天威神将"] = {"战神专用1","战神天武战甲","","","",91,5000, "天威月弧弯刀"},
						["圣威神将"] = {"战神专用2","战神圣武战甲","","","",92,7500, "圣威月弧弯刀"},
						["怒威神将"] = {"战神专用3","战神威武战甲","","","",93,9800, "怒威月弧弯刀"},
						["傲啸神将"] = {"战神专用4","战神洪武刑天战甲","","","",94,11300, "傲啸月弧弯刀"},
						["先锋神将"] = {"战神专用5","战神雄武震天战甲","","","",95,13700, "先锋月弧弯刀"}			
	}

	local a = lualib:Guid2Name(heroGuid)
	local ending = string.find(a,"（")-1
	local heroName = string.sub(a,1,ending)
	--lualib:SysPromptMsg(player, ""..heroName)
-------------------------------------------------------------------------------

----------------------------------------------------------------------------------	
	local heroSingleItemTB = heroTotalItemTB[heroName]
	if not lualib:SetHeroState(player,heroGuid,3) then
		--lualib:SysMsg_SendBroadcastMsg("state set failed?","sys")   --设置英雄战斗
	end
	--if lualib:GetInt(heroGuid,"getEquip") == 0 then
	lualib:ClearBag(heroGuid, false, true, false, false, "清道具:原因", "发起人")
		lualib:SetInt(heroGuid,"getEquip",1)
		for i = 1 , 2 do
			lualib:AddItem(heroGuid,heroSingleItemTB[i],1,true,"mars","mars")
		end
	--end
	if not lualib:HasSkill(heroGuid, heroSingleItemTB[8], false) then --学习技能
		lualib:AddSkill(heroGuid, heroSingleItemTB[8])
	end
	lualib:SetLevel(heroGuid, tonumber(heroSingleItemTB[6]))   --设置英雄等级
	for i = 1 , 2 do
		lualib:ApplyEquipEx(heroGuid,heroSingleItemTB[i])
	end
	
	--[[local marsAtk_low = lualib:PhyAtk(heroGuid, false)  --英雄物攻下限
	local marsAtk_hei = lualib:PhyAtk(heroGuid, true)  --英雄物攻上限
	local playerAtk_hei = 0
	local playerAtk_low = 0
	local playerJob = lualib:Job(player)
	if playerJob == 1 then 
		playerAtk_hei = lualib:PhyAtk(player, true) --玩家物攻上限
		playerAtk_low = lualib:PhyAtk(player, false) --玩家物攻下限
	elseif playerJob == 2 then
		playerAtk_hei = lualib:MagAtk(player, true) --玩家魔攻上限
		playerAtk_low = lualib:MagAtk(player, false) --玩家魔攻下限
	elseif playerJob == 3 then
		playerAtk_hei = lualib:TaoAtk(player, true) --玩家道攻上限
		playerAtk_low = lualib:TaoAtk(player, false) --玩家道攻下限
	end
	

	if playerAtk_hei >= heroSingleItemTB[7] then
		playerAtk_hei = heroSingleItemTB[7]
	end
	if playerAtk_low >= heroSingleItemTB[7] then
		playerAtk_low = heroSingleItemTB[7]
	end
	local a = playerAtk_hei - marsAtk_hei
	local b = playerAtk_low - marsAtk_low --]]
	
	--lualib:SetDynamicAttr(heroGuid, 2, 10, tonumber(a))
	--lualib:SetDynamicAttr(heroGuid, 3, 11, tonumber(b))
	return ""

end

function on_hero_die(heroGuid)
    lualib:DestroyDummy(heroGuid)
	return ""
end

function on_post_player_die(player, killer)
	local heros = lualib:GetPlayerCurrentHeroList(player)   --玩家死亡召回英雄
	if #heros ~= 0 then
		lualib:DestroyDummy(heros[1])
	end	
	return ""
end

