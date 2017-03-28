local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

local Change_Award = 
{
		{"500绑定元宝",2},
		{"金筝兑换礼包一",1},
		{"金筝兑换礼包二",1},
		{"清明称号兑换牌",1}
}

local Change_Consume = 
{
	{"金筝",5},
	{"金筝",10},
	{"金筝",666},
	{"金筝",20}
}

local QM_Award = 
{
	{"柳帽1",1},
	{"柳帽2",1},
	{"柳帽3",1}
}

------图标显示-------------
function QM_Icon_Show(player)
	if QM_isWithinTime() then
		AddSEIcon(player,2, -7, "清明活动", 1800200127, "倒计时", "QM_Icon_Clicked","","清明活动")
	end
	return ""
end
------图标点击-------------
function QM_Icon_Clicked(player)
	lualib:ShowFormWithContent(player, "form文件表单", "QMActivities")
	return ""
end


function WindowInit1(player)
--lualib:SetDayInt(player, "QMGift",0)
	local n = JudgeTime(player)
	n = tonumber(n)
	local IsGet = lualib:GetDayInt(player, "QMGift")
	if IsGet == nil then
		lualib:SetDayInt(player, "QMGift",0)
	end
	IsGet = lualib:GetDayInt(player, "QMGift")
	lualib:ShowFormWithContent(player, "脚本表单", "QMActivities.WindInitBack1("..IsGet..","..n..")")
        return ""
end

function WindowInit2(player)
        local n = JudgeTime(player)
	n = tonumber(n)
--lualib:SetDayInt(player, "QMChange1",0)
--lualib:SetDayInt(player, "QMChange2",0)
--lualib:SetInt(player, "QMChange3",0)
--lualib:SetInt(player, "QMChange4",0)
	local ChangeNum1 = lualib:GetDayInt(player, "QMChange1")
	local ChangeNum2 = lualib:GetDayInt(player, "QMChange2")
	if ChangeNum1 == nil then
		lualib:SetDayInt(player, "QMChange1",0)
	end
	if ChangeNum2 == nil then
		lualib:SetDayInt(player, "QMChange2",0)
	end
	ChangeNum1 = lualib:GetDayInt(player, "QMChange1")
	ChangeNum2 = lualib:GetDayInt(player, "QMChange2")
	local ChangeNum3 = lualib:GetInt(player, "QMChange3")
	local ChangeNum4 = lualib:GetInt(player, "QMChange4")
	local Num = lualib:ItemCount(player, "金筝")
	lualib:ShowFormWithContent(player, "脚本表单", "QMActivities.WindInitBack2("..ChangeNum1..","..ChangeNum2..","..ChangeNum3..","..ChangeNum4..","..Num..","..n..")")
	return ""
end

function JudgeTime(player)
	local Begin = lualib:Str2Time("2017-3-28 00:00:00")
	local End = lualib:Str2Time("2017-4-4 23:59:59")
	local NowTime = lualib:Now()
	local now = lualib:Str2Time(NowTime)
	local n
	if now >= Begin and now <= End then
		n = 1
	else
		n = 0
	end
	return tostring(n)
end

function QMGetAward(player)
	local level = lualib:Level(player)
	if level < 80 then
		lualib:SysPromptMsg(player, "等级不足!")
		return ""
	end
	local IsGet = lualib:GetDayInt(player, "QMGift")
	if IsGet == 1 then
		lualib:SysPromptMsg(player, "该礼包只能领取一次!")
		return ""
	end
	local FreeBag = lualib:Player_GetBagFree(player)
	if FreeBag < 1 then
		lualib:SysPromptMsg(player, "背包不足!请先清理背包")
		return ""
	end
	local Day = JudgeDay(player)
	Day = tonumber(Day)

	lualib:AddItem(player, QM_Award[Day][1], QM_Award[Day][2], true, "领取奖励", player)
	lualib:SysPromptMsg(player, "成功领取清明节柳帽!!")
	lualib:SetDayInt(player, "QMGift", 1)
	lualib:ShowFormWithContent(player, "脚本表单", "QMActivities.AwardBack("..Day..")")
	return ""
