local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

local tab_last = {350,100,50,15,3}
local tab_level = {70,80,2,4,6}

--lualib:SetFormAllowFunc({"RechargeRankMain", "ConsumeRankMain", "ShowCheckedDetails", "buttonWin3_main", "buttonWin3_Get", "buttonWin4_main", "buttonWin4_Get", "函数名"});

--   职业    性别   等级
local tab_level_reward = 
		{
			{
				{
					{"500绑定元宝","玛雅卷轴","转生神殿卷轴",2,1,1},   --第四参数个对应的是第一的count
					{"500绑定元宝","玛雅卷轴","宝藏钥匙",4,2,1},
					{"神武战甲","超级BOSS召唤令","宝藏钥匙",1,1,1},
					{"威武战甲","威武战甲","威武战甲",1,0,0},
					{"雄武震天战刃","雄武震天战刃","雄武震天战刃",1,0,0},
				},
				{
					{"500绑定元宝","玛雅卷轴","转生神殿卷轴",2,1,1},   
					{"500绑定元宝","玛雅卷轴","宝藏钥匙",4,2,1},
					{"神武战袍","超级BOSS召唤令","宝藏钥匙",1,1,1},
					{"威武战袍","威武战袍","威武战袍",1,0,0},
					{"雄武震天战刃","雄武震天战刃","雄武震天战刃",1,0,0},
				}
			},
			{
				{
					{"500绑定元宝","玛雅卷轴","转生神殿卷轴",2,1,1},   
					{"500绑定元宝","玛雅卷轴","宝藏钥匙",4,2,1},
					{"神魔法袍","超级BOSS召唤令","宝藏钥匙",1,1,1},
					{"幻神法袍","幻神法袍","幻神法袍",1,0,0},
					{"天异玄奥法杖","天异玄奥法杖","天异玄奥法杖",1,0,0},
				},
				{ 
					{"500绑定元宝","玛雅卷轴","转生神殿卷轴",2,1,1},   
					{"500绑定元宝","玛雅卷轴","宝藏钥匙",4,2,1},
					{"神魔羽衣","超级BOSS召唤令","宝藏钥匙",1,1,1},
					{"幻神羽衣","幻神羽衣","幻神羽衣",1,0,0},
					{"天异玄奥法杖","天异玄奥法杖","天异玄奥法杖",1,0,0},
				}
			},
			{
				{
					{"500绑定元宝","玛雅卷轴","转生神殿卷轴",2,1,1},   
					{"500绑定元宝","玛雅卷轴","宝藏钥匙",4,2,1},
					{"神灵道袍","超级BOSS召唤令","宝藏钥匙",1,1,1},
					{"无量道袍","无量道袍","无量道袍",1,0,0},
					{"混天广法道剑","混天广法道剑","混天广法道剑",1,0,0},
				},
				{
					{"500绑定元宝","玛雅卷轴","转生神殿卷轴",2,1,1},   
					{"500绑定元宝","玛雅卷轴","宝藏钥匙",4,2,1},
					{"神灵道衣","超级BOSS召唤令","宝藏钥匙",1,1,1},
					{"无量道衣","无量道衣","无量道衣",1,0,0},
					{"混天广法道剑","混天广法道剑","混天广法道剑",1,0,0},
				}
			}
		}
local tab_wing_reward = {{"羽毛","双倍经验4小时绑","金砖小",40,1,2},          --不可更改表结构
						{"羽毛","双倍经验8小时绑","金砖小",200,1,4},
						{"羽毛","三倍经验8小时绑","金砖小",500,1,6},
						{"羽毛","四倍经验8小时绑","金砖小",1000,1,8},
						{"羽毛","五倍经验8小时绑","金砖小",2000,1,10},
						{2,3,5,7,9} 
						}
function fun_wing(player)
	local wing_l = lualib:GetInt(player,"wing_level")
	tab_wing_reward[7] = {}
	for  i=1,5 do   
		tab_wing_reward[7][i] = lualib:GetInt(player,"kf_wing_get_item"..i)   --是否领取过  
	end
	tab_wing_reward[7][6] = GetDurationTime(2, 7)
	lualib:ShowFormWithContent(player,"脚本表单Sc","ServiceActivities.wing("..serializeSc(tab_wing_reward)..","..wing_l..");")
	return ""
end

function getCastle(player)
	local str = GetDurationTime(1, 4)
	lualib:ShowFormWithContent(player,"脚本表单Sc","EditSetText(null,\"ServiceActivities,buttonWin5,duration\",\""..str.."\");")
	local CastleOwnFamily = lualib:GetCastleOwnFamily("神歌城")
	if CastleOwnFamily ~= "" then 
		if player == lualib:GetFamilyLeader(tostring(CastleOwnFamily)) then
			if lualib:GetInt(CastleOwnFamily,"皇城争霸") == 0 then 
				lualib:ShowFormWithContent(player, "脚本表单Sc", "ServiceActivities.getCastle();")
			end
		end
	end
	return ""
end

function getYB(player)
	if not Start_Time(player,1,4) then 
		lualib:SysPromptMsg(player,"请注意是否在领取时间内")
		return ""
	end
	
	local CastleOwnFamily = lualib:GetCastleOwnFamily("神歌城")
	if CastleOwnFamily ~= "" then 
		if player == lualib:GetFamilyLeader(tostring(CastleOwnFamily)) then
			
			if lualib:GetInt(CastleOwnFamily,"皇城争霸") == 0 then 
				if lualib:GetBagFree(player) < 5 then
					lualib:SysPromptMsg(player,"背包空间不足")
					return ""
				end
				lualib:SetInt(CastleOwnFamily,"皇城争霸",1)
				lualib:AddItem(player,"2000元宝",5,false,"皇城争霸", "系统") 
			else
				lualib:SysPromptMsg(player,"奖励只能领取一次")
			end
		end
	end
	get_image_list(player)
	return ""
end

function getWing(player,num)
	
	if not Start_Time(player,2,7) then 
		lualib:SysPromptMsg(player,"请注意是否在领取时间内")
		return ""
	end
	
	-------------------------------------------------------------
	num = tonumber(num) 
	local index = lualib:GetInt(player,"kf_wing_get_item"..num)   --是否领取过 
	local wing_l = lualib:GetInt(player,"wing_level")
	if index == 0 and wing_l >= tab_wing_reward[6][num] then 
		for i=1,3 do 
			if tab_wing_reward[num][i+3] ~= 0 then
				index = index+1
			end
		end
		if lualib:GetBagFree(player) < index then
			lualib:SysPromptMsg(player,"背包空间不足")
			return ""
		end
		for i=1,3 do 
			if tab_wing_reward[num][i+3] > 0 then 
				lualib:AddItem(player,tab_wing_reward[num][i],tab_wing_reward[num][i+3],false,"神翼竞技", "系统")
			end
		end
		lualib:SetInt(player,"kf_wing_get_item"..num,1) 
		lualib:ShowFormWithContent(player,"脚本表单Sc","WndSetVisible(null,\"ServiceActivities,buttonWin2,buttonWin,wnd"..num..",status2\",false);WndSetVisible(nil,\"ServiceActivities,buttonWin2,buttonWin,wnd"..num..",status3\",true);")
	end
	get_image_list(player)
	return ""
