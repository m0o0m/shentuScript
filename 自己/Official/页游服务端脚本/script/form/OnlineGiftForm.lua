local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
require("form/奖励大厅表单")

local online_gift = 
{
    {
        online_time = 15,
        gift =  {{"金砖小",1}},
    },
    {
        online_time = 30,
        gift =  {{"金砖中",1}},
    },
    {
        online_time = 60,
        gift =  {{"金砖中",1},	{"转生神殿卷轴",1}},
    },
    {
        online_time = 120,
        gift =  {{"金砖大",1},	{"转生神殿卷轴",1}},
    },
}
--在线礼包时间
function get_time(player)
	local day_time = lualib:GetDayInt(player,"online_times")
	local this_time = lualib:OnlineTimeEx(player)
	local all_time = day_time + this_time
	local get_item_online = {}
	for i = 1 , 4 do 
		get_item_online[i] = lualib:GetDayInt(player,"Online_Is_Get"..i)
	end	
	local table_date = {online_gift,get_item_online,all_time}
	
	local week = lualib:GetInt(player,"week_times") 
	local times = lualib:GetInt(player,"week_last")
	local last = Get_gold_xianshi((week-1),times)
	local this_time = lualib:OnlineTimeEx(player)  --当天在线时间
	local allweektime = lualib:GetInt(player,"online_times_week")
	
	local now = Get_gold_xianshi(week,(allweektime+this_time))
	lualib:ShowFormWithContent(player, "脚本表单", "Online_reward.Info("..serialize(table_date)..",".. last ..",".. now ..")")
	return ""
end	

function Get_item(player)
	--local get_tab = deserialize(str)
	local all_time = lualib:GetDayInt(player,"online_times") + lualib:OnlineTimeEx(player)
	
	for i = 1 , #online_gift do 
		local needtime = online_gift[i].online_time * 60
		--lualib:SysPromptMsg(player, "needtime=" .. needtime..";all_time="..all_time)
		if lualib:GetDayInt(player,"Online_Is_Get"..i) == 0 and needtime <= all_time then
			local gift_award = online_gift[i].gift
			local freeBag = lualib:Player_GetBagFree(player)
			if freeBag < #gift_award then
				lualib:SysPromptMsg(player, "背包不足!请先清理背包")
				return ""
			end
			for i = 1, #gift_award do
				local bind = true
				lualib:AddItem(player, gift_award[i][1], gift_award[i][2], bind, "领取在线奖励", player)
				lualib:SysPromptMsg(player, "领取在线奖励:"..lualib:KeyName2Name(gift_award[i][1], 4).." + "..gift_award[i][2].."!")
			end
			lualib:SetDayInt(player,"Online_Is_Get"..i,1)
			
		end
		
	end
	Is_magic(player)
	get_time(player)
	return ""
end

function Get_gold_xianshi(num,times)
	local gold = 0 
	local online = math.floor(times/3600)
	if online > 70 then 
		times = 70
	end
	if num == 1 then 
		gold = online*30
	elseif num == 2 then 
		gold = online*40
	else
		gold = online*50
	end
	if gold < 0 then 
		gold =0
	end
	return gold
end

function Get_Golds(player)
	
	local week = lualib:GetInt(player,"week_times") 
	local times = lualib:GetInt(player,"week_last")
	if times < 3600 then
		return ""
	end	
	local last = Get_gold_xianshi((week-1),times)
	if lualib:AddBindIngot(player, tonumber(last), "在线奖励",player) then 
		lualib:SetInt(player,"week_last",0)
		lualib:ShowFormWithContent(player, "脚本表单", "Online_reward.Bind()")
	end
	return ""
end
