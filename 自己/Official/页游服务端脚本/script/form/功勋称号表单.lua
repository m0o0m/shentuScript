local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
require("system/ScriptPackage")
require("system/自动打怪")
require("system/右上图标")
require("form/ActivityDegree_s")

local rewardTb1 = {{136000,3000},{149000,4000},{163000,4000},{176000,5000},{190000,5000},{217000,6000},{245000,6000},{272000,7000},{313000,8000},{353000,10000}}
local rewardTb2 = {{300000,3000},{330000,4000},{360000,4000},{390000,5000},{420000,5000},{480000,6000},{540000,6000},{601000,7000},{691000,8000},{781000,10000}}
local missionList = {
					{900,901,902,903,904,905,906,907,908,909},  --蜈蚣洞
					{910,911,912,913,914,915,916,917,918,919},  --猪洞
					{920,921,922,923,924,925,926,927,928,929},  --沃玛
					{950,951,952,953,954,955,956,957,958,959},	--祖玛
					{1000,1001,1002,1003,1004,1005,1006,1007,1008,1009},	--赤月
					{1050,1051,1052,1053,1054,1055,1056,1057,1058,1059},	--牛魔洞
					{1100,1101,1102,1103,1104,1105,1106,1107,1108,1109},	--骨魔
					{1150,1151,1152,1153,1154,1155,1156,1157,1158,1159},	--尸体魔洞
				}
				
local achieve_tab = {					
					{{"一阶屠龙侍卫",1,22,1,30000,100},   
					{"二阶战魂侍卫",4,48,2,210000,101},
					{"三阶圣武侍卫",7,70,3,550000,102},
					{"四阶神怒战将",12,114,4,870000,103},
					{"五阶洪荒战将",20,178,5,950000,104},
					{"六阶傲啸猛将",32,247,6,1380000,105},
					{"七阶先锋猛将",47,319,7,2590000,106},
					{"八阶军平神将",62,400,8,3450000,107},
					{"九阶狂战神将",80,490,9,4320000,108},
					{"战圣·凌天霸王",102,583,10,7120000,109}},
					{{"一阶入魔法师",1,22,1,30000,110},   
					{"二阶圣灵法师",4,48,2,210000,111},
					{"三阶混天法师",7,70,3,550000,112},
					{"四阶神祈法灵",12,114,4,870000,113},
					{"五阶焚元法灵",20,178,5,950000,114},
					{"六阶风霜法魂",32,247,6,1380000,115},
					{"七阶玄水法魂",47,319,7,2590000,116},
					{"八阶业火法王",62,400,8,3450000,117},
					{"九阶雷霆法王",80,490,9,4320000,118},
					{"法神·天霸五行",102,583,10,7120000,119}},
					{{"一阶灵风方士",1,22,1,30000,120},   
					{"二阶太玄方士",4,48,2,210000,121},
					{"三阶混元方士",7,70,3,550000,122},
					{"四阶圣弥道长",12,114,4,870000,123},
					{"五阶玄清道长",20,178,5,950000,124},
					{"六阶辰元真人",32,247,6,1380000,125},
					{"七阶灵元真人",47,319,7,2590000,126},
					{"八阶聚元天师",62,400,8,3450000,127},
					{"九阶玄元天师",80,490,9,4320000,128},
					{"道尊·归元乾坤",102,583,10,7120000,129}}
					}
function main(player) 
	
	local level = lualib:GetInt(player,"ach_level")
	local score = lualib:GetInt(player,"ach_score")
	local ach_clink = lualib:GetInt(player,"ach_clink")
	local job = tonumber(lualib:Job(player))
	if level == #achieve_tab[job] then 
		level = level-1
	end  
	local closed = lualib:GetInt(player,"achieve_close")
	
	Button_add_magic1(player)
	lualib:ShowFormWithContent(player, "脚本表单", "Achieve.update("..serialize(achieve_tab[job][level+1])..","..score..",".. level ..","..ach_clink..","..closed..");")
	return ""
	
end