end

function Start_Time(player,index1,index2)
	local TF = false
	local StartServerTime = lualib:Str2Time(lualib:GetConstVar("StartServerTime"))  --开服时间(秒)
	local day1 =lualib:Time2Str("%Y-%m-%d",StartServerTime+(index1-1)*(24*60*60))
	local day2 =lualib:Time2Str("%Y-%m-%d",StartServerTime+(index2)*(24*60*60))
	
	local newTime = lualib:GetAllTime()
	--lualib:SysPromptMsg(player,day1..":"..lualib:Time2Str("%Y-%m-%d",newTime) ..":"..day2)
	day1 = lualib:Str2Time(day1)
	day2 = lualib:Str2Time(day2)
	--lualib:SysPromptMsg(player,day1..":"..newTime..":"..day2)
	if newTime>day1 and day2>newTime then 
		TF = true
	end
	return TF
end

function fun_level(player) 
	
	local rein = lualib:GetInt(player,"reinLevel")
	local tab = {{},{}}
	for  i=1,5 do
		tab[1][i] = tab_last[i] - lualib:GetDBNum("kf_level_reward"..i)
		tab[2][i] = lualib:GetInt(player,"kf_level_get_item"..i)     
	end
	tab[3] = rein
	tab[4] = lualib:Level(player)
	
	local sex = tonumber(lualib:Gender(player))
	local job = tonumber(lualib:Job(player))
	tab[5] = tab_level_reward[job][sex]
	tab[6] = GetDurationTime(1, 7)
	lualib:ShowFormWithContent(player,"脚本表单Sc","ServiceActivities.getLevel("..serializeSc(tab)..");")
	return ""
end

function getReward(player,num)

	if not Start_Time(player,1,7) then 
		lualib:SysPromptMsg(player,"请注意是否在领取时间内")
		return ""
	end
	
	num = tonumber(num)
	--local last = lualib:GetInt("","kf_level_reward"..num)   --已领取数量
	local rein = lualib:GetInt(player,"reinLevel")
	local last = lualib:GetDBNum("kf_level_reward"..num)
	local index = lualib:GetInt(player,"kf_level_get_item"..num)   --是否领取过
	local int = tab_last[num]-last
	local level = lualib:Level(player)
	local sex = tonumber(lualib:Gender(player))
	local job = tonumber(lualib:Job(player))
	
	if int > 0 and index == 0 and level >= tab_level[num] then 
		if num >2 and rein < tab_level[num] then
			lualib:SysPromptMsg(player,"等级不足")
			return ""
		end
		for i=1,3 do 
			if tab_level_reward[job][sex][num][i+3] ~= 0 then
				index = index+1
			end
		end
		if lualib:GetBagFree(player) < index then
			lualib:SysPromptMsg(player,"背包空间不足")
			return ""
		end
		
		--lualib:SetInt("","kf_level_reward"..num,last+1)   --剩余数量
		lualib:SetDBNum("kf_level_reward" .. num,last+1) 
		lualib:SetInt(player,"kf_level_get_item"..num,1)
		for i=1,3 do
			if tab_level_reward[job][sex][num][i+3] ~= 0 then
				lualib:AddItem(player,tab_level_reward[job][sex][num][i],tab_level_reward[job][sex][num][i+3],false,"等级竞技", "系统") 
			end
		end
	end
	fun_level(player) 
	get_image_list(player)
	return ""
end

--//奖励在《副本次数刷新》脚本中
local rechargeRankItemArrAll = {
							{{"转8首饰箱",1}, {"转6首饰箱",1}, {"宝石结晶中",1}, {"3000元宝",1}, {"5000绑定元宝",1}},
							{{"转8首饰箱",1}, {"转6首饰箱",1}, {"宝石结晶中",1}, {"3000元宝",1}, {"5000绑定元宝",1}},
							{{"转8首饰箱",1}, {"转6首饰箱",1}, {"宝石结晶中",1}, {"3000元宝",1}, {"5000绑定元宝",1}},
							}
function RechargeRankMain(player)  ----充值排行
	
	----------------------------------------------------------------------------------------------------------------------------------------
	--[[local restTime = 0
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）

	local allTime = lualib:GetAllTime()
	local startDay = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --开服第几天
	--lualib:SysPromptMsg(player, "开服第"..startDay.."天")
	if startDay >= 3 and startDay <= 7 then 
		restTime = 24*60*60 - (allTime - (StartServerTime_int + (startDay-1)*24*60*60))  --活动剩余时间
		if restTime < 0 then
			restTime = 0
		end
	end--]]
	
	----------------------------------------------------------------------------------------------------------------------------------------
	
	--*********************************--
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）
	local allDays = lualib:GetAllDays(0)
	local startDay = math.ceil(((allDays+1)*24*60*60-StartServerTime_int)/(24*60*60)) --开服第几天
	local allSeconds = lualib:GetAllTime()
	local restTime = 0
	if startDay >= 3 and startDay <= 7 then 
		restTime = (allDays+1)*24*60*60 - allSeconds - 8*60*60    --到早上0点的时间
	end
	--lualib:SysPromptMsg(player, "the start day is.."..startDay)
	--lualib:SysPromptMsg(player, "the rest seconds is.."..restTime)
	
	
	local rechargeRankItemArr = {}
	local gender = lualib:Gender(player)
	local job = lualib:Job(player)
	rechargeRankItemArr = rechargeRankItemArrAll[job]
	--[[if gender == 1 then
		if job == 1 then
			rechargeRankItemArr[2][1] = "圣武战甲"
			rechargeRankItemArr[5][1] = "神武战袍"
		elseif job == 2 then
			rechargeRankItemArr[2][1] = "圣魔法袍"
			rechargeRankItemArr[5][1] = "神魔法袍"
		elseif job == 3 then
			rechargeRankItemArr[2][1] = "圣灵道袍"
			rechargeRankItemArr[5][1] = "神灵道袍"
		end
	end--]]
	local individalRecharge = lualib:GetDayInt(player, "IndividalDailyRecharge")
	--local yb = lualib:GetTotalBill(player)
	--chongzhi_talk_jt_ex(player)
	
	--local index = lualib:GetDBNum("serviceStartDays")      
	local index = startDay
	local str = lualib:GetDBStr("top5RechargeChartInfo"..index)
	local Top5InfoArr = {{}}   --difine array record Top5 Information ;    Top5InfoArr[][1]=playerName    Top5InfoArr[][2]=yb
	local time_str = GetDurationTime(3, 7)
	if str ~= nil and str ~= "" then
		--lualib:SysPromptMsg(player,"str:"..str)
		Top5InfoArr = json.decode(str)
		lualib:ShowFormWithContent(player,"脚本表单Sc","ServiceActivities.RechargeTop5Data("..individalRecharge..","..serializeSc(rechargeRankItemArr)..","..restTime..",'"..time_str.."',"..serializeSc(Top5InfoArr)..");")
	else
		lualib:ShowFormWithContent(player,"脚本表单Sc","ServiceActivities.RechargeTop5Data("..individalRecharge..","..serializeSc(rechargeRankItemArr)..","..restTime..",'"..time_str.."');")
	end
	return ""