end

function QMChange(player,index)
	local ChangeNum
	index = tonumber(index)

	if index == 1 or index == 2 then
		ChangeNum = lualib:GetDayInt(player, "QMChange"..index)
		if ChangeNum == 3 then
			lualib:SysPromptMsg(player, "今日最多只能兑换三次!")
			return ""
		end
	end

	if index == 3 or index == 4 then
		ChangeNum = lualib:GetInt(player, "QMChange"..index)
		if ChangeNum == 1 then
			lualib:SysPromptMsg(player, "限兑一次!")
			return ""
		end
	end
	local Num = lualib:ItemCount(player, "金筝")
	if Num < Change_Consume[index][2] then
		lualib:SysPromptMsg(player, "金筝不足")
		return ""
	end
	
	
	local FreeBag = lualib:Player_GetBagFree(player)
	if FreeBag < 1 then
		lualib:SysPromptMsg(player, "背包不足!请先清理背包")
		return ""
	end

	if index == 1 then
		if lualib:DelItem(player, Change_Consume[index][1],Change_Consume[index][2], 2, "兑换扣除", "清明兑换") then
			lualib:AddItem(player,Change_Award[index][1],Change_Award[index][2],true,"兑换获得", player)
			lualib:SysPromptMsg(player, "兑换成功，获得2个"..Change_Award[index][1].."！")
			lualib:SetDayInt(player, "QMChange"..index,ChangeNum+1)
			ChangeNum = lualib:GetDayInt(player, "QMChange"..index)
		end
	end
	if index == 2 then
		if lualib:DelItem(player, Change_Consume[index][1],Change_Consume[index][2], 2, "兑换扣除", "清明兑换") then
			lualib:AddItem(player,Change_Award[index][1],Change_Award[index][2],true,"兑换获得", player)
			lualib:SysPromptMsg(player, "兑换成功，获得"..Change_Award[index][1].."！")
			lualib:SetDayInt(player, "QMChange"..index,ChangeNum+1)
			ChangeNum = lualib:GetDayInt(player, "QMChange"..index)
		end
	end
	if index == 3 then
		if lualib:DelItem(player, Change_Consume[index][1],Change_Consume[index][2], 2, "兑换扣除", "清明兑换") then
			lualib:AddItem(player,Change_Award[index][1],Change_Award[index][2],true,"兑换获得", player)
			lualib:SysPromptMsg(player, "兑换成功，获得"..Change_Award[index][1].."！")
			lualib:SetInt(player, "QMChange"..index,1)
			ChangeNum = lualib:GetInt(player, "QMChange"..index)
		end
	end
	if index == 4 then
		if lualib:SubBindIngot(player,18888, "兑换扣绑定元宝", "清明兑换") then
			if lualib:DelItem(player, Change_Consume[index][1],Change_Consume[index][2], 2,"兑换扣除", "清明兑换") then
				lualib:AddItem(player,Change_Award[index][1],Change_Award[index][2],true,"兑换获得", player)
				lualib:SysPromptMsg(player, "兑换成功！恭喜你获得"..Change_Award[index][1].."！")
				lualib:SetInt(player, "QMChange"..index,1)
				ChangeNum = lualib:GetInt(player, "QMChange"..index)
			end
		elseif lualib:SubIngot(player,18888, "兑换扣元宝", "清明兑换") then
			if lualib:DelItem(player, Change_Consume[index][1],Change_Consume[index][2], 2, "兑换扣除", "清明兑换") then
				lualib:AddItem(player,Change_Award[index][1],Change_Award[index][2],true,"兑换获得", player)
				lualib:SysPromptMsg(player, "兑换成功！恭喜你获得"..Change_Award[index][1].."！")
				lualib:SetInt(player, "QMChange"..index,1)
				ChangeNum = lualib:GetInt(player, "QMChange"..index)
			end
		else
			lualib:SysPromptMsg(player, "元宝不足!")
		end
	end
	Num = lualib:ItemCount(player, "金筝")
	lualib:ShowFormWithContent(player, "脚本表单", "QMActivities.ChangeBack("..index..","..ChangeNum..","..Num..")")
	return ""
