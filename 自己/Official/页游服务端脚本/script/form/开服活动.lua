local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

local gift1_award = 
{
    {
	--战士
		{
		--男
			{"武魂战甲",1,1},
			{"武魂头盔",1,1},
			{"武魂项链",1,1},
			{"武魂手镯",2,1},
			{"武魂戒指",2,1},
			{"武魂靴子",1,1},
			{"武魂腰带",1,1}
		},
		{
		--女
			{"武魂战袍",1,1},
			{"武魂头盔",1,1},
			{"武魂项链",1,1},
			{"武魂手镯",2,1},
			{"武魂戒指",2,1},
			{"武魂靴子",1,1},
			{"武魂腰带",1,1}
		}
	},
    {
	--法师
		{
		--男
			{"魔魂法袍",1,1},
			{"魔魂头盔",1,1},
			{"魔魂项链",1,1},
			{"魔魂手镯",2,1},
			{"魔魂戒指",2,1},
			{"魔魂靴子",1,1},
			{"魔魂腰带",1,1}
		},
		{
		--女
			{"魔魂羽衣",1,1},
			{"魔魂头盔",1,1},
			{"魔魂项链",1,1},
			{"魔魂手镯",2,1},
			{"魔魂戒指",2,1},
			{"魔魂靴子",1,1},
			{"魔魂腰带",1,1}
		}
	},
    {
	--道士
		{
		--男
			{"玄魂道袍",1,1},
			{"玄魂头盔",1,1},
			{"玄魂项链",1,1},
			{"玄魂手镯",2,1},
			{"玄魂戒指",2,1},
			{"玄魂靴子",1,1},
			{"玄魂腰带",1,1}
		},
		{
		--女
			{"玄魂道衣",1,1},
			{"玄魂头盔",1,1},
			{"玄魂项链",1,1},
			{"玄魂手镯",2,1},
			{"玄魂戒指",2,1},
			{"玄魂靴子",1,1},
			{"玄魂腰带",1,1}
		}
	}	
}
local gift2_award = 
{
    {"直升二级翅膀神符",1,1},
    {"灵石精华中",5,1},
    {"超级BOSS召唤令",1,1},
    {"魂珠碎片小",8,1},	
    {"双倍经验8小时",1,1},	
    {"金砖中",5,1},	
    {"转生丹",4,1}
}
local gift3_award = 
{
    {"超级金砖",1,1},
    {"魂珠碎片中",8,1},
    {"高级转生丹",1,1},
    {"转生丹",4,1},	
    {"三倍经验8小时",1,1},	
    {"玛雅卷轴",2,1},	
    {"高级成就令牌",6,1}
}
local gift4_award = 
{
   {
	--战士
		{"圣武战刃",1,1},
		{"宝石结晶大",1,1},
		{"魂珠碎片中",5,1},
		{"高级转生丹",8,1},
		{"三倍经验8小时",1,1},
		{"金砖小",5,1},
		{"高级BOSS积分精魄",5,1}
	},
	{
	--法师
		{"圣魔法杖",1,1},
		{"宝石结晶大",1,1},
		{"魂珠碎片中",5,1},
		{"高级转生丹",8,1},
		{"三倍经验8小时",1,1},
		{"金砖小",5,1},
		{"高级BOSS积分精魄",5,1}
	},
	{
	--道士
		{"圣灵道剑",1,1},
		{"宝石结晶大",1,1},
		{"魂珠碎片中",5,1},
		{"高级转生丹",8,1},
		{"三倍经验8小时",1,1},
		{"金砖小",5,1},
		{"高级BOSS积分精魄",5,1}
	}
}

local gift_cost = {888,2888,8888,16888}

local gift_name = {"神装礼包","神翼礼包","至尊礼包","主宰礼包"}