end

	
 
function RecordTop5Info(player, param) ----充值排行
	local yb = tonumber(param)
	if yb < 30000 then             --小于30000不参与排行
		return ""
	end
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）
	local allDays = lualib:GetAllDays(0)
	local startDay = math.ceil(((allDays+1)*24*60*60-StartServerTime_int)/(24*60*60)) --开服第几天
	if not (startDay >= 3 and startDay <= 7) then
		return ""
	end
	local id = tostring(lualib:Player_GetAccountID(player))    --get player account
	--local index = lualib:GetDBNum("serviceStartDays")
	local index = startDay
	local str = lualib:GetDBStr("top5RechargeChartInfo"..index)
	local Top5InfoArr = {{}}   --difine array record Top5 Information ;    Top5InfoArr[][1]=playerName    Top5InfoArr[][2]=yb
	local tempArr = {}
	local name = lualib:Name(player)
	local theName = lualib:GetStr(player, "playerNameINchart")
	if theName ~= "" then
		name = theName
	end
	local gender = lualib:Gender(player)
	local job = lualib:Job(player)
	local newIncreased = 0
	if str ~= nil and str ~= "" then
		Top5InfoArr = json.decode(str)
		local length = #Top5InfoArr
		local l = 0		
		for i = 1, length do
			if  Top5InfoArr[i][3] == id and Top5InfoArr[i][1] ~= name then		--该账号下已有角色上了排行榜，取消排行资格
				return ""
			end
			if Top5InfoArr[i][1] == name then       --判断该玩家是否已在排行榜,l ~= 0 在排行榜
				l = i
			end		
		end
		if length < 5 then                               --不足5人	
			if l == 0 then								--不在排行榜，信息添加到末端
				
				tempArr[1] = name
				tempArr[2] = yb
				tempArr[3] = id
				tempArr[4] = player
				tempArr[5] = gender
				tempArr[6] = job
				
				Top5InfoArr[length + 1] = tempArr
				newIncreased = 1
				
			else
				Top5InfoArr[l][2] = yb					--已经在排行榜。更新充值元宝数
				Top5InfoArr[l][1] = name
				
			end
		else
			if l == 0 then
				local temp, p = yb, 0   					--排行榜已有5人，剃掉最后一位
				for i = 1, length do
					if temp > Top5InfoArr[i][2] then
						temp = Top5InfoArr[i][2]
						p = i
					end
				end
				if p ~= 0 then
					Top5InfoArr[p][1] = name
					Top5InfoArr[p][2] = yb
					Top5InfoArr[p][3] = id
					Top5InfoArr[p][4] = player
					Top5InfoArr[p][5] = gender
					Top5InfoArr[p][6] = job
				end
				
			else
				Top5InfoArr[l][2] = yb
				Top5InfoArr[l][1] = name
			end
		end
		for  i = 1, length + newIncreased do                          --重新排名
			for  j = i+1, length + newIncreased do 
				if Top5InfoArr[i][2] < Top5InfoArr[j][2] then 
					local it = Top5InfoArr[i]
					Top5InfoArr[i] = Top5InfoArr[j]
					Top5InfoArr[j] = it
				end
			end
		end
	else
		Top5InfoArr[1][1] = name
		Top5InfoArr[1][2] = yb
		Top5InfoArr[1][3] = id
		Top5InfoArr[1][4] = player
		Top5InfoArr[1][5] = gender
		Top5InfoArr[1][6] = job
		
	end
	Top5InfoArr["length"] = length
	str =  json.encode(Top5InfoArr)
	
	--lualib:SysPromptMsg(player, ""..str)
	lualib:SetDBStr("top5RechargeChartInfo"..index,str)
	return ""
end

--[[function GetTop5RechargeReward(player)
	----------------------------------------------------------------------------------------------------------------------------------------
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）
	local restTime = 0
	local allTime = lualib:GetAllTime()
	local startDay = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --开服第几天
	lualib:SysPromptMsg(player, "开服第"..startDay.."天")
	if startDay >= 3 and startDay <= 7 then 
		restTime = 24*60*60 - (allTime - (StartServerTime_int + (startDay-1)*24*60*60))  --活动剩余时间
		if restTime > 0 then
			lualib:SysPromptMsg(player, "未到领取时间")
			return ""
		end
	end
	----------------------------------------------------------------------------------------------------------------------------------------
	
	local rechargeRankItemArr = {}
	local gender = lualib:Gender(player)
	local job = lualib:Job(player)
	rechargeRankItemArr = rechargeRankItemArrAll[job]
	if gender == 1 then
		if job == 1 then
			rechargeRankItemArr[2][1] = "圣武战甲"
			rechargeRankItemArr[5][1] = "神武战甲"
		elseif job == 2 then
			rechargeRankItemArr[2][1] = "圣魔法袍"
			rechargeRankItemArr[5][1] = "神魔法袍"
		elseif job == 3 then
			rechargeRankItemArr[2][1] = "圣灵道袍"
			rechargeRankItemArr[5][1] = "神灵道袍"
		end
	end
	
	local index = lualib:GetDBNum("serviceStartDays")
	local str = lualib:GetDBStr("top5RechargeChartInfo"..index)
	local Top5InfoArr = {{}}   --difine array record Top5 Information ;    Top5InfoArr[][1]=playerName    Top5InfoArr[][2]=yb
	local name = lualib:Name(player)
	if str ~= nil and str ~= "" then
		Top5InfoArr = json.decode(str)
		local length = #Top5InfoArr
		local l = 0
		for i = 1, length do					--找到玩家在榜上的位置
			if Top5InfoArr[i][1] == name then
				l = i
			end				
		end
		if l ~= 0 then
			if lualib:GetInt(player, "GetRechargeChartReward"..index) == 0 then
				if lualib:GetBagFree(player) < 1 then
					lualib:SysPromptMsg(player, "背包空间不足")
				else
					if lualib:MailToPlayer("开服活动充值排行", Top5InfoArr[i][4], "您在充值排行榜上第"..l.."名，这是您的奖励，请收好", 0, 0, {rechargeRankItemArr[l][1], rechargeRankItemArr[l][2], 0} ) then 
						lualib:SetInt(player, "GetRechargeChartReward"..index, 1)
					end
				end
			end
		end
	end
	
	return ""
end--]]

function chongzhi_talk_jt_ex(player)
	--------------------------------------------------------------------------------------开服第3天到第7天，每天开启一次
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）
	local allDays = lualib:GetAllDays(0)
	local startDay = math.ceil(((allDays+1)*24*60*60-StartServerTime_int)/(24*60*60)) --开服第几天
	--[[local index = lualib:GetDBNum("serviceStartDays")
	if index ~= startDay then
		lualib:SetDBNum("serviceStartDays", tonumber(startDay))
	end--]]
	--lualib:SysPromptMsg(player, "startDay:"..startDay)
	if not (startDay >= 3 and startDay <= 7) then 
		return ""
	end
	local starttime = StartServerTime_int + (startDay-1)*24*60*60   --充值时间起点
	---------------------------------------------------------------------------------------
	if not lualib:PostDBEvt("select order_id,billin from tblbilllog where user_id=" .. lualib:UserID(player) .. " and billin >= 0 and time > " .. starttime , "web_bill2_jt", player) then
		return "操作失败！"
	else
		return "数据读取中！！！"
	end	