end


function JudgeDay(player)
	local Begin = lualib:Str2Time("2017-3-28 00:00:00")
	local Day1 = lualib:Str2Time("2017-3-28 23:59:59")
	local Day2 = lualib:Str2Time("2017-3-29 23:59:59")
	local Day3 = lualib:Str2Time("2017-3-30 23:59:59")
	local NowTime = lualib:Now()
	local now = lualib:Str2Time(NowTime)
	local n
	if now >= Begin and now <= Day1 then
		n = 1
	elseif now > Day1 and now <= Day2 then
		n = 2
	elseif now > Day2 and now <= Day3 then
		n = 3
	end
	return tostring(n)
end

function JudgeDay1(player)
	local Begin = lualib:Str2Time("2017-3-28 00:00:00")
	local Day1 = lualib:Str2Time("2017-3-28 23:59:59")
	local Day2 = lualib:Str2Time("2017-3-29 23:59:59")
	local Day3 = lualib:Str2Time("2017-3-30 23:59:59")
	local NowTime = lualib:Now()
	local now = lualib:Str2Time(NowTime)
	local n
	if now >= Begin and now <= Day1 then
		n = 1
	elseif now > Day1 and now <= Day2 then
		n = 2
	elseif now > Day2 and now <= Day3 then
		n = 3
	end
	lualib:ShowFormWithContent(player, "脚本表单", "QMActivities.RecordDay(".. n ..")")
	return ""
end

--============累计探宝==============---

local QM_Tanbao_Gift = {
	{100, {"宝藏钥匙", 40, 1}},
	{500, {"转8首饰箱", 1, 1}},
	{1000, {"霸业吊坠", 1, 1}},
	{2000, {{"霸业神甲男", 1, 1},{"霸业神甲女", 1, 1}}},
	{3000, {"霸业神剑", 1, 1}}
}


function QM_GetTreasureInfo(player)
	if not QM_isWithinTime() then
		lualib:SysPromptMsg(player, "活动已结束")
		return ""
	end

	local data = {}
	data[1] = lualib:GetInt(player, "QM_tanbao")
	data[2] = lualib:GetInt(player, "QM_Gift")

	lualib:ShowFormWithContent(player, "脚本表单", "QMTreasure.getData("..serialize(data)..")")
	return ""
end

function QM_tanbao(player)
	if not QM_isWithinTime() then
		--lualib:SysPromptMsg(player, "不再活动时间内")
		return ""
	end

	local count = lualib:GetInt(player, "QM_tanbao") + 1 --探宝次数+1
	lualib:SetInt(player, "QM_tanbao", count)
	local phase = lualib:GetInt(player, "QM_Gift")

	if phase >= 5 then
		--lualib:SysPromptMsg(player, "已获得所有阶段的奖励")
		return ""
	end

	if count >= QM_Tanbao_Gift[phase + 1][1] then
		lualib:SetInt(player, "QM_Gift", phase + 1)
		if phase == 4 then
			local gender = lualib:Gender(player)
			lualib:MailToPlayer("清明累计探宝活动", player, "活动期间，您已累计探宝达"..QM_Tanbao_Gift[phase + 1][1].."次，请收下奖励吧。", 0, 0, QM_Tanbao_Gift[phase + 1][2][gender])
		else
			lualib:MailToPlayer("清明累计探宝活动", player, "活动期间，您已累计探宝达"..QM_Tanbao_Gift[phase + 1][1].."次，请收下奖励吧。", 0, 0, QM_Tanbao_Gift[phase + 1][2])
		end
	end