-----------------------图标显示-----------------------------
function openServiceActivities_show(player)
	local state1 = lualib:GetInt(player, "specialGift_gift1")
	local state2 = lualib:GetInt(player, "specialGift_gift2")
	local state3 = lualib:GetInt(player, "specialGift_gift3")
	local state4 = lualib:GetInt(player, "specialGift_gift4")
	AddSEIcon(player, 1, -5, "开服活动", 1800200047, "倒计时", "openServiceActivities","","开服活动")
	local tab_last = {350,100,50,15,3}
	local tab_level = {70,80,85,90,95}
	local tab_wing_reward = {{"羽毛","双倍经验4小时绑","金砖小",40,1,2},          --不可更改表结构
						{"羽毛","双倍经验8小时绑","金砖小",200,1,4},
						{"羽毛","三倍经验8小时绑","金砖小",500,1,6},
						{"羽毛","四倍经验8小时绑","金砖小",1000,1,8},
						{"羽毛","五倍经验8小时绑","金砖小",2000,1,10},
						{2,3,5,7,9} 
						}
	local baoshi_count = {40,90,150,220,375,935,2340,4400,7020,11705,0}
	local buttonWin3_table = 
	{	
		[0] = {120,350,800,2000,4500,8000,12000},
	}
	local hunzhu_count = {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,0}
	local buttonWin4_table = 
	{	
		[0] = {120,250,600,1200,2500,6000,10000},
	}
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --开服时间（秒）
	local nowTime_int = lualib:GetAllTime()
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --活动结束时间 
	if nowTime_int > activityEndTime_int then 
		return ""
	end
	--等级,第一天到第七天
	local activityStartTime_int1 = startServerTime_int	 			--活动开始时间 
	if nowTime_int > activityStartTime_int1 then 
		for i = 1, 5 do
			local restCount = tab_last[i] - lualib:GetDBNum("kf_level_reward"..i);
			if restCount > 0 then 
				if lualib:GetInt(player,"kf_level_get_item"..i) == 0 then 
					local level = lualib:Level(player);
					if level > tab_level[i] then 
						
						AddIconMagicSc(player, "开服活动",3020300100, 20, -16, 180);
						return "";
						
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
					AddIconMagicSc(player, "开服活动",3020300100, 20, -16, 180);
					return "";
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
				AddIconMagicSc(player, "开服活动",3020300100, 20, -16, 180);
				return "";						
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
				AddIconMagicSc(player, "开服活动",3020300100, 20, -16, 180);
				return "";
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
					AddIconMagicSc(player, "开服活动",3020300100, 20, -16, 180);
					return "";
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
						AddIconMagicSc(player, "开服活动",3020300100, 20, -16, 180);
						return "";
					end
				end
			end
		end
	end
	return ""
end

-------------------图标被点击-----------------------
function openServiceActivities(player,param)
	local tips1 = 0
	--lualib:SysPromptMsg(player,"1"..tostring(param))
	if param ~= "" and param ~= nil then
		tips1 = tonumber(param)
	end
	--lualib:ShowFormWithContent(player, "form文件表单", "OpenServiceActivities#".. tips1)
	--lualib:ShowFormWithContent(player, "form文件表单", "ServiceActivities#".. tips1)
	local clientType = lualib:GetClientType(player) 
		if clientType == 0 then
			--lualib:SysPromptMsg(player, 'ServiceActivities')
			--lualib:ShowFormWithContent(player, "form文件表单", "ServiceActivities#")
			lualib:ShowFormWithContent(player, "脚本表单", [[UI:Lua_OpenWindow(0, 'ServiceActivities.lua')]])
		elseif clientType == 1 then 
			lualib:ShowFormWithContent(player, "脚本表单Sc", "UI.Asc_OpenWindow(0, \"ServiceActivities.sc\");")
		end
	
    return ""
end

function get_gift_info(player,param)
	param=tonumber(param)
	if param == 1 then
		local job = lualib:Job(player)
		local gender = lualib:Gender(player)
		local gf1 =  gift1_award[job][gender]
		local gf4 =  gift4_award[job]
		local state1 = lualib:GetInt(player, "specialGift_gift1")
		local state2 = lualib:GetInt(player, "specialGift_gift2")
		local state3 = lualib:GetInt(player, "specialGift_gift3")
		local state4 = lualib:GetInt(player, "specialGift_gift4")
		local StartServerTime = lualib:GetConstVar("StartServerTime")
		local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）

		local allTime = lualib:GetAllTime()
		local startDay = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --开服第几天
		local ret = {gift_name,gift_cost,{state1,state2,state3,state4},{gf1,gift2_award,gift3_award,gf4},startDay}
		
		lualib:ShowFormWithContent(player, "脚本表单Sc", "ServiceActivities.showInfo("..serializeSc(ret)..");")
	end
	return ""