end

function web_bill2_jt(bResult,dwError,strError,iResultNum,tRecordSets,player)
	local msg_error = ""
	if bResult == false then
		
		return
	end
	local day_num = 0
	for k,v in pairs(tRecordSets) do
		day_num = day_num + tonumber(v[2])
	end
	--lualib:SysPromptMsg(player, "day_num="..day_num)
	lualib:SetDayInt(player, "IndividalDailyRecharge", day_num)  --记录玩家每日充值元宝数
	RecordTop5Info(player, day_num)           --updata chart when clicked
	return ""
end

local consumeRankItemArr = {
							{{"转6首饰箱",1}, {"羽毛",150}}, 
							{{"转4首饰箱",1}, {"羽毛",150}}, 
							{{"转2首饰箱",1}, {"羽毛",150}}, 
							{"羽毛",100}, 
							{"羽毛",65}
						}
function ConsumeRankMain(player)
	--lualib:SetDBStr("top5RechargeChartInfo","")
	----------------------------------------------------------------------------------------------------------------------------------------
	-- local StartServerTime = lualib:GetConstVar("StartServerTime")
	-- local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）
	-- local restTime = 0
	-- local allTime = lualib:GetAllTime()
	-- local startDay = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --开服第几个24小时
	-- local term = 3
	-- if startDay == 1 then 
		-- restTime = 24*60*60 - (allTime - StartServerTime_int)  --活动剩余时间
		-- term = 3 - math.floor(restTime/(8*60*60))
		-- if term >=1 and term <= 3 then
			-- restTime = restTime -  (3-term)*8*60*60
		-- end
		-- if restTime < 0 then
			-- restTime = 0
		-- end
	-- end
	-- lualib:SetDBNum("consumeTerm",tonumber(term))
	
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	startServerTime_str = startServerTime_str:gsub("%d%d:%d%d:%d%d", "00:00:00")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	-- local activityEndTime_int = startServerTime_int + 3*24*60*60  	 --活动结束时间  
	local restTime = 0
	local allTime = lualib:GetAllTime()
	local term = 0
	if allTime <= startServerTime_int then 
	
	elseif allTime <= (startServerTime_int + 24*60*60) then 
		term = 1
		restTime = startServerTime_int + 24*60*60 - allTime
	elseif allTime <= (startServerTime_int + 2*24*60*60) then 
		term = 2
		restTime = startServerTime_int + 2*24*60*60 - allTime
	elseif allTime <= (startServerTime_int + 3*24*60*60) then 
		term = 3
		restTime = startServerTime_int + 3*24*60*60 - allTime
	end
	lualib:SetDBNum("consumeTerm", term)
	----------------------------------------------------------------------------------------------------------------------------------------
	
	local gender = lualib:Gender(player)
	local job = lualib:Job(player)
	--[[if gender == 1 then
		if job == 1 then
			consumeRankItemArr[2][1][1] = "神武战刃"
			consumeRankItemArr[3][1][1] = "神武战甲"
		elseif job == 2 then
			consumeRankItemArr[2][1][1] = "神魔法杖"
			consumeRankItemArr[3][1][1] = "神魔法袍"
		elseif job == 3 then
			consumeRankItemArr[2][1][1] = "神灵道扇"
			consumeRankItemArr[3][1][1] = "神灵道袍"
		end
	else
		if job == 1 then
			consumeRankItemArr[2][1][1] = "神武战刃"
			consumeRankItemArr[3][1][1] = "神武战袍"
		elseif job == 2 then
			consumeRankItemArr[2][1][1] = "神魔法杖"
			consumeRankItemArr[3][1][1] = "神魔羽衣"
		elseif job == 3 then
			consumeRankItemArr[2][1][1] = "神灵道扇"
			consumeRankItemArr[3][1][1] = "神灵道衣"
		end
	end--]]
	
	
	local index = lualib:GetDBNum("consumeTerm")
	local individalConsume = lualib:GetInt(player, "IndividalTotalConsumeYB"..index)
	lualib:SysPromptMsg(player, "individalConsume------------"..individalConsume)
	local str = lualib:GetDBStr("top10ConsumeChartInfo"..index)
	local Top10InfoArr = {{}}   --difine array record Top5 Information ;    Top10InfoArr[][1]=playerName    Top10InfoArr[][2]=yb
	if str ~= nil and str ~= "" then
		--lualib:SysPromptMsg(player, ""..tostring(str))
		Top10InfoArr = json.decode(str)
		lualib:ShowFormWithContent(player,"脚本表单Sc","ServiceActivities.ConsumeTop10Data("..individalConsume..","..serializeSc(consumeRankItemArr)..","..term..","..restTime..","..serializeSc(Top10InfoArr)..");")
	else
		lualib:ShowFormWithContent(player,"脚本表单Sc","ServiceActivities.ConsumeTop10Data("..individalConsume..","..serializeSc(consumeRankItemArr)..","..term..","..restTime..");")
	end
	return ""
end

function ShowCheckedDetails(player, param)
	local index = tonumber(param)
	local Top10InfoArr = {{}}   --difine array record Top5 Information ;    Top10InfoArr[][1]=playerName    Top10InfoArr[][2]=yb
	local str = ""
	if index > lualib:GetDBNum("consumeTerm") then
		return ""
	else
		local individalConsume = lualib:GetInt(player, "IndividalTotalConsumeYB"..index)
		str = lualib:GetDBStr("top10ConsumeChartInfo"..index)
		if str ~= nil and str ~= "" then
			--lualib:SysPromptMsg(player, ""..tostring(str))
			Top10InfoArr = json.decode(str)
			lualib:ShowFormWithContent(player,"脚本表单Sc","ServiceActivities.ShowConsumeChartDetails("..individalConsume..","..serializeSc(Top10InfoArr)..");")
		else
			lualib:ShowFormWithContent(player,"脚本表单Sc","ServiceActivities.ShowConsumeChartDetails("..individalConsume..");")
		end
	end
	return ""