end

--探宝打折
function QM_tanbao_discount(player, cost)
	local QM_discount = {{0, 88}, {100, 85}, {500, 80}, {1000, 70}, {2000, 60}}
	if QM_isWithinTime() then --是否在清明活动时间内
		local count = lualib:GetInt(player, "QM_tanbao") --探宝次数
		for i = #QM_discount, 1, -1 do
			if count > QM_discount[i][1] then
				cost = cost*QM_discount[i][2]/100
				return cost
			end
		end
	else
		return cost
	end
end

--============清明好礼==============---
----物品keyName    购买价格     道具keyName     道具数量
local QM_Gift_Info = {
	{"清明初级礼包", 3888, {"羽毛", "1000绑定元宝", "高级转生丹"}, {100, 1, 1}},
	{"清明高级礼包", 5000, {"高级BOSS积分精魄", "金砖中", "高级转生丹"}, {3, 3, 3}},
	{"清明至尊礼包", 8888, {"宝石结晶大", "高级成就令牌", "高级内功经验卷轴"}, {1, 1, 1}},
	{"清明主宰礼包", 11888, {"魂珠碎片大", "高级成就令牌", "高级内功经验卷轴"}, {1, 5, 3}}
}

local EVENT_START = "2017-3-28 00:00:00"
local EVENT_END = "2017-4-4 23:59:59"

function QM_isWithinTime()
	local nowTime = lualib:GetAllTime()
	if nowTime - lualib:Str2Time(EVENT_START) < 0 then
		return false
	elseif nowTime - lualib:Str2Time(EVENT_END) > 0 then
		return false
	else
		return true
	end
end

--发送所需信息
function QM_GetGiftInfo(player)
	local tFlags = {}
	local seconds = lualib:GetAllTime() - lualib:Str2Time(EVENT_START) --活动开始经过的秒数
	local flag = lualib:GetStr(player, "WhichPeriod")
	local whichPeriod = math.floor(seconds/(3600*6)) --现在第几个6小时
	local remainTime = (whichPeriod + 1)*3600*6 - seconds --6小时计时

	if flag == "" then
		flag = 0
	end

	if tonumber(flag) < whichPeriod then
		--判断是否重置变量
		lualib:SetStr(player, "WhichPeriod", tostring(whichPeriod))
		for i = 1, #QM_Gift_Info do
			lualib:SetInt(player, "QMGift_"..i, 0)
		end
	end

	for i = 1, #QM_Gift_Info do
		tFlags[i] = lualib:GetInt(player, "QMGift_"..i)
	end

	lualib:ShowFormWithContent(player, "脚本表单", "QMGift.getData("..serialize(QM_Gift_Info)..","..remainTime..","..serialize(tFlags)..")")
	return ""
end

function QM_BuyGift(player, param)
	if param == nil then
		return ""
	end

	if not QM_isWithinTime() then
		lualib:SysPromptMsg(player, "活动已结束")
		return ""
	end

	param = tonumber(param)
	if 1 > lualib:GetBagFree(player) then
		lualib:SysPromptMsg(player, "背包空间不足")
		lualib:ShowFormWithContent(player, "脚本表单", "QMGift.enableBtn()")
		return ""
	end


	if 1 == lualib:GetInt(player, "QMGift_"..param) then
		lualib:SysPromptMsg(player, "您已经购买过了，请等待下一波刷新")
		return ""
	end

	if not lualib:Player_IsIngotEnough(player, QM_Gift_Info[param][2], false) then
		lualib:SysPromptMsg(player, "元宝不足")
		lualib:ShowFormWithContent(player, "脚本表单", "QMGift.RechargeTip()")
		return ""
	end

	--可以购买
	if lualib:SetInt(player, "QMGift_"..param, 1) then
		if lualib:SubIngot(player, QM_Gift_Info[param][2], "清明礼包购买", player) then
			lualib:AddItem(player, QM_Gift_Info[param][1], 1, true, "清明礼包购买", player)
			lualib:SysPromptMsg(player, "成功购买了礼包，请查看背包。")
		else
			lualib:SysPromptMsg(player, "扣除元宝失败")
			return ""
		end
	end

	return ""
