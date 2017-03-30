local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/ScriptPackage")

--lualib:SetFormAllowFunc({"NewServerGift1_main", "NewServerGift1_Buy", "GrowthFundMain", "BuyGrowthFund", "NewServerGift3_main", "NewServerGift3_Gamble"})

-----------------------图标显示-----------------------------
function ShowIconOfNewServerGift(player)
	--AddSEIcon(player, 2, -5, "开服豪礼", 1800200099, "倒计时", "OpenNewServerGift","","")
	
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	startServerTime_str = startServerTime_str:gsub("%d%d:%d%d:%d%d", "00:00:00")
	--lualib:SysPromptMsg(player, startServerTime_str)
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --活动结束时间
	local restTime_int = 0															
	local nowTime_int = lualib:GetAllTime()							--当前时间
	if nowTime_int >= activityEndTime_int then 
		--lualib:SysPromptMsg(player, "开服豪礼活动已结束")
		return ""
	end
	local level = lualib:Level(player)
	if level < 60 then
		return ""
	end
	local clientType = lualib:GetClientType(player) 
	if clientType == 0 then
		AddSEIcon(player,2, -6, "开服豪礼", 1800200067, "倒计时", "OpenNewServerGift","","开服豪礼大派送")
		AddIconMagic(player, "开服豪礼",3020300700, -40,-40, 150)
	elseif clientType == 1 then 
		AddSEIcon(player,2, -6, "开服豪礼", 1800200099, "倒计时", "OpenNewServerGift","","开服豪礼大派送")
		AddIconMagic(player, "开服豪礼",3020300700, -40,-40, 150)
	end	
	return ""
end

-----------------------图标被点击-----------------------------
function OpenNewServerGift(player)
	local level = lualib:Level(player)
	if level < 60 then
		return ""
	end
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	--lualib:SysPromptMsg(player, startServerTime_str)
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local gambleEndTime_int = startServerTime_int + 2*24*60*60  	 --转盘活动结束时间
	local fundEndTime_int = startServerTime_int + 3*24*60*60  	 --转盘活动结束时间
	local nowTime_int = lualib:GetAllTime()							--当前时间
	local index = 0 												--判断哪个活动结束了,告诉客户端
	if nowTime_int >= gambleEndTime_int then 
		index = 1
	end
	if nowTime_int >= fundEndTime_int then 
		index = 2
	end
	lualib:ShowFormWithContent(player, "form文件表单", "NewServerGift#"..index)
    return ""
end



--------------------------------------------------------------------------每日限购----------------------------------------------------------

--商品的keyName, 堆叠数量, 原价, 现价, 每日限购数量
local NewServerGift1_PRODUCT = 
{	
	[1] = { --第1天
		[1] = {"魂珠碎片中",    1, 1000, 888, 1},    --9折商品架
		[2] = {"高级成就令牌", 10, 5000, 4250, 1},	 --8.5折商品架
		[3] = {"超级转生丹",    1, 10000, 7999, 1},	 --8折商品架
		[4] = {"魂珠碎片大",    1, 10000, 7999, 1},	 --8折商品架
	},
	[2] = { --第2天
		[1] = {"宝石结晶中",       1, 1000, 888, 1},    --9折商品架
		[2] = {"高级BOSS积分精魄", 5, 5000, 4250, 1},	 --8.5折商品架
		[3] = {"魂珠碎片大",       1, 10000, 7999, 1},	 --8折商品架
		[4] = {"宝石结晶大",       1, 10000, 7999, 1},	 --8折商品架
	},
	[3] = { --第3天
		[1] = {"高级BOSS积分精魄", 1, 1000, 888, 1},    --9折商品架
		[2] = {"宝藏钥匙",        25, 5000, 4250, 1},	 --8.5折商品架
		[3] = {"超级转生丹", 		1, 10000, 7999, 1},	 --8折商品架
		[4] = {"宝石结晶大", 		1, 10000, 7999, 1},	 --8折商品架
	},
	[4] = { --第4天
		[1] = {"羽毛",				 35, 1050, 888, 1},    --9折商品架
		[2] = {"宝藏钥匙", 			25, 5000, 4250, 1},	 --8.5折商品架
		[3] = {"魂珠碎片大", 		1, 10000, 7999, 1},	 --8折商品架
		[4] = {"超级BOSS积分精魄", 1, 10000, 7999, 1},	 --8折商品架
	},
	[5] = { --第5天
		[1] = {"羽毛",				 35, 1050, 888, 1},    --9折商品架
		[2] = {"高级成就令牌", 		10, 5000, 4250, 1},	 --8.5折商品架
		[3] = {"魂珠碎片大", 		1, 10000, 7999, 1},	 --8折商品架
		[4] = {"超级BOSS积分精魄", 1, 10000, 7999, 1},	 --8折商品架
	},
	[6] = { --第6天
		[1] = {"宝石结晶中", 		1, 1000, 888, 1},    --9折商品架
		[2] = {"宝藏钥匙", 			25, 5000, 4250, 1},	 --8.5折商品架
		[3] = {"羽毛", 				350, 10500, 7999,1},	 --8折商品架
		[4] = {"宝石结晶大", 		1, 10000, 7999, 1},	 --8折商品架
	},
	[7] = { --第7天
		[1] = {"宝石结晶中", 	1, 1000, 888, 1},    --9折商品架
		[2] = {"宝藏钥匙", 		25, 5000, 4250, 1},	 --8.5折商品架
		[3] = {"羽毛", 			350, 10500, 7999, 1},	 --8折商品架
		[4] = {"魂珠碎片大",	 1, 10000, 7999, 1},	 --8折商品架
	},
}