end
--[[
function RecordTop10ConsumeInfo(player, param) ----消费排行
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）
	local allTime = lualib:GetAllTime()
	local startDay = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --开服第几个24小时
	if startDay ~= 1 then 
		return ""
	end
	local yb = tonumber(param)
	if yb == 0 then
		return ""
	end
	--local index = lualib:GetDBNum("ServiceActivityIssue")      --set index = (index + 1) when the activity finish
	local index = lualib:GetDBNum("consumeTerm")
	lualib:SetInt(player, "IndividalTotalConsumeYB"..index, yb)  --记录玩家每日充值元宝数
	local str = lualib:GetDBStr("top10ConsumeChartInfo"..index)
	local Top10InfoArr = {{}}   --difine array record Top5 Information ;    Top10InfoArr[][1]=playerName    Top10InfoArr[][2]=yb
	local tempArr = {}
	local name = lualib:Name(player)
	local theName = lualib:GetStr(player, "playerNameINchart")
	if theName ~= "" then
		name = theName
	end
	
	
	local newIncreased = 0
	if str ~= nil and str ~= "" then
		Top10InfoArr = json.decode(str)
		local length = #Top10InfoArr
		local l = 0
		for i = 1, length do
			if Top10InfoArr[i][1] == name then       --找到玩家的排名（如果有）
				l = i
			end
		end
		if length <10 then                                   --排行小于10人
			if l == 0 then
				tempArr[1] = name
				tempArr[2] = yb								 --若还没有，添加到末端
				tempArr[3] = 0
				Top10InfoArr[length + 1] = tempArr          
				newIncreased = 1
			else
				Top10InfoArr[l][2] = yb                   --若有，更新对应玩家消费数据
				Top10InfoArr[l][1] = name
			end
		else
			if l == 0 then
				local temp, p = yb, 0                          --排行已有10人
				for i = 1, length do
					if temp > Top10InfoArr[i][2] then
						temp = Top10InfoArr[i][2]             --找到消费最低的玩家位置
						p = i
					end
				end
				if p ~= 0 then
					Top10InfoArr[p][1] = name                  --替换
					Top10InfoArr[p][2] = yb
					Top10InfoArr[p][3] = 0
				end
			else
				Top10InfoArr[l][2] = yb                   --若有，更新对应玩家消费数据
				Top10InfoArr[l][1] = name
			end
		end
		for  i = 1, length + newIncreased do                           --排序
			for  j = i+1, length + newIncreased do 
				if Top10InfoArr[i][2] < Top10InfoArr[j][2] then 
					local it = Top10InfoArr[i]
					Top10InfoArr[i] = Top10InfoArr[j]
					Top10InfoArr[j] = it
				end
			end
		end
	else                                                     --排行榜上没人，添加到第一位
		Top10InfoArr[1][1] = name
		Top10InfoArr[1][2] = yb
		Top10InfoArr[1][3] = 0
	end
	Top10InfoArr["length"] = length
	lualib:SetDBStr("top10ConsumeChartInfo"..index, json.encode(Top10InfoArr))
	return ""
end
--]]
function GetTop10ConsumeReward(player, param)
	local index = tostring(param)
	local str = lualib:GetDBStr("top10ConsumeChartInfo"..index)
	local Top10InfoArr = {{}}   --difine array record Top5 Information ;    Top10InfoArr[][1]=playerName    Top10InfoArr[][2]=yb
	local name = lualib:Name(player)
	local theName = lualib:GetStr(player, "playerNameINchart")
	if theName ~= "" then
		name = theName
	end
	local gender = lualib:Gender(player)
	local job = lualib:Job(player)
	--[[if gender == 1 then
		if job == 1 then
			consumeRankItemArr[2][1][1] = "神武战刃"
			consumeRankItemArr[3][1][1] = "神武战甲"
		elseif job == 2 then
			consumeRankItemArr[2][1][1] = "神魔法杖"
			consumeRankItemArr[3][1][1] = "神魔法袍"
		elseif job == 3 then
			consumeRankItemArr[2][1][1] = "神灵道扇"
			consumeRankItemArr[3][1][1] = "神灵道袍"
		end
	else
		if job == 1 then
			consumeRankItemArr[2][1][1] = "神武战刃"
			consumeRankItemArr[3][1][1] = "神武战袍"
		elseif job == 2 then
			consumeRankItemArr[2][1][1] = "神魔法杖"
			consumeRankItemArr[3][1][1] = "神魔羽衣"
		elseif job == 3 then
			consumeRankItemArr[2][1][1] = "神灵道扇"
			consumeRankItemArr[3][1][1] = "神灵道衣"
		end
	end--]]
	if str ~= nil and str ~= "" then
		Top10InfoArr = json.decode(str)
		local length = #Top10InfoArr
		local l = 0
		for i = 1, length do  
			if Top10InfoArr[i][1] == name then       --找到玩家的排名（如果有）
				l = i
			end
		end
		if l ~= 0 then
			if lualib:GetInt(player, "GetConsumeChartReward"..index) == 0 then
				if l >= 1 and l <= 3 then
					if lualib:GetBagFree(player) < 2 then
						lualib:SysPromptMsg(player, "背包空间不足")
					else
						if lualib:GiveItem(player, consumeRankItemArr[l][1][1], consumeRankItemArr[l][1][2], "开服活动消费榜前10", "system") then
							if lualib:GiveItem(player, consumeRankItemArr[l][2][1], consumeRankItemArr[l][2][2], "开服活动消费榜前10", "system") then
								lualib:SetInt(player, "GetConsumeChartReward"..index, 1)
								lualib:ShowFormWithContent(player,"脚本表单","ServiceActivities.SetButtonState();")
								Top10InfoArr[l][3] = 1
								lualib:SetDBStr("top10ConsumeChartInfo"..index, json.encode(Top10InfoArr))
							end
						end
					end
				elseif l > 3 and l <= 10 then
					if l == 4 or l == 5 then
						l = 4
					else
						l = 5
					end
					if lualib:GetBagFree(player) < 1 then
						lualib:SysPromptMsg(player, "背包空间不足")
					else
						lualib:GiveItem(player, consumeRankItemArr[l][1], consumeRankItemArr[l][2], "开服活动消费榜前10", "system")
						lualib:SetInt(player, "GetConsumeChartReward"..index, 1)
						lualib:ShowFormWithContent(player,"脚本表单Sc","ServiceActivities.SetButtonState();")
						Top10InfoArr[l][3] = 1
						lualib:SetDBStr("top10ConsumeChartInfo"..index, json.encode(Top10InfoArr))
					end
				end
			else
				lualib:SysPromptMsg(player, "您已经领取过奖励")
				Top10InfoArr[l][3] = 1
				lualib:SetDBStr("top10ConsumeChartInfo"..index, json.encode(Top10InfoArr))
			end
			
		else
			lualib:SysPromptMsg(player, "您未上排行榜")
		end
	end
	get_image_list(player)
	return ""
end

--[[function ClearStrForTest(player)         --清空表，测试用
	lualib:SysPromptMsg(player, "test")
	for i = 1, 3 do
		lualib:SetDBStr("top10ConsumeChartInfo"..i, "")
		lualib:SetInt(player, "GetConsumeChartReward"..i, 0)
		lualib:SetInt(player, "IndividalTotalConsumeYB"..i, 0)
		local str = lualib:GetDBStr("top10ConsumeChartInfo"..i)
		lualib:SysPromptMsg(player, ""..tostring(str))
	end
	for i = 1, 7 do
		lualib:SetDBStr("top5RechargeChartInfo"..i, "")
		lualib:SetInt(player, "GetRechargeChartReward"..i, 0)
	end
	return ""
end--]]