end

--============每日充值==============---
local QM_DailyRecharge_gift = {
	{"清明充值礼包", 2000, {"转生丹","宝石结晶中","魂珠碎片中","宝藏钥匙","法神令牌"}, {1, 1, 1, 1, 2}},
	{"清明高级充值礼包", 5000, {"转生丹","宝石结晶中","魂珠碎片中","宝藏钥匙","BOSS积分精魄"}, {2, 2, 2, 2, 5}},
	{"清明豪华充值礼包", 10000, {"羽毛","宝石结晶中","魂珠碎片中","宝藏钥匙","BOSS积分精魄"}, {100, 3, 3, 5, 10}}
}

function QM_GetDailyRechargeInfo(player)
	local qingming_date = ""
	local qingming_deadline = ""
	local seconds = lualib:GetAllTime() - lualib:Str2Time(EVENT_START) --活动开始经过的秒数
	local whichDay = math.floor(seconds/(3600*24)) --现在第几天
	if whichDay == 0 then
		qingming_date = "2017-3-28"
		qingming_deadline = "2017-4-2 23:59:59"
	elseif whichDay == 1 then
		qingming_date = "2017-4-3"
		qingming_deadline = "2017-4-3 23:59:59"
	elseif whichDay == 2 then
		qingming_date = "2017-4-4"
		qingming_deadline = "2017-4-4 23:59:59"
	else
		lualib:SysPromptMsg(player, "活动已结束")
		return ""
	end

	local iStartTime = lualib:Str2Time(qingming_date)
	local iEndTime = lualib:Str2Time(qingming_deadline)
	if not lualib:PostDBEvt("select order_id,billin from tblbilllog where user_id=" .. lualib:UserID(player) .. " and billin > 0 and time > " .. iStartTime .." and time < " .. iEndTime, "QM_DailyRechargeCalc", player) then
	-- if not lualib:PostDBEvt("select * from tblbilllog", "vOnDBEvtResult", player) then
	-- if not lualib:PostDBEvt("select * from columns where table_name=tblbilllog", "vOnDBEvtResult", player) then
		return "操作失败！"
	else
		return ""
		-- return "数据读取中！！！"
	end
	return ""
end