function NewServerGift1_main(player)
	
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	startServerTime_str = startServerTime_str:gsub("%d%d:%d%d:%d%d", "00:00:00")
	--lualib:SysPromptMsg(player, startServerTime_str)
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --活动结束时间
	local restTime_int = 0															
	local nowTime_int = lualib:GetAllTime()							--当前时间
	if nowTime_int >= activityEndTime_int then 
		lualib:SysPromptMsg(player, "每日抢购活动已结束")
		return ""
	else
		restTime_int = activityEndTime_int - nowTime_int			--活动剩余时间	
	end
	local dayNum = math.ceil((nowTime_int - startServerTime_int)/(24*60*60))			--活动第几天
	--lualib:SysPromptMsg(player, ''..dayNum)
	if  not NewServerGift1_PRODUCT[dayNum] then 
		return ""
	end
	
	local DATA = {} 
	DATA[1] = restTime_int
	DATA[2] = NewServerGift1_PRODUCT[dayNum]
	local BUYCOUNT = {}
	for i = 1, 4 do 
		local count = lualib:GetDayInt(player, "limitBuyProduct"..i)
		BUYCOUNT[i] = NewServerGift1_PRODUCT[dayNum][i][5] - count
	end
	DATA[3] = BUYCOUNT
	
	lualib:ShowFormWithContent(player,"脚本表单","NewServerGift1:updata("..serialize(DATA)..")")
	return ""
end


function NewServerGift1_Buy(player, index)
	
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	startServerTime_str = startServerTime_str:gsub("%d%d:%d%d:%d%d", "00:00:00")
	--lualib:SysPromptMsg(player, startServerTime_str)
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --活动结束时间
	local restTime_int = 0											--活动剩余时间				
	local nowTime_int = lualib:GetAllTime()
	if nowTime_int >= activityEndTime_int then 
		lualib:SysPromptMsg(player, "每日抢购活动已结束")
		return ""
	else
		restTime_int = activityEndTime_int - nowTime_int
	end
	local dayNum = math.ceil((nowTime_int - startServerTime_int)/(24*60*60))			--活动第几天
	
	if  not NewServerGift1_PRODUCT[dayNum] then 
		return ""
	end
	
	
	local index = tonumber(index)
	local limit = lualib:GetDayInt(player, "limitBuyProduct"..index)
	if limit >= NewServerGift1_PRODUCT[dayNum][index][5] then 
		lualib:ShowFormWithContent(player, "脚本表单", "NewServerGift1:msg_up('今日限购次数已满'"..","..index..")") 
		return "" 
	end
	
	if not lualib:Player_IsIngotEnough(player, NewServerGift1_PRODUCT[dayNum][index][4], false) then
		lualib:ShowFormWithContent(player, "脚本表单", "NewServerGift:ChargeMsgBox()") 
		return ""
	end
	
	if lualib:GetBagFree(player) < 1 then
		lualib:ShowFormWithContent(player, "脚本表单", "NewServerGift1:msg_up('背包已满!'"..","..index..")") 
		return ""
	end
	
	if lualib:Player_SubIngot(player, NewServerGift1_PRODUCT[dayNum][index][4], false, "每日限购活动", player) then
		lualib:AddItem(player, NewServerGift1_PRODUCT[dayNum][index][1], NewServerGift1_PRODUCT[dayNum][index][2], true, "每日限购活动", player)
		lualib:SetDayInt(player, "limitBuyProduct"..index, lualib:GetDayInt(player, "limitBuyProduct"..index) + 1)
		local count = lualib:GetDayInt(player,"limitBuyProduct"..index)
		local remainTimes = NewServerGift1_PRODUCT[dayNum][index][5] - count
		lualib:ShowFormWithContent(player, "脚本表单", "NewServerGift1:UpdataLimitCount("..index..","..remainTimes..")")
		--********************************--
		local indexx = lualib:GetDBNum("consumeTerm")
		local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + tonumber(NewServerGift1_PRODUCT[dayNum][index][4])
		RecordTop10ConsumeInfo(player,totalYb)
		--********************************--
	end
	return ""