function InformRoleGUIData(player)
	local level = lualib:GetInt(player,"ach_level")
	local score = lualib:GetInt(player,"ach_score")
	local job = tonumber(lualib:Job(player))
	
	if level < 10 then
		if level > 0 then
			lualib:ShowFormWithContent(player, "脚本表单", "RoleFeatsTitle.Updata("..serialize(achieve_tab[job][level])..","..score..",".. level ..","..serialize(achieve_tab[job][level+1])..");")
		else
			local tb = {"      无称号",0,0,0}
			lualib:ShowFormWithContent(player, "脚本表单", "RoleFeatsTitle.Updata("..serialize(tb)..","..score..",".. level ..","..serialize(achieve_tab[job][level+1])..");")
		end
	else
		lualib:ShowFormWithContent(player, "脚本表单", "RoleFeatsTitle.Updata("..serialize(achieve_tab[job][level])..","..score..",".. level..");")
	end
	return ""
end

function UpLevelForReinGUI(player)
	local score = tonumber(lualib:GetInt(player,"ach_score"))
	local level = tonumber(lualib:GetInt(player,"ach_level"))
	local job = tonumber(lualib:Job(player))
	if level == #achieve_tab[job] then 
		lualib:ShowFormWithContent(player, "脚本表单", "RoleFeatsTitle.AlertMessage(\"恭喜您已升到顶级\");")
		return ""
	end
	
	if score >= achieve_tab[job][level+1][5] then 
		lualib:SetInt(player,"ach_score",score-achieve_tab[job][level+1][5])
		lualib:SetInt(player,"ach_level",level+1)
		lualib:AddTitle(player, achieve_tab[job][level+1][6])
		lualib:ApplyTitle(player, achieve_tab[job][level+1][6]) 
		if level+1 == #achieve_tab[job] then 
			InformRoleGUIData(player)
		end
		
		--判断是否有110号任务,有的话让玩家完成任务
		if lualib:HasQuest(player, 95) then
			lualib:SetQuestGroupHuntingsCount(player, 95, 444, counts)
		end
	else 	 
		lualib:ShowFormWithContent(player, "脚本表单", "RoleFeatsTitle.AlertMessage(\"功勋值不足\")")
		return ""
	end
	InformRoleGUIData(player)
	return ""
end

function up(player)
	
	local score = tonumber(lualib:GetInt(player,"ach_score"))
	local level = tonumber(lualib:GetInt(player,"ach_level"))
	local job = tonumber(lualib:Job(player))
	if level == #achieve_tab[job] then 
		lualib:ShowFormWithContent(player, "脚本表单", "msg_up(\"恭喜您已升到顶级\");Achieve.Closeed()")
		return ""
	end
	
	if score >= achieve_tab[job][level+1][5] then 
		
		lualib:SetInt(player,"ach_clink",1)
		lualib:SetInt(player,"ach_score",score-achieve_tab[job][level+1][5])
		lualib:SetInt(player,"ach_level",level+1)
		lualib:AddTitle(player, achieve_tab[job][level+1][6])
		lualib:ApplyTitle(player, achieve_tab[job][level+1][6]) 
                if level+1 == #achieve_tab[job] then 
			lualib:ShowFormWithContent(player, "脚本表单", "Achieve.Closeed()")
		end
		
		--判断是否有110号任务,有的话让玩家完成任务
		if lualib:HasQuest(player, 95) then
			lualib:SetQuestGroupHuntingsCount(player, 95, 444, counts)
		end
	else 	 
		lualib:ShowFormWithContent(player, "脚本表单", "msg_up(\"功勋值不足\")")
	end
	main(player)
	return ""
	
end