-----------------------------------------------------------------------------------------------------------------------
-------------------------------------------------宝珠竞技-----------------------------------------------------------------
--[0]为领取奖励所需要的碎片数量	
--奖励道具表 KeyName, count, IsBind
local buttonWin3_table = 
{	
	[0] = {120,350,800,2000,4500,8000,12000},
	[1] = {{"宝石结晶中", 1, true}, {"双倍经验4小时绑", 1, true}, {"金砖小", 2, true}},
	[2] = {{"宝石结晶中", 2, true}, {"双倍经验8小时绑", 1, true}, {"金砖小", 4, true}},
	[3] = {{"宝石结晶中", 6, true}, {"三倍经验8小时绑", 1, true}, {"金砖小", 6, true}},
	[4] = {{"宝石结晶中", 9, true}, {"三倍经验8小时绑", 2, true}, {"金砖小", 8, true}},
	[5] = {{"宝石结晶中", 10, true}, {"四倍经验8小时绑", 1, true}, {"金砖小", 10, true}},
	[6] = {{"宝石结晶中", 12, true}, {"五倍经验8小时绑", 1, true}, {"金砖小", 12, true}},
	[7] = {{"宝石结晶中", 14, true}, {"四倍经验8小时绑", 2, true}, {"金砖小", 15, true}},
}

local baoshi_count = {40,90,150,220,375,935,2340,4400,7020,11705,0}
function buttonWin3_main(player)
	
	local level = lualib:GetInt(player, "baoshi_level")	
	local count = 0
	count = count + lualib:GetInt(player, "baoshi_chip")
	if level > 0 then 
		for i = 1, level do 
			count = count + baoshi_count[i]
		end
	end
	
	--积累的碎片数量所达到的领奖档次
	local level = 0 
	for i = 1, 8 do 
		if i == 8 then 
			level = 7
			break
		end
		if count < buttonWin3_table[0][i] then 
			level = i - 1
			break
		end
	end
	
	--是否已经领过奖
	local strParam = ""
	for i = 1, level do 
		local isGet = lualib:GetInt(player, "kaifu_baoshi_isGet"..i)
		strParam = strParam..isGet
	end
	strParam = string.format('%q', strParam)
	--lualib:SysPromptMsg(player, strParam)
	local time_str = GetDurationTime(3, 7)
	lualib:ShowFormWithContent(player,"脚本表单Sc","ServiceActivities.buttonWin3_updata("..serializeSc(buttonWin3_table)..","..count..","..level..","..strParam..",'"..time_str.."');")
	get_image_list(player)
	return ''
end



function buttonWin3_Get(player, index)
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local activityStartTime_int = startServerTime_int + 2*24*60*60  	 --活动开始时间 第三天到第七天
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --活动结束时间  
	local nowTime_int = lualib:GetAllTime()
	if nowTime_int < activityStartTime_int then 
		lualib:SysPromptMsg(player, "宝珠竞技活动未开启")
		return ""
	end
	if nowTime_int > activityEndTime_int then 
		lualib:SysPromptMsg(player, "宝珠竞技活动已结束")
		return ""
	end
	
	
	index = tonumber(index)
	local level = lualib:GetInt(player, "baoshi_level")	
	local count = 0
	count = count + lualib:GetInt(player, "baoshi_chip")
	if level > 0 then 
		for i = 1, level do 
			count = count + baoshi_count[i]
		end
	end
	--积累的碎片数量所达到的领奖档次
	local level = 0 
	for i = 1, 8 do 
		if i == 8 then 
			level = 7
			break
		end
		if count < buttonWin3_table[0][i] then 
			level = i - 1
			break
		end
	end
	
	if index > level then 
		lualib:SysPromptMsg(player, "积累的碎片数量没有达到要求,无法领取")
		return ""
	end
	local isGet = lualib:GetInt(player, "kaifu_baoshi_isGet"..index)
	if isGet == 1 then 
		lualib:SysPromptMsg(player, "您已经领取过此奖励")
		return ""
	else
		if lualib:GetBagFree(player) < 3 then
			lualib:SysPromptMsg(player, "您的包裹空间不足，请先清理包裹再领取！！")
			--lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"您的背包满了，请先清理背包再进行升级\");")
			--return "您的背包满了，请先清理背包再进行升级！！"
			return ""
		end
		lualib:SetInt(player, "kaifu_baoshi_isGet"..index, 1)
		for i = 1, 3 do 
			lualib:AddItem(player, buttonWin3_table[index][i][1], buttonWin3_table[index][i][2], buttonWin3_table[index][i][3],"宝珠竞技", player)
		end
	end
	buttonWin3_main(player)
	return ""
end

-----------------------------------------------------------------------------------------------------------------------
----------------------------------------------灵珠竞技-----------------------------------------------------------------
--领取奖励所需要的碎片数量	
--奖励道具表 KeyName, count, IsBind
local buttonWin4_table = 
{	
	[0] = {120,250,600,1200,2500,6000,10000},
	[1] = {{"魂珠碎片中", 2, true}, {"双倍经验4小时绑", 1, true}, {"金砖小", 2, true}},
	[2] = {{"魂珠碎片中", 4, true}, {"双倍经验8小时绑", 1, true}, {"金砖小", 4, true}},
	[3] = {{"魂珠碎片中", 6, true}, {"三倍经验8小时绑", 1, true}, {"金砖小", 6, true}},
	[4] = {{"魂珠碎片中", 9, true}, {"三倍经验8小时绑", 2, true}, {"金砖小", 8, true}},
	[5] = {{"魂珠碎片中", 12, true}, {"四倍经验8小时绑", 1, true}, {"金砖小", 10, true}},
	[6] = {{"魂珠碎片中", 20, true}, {"五倍经验8小时绑", 1, true}, {"金砖小", 12, true}},
	[7] = {{"魂珠碎片中", 24, true}, {"四倍经验8小时绑", 2, true}, {"金砖小", 15, true}},
}

local hunzhu_count = {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,0}
function buttonWin4_main(player)
	
	local hunzhu_level = lualib:GetInt(player, "hunzhu_level")	
	local count = 0
	count = count + lualib:GetInt(player, "hunzhu_chip")
	if hunzhu_level > 0 then 
		for i = 1, hunzhu_level do 
			count = count + hunzhu_count[i]
		end
	end
	
	--积累的碎片数量所达到的领奖档次
	local level = 0 
	for i = 1, 8 do 
		if i == 8 then 
			level = 7
			break
		end
		if count < buttonWin4_table[0][i] then 
			level = i - 1
			break
		end
	end
	
	--是否已经领过奖
	local strParam = ""
	for i = 1, level do 
		local isGet = lualib:GetInt(player, "kaifu_hunzhu_isGet"..i)
		strParam = strParam..isGet
	end
	strParam = string.format('%q', strParam)
	--lualib:SysPromptMsg(player, strParam)
	local time_str = GetDurationTime(4, 7)
	lualib:ShowFormWithContent(player,"脚本表单Sc","ServiceActivities.buttonWin4_updata("..serializeSc(buttonWin4_table)..","..count..","..level..","..strParam..",'"..time_str.."');")
	get_image_list(player)
	return ''
end