end



--------------------------------------------------------------------------成长基金----------------------------------------------------------
function GrowthFundMain(player)
	
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）
	local restTime = 0
	local allTime = lualib:GetAllTime()
	local startDay = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --开服第几天
	--lualib:SysPromptMsg(player, "开服第"..startDay.."天")
	--if startDay >= 1 and startDay <= 3 then 
		restTime = 3*24*60*60 - (allTime - StartServerTime_int)  --活动剩余时间
		if restTime < 0 then
			restTime = 0
		end
	--end
	----------------------------------------------------------------------------------------------------------------------------------------
	local data = {}              --data[1] = 是否充值  data[2] = 是否购买过    data[3] =  {}各个阶段是否领取过1:已领取 0：未领取   data[4] = 玩家转生等级  data[5] = 剩余时间
								--data[6] = 剩余数量
	local sale = lualib:GetDBNum("SaleOfGrowthFund")	
	restNum = 100 - sale
	data[6] = restNum						
	--[[							
	local str = lualib:GetDBStr("newServiceGrowthFund")
	if str ~= nil and str ~= "" then
		local tb = json.decode(str)
		data[6] = tonumber(100-#tb)
	else
		data[6] = 100
	end
	--]]
	if lualib:GetTotalBill(player) > 0 then
		data[1] = 1
	else
		data[1] = 0
	end
	data[2] = tonumber(lualib:GetInt(player, "hasBoughtGrowthFund"))
	local fundAwardFlag = {}
	for i = 1, 5 do
		fundAwardFlag[i] = lualib:GetInt(player, "fundAwardFlag"..i)
	end
	data[3] = fundAwardFlag
	data[4] = lualib:GetInt(player, "reinLevel")
	data[5] = restTime
	
	lualib:ShowFormWithContent(player,"脚本表单","NewServerGift2:updata("..serialize(data)..");")
	return ""
end


function BuyGrowthFund(player)
	--lualib:SysPromptMsg(player, "sdadasdasd")
	----------------------------------------------------------------------------------------------------------------------------------------
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）
	local restTime = 0
	local allTime = lualib:GetAllTime()
	local startDay = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --开服第几天
	--lualib:SysPromptMsg(player, "开服第"..startDay.."天")
	--if startDay >= 1 and startDay <= 3 then 
		restTime = 3*24*60*60 - (allTime - StartServerTime_int)  --活动剩余时间
		if restTime < 0 then
			restTime = 0
		end
	--end
	----------------------------------------------------------------------------------------------------------------------------------------
	
	local hasPlayerBought = lualib:GetInt(player, "hasBoughtGrowthFund")
	if hasPlayerBought == 1 then 
		lualib:SysPromptMsg(player, "您已经买过了成长基金")
		return ""
	end
	
	local sale = lualib:GetDBNum("SaleOfGrowthFund")
	--lualib:SysPromptMsg(player, ""..sale)
	if sale <= 100 then
		local ingot = lualib:GetIngot(player)
		if ingot < 1000 then
			--lualib:SysPromptMsg(player, "元宝不足，请充值")
			lualib:ShowFormWithContent(player, "脚本表单", "GameMainBar.YbTopUP_Dlg()")    --充值窗口
		else
			if lualib:Player_SubIngot(player, 1000, false, "BuyGrowthFund", "system") then
				lualib:SetInt(player, "hasBoughtGrowthFund",1)
				lualib:SetDBNum("SaleOfGrowthFund", sale + 1 )
				lualib:SysPromptMsg(player, "购买成长基金成功")
			else
				return "未知原因，元宝扣除失败"
			end
		end
	else
		lualib:SysPromptMsg(player, "100份成长基金已经售罄！")
	end
	GrowthFundMain(player)
	return ""
	

end



--领取奖励。。。数据他改了
--local fundAwardTb = {["3"]=1500, ["4"]=2500, ["5"]=5000, ["6"]=10000, ["8"]=50000}
local fundAwardTb = 
{
	{3, 4, 5, 6, 8},
	{1500, 2500, 5000, 10000, 50000},
}

function GetGrowthFundAward(player, param)
	--lualib:SysPromptMsg(player, "GetGrowthFundAward;index=="..param)
	local index = tonumber(param)
	local reinLevel = lualib:GetInt(player, "reinLevel")
	local hasBought = lualib:GetInt(player, "hasBoughtGrowthFund")
	if hasBought == 0 then									--榜上没找到玩家
		lualib:SysPromptMsg(player, "您没购买过成长基金！")		
		return ""
	else													
		if reinLevel < fundAwardTb[1][index] then					--转生等级未达到
			--lualib:SysPromptMsg(player, "GetGrowthFundAward;reinLevel=="..reinLevel)
			lualib:SysPromptMsg(player, "您的转生等级不足！")
			return ""
		else
			if lualib:GetInt(player, "fundAwardFlag"..index) == 0 then
				if lualib:AddIngot(player, fundAwardTb[2][index], "成长基金奖励", "开服豪礼系统") then
					lualib:SetInt(player, "fundAwardFlag"..index, 1)
					lualib:SysPromptMsg(player, "领取成长基金成功")
					GrowthFundMain(player)
				end
			else
				lualib:SysPromptMsg(player, "您已领取过该阶段的成长基金")
			end
		end
	end
	return ""
end





------------------------------------------------------------------转盘----------------------------------------------------------------------
--转盘次数, 累计充值, 转盘消费
local GAME_ROLE = 
	{ 
		[1] = {1000, 1000},
		[2] = {2000, 2000},
		[3] = {5000, 5000},
		[4] = {10000, 10000},
		[5] = {15000, 15000},
	}

local GAMBLE_AWARD = 
	{	
		--倍数
		{1.15,  1.2,   1.25, 1.35, 1.5,  2, 3, 10},
		--权重
		{10000, 7500,  1500,  300,  60, 15, 5,  1},
	} 


function NewServerGift3_main(player)
	
	
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local activityEndTime_int = startServerTime_int + 2*24*60*60  	 --活动结束时间
	local restTime_int = 0											--活动剩余时间				
	local nowTime_int = lualib:GetAllTime()
	if nowTime_int >= activityEndTime_int then 
		lualib:SysPromptMsg(player, "转盘活动已结束")
		return ""
	else
		restTime_int = activityEndTime_int - nowTime_int
	end
	
	--所有角色公用一个账户的五次投注机会
	local useID = lualib:UserID(player)
	local varName = "gamble_"..useID 
	local gambleCounts = lualib:GetDBNum(varName)
	--lualib:SysPromptMsg(player, 'gambleCounts='..gambleCounts)
	--[[
	local bindPlayer = lualib:GetDB(useID.."_gamble")
	if bindPlayer ~= "" and bindPlayer ~= player then 
		local index = -1
		lualib:ShowFormWithContent(player, "脚本表单", "NewServerGift3:UpData("..index..");")	
		return "非绑定账户"
	end
	--]]
	
	--local gambleCounts = lualib:GetInt(player, "Gamble")
	--local index = gambleCounts + 1
	--lualib:SysPromptMsg(player, ''..index)
	local accumulateCharge = lualib:GetTotalBill(player) 
	local record_str = lualib:GetDBStr("NewServerGift_Gamble_Record")
	
	local GAMBLE_RECORD = {} 
	if record_str ~= nil and record_str ~= "" then
		--lualib:SysPromptMsg(player, 'main'..record_str)
		GAMBLE_RECORD = deserialize(record_str)
	end
	
	local DATA = {}	
	DATA[1] = restTime_int
	DATA[2] = GAME_ROLE
	DATA[3] = gambleCounts
	DATA[4] = accumulateCharge
	DATA[5] = GAMBLE_RECORD
	lualib:ShowFormWithContent(player,"脚本表单","NewServerGift3:UpData("..serialize(DATA)..")")
	return ""
end


	
--获取权重选项
function get_table_key(RATE)
	local maxs = 0
	local RATE_ADD_UP = {}
	for i = 1, #RATE do
		maxs = maxs + RATE[i]
		RATE_ADD_UP[i] = maxs
	end
	
	local key = 1
	local rand = math.random(1, maxs)
	for i = 1, #RATE_ADD_UP do
		if rand <= RATE_ADD_UP[i] then
			key = i
			break
		end
	end
	return key
end



function NewServerGift3_Gamble(player)
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local activityEndTime_int = startServerTime_int + 2*24*60*60  	 --活动结束时间
	local restTime_int = 0											--活动剩余时间				
	local nowTime_int = lualib:GetAllTime()
	if nowTime_int >= activityEndTime_int then 
		lualib:SysPromptMsg(player, "转盘活动已结束")
		return ""
	end
	
	
	
	
	--所有角色公用一个账户的五次投注机会
	--local gambleCounts = lualib:GetInt(player, "Gamble")
	local useID = lualib:UserID(player)
	local varName = "gamble_"..useID 
	local gambleCounts = lualib:GetDBNum(varName)
	if gambleCounts >= 5 then 
		--lualib:SysPromptMsg(player, "累计投注次数已满5次")
		return ""
	end
	
	local index = gambleCounts + 1
	local accumulateCharge = lualib:GetTotalBill(player) 
	--lualib:SysPromptMsg(player, ""..accumulateCharge)
	local key = 0 
	if accumulateCharge >= GAME_ROLE[index][1] then 
		key = get_table_key(GAMBLE_AWARD[2])
	end
	
	--lualib:SysPromptMsg(player, ""..key)
	local awardTimes = 0 
	awardTimes = GAMBLE_AWARD[1][key]
	local awardIngot = GAME_ROLE[index][2] * awardTimes
	if not lualib:Player_IsIngotEnough(player, GAME_ROLE[index][2], false) then         --扣钱
		lualib:ShowFormWithContent(player, "脚本表单", "NewServerGift:ChargeMsgBox()") 
		return ""
	end
	local angle = (key - 1) * 45 + 22
	lualib:ShowFormWithContent(player, "脚本表单", "NewServerGift3:StartGamble("..angle..","..awardIngot..")")
	
	lualib:Player_SubIngot(player, GAME_ROLE[index][2], false, "开服转盘活动", "开服转盘活动")
	
	--lualib:SetInt(player, "Gamble", lualib:GetInt(player, "Gamble") + 1)   --设次数 改为存到DB
	local useID = lualib:UserID(player)
	local varName = "gamble_"..useID 
	lualib:SetDBNum(varName, index)
	local NEW_RECORD = {}													--添加记录
	NEW_RECORD["name"] = lualib:Name(player)
	NEW_RECORD["award"] = awardTimes
	NEW_RECORD["totleIngot"] = awardIngot
	local record_str = lualib:GetDBStr("NewServerGift_Gamble_Record")
	local GAMBLE_RECORD = {} 
	if record_str ~= nil and record_str ~= "" then
		--lualib:SysPromptMsg(player, record_str)
		GAMBLE_RECORD = deserialize(record_str)
		table.insert(GAMBLE_RECORD, NEW_RECORD)
		if #GAMBLE_RECORD > 20 then
			table.remove(GAMBLE_RECORD, 1)
		end
	else
		--lualib:SysPromptMsg(player, "no.1")
		GAMBLE_RECORD[1] = NEW_RECORD
	end
	lualib:SetDBStr("NewServerGift_Gamble_Record", serialize(GAMBLE_RECORD))
	lualib:SetInt(player, "GambleAwardKey", 1)
	lualib:DelayCall(player, 4 * 1000 + 300, "AddIngotToPlayer", ""..awardIngot) 
	lualib:DelayCall(player, 4 * 1000 + 300, "NewServerGift3_main", "") 
	return ""
	
end


function AddIngotToPlayer(player, ingot)
	ingot = tonumber(ingot)
	local key = lualib:GetInt(player, "GambleAwardKey")
	if key == 1 then 
		lualib:Player_AddIngot(player, ingot, false, "开服转盘活动", "开服转盘活动")
		lualib:SetInt(player, "GambleAwardKey", 0)
	end
end