function Open_CM_Wnd(player)
	local data = {}
	local rewardTb = {}
	local index1 = 0
	--local index2 = 0
	local exploitLevel = lualib:GetInt(player,"ach_level")
	if exploitLevel >= 0 and exploitLevel <= 4 then
		if lualib:GetInt(player, "CM_QuestGroupOption") == 0 then
			lualib:SetInt(player, "CM_QuestGroupOption", math.random(1,4)) 
		end
		rewardTb = rewardTb1
	else
		if lualib:GetInt(player, "CM_QuestGroupOption") == 0 then
			lualib:SetInt(player, "CM_QuestGroupOption", math.random(5,8)) 
		end
		rewardTb = rewardTb2
	end	
	
	if lualib:GetInt(player,"is_FirstTitleMission") == 0 then
		local a = math.random(1,10)
		lualib:SetInt(player,"titleMissionLevel",a)
		lualib:SetInt(player,"is_FirstTitleMission",1)
	end
	if lualib:GetDayInt(player,"resetDayNum") == 0 then  --每日重置任务次数
		local vl = lualib:GetVipLevel(player)
		if vl < 3 then
			lualib:SetInt(player,"cmDayNum",12)
		elseif vl >= 3 and vl < 6 then
			lualib:SetInt(player,"cmDayNum",14)
		else
			lualib:SetInt(player,"cmDayNum",16)
		end
		lualib:NotifyVar(player, "cmDayNum")
		lualib:SetDayInt(player,"resetDayNum",1)
	end
	--index2 = lualib:GetInt(player, "titleMissionLevel")
	if lualib:CanAccomplishQuest(player, lualib:GetInt(player,"mission_id")) then  --任务是否能完成
		lualib:SetInt(player,"missionIsComplete",1)
	else
		lualib:SetInt(player,"missionIsComplete",0)
	end
	local starNum = lualib:GetInt(player,"titleMissionLevel")   --任务星数
	local isComplete = lualib:GetInt(player,"missionIsComplete")  --任务是否能完成
	local missionIng = lualib:GetInt(player,"missionIng")      --任务进行中？
	local dayNum = lualib:GetInt(player,"cmDayNum")            --任务剩余次数
	local payTimes = lualib:GetDayInt(player, "pay_CM_Times")   --已购买次数
	local exploitLevel = lualib:GetInt(player,"ach_level")     --称号等级
	local Title_clink = lualib:GetInt(player,"Title_clink")    --引导框
	local ach_score = lualib:GetInt(player,"ach_score")    --引导框
	local Title_three = lualib:GetInt(player,"Title_three")   --引导框
	local questGroupConst = lualib:GetInt(player, "CM_QuestGroupOption")
	data[1], data[2], data[3], data[4], data[5], data[6], data[7], data[8], data[9], data[10], data[11] = isComplete, rewardTb, starNum, missionIng, dayNum, payTimes, exploitLevel, Title_clink, ach_score, Title_three, questGroupConst
	lualib:ShowFormWithContent(player,"脚本表单","TitleWnd.RedrawGUI("..serialize(data)..");")
	return ""
end




--刷新任务星级
function UpdateStarNum(player)
	lualib:SetInt(player,"Title_clink",1)
	if lualib:GetInt(player,"titleMissionLevel") == 10 then
		return ""
	end
	if lualib:GetInt(player,"missionIng") ~= 0 then
		return ""
	end
	if lualib:SubBindGold(player, 10000, "扣金币:除魔功勋", player) then
		local a = math.random(1,10)
		lualib:SetInt(player, "titleMissionLevel",a)
		lualib:ShowFormWithContent(player, "脚本表单", "TitleWnd.UpdateStarUI("..a..")")
	elseif lualib:SubGold(player, 10000, "扣金币:除魔功勋", player) then
		local a = math.random(1,10)
		lualib:SetInt(player, "titleMissionLevel",a)
		lualib:ShowFormWithContent(player, "脚本表单", "TitleWnd.UpdateStarUI("..a..")")
	else
		lualib:ShowFormWithContent(player, "脚本表单", "TitleWnd.MsgUp(\"金币不足\");")
	end
	return ""
end