function buttonWin4_Get(player, index)
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local activityStartTime_int = startServerTime_int + 3*24*60*60  	 --活动开始时间 第三天到第七天
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --活动结束时间  
	local nowTime_int = lualib:GetAllTime()
	if nowTime_int < activityStartTime_int then 
		lualib:SysPromptMsg(player, "灵珠竞技活动未开启")
		return ""
	end
	if nowTime_int > activityEndTime_int then 
		lualib:SysPromptMsg(player, "灵珠竞技活动已结束")
		return ""
	end
	
	
	index = tonumber(index)
	local level = lualib:GetInt(player, "hunzhu_level")	
	local count = 0
	count = count + lualib:GetInt(player, "hunzhu_chip")
	if level > 0 then 
		for i = 1, level do 
			count = count + hunzhu_count[i]
		end
	end
	--积累的碎片数量所达到的领奖档次
	local level = 0 
	for i = 1, 8 do 
		if i == 8 then 
			level = 7
			break
		end
		if count < buttonWin4_table[0][i] then 
			level = i - 1
			break
		end
	end
	
	if index > level then 
		lualib:SysPromptMsg(player, "积累的碎片数量没有达到要求,无法领取")
		return ""
	end
	local isGet = lualib:GetInt(player, "kaifu_hunzhu_isGet"..index)
	if isGet == 1 then 
		lualib:SysPromptMsg(player, "您已经领取过此奖励")
		return ""
	else
		if lualib:GetBagFree(player) < 3 then
			lualib:SysPromptMsg(player, "您的包裹空间不足，请先清理包裹再领取！！")
			--lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"您的背包满了，请先清理背包再进行升级\");")
			--return "您的背包满了，请先清理背包再进行升级！！"
			return ""
		end
		lualib:SetInt(player, "kaifu_hunzhu_isGet"..index, 1)
		for i = 1, 3 do 
			lualib:AddItem(player, buttonWin4_table[index][i][1], buttonWin4_table[index][i][2], buttonWin4_table[index][i][3],"宝珠竞技", player)
		end
	end
	buttonWin4_main(player)
	return ""
end


--获取活动持续时间字符串
function GetDurationTime(index1, index2)
	
	
	local  StartServerTime = lualib:Str2Time(lualib:GetConstVar("StartServerTime"))  --开服时间(秒)
	local day1 = lualib:Time2Str("%Y-%m-%d %H:%M:%S",StartServerTime+(index1-1)*(24*60*60))
	local day2 = lualib:Time2Str("%Y-%m-%d %H:%M:%S",StartServerTime+(index2-1)*(24*60*60))
	-- local y1,m1,d1 = day1:match("(%d%d%d%d)-(%d%d)-(%d%d)")
	-- local y2,m2,d2 = day2:match("(%d%d%d%d)-(%d%d)-(%d%d)")
	-- local startTime_str1 = y1 .. "年" .. m1.. "月" .. d1 .. "日"
	-- local startTime_str2 = y2 .. "年" .. m2.. "月" .. d2 .. "日"
	-- local durationTime_str = startTime_str1 .. "-" .. startTime_str2
	local durationTime_str = day1 .. " 至 " .. day2
	return durationTime_str
end

--获取指定年月的天数
function get_days(year,month)        
	local bigmonth = "(1)(3)(5)(7)(8)(10)(12)"
	local strmonth = "(" .. month .. ")"       
	if month == 2 then
		if year % 4 == 0 or (year % 400 == 0 and year % 400 ~= 0) then
			return 29
		else
			return 28
		end
	elseif string.find(bigmonth, strmonth) ~= nil then
		return 31
	else
		return 30
	end
end



function End_Time(player,index1)
	local TF = 0
	local StartServerTime = lualib:Str2Time(lualib:GetConstVar("StartServerTime"))  --开服时间(秒)
	local day1 =lualib:Time2Str("%Y-%m-%d",StartServerTime+(index1)*(24*60*60))
	
	local newTime = lualib:GetAllTime()
	--lualib:SysPromptMsg(player,day1..":"..lualib:Time2Str("%Y-%m-%d",newTime) ..":"..day2)
	day1 = lualib:Str2Time(day1)
	--lualib:SysPromptMsg(player,":"..newTime..":"..day1)
	if newTime>day1 then 
		TF = 1
	end
	return TF
end


--是否显示领奖图片
function get_image_list(player)
	
	local table_image = {0,0,0,0,0,0}
	local table_end = {0,0,0,0,0,0}
	local delMagic = 0
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local nowTime_int = lualib:GetAllTime()
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --活动结束时间 
	
	table_end[6] = 0
	if nowTime_int > activityEndTime_int then 
		DelIconMagicSc(player, "开服活动")
		delMagic = 1
		table_end[6] = 1
	end
	if delMagic == 0 then 
		--等级,第一天到第七天
		local rein = lualib:GetInt(player,"reinLevel")
		local level = lualib:Level(player);
		local activityStartTime_int1 = startServerTime_int	 			--活动开始时间 
		if nowTime_int > activityStartTime_int1 then 
			for i = 1, 5 do
				local restCount = tab_last[i] - lualib:GetDBNum("kf_level_reward"..i);
				if restCount > 0 then
					local index = lualib:GetInt(player,"kf_level_get_item"..i)
					if index == 0 then
						if level >= tab_level[i] then
							if i > 2 then
								if  rein >= tab_level[i] then
									table_image[1] = 1; 
									break
								end
							else
								table_image[1] = 1; 
								break
							end
						end
					end
				end
			end
		end
		
		--神翼,第二天到第七天
		local activityStartTime_int2 = startServerTime_int + 24*60*60	 --活动开始时间 
		if nowTime_int > activityStartTime_int2 then 
			for i = 1, 5 do   
				if lualib:GetInt(player,"kf_wing_get_item"..i) == 0 then    --是否领取过  
					if lualib:GetInt(player,"wing_level") >= tab_wing_reward[6][i] then 
						table_image[2] = 1; 
						break;
					end
				end
			end
		end
		
		--宝珠,第三天到第七天
		local activityStartTime_int3 = startServerTime_int + 2*24*60*60	 --活动开始时间  
		if nowTime_int > activityStartTime_int3 then 
			local baoshi_level = lualib:GetInt(player, "baoshi_level")	
			local count = 0
			count = count + lualib:GetInt(player, "baoshi_chip")
			if baoshi_level > 0 then 
				for i = 1, baoshi_level do 
					count = count + baoshi_count[i]
				end
			end
			
				--积累的碎片数量所达到的领奖档次
			local level = 0 
			for i = 1, 8 do 
				if i == 8 then 
					level = 7
					break
				end
				if count < buttonWin3_table[0][i] then 
					level = i - 1
					break
				end
			end
			
				--是否已经领过奖
			for i = 1, level do 
				if lualib:GetInt(player, "kaifu_baoshi_isGet"..i) == 0 then 
					table_image[3] = 1; 
					break;
				end
			end
		end
		
		--魂珠,第四天到第七天
		local activityStartTime_int4 = startServerTime_int + 3*24*60*60	 --活动开始时间 
		if nowTime_int > activityStartTime_int4 then 
			local hunzhu_level = lualib:GetInt(player, "hunzhu_level")	
			local count2 = 0
			count2 = count2 + lualib:GetInt(player, "hunzhu_chip")
			if hunzhu_level > 0 then 
				for i = 1, hunzhu_level do 
					count2 = count2 + hunzhu_count[i]
				end
			end
			
				--积累的碎片数量所达到的领奖档次
			local level2 = 0 
			for i = 1, 8 do 
				if i == 8 then 
					level2 = 7
					break
				end
				if count2 < buttonWin4_table[0][i] then 
					level2 = i - 1
					break
				end
			end
			
				--是否已经领过奖
			for i = 1, level2 do 
				if lualib:GetInt(player, "kaifu_hunzhu_isGet"..i) == 0 then
					table_image[4] = 1; 
					break;
				end
			end
		end
		
		--皇城争霸,第一天到第四天
		local activityStartTime_int5 = startServerTime_int 			 --活动开始时间 
		local activityEndTime_int5 = startServerTime_int + 4*24*60*60  	 --活动结束时间 
		if nowTime_int > activityStartTime_int5 and nowTime_int < activityEndTime_int5 then 
			local CastleOwnFamily = lualib:GetCastleOwnFamily("神歌城")
			if CastleOwnFamily ~= "" then 
				if player == lualib:GetFamilyLeader(tostring(CastleOwnFamily)) then
					if lualib:GetInt(CastleOwnFamily,"皇城争霸") == 0 then 
						table_image[5] = 1; 
					end
				end
			end
		end
		
		--消费回馈,开服第一天24小时
		local activityStartTime_int6 = startServerTime_int 			 --活动开始时间 
		local activityEndTime_int6 = startServerTime_int + 24*60*60  	 --活动结束时间 
		if nowTime_int > activityStartTime_int6 and nowTime_int < activityEndTime_int6 then 
			local index = lualib:GetDBNum("consumeTerm");
			if index <= lualib:GetDBNum("consumeTerm") then
				local Top10InfoArr = {{}}   --difine array record Top5 Information ;    Top10InfoArr[][1]=playerName    Top10InfoArr[][2]=yb
				local str = ""
				str = lualib:GetDBStr("top10ConsumeChartInfo"..index);
				if str ~= nil and str ~= "" then
					Top10InfoArr = json.decode(str);
					local name = lualib:Name(player);
					for k, v in ipairs(Top10InfoArr) do 
						if name == v[1] then 
							table_image[6] = 1; 
							break;
						end
					end
				end
			end
		end
		
		local sum = 0;
		for i = 1, 6 do
			sum = sum + table_image[i]
		end
		if sum == 0 then 
			DelIconMagicSc(player, "开服活动")
		end
	end
	table_end[1] = End_Time(player,7)
	table_end[2] = End_Time(player,7)
	table_end[3] = End_Time(player,7)
	table_end[4] = End_Time(player,7)
	table_end[5] = End_Time(player,4)
	table_end[7] = End_Time(player,7)

	--充值排行,自动发奖
	lualib:ShowFormWithContent(player, "脚本表单Sc", "ServiceActivities.ImageUpdata("..serializeSc(table_image)..","..serializeSc(table_end)..");")

	return ""