function QM_DailyRechargeCalc(bResult,dwError,strError,iResultNum,tRecordSets,player)
	if bResult == false then
		lualib:SysPromptMsg(player, "bResult查询错误"..dwError..strError..#tRecordSets);
		return
	end
	
	local duration_totle_billin = 0
	for k, v in pairs(tRecordSets) do
		duration_totle_billin = duration_totle_billin + tonumber(v[2]);
	end

	--duration_totle_billin = 2000
	local data = {}
	data[1] = {lualib:GetDayInt(player, "QM_DailyRechargeGift1"), lualib:GetDayInt(player, "QM_DailyRechargeGift2"), lualib:GetDayInt(player, "QM_DailyRechargeGift3")} --领奖标记

	for i = 1, #QM_DailyRecharge_gift do
		if duration_totle_billin >= QM_DailyRecharge_gift[i][2] and data[1][i] == 0 then
			data[1][i] = 1
			lualib:SetDayInt(player, "QM_DailyRechargeGift"..i, 1) --0不可领奖，1表示可以领奖 2表示已经领奖
		end
	end

	
	data[2] = duration_totle_billin --今日充值总数
	data[3] = QM_DailyRecharge_gift
	lualib:ShowFormWithContent(player, "脚本表单", "QMDailyRecharge.getData(".. serialize(data)..")")
	return ""
end

function QM_GetDailyRechargeGift(player, param)
	if param == nil then
		return ""
	end

	if not QM_isWithinTime() then
		lualib:SysPromptMsg(player, "不再活动时间内")
		return ""
	end

	param = tonumber(param)
	if 1 > lualib:GetBagFree(player) then
		lualib:SysPromptMsg(player, "背包空间不足")
		lualib:ShowFormWithContent(player, "脚本表单", "QMDailyRecharge.enableBtn()")
		return ""
	end

	local flag = lualib:GetDayInt(player, "QM_MRCZ"..lualib:UserID(player)..param)
	if 0 == flag then
		lualib:SysPromptMsg(player, "还未达到领奖条件")
		return ""
	elseif 2 == flag then
		lualib:SysPromptMsg(player, "您今天已经领过礼包了")
		return ""
	end

	if lualib:SetDayInt(player, "QM_DailyRechargeGift"..param, 2) then
		lualib:AddItem(player, QM_DailyRecharge_gift[param][1], 1, true, "清明每日充值礼包", player)
		lualib:SysPromptMsg(player, "成功领取了礼包。")
	end

	return ""
end

--============累计充值==============---
local RC_AWARD = {
	{  9999, "宝石结晶大", 		1, "经验丹大", 	   1 },
	{ 29999, "魂珠碎片大", 		1, "经验丹大",	   3 },
	{ 69999, "羽毛",		  300, "超级BOSS积分精魄", 1 },
	{129999, "羽毛",		  500, "超级BOSS积分精魄", 2 },
	{199999, "羽毛",		  888, "超级BOSS积分精魄", 3 },
}	
function main6(player)
	
	local qingming_date =  "2016-3-28";
	local iStartTime = lualib:Str2Time(qingming_date);
	local qingming_deadline =  "2017-4-4 23:59:59";
	local iEndTime = lualib:Str2Time(qingming_deadline);
	if not lualib:PostDBEvt("select order_id,billin from tblbilllog where user_id=" .. lualib:UserID(player) .. " and billin > 0 and time > " .. iStartTime .." and time < " .. iEndTime, "vOnDBEvtResult", player) then
	-- if not lualib:PostDBEvt("select * from tblbilllog", "vOnDBEvtResult", player) then
	-- if not lualib:PostDBEvt("select * from columns where table_name=tblbilllog", "vOnDBEvtResult", player) then
		return "操作失败！"
	else
		return ""
		-- return "数据读取中！！！"
	end
	return ""
end

function vOnDBEvtResult(bResult,dwError,strError,iResultNum,tRecordSets,player)
	if bResult == false then
		lualib:SysPromptMsg(player, "bResult查询错误"..dwError..strError..#tRecordSets);
		return
	end
	
	local duration_totle_billin = 0
	for k, v in pairs(tRecordSets) do
		duration_totle_billin = duration_totle_billin + tonumber(v[2]);
	end
	-- lualib:SysPromptMsg(player, "bResult="..dwError..strError..#tRecordSets);
	-- lualib:SysPromptMsg(player, "tRecordSets=============="..serialize(tRecordSets)..";duration_totle_billin="..duration_totle_billin);
	
	--lualib:SysPromptMsg(player, "day_num="..day_num)
	-- lualib:SetDayInt(player, "IndividalDailyRecharge", day_num)  --记录玩家每日充值元宝数
	-- lualib:ShowFormWithContent(player, "脚本表单", "dbg('"..serialize(#tRecordSets).."')")
	
	local level = 0
	for i = 1, #RC_AWARD do 
		if duration_totle_billin >= RC_AWARD[i][1] then 
			level = i;
		else
			break;
		end
	end
	
	local iHasGot = 0; 
	for i = 1, level do 
		iHasGot = lualib:GetInt(player, "iHasGotRechargeRC_AWARD"..i)
		if iHasGot == 0 then 
			break;
		end
	end
	
	local DATA = {}
	if level == 0 then 
		iHasGot = 1;   --零级还想领奖,设为1
		DATA[1] = RC_AWARD[1];
	else
		DATA[1] = RC_AWARD[level];
	end
	DATA[2] = iHasGot;
	DATA[3] = duration_totle_billin;
	lualib:ShowFormWithContent(player, "脚本表单", "QMActivities:Updata6(".. serialize(DATA)..")")
	return 
end

function GetRC_AWARD(player)
	local qingming_date =  "2015-3-28";
	local iStartTime = lualib:Str2Time(qingming_date);
	local qingming_deadline =  "2017-4-4 23:59:59";
	local iEndTime = lualib:Str2Time(qingming_deadline);
	local now = lualib:GetAllTime();
	if now < iStartTime then 
		return "活动未开始"
	elseif now > iEndTime then 
		return "活动已结束"
	end
	
	if not lualib:PostDBEvt("select order_id,billin from tblbilllog where user_id=" .. lualib:UserID(player) .. " and billin > 0 and time > " .. iStartTime .." and time < " .. iEndTime, "vOnDBEvtResult2", player) then
		return "操作失败！"
	else
		return ""
	end
	return ""
end

function vOnDBEvtResult2(bResult,dwError,strError,iResultNum,tRecordSets,player)
	if bResult == false then
		lualib:SysPromptMsg(player, "bResult查询错误"..dwError..strError..#tRecordSets);
		return
	end
	
	local duration_totle_billin = 0
	for k, v in pairs(tRecordSets) do
		duration_totle_billin = duration_totle_billin + tonumber(v[2]);
	end
	-- lualib:SysPromptMsg(player, "bResult="..dwError..strError..#tRecordSets);
	-- lualib:SysPromptMsg(player, "tRecordSets=============="..serialize(tRecordSets)..";duration_totle_billin="..duration_totle_billin);
	
	--lualib:SysPromptMsg(player, "day_num="..day_num)
	-- lualib:SetDayInt(player, "IndividalDailyRecharge", day_num)  --记录玩家每日充值元宝数
	-- lualib:ShowFormWithContent(player, "脚本表单", "dbg('"..serialize(#tRecordSets).."')")
	
	local level = 0
	for i = 1, #RC_AWARD do 
		if duration_totle_billin >= RC_AWARD[i][1] then 
			level = i;
		else
			break;
		end
	end
	
	if level == 0 then 
		return "没有达到领取条件"
	end
	
	local iHasGot = 0; 
	local index = 0;
	for i = 1, level do 
		iHasGot = lualib:GetInt(player, "iHasGotRechargeRC_AWARD"..i)
		if iHasGot == 0 then
			index = i;
			break;
		end
	end
	if iHasGot == 1 then 
		return "已领取,无法重复领取!"
	end
	if index == 0 then 
		return "没有达到领取条件"
	end
	local index1 = lualib:GetInt(player, "iHasGotRechargeRC_AWARD1")
	

	local AccountName = lualib:AccountName(player)
	local GUID = lualib:GetDBStr(AccountName.."QM");
	if GUID ~= "" then 
		if GUID ~=  player then 
			return "同一个账号只可以有一个角色参与领奖"
		end
	else
		lualib:SetDBStr(AccountName.."QM", player);
	end
	if not lualib:AddItem(player, RC_AWARD[index][2], RC_AWARD[index][3], true, "清明:充值奖励", player) then --给物品
		return "给物品失败"
	end
	if not lualib:AddItem(player, RC_AWARD[index][4], RC_AWARD[index][5], true, "清明:充值奖励", player) then --给物品
		return "给物品失败"
	end
	lualib:SetInt(player, "iHasGotRechargeRC_AWARD"..index, 1);
	main6(player);
	return 
end