end

function get_gift_award(player,param)
	param=tonumber(param)
	local job = lualib:Job(player)
	local gender = lualib:Gender(player)
	local gf1 =  gift1_award[job][gender]
	local gf4 =  gift4_award[job]
	local gift_List = 
	{
		gf1,
		gift2_award,
		gift3_award,
		gf4
	}
	local gift_award = gift_List[param]
	local cost = gift_cost[param]
	local haveIngot = lualib:GetIngot(player)
	local state = lualib:GetInt(player, "specialGift_gift"..param)
	if state == 1 then
		lualib:ShowFormWithContent(player, "脚本表单Sc", "ServiceActivities.awardBack(3,"..param..");")
		lualib:SysPromptMsg(player, "该礼包只能领取一次!")
		return ""
	end
	local freeBag = lualib:Player_GetBagFree(player)
	if  freeBag < #gift_award then
		lualib:ShowFormWithContent(player, "脚本表单Sc", "ServiceActivities.awardBack(4,"..param..");")
		lualib:SysPromptMsg(player, "背包不足!请先清理背包")
		return ""
	end
	if haveIngot >= cost then
		lualib:SubIngot(player,cost,"购买了特惠礼包"..param,player)
	else
		lualib:ShowFormWithContent(player, "脚本表单Sc", "ServiceActivities.awardBack(2,"..param..");")
		lualib:SysPromptMsg(player, "您的元宝不足，领取该礼包需要花费"..cost.."元宝")
		lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
		return ""
	end
	for i = 1, #gift_award do
		local bind = false
		if gift_award[i][3] == 1 then
			bind = true
		end
		lualib:AddItem(player, gift_award[i][1], gift_award[i][2], bind, "领取特惠礼包奖励", player)
		--lualib:SysMsg_SendWarnMsg(player, "领取特惠礼包奖励了"..lualib:KeyName2Name(gift_award[i][1], 4).." + "..gift_award[i][2].."!")
		lualib:SysPromptMsg(player, "领取特惠礼包奖励了"..lualib:KeyName2Name(gift_award[i][1], 4).." + "..gift_award[i][2].."!")
	end
	lualib:SetInt(player, "specialGift_gift"..param, 1)
	lualib:ShowFormWithContent(player, "脚本表单Sc", "ServiceActivities.awardBack(1,"..param..");")
	
	for i = 1 , 4 do
		if lualib:GetInt(player, "specialGift_gift"..i) == 0 then
			break
		else
			if i == 4 then
				--DelIcon(player,"开服活动")
				--lualib:ShowFormWithContent(player, "脚本表单", "OpenServiceActivities.CloseWnd()")
--[[				if  lualib:GetInt(player, "storeUp_flag") == 0 then          --游戏未收藏、未下载
					if lualib:GetInt(player, "award_download") == 0 then  
						DelIcon(player,"客户端下载")
						DelIcon(player,"收藏游戏")
						AddSEIcon(player, 1, -4,"收藏游戏", 1800200071, "倒计时", "store_aaa","","")
						AddSEIcon(player, 1, -3, "客户端下载", 1800200067, "倒计时", "download","","")
					else  --游戏未收藏、已下载
						DelIcon(player,"收藏游戏")
						AddSEIcon(player, 1, -3,"收藏游戏", 1800200071, "倒计时", "store_aaa","","")
					end
				else
					if lualib:GetInt(player, "award_download") == 0 then   --游戏已收藏、未下载
						DelIcon(player,"客户端下载")
						AddSEIcon(player, 1, -3, "客户端下载", 1800200067, "倒计时", "download","","")
					end
				end	--]]		
			end
		end
	end 
	return ""
end

function close(player)
	return ""
end