end

function AddKaiFuMagicOnLevelUp(player)
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local nowTime_int = lualib:GetAllTime()
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --活动结束时间 
	if nowTime_int > activityEndTime_int then 
		return ""
	end
	--等级,第一天到第七天
	local rein = lualib:GetInt(player,"reinLevel")
	local level = lualib:Level(player);
	local activityStartTime_int1 = startServerTime_int	 			--活动开始时间 
	if nowTime_int > activityStartTime_int1 then 
		for i = 1, 5 do
			local restCount = tab_last[i] - lualib:GetDBNum("kf_level_reward"..i);
			if restCount > 0 then 
				if lualib:GetInt(player,"kf_level_get_item"..i) == 0 then 
					if level >= tab_level[i] then 
						if i > 2 then
							if  rein >= tab_level[i] then
								AddIconMagicSc(player, "开服活动",3020300100, 20, -16, 180);
								return ""
							end
						else
							AddIconMagicSc(player, "开服活动",3020300100, 20, -16, 180);
							return ""
						end
					end
				end
			end
		end
	end
end

function AddKaiFuMagicOnWingLevelUp(player)
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local nowTime_int = lualib:GetAllTime()
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --活动结束时间 
	if nowTime_int > activityEndTime_int then 
		return ""
	end
	--神翼,第二天到第七天
	local activityStartTime_int2 = startServerTime_int + 24*60*60	 --活动开始时间 
	if nowTime_int > activityStartTime_int2 then 
		for i = 1, 5 do   
			if lualib:GetInt(player,"kf_wing_get_item"..i) == 0 then    --是否领取过  
				if lualib:GetInt(player,"wing_level") >= tab_wing_reward[6][i] then 
					AddIconMagicSc(player, "开服活动",3020300100, 20, -16, 180);
					return "";
				end
			end
		end
	end
end

function AddKaiFuMagicOnBaoShiLevelUp(player)
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local nowTime_int = lualib:GetAllTime()
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --活动结束时间 
	if nowTime_int > activityEndTime_int then 
		return ""
	end
	--宝珠,第三天到第七天
	local activityStartTime_int3 = startServerTime_int + 2*24*60*60	 --活动开始时间  
	if nowTime_int > activityStartTime_int3 then 
		local baoshi_level = lualib:GetInt(player, "baoshi_level")	
		local count = 0
		count = count + lualib:GetInt(player, "baoshi_chip")
		if baoshi_level > 0 then 
			for i = 1, baoshi_level do 
				count = count + baoshi_count[i]
			end
		end
		
			--积累的碎片数量所达到的领奖档次
		local level = 0 
		for i = 1, 8 do 
			if i == 8 then 
				level = 7
				break
			end
			if count < buttonWin3_table[0][i] then 
				level = i - 1
				break
			end
		end
		
			--是否已经领过奖
		for i = 1, level do 
			if lualib:GetInt(player, "kaifu_baoshi_isGet"..i) == 0 then 
				AddIconMagicSc(player, "开服活动",3020300100, 20, -16, 180);
				return "";						
			end
		end
	end
end

function AddKaiFuMagicOnHunZhuLevelUp(player)
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local nowTime_int = lualib:GetAllTime()
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --活动结束时间 
	if nowTime_int > activityEndTime_int then 
		return ""
	end
	--魂珠,第四天到第七天
	local activityStartTime_int4 = startServerTime_int + 3*24*60*60	 --活动开始时间 
	if nowTime_int > activityStartTime_int4 then 
		local hunzhu_level = lualib:GetInt(player, "hunzhu_level")	
		local count2 = 0
		count2 = count2 + lualib:GetInt(player, "hunzhu_chip")
		if hunzhu_level > 0 then 
			for i = 1, hunzhu_level do 
				count2 = count2 + hunzhu_count[i]
			end
		end
		
			--积累的碎片数量所达到的领奖档次
		local level2 = 0 
		for i = 1, 8 do 
			if i == 8 then 
				level2 = 7
				break
			end
			if count2 < buttonWin4_table[0][i] then 
				level2 = i - 1
				break
			end
		end
		
			--是否已经领过奖
		for i = 1, level2 do 
			if lualib:GetInt(player, "kaifu_hunzhu_isGet"..i) == 0 then
				AddIconMagicSc(player, "开服活动",3020300100, 20, -16, 180);
				return "";
			end
		end
	end
end