--接受除魔任务
function Receive_CM_Mission(player)
	lualib:SetInt(player,"Title_clink",1)
	local exploitLevel = lualib:GetInt(player,"ach_level")
	local index1 = lualib:GetInt(player, "CM_QuestGroupOption")
	local index2 = lualib:GetInt(player, "titleMissionLevel")
	--[[if exploitLevel >= 0 and exploitLevel <= 4 then
		index1 = math.random(1,4)
	else
		index1 = math.random(5,8)
	end	--]]
	local dayNum = lualib:GetInt(player,"cmDayNum")
	if dayNum > 0 then
		if lualib:ForceAcceptQuest(player, missionList[index1][index2]) then
			lualib:SetInt(player,"mission_id", missionList[index1][index2])
			lualib:SetInt(player,"missionIng",1)
			lualib:SetInt(player,"cmDayNum",dayNum-1)
			dayNum = lualib:GetInt(player, "cmDayNum")
			local leftTimes = 0
			local vip_level = lualib:GetVipLevel(player)
			if 3 > vip_level then
				leftTimes = 0
			elseif 6 > vip_level then
				leftTimes = 2
			else
				leftTimes = 4
			end
			if leftTimes == dayNum then
				if 0 == lualib:GetDayInt(player,"activityDgr_cm") then
					lualib:SetDayInt(player,"activityDgr_cm", 1)
					lualib:SetDayInt(player,"totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 10)
					ActivityDegree_setFlag(player)
				end
			end
			lualib:NotifyVar(player, "cmDayNum")
		end
		TransmitMap(player)
		lualib:ShowFormWithContent(player, "脚本表单", "TitleWnd.CloseWnd()")
	end
	return ""
end

--传送到地图
function TransmitMap(player)
	local exploitLevel = lualib:GetInt(player,"ach_level")
	local questConst = lualib:GetInt(player,"mission_id")
	if questConst >= 900 and questConst <= 909 then
		if lualib:Player_MapMove(player, "蜈蚣洞一层") then
			guaji(player)
		end
	end
	if questConst >= 950 and questConst <= 959 then
		if lualib:Player_MapMove(player, "祖玛寺庙一层") then  --邪庙一层
			guaji(player)
		end
	end
	if questConst >= 910 and questConst <= 919 then
		if lualib:Player_MapMove(player, "猪洞一层") then  --食人魔洞穴一层
			guaji(player)
		end
	end
	if questConst >= 920 and questConst <= 929 then
		if lualib:Player_MapMove(player, "沃玛寺庙一层") then  --天荒阵一层
			guaji(player)
		end
	end
	if questConst >= 1000 and questConst <= 1009 then
		if lualib:Player_MapMove(player, "赤月神殿一层") then   --蜘蛛洞一层
			guaji(player)
		end
	end
	if questConst >= 1050 and questConst <= 1059 then
		if lualib:Player_MapMove(player, "牛魔洞一层") then  --牛魔洞一层
			guaji(player)
		end
	end
	if questConst >= 1100 and questConst <= 1109 then
		if lualib:Player_MapMove(player, "骨魔洞一层") then  --骸骨洞一层
			guaji(player)
		end
	end
	if questConst >= 1150 and questConst <= 1159 then
		if lualib:Player_MapMove(player, "尸魔洞一层") then --永夜之地一层
			guaji(player)
		end
	end
	--[[if exploitLevel == 0 then
		if lualib:Player_MapMove(player, "蜈蚣洞一层") then
			guaji(player)
		end
	elseif exploitLevel >= 1 and exploitLevel <= 5 then
		if lualib:Player_MapMove(player, "祖玛寺庙一层") then
			guaji(player)
		end
	else
		if lualib:Player_MapMove(player, "赤月神殿二层") then
			guaji(player)
		end
	end--]]
	return ""
end

--继续任务
function Continue_CM_Mission(player)
	TransmitMap(player)
	lualib:ShowFormWithContent(player, "脚本表单", "TitleWnd.CloseWnd()")
	return ""
end

--支付元宝接受任务
function PayYbRev_CM_Mission(player)
	local nowTime = lualib:GetDayInt(player, "pay_CM_Times")
	if nowTime > 4 then
		lualib:SysPromptMsg(player, "今日除魔次数已达上限")
		return ""
	end
	local exploitLevel = lualib:GetInt(player,"ach_level")
	local index1 = lualib:GetInt(player, "CM_QuestGroupOption")
	local index2 = lualib:GetInt(player, "titleMissionLevel")
	--[[if exploitLevel >= 0 and exploitLevel <= 4 then
		index1 = math.random(1,4)
	else
		index1 = math.random(5,8)
	end	--]]
	

	local costYb = math.pow(2, nowTime) * 98
	if lualib:Player_SubIngot(player, costYb, false, "扣元宝:除魔任务", "除魔任务") then            --扣元宝
		--********************************--
		local indexx = lualib:GetDBNum("consumeTerm")
		local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + tonumber(costYb)
		RecordTop10ConsumeInfo(player,totalYb)
		--********************************--
		if lualib:ForceAcceptQuest(player, missionList[index1][index2]) then
			lualib:SetInt(player,"mission_id", missionList[index1][index2])
			lualib:SetInt(player,"missionIng", 1)
			lualib:SetDayInt(player, "pay_CM_Times", nowTime+1)
		end
		TransmitMap(player)
		lualib:ShowFormWithContent(player, "脚本表单", "TitleWnd.CloseWnd()")
	else
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
	end

	return ""
end

--领取奖励
function Get_CM_Reward(player,param)
	if not lualib:CanAccomplishQuest(player, lualib:GetInt(player,"mission_id")) then
		return ""
	end
	if tonumber(param) == 3 then 
		if lualib:GetInt(player, "Title_three") ~= 1 then
			lualib:SetInt(player,"Title_three",1) 
		end
	end
	local rewardTb = {}
	local exploitLevel = lualib:GetInt(player,"ach_level")

	if exploitLevel >= 0 and exploitLevel <= 4 then
		rewardTb = rewardTb1
	else
		rewardTb = rewardTb2
	end	
	
	local checkTb = {1,2,3}  --核实客户端传来参数
	local num = checkTb[tonumber(param)]
	if num == nil then
		return ""
	end
	local index = lualib:GetInt(player, "titleMissionLevel")
	if not (lualib:Player_IsGoldEnough(player, 300000*(num-1),true) or lualib:Player_IsGoldEnough(player, 300000*(num-1),false)) then
		lualib:ShowFormWithContent(player, "脚本表单", "TitleWnd.MsgUp(\"金币不足\");")
		return ""
	end
	if lualib:SubBindGold(player,300000*(num-1), "扣金币:除魔功勋", player) then   --扣绑金
		if lualib:Player_AddExp(player, num*rewardTb[index][1], "加经验：除魔", "除魔")  then
			local achieveNum = lualib:GetInt(player, "ach_score") + num*rewardTb[index][2]
			lualib:SetInt(player, "ach_score",achieveNum)
			lualib:AccomplishQuest(player, lualib:GetInt(player,"mission_id"), 0)
			lualib:SetInt(player,"is_FirstTitleMission",0)
			lualib:SetInt(player,"missionIng",0)
			--lualib:ShowFormWithContent(player, "脚本表单", "TitleWnd.CloseWnd()")	
			lualib:SetInt(player, "CM_QuestGroupOption", 0)
			Open_CM_Wnd(player)	
		end
	elseif lualib:SubGold(player,300000*(num-1), "扣金币:除魔功勋", player) then             --扣非绑金
		if lualib:Player_AddExp(player, num*rewardTb[index][1], "加经验：除魔", "除魔")  then
			local achieveNum = lualib:GetInt(player, "ach_score") + num*rewardTb[index][2]
			lualib:SetInt(player, "ach_score",achieveNum)
			lualib:AccomplishQuest(player, lualib:GetInt(player,"mission_id"), 0)
			lualib:SetInt(player,"is_FirstTitleMission",0)
			lualib:SetInt(player,"missionIng",0)		
			--lualib:ShowFormWithContent(player, "脚本表单", "TitleWnd.CloseWnd()")
			lualib:SetInt(player, "CM_QuestGroupOption", 0)
			Open_CM_Wnd(player)
		end
	else
		lualib:ShowFormWithContent(player, "脚本表单", "TitleWnd.MsgUp(\"金币不足\");")
	end
	
	Button_add_magic1(player)
	return ""
end

function Setint(player)
	lualib:SetInt(player,"achieve_close",1)
	return ""
end  

